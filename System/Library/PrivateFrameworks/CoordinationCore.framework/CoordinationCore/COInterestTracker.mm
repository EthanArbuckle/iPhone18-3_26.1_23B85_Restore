@interface COInterestTracker
- (BOOL)canDispatchWithPrimary:(BOOL)primary;
- (COInterestTracker)initWithAccessory:(id)accessory delegate:(id)delegate primaryAvailable:(BOOL)available secondary:(id)secondary;
- (COInterestTrackerDelegate)delegate;
- (unint64_t)_nextInterestSerial;
- (void)_checkTriggerReset;
- (void)_setInterest:(id)interest;
- (void)setInterests:(id)interests;
- (void)setPrimaryAvailable:(BOOL)available;
- (void)setSecondary:(id)secondary;
@end

@implementation COInterestTracker

- (void)_checkTriggerReset
{
  if ([(COInterestTracker *)self triggerReset])
  {
    [(COInterestTracker *)self setTriggerReset:0];
    delegate = [(COInterestTracker *)self delegate];
    if (delegate)
    {
      v4 = delegate;
      if (objc_opt_respondsToSelector())
      {
        [v4 interestTrackerTriggerReset:self];
      }
    }

    MEMORY[0x2821F9730]();
  }
}

- (unint64_t)_nextInterestSerial
{
  interestsSerial = [(COInterestTracker *)self interestsSerial];
  [(COInterestTracker *)self setInterestsSerial:interestsSerial + 1];
  return interestsSerial + 1;
}

- (void)_setInterest:(id)interest
{
  interestCopy = interest;
  _nextInterestSerial = [(COInterestTracker *)self _nextInterestSerial];
  objc_initWeak(&location, self);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __34__COInterestTracker__setInterest___block_invoke;
  v13 = &unk_278E17C78;
  objc_copyWeak(v15, &location);
  v15[1] = _nextInterestSerial;
  v6 = interestCopy;
  v14 = v6;
  v7 = MEMORY[0x245D5FF10](&v10);
  v8 = [(COInterestTracker *)self delegate:v10];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    secondary = [(COInterestTracker *)self secondary];
    [v8 interestTracker:self setInterests:v6 forMember:secondary callback:v7];
  }

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

uint64_t __34__COInterestTracker__setInterest___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    WeakRetained = [WeakRetained interestsSerial];
    v5 = v7;
    if (WeakRetained == *(a1 + 48))
    {
      WeakRetained = [*(a1 + 32) count];
      v5 = v7;
      if (WeakRetained)
      {
        if (a2)
        {
          WeakRetained = [v7 setTriggerReset:0];
        }

        else
        {
          [v7 setRemoteInterests:*(a1 + 48)];
          WeakRetained = [v7 _checkTriggerReset];
        }

        v5 = v7;
      }
    }
  }

  return MEMORY[0x2821F96F8](WeakRetained, v5);
}

- (void)setInterests:(id)interests
{
  interestsCopy = interests;
  interests = [(COInterestTracker *)self interests];
  v5 = [interests isEqualToSet:interestsCopy];

  if ((v5 & 1) == 0)
  {
    v6 = [interestsCopy copy];
    interests = self->_interests;
    self->_interests = v6;

    if (![(COInterestTracker *)self primaryAvailable])
    {
      secondary = [(COInterestTracker *)self secondary];

      if (secondary)
      {
        interests2 = [(COInterestTracker *)self interests];
        [(COInterestTracker *)self _setInterest:interests2];
      }
    }
  }
}

- (void)setPrimaryAvailable:(BOOL)available
{
  if (self->_primaryAvailable != available)
  {
    availableCopy = available;
    self->_primaryAvailable = available;
    secondary = [(COInterestTracker *)self secondary];

    if (secondary)
    {
      if (availableCopy)
      {
        v6 = [MEMORY[0x277CBEB98] set];
        [(COInterestTracker *)self _setInterest:v6];

        [(COInterestTracker *)self _checkTriggerReset];
      }

      else
      {
        [(COInterestTracker *)self setTriggerReset:1];
        interests = [(COInterestTracker *)self interests];
        [(COInterestTracker *)self _setInterest:interests];
      }
    }
  }
}

- (void)setSecondary:(id)secondary
{
  secondaryCopy = secondary;
  secondary = self->_secondary;
  v8 = secondaryCopy;
  if (secondaryCopy && secondary)
  {
    if (([(COClusterMember *)secondary isEqual:secondary]& 1) != 0)
    {
      goto LABEL_10;
    }
  }

  else if (!(secondaryCopy | secondary))
  {
    goto LABEL_10;
  }

  objc_storeStrong(&self->_secondary, secondary);
  if (![(COInterestTracker *)self primaryAvailable])
  {
    if (v8)
    {
      interests = [(COInterestTracker *)self interests];
      [(COInterestTracker *)self _setInterest:interests];
    }

    else
    {
      [(COInterestTracker *)self _nextInterestSerial];
      [(COInterestTracker *)self setTriggerReset:0];
    }
  }

LABEL_10:
}

- (COInterestTracker)initWithAccessory:(id)accessory delegate:(id)delegate primaryAvailable:(BOOL)available secondary:(id)secondary
{
  accessoryCopy = accessory;
  delegateCopy = delegate;
  secondaryCopy = secondary;
  v19.receiver = self;
  v19.super_class = COInterestTracker;
  v14 = [(COInterestTracker *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_accessory, accessory);
    objc_storeWeak(&v15->_delegate, delegateCopy);
    v15->_primaryAvailable = available;
    objc_storeStrong(&v15->_secondary, secondary);
    v16 = objc_alloc_init(MEMORY[0x277CBEB98]);
    interests = v15->_interests;
    v15->_interests = v16;

    *&v15->_remoteInterests = xmmword_244448740;
  }

  return v15;
}

- (BOOL)canDispatchWithPrimary:(BOOL)primary
{
  if ([(COInterestTracker *)self primaryAvailable])
  {
    if (!primary)
    {
      secondary = [(COInterestTracker *)self secondary];
      v6 = secondary != 0;

      return v6;
    }

    return 1;
  }

  secondary2 = [(COInterestTracker *)self secondary];

  if (!secondary2)
  {
    return 0;
  }

  interestsSerial = [(COInterestTracker *)self interestsSerial];
  if (interestsSerial == [(COInterestTracker *)self remoteInterests])
  {
    return 1;
  }

  return [(COInterestTracker *)self triggerReset];
}

- (COInterestTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end