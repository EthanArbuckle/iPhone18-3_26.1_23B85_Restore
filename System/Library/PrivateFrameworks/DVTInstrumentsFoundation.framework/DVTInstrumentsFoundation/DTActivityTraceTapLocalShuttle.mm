@interface DTActivityTraceTapLocalShuttle
- (void)addPidToExecEntriesFromMapping:(id)a3;
- (void)executeStopOnItinerary:(id)a3;
@end

@implementation DTActivityTraceTapLocalShuttle

- (void)executeStopOnItinerary:(id)a3
{
  v4 = a3;
  v5 = [(XRMobileAgent *)self mode];
  v6 = v5;
  if (v5 == *MEMORY[0x277D036C8])
  {
    v17.receiver = self;
    v17.super_class = DTActivityTraceTapLocalShuttle;
    [(XRMobileAgent *)&v17 executeStopOnItinerary:v4];
    self->_didPrepare = 0;
    loaderStop = self->_loaderStop;
    v8 = [(DTActivityTraceTapLocalShuttle *)self configuration];
    v9 = [(DTOSLogLoader *)loaderStop ticketToPrepare:self configuration:v8];

    v10 = self->_loaderStop;
    v11 = @"Preparing Stream";
LABEL_9:
    [v4 setNextStop:v10 mode:v11 ticket:v9];

    goto LABEL_23;
  }

  if (v5 == @"Preparing Stream")
  {
    self->_didPrepare = 1;
    self->_didStart = 0;
    goto LABEL_22;
  }

  if (v5 == @"Starting Stream")
  {
    v12 = 52;
    goto LABEL_21;
  }

  if (v5 != @"Waiting")
  {
    if (v5 != @"Stopping Stream")
    {
      if (v5 != @"Fetching")
      {
        v16.receiver = self;
        v16.super_class = DTActivityTraceTapLocalShuttle;
        [(XRMobileAgent *)&v16 executeStopOnItinerary:v4];
        goto LABEL_23;
      }

LABEL_22:
      [v4 setNextStop:self->_ownersDock mode:@"Waiting"];
      goto LABEL_23;
    }

    v12 = 54;
LABEL_21:
    *(&self->super.super.isa + v12) = 1;
    goto LABEL_22;
  }

  if (self->_shouldStart && !self->_didStart)
  {
    v9 = [(DTOSLogLoader *)self->_loaderStop ticketToStartStream:self];
    v10 = self->_loaderStop;
    v11 = @"Starting Stream";
    goto LABEL_9;
  }

  if (self->_shouldStop && !self->_didStop)
  {
    v9 = [(DTOSLogLoader *)self->_loaderStop ticketToStopStream:self];
    v10 = self->_loaderStop;
    v11 = @"Stopping Stream";
    goto LABEL_9;
  }

  if (self->_shouldFetch)
  {
    commonFetchTicket = self->_commonFetchTicket;
    if (!commonFetchTicket)
    {
      v14 = [(DTOSLogLoader *)self->_loaderStop ticketToFetchData:self window:self->_fetchWindow fetchStartTime:self->_fetchStartTime];
      v15 = self->_commonFetchTicket;
      self->_commonFetchTicket = v14;

      commonFetchTicket = self->_commonFetchTicket;
    }

    [v4 setNextStop:self->_loaderStop mode:@"Fetching" ticket:commonFetchTicket];
  }

  else
  {
    [v4 revisit];
  }

LABEL_23:
}

- (void)addPidToExecEntriesFromMapping:(id)a3
{
  if (self->_processDetectionCallback)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_247FB980C;
    v3[3] = &unk_278EF2F48;
    v3[4] = self;
    [a3 enumerateObjectsAndIntegerKeys:v3];
  }
}

@end