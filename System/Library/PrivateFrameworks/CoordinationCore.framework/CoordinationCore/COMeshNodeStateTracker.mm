@interface COMeshNodeStateTracker
- (COMeshNodeStateTracker)initWithNode:(id)node;
- (COMeshNodeStateTrackerDelegate)delegate;
- (id)description;
- (void)didFireBackoffTimer;
- (void)resetBackoffInformation;
- (void)setBackoffTimer:(id)timer;
- (void)setElectionStage:(int64_t)stage;
- (void)setLastHeard:(double)heard;
- (void)setState:(unint64_t)state;
@end

@implementation COMeshNodeStateTracker

- (COMeshNodeStateTracker)initWithNode:(id)node
{
  nodeCopy = node;
  v9.receiver = self;
  v9.super_class = COMeshNodeStateTracker;
  v6 = [(COMeshNodeStateTracker *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_node, node);
  }

  return v7;
}

- (id)description
{
  status = [(COMeshNodeStateTracker *)self status];
  if (status > 2)
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = off_278E18070[status];
  }

  v5 = COMeshControllerStateDescription([(COMeshNodeStateTracker *)self state]);
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  node = [(COMeshNodeStateTracker *)self node];
  v10 = [v6 stringWithFormat:@"<%@: %p, state: %@, status: %@, node: %@>", v8, self, v5, v4, node];

  return v10;
}

- (void)setBackoffTimer:(id)timer
{
  timerCopy = timer;
  backoffTimer = self->_backoffTimer;
  p_backoffTimer = &self->_backoffTimer;
  v6 = backoffTimer;
  v9 = timerCopy;
  if (backoffTimer != timerCopy)
  {
    if (v6)
    {
      dispatch_source_cancel(v6);
    }

    objc_storeStrong(p_backoffTimer, timer);
    if (*p_backoffTimer)
    {
      dispatch_resume(*p_backoffTimer);
    }
  }
}

- (void)resetBackoffInformation
{
  [(COMeshNodeStateTracker *)self setBackoffResponse:0];
  [(COMeshNodeStateTracker *)self setLastBallotReceived:0];
  [(COMeshNodeStateTracker *)self setLastBallotSent:0];

  [(COMeshNodeStateTracker *)self setOutstandingRequest:0];
}

- (void)setState:(unint64_t)state
{
  stateCopy = state;
  if (state <= 1)
  {
    if (!state)
    {
LABEL_9:
      [(COMeshNodeStateTracker *)self setStatus:0];
      [(COMeshNodeStateTracker *)self resetBackoffInformation];
      goto LABEL_10;
    }

    if (state == 1 && [(COMeshNodeStateTracker *)self status]!= 2)
    {
      [(COMeshNodeStateTracker *)self setStatus:0];
    }
  }

  else
  {
    if (state - 2 < 2)
    {
      [(COMeshNodeStateTracker *)self setStatus:1];
      [(COMeshNodeStateTracker *)self setOutstandingProbe:0];
      goto LABEL_10;
    }

    if (state == 4)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  state = self->_state;
  v6 = state > 4;
  v7 = (1 << state) & 0x13;
  if (v6 || v7 == 0)
  {
    self->_state = stateCopy;
    goto LABEL_19;
  }

  self->_state = stateCopy;
  if ((stateCopy & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    delegate = [(COMeshNodeStateTracker *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate2 = [(COMeshNodeStateTracker *)self delegate];
      [delegate2 nodeBecameAvailable:self];
    }

    stateCopy = self->_state;
LABEL_19:
    if (stateCopy == 2)
    {
      return;
    }
  }

  [(COMeshNodeStateTracker *)self setBackoffTimer:0];
  if (self->_totalBackedOffTime)
  {
    delegate3 = [(COMeshNodeStateTracker *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate4 = [(COMeshNodeStateTracker *)self delegate];
      [delegate4 backedOffNodeMovedOutOfElection:self];
    }
  }

  self->_totalBackedOffTime = 0;
}

- (void)setElectionStage:(int64_t)stage
{
  if (self->_electionStage != stage)
  {
    self->_electionStage = stage;
    if (stage == 4)
    {
      backoffTimer = [(COMeshNodeStateTracker *)self backoffTimer];

      if (!backoffTimer)
      {
        node = [(COMeshNodeStateTracker *)self node];
        client = [node client];
        dispatchQueue = [client dispatchQueue];
        v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, dispatchQueue);

        if (v8)
        {
          v9 = dispatch_walltime(0, 100000000);
          dispatch_source_set_timer(v8, v9, 0x5F5E100uLL, 0);
          objc_initWeak(&location, self);
          v11 = MEMORY[0x277D85DD0];
          v12 = 3221225472;
          v13 = __43__COMeshNodeStateTracker_setElectionStage___block_invoke;
          v14 = &unk_278E15B10;
          objc_copyWeak(&v15, &location);
          dispatch_source_set_event_handler(v8, &v11);
          [(COMeshNodeStateTracker *)self setBackoffBucket:0, v11, v12, v13, v14];
          [(COMeshNodeStateTracker *)self setBackoffTimer:v8];
          objc_destroyWeak(&v15);
          objc_destroyWeak(&location);
        }

        else
        {
          v10 = COCoreLogForCategory(0);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            [COMeshNodeStateTracker setElectionStage:v10];
          }
        }
      }
    }
  }
}

void __43__COMeshNodeStateTracker_setElectionStage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained didFireBackoffTimer];
    WeakRetained = v2;
  }
}

- (void)setLastHeard:(double)heard
{
  [(COMeshNodeStateTracker *)self lastHeard];
  if (v5 != heard)
  {
    self->_lastHeard = heard;

    [(COMeshNodeStateTracker *)self setOutstandingProbe:0];
  }
}

- (void)didFireBackoffTimer
{
  backoffBucket = [(COMeshNodeStateTracker *)self backoffBucket];
  v4 = COMeshNodeStateTrackerBackoffSeries[backoffBucket];
  self->_totalBackedOffTime += v4;
  if (backoffBucket <= 0xC)
  {
    v5 = backoffBucket + 1;
    [(COMeshNodeStateTracker *)self setBackoffBucket:backoffBucket + 1];
    v4 = COMeshNodeStateTrackerBackoffSeries[v5];
  }

  v6 = 1000000 * v4;
  v7 = dispatch_walltime(0, 1000000 * v4);
  backoffTimer = [(COMeshNodeStateTracker *)self backoffTimer];
  dispatch_source_set_timer(backoffTimer, v7, v6, 0);

  delegate = [(COMeshNodeStateTracker *)self delegate];
  LOBYTE(v7) = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(COMeshNodeStateTracker *)self delegate];
    [delegate2 nodeShouldRetryAfterBackoff:self];
  }
}

- (COMeshNodeStateTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end