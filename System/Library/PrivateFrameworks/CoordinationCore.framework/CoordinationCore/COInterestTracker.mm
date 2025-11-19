@interface COInterestTracker
- (BOOL)canDispatchWithPrimary:(BOOL)a3;
- (COInterestTracker)initWithAccessory:(id)a3 delegate:(id)a4 primaryAvailable:(BOOL)a5 secondary:(id)a6;
- (COInterestTrackerDelegate)delegate;
- (unint64_t)_nextInterestSerial;
- (void)_checkTriggerReset;
- (void)_setInterest:(id)a3;
- (void)setInterests:(id)a3;
- (void)setPrimaryAvailable:(BOOL)a3;
- (void)setSecondary:(id)a3;
@end

@implementation COInterestTracker

- (void)_checkTriggerReset
{
  if ([(COInterestTracker *)self triggerReset])
  {
    [(COInterestTracker *)self setTriggerReset:0];
    v3 = [(COInterestTracker *)self delegate];
    if (v3)
    {
      v4 = v3;
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
  v3 = [(COInterestTracker *)self interestsSerial];
  [(COInterestTracker *)self setInterestsSerial:v3 + 1];
  return v3 + 1;
}

- (void)_setInterest:(id)a3
{
  v4 = a3;
  v5 = [(COInterestTracker *)self _nextInterestSerial];
  objc_initWeak(&location, self);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __34__COInterestTracker__setInterest___block_invoke;
  v13 = &unk_278E17C78;
  objc_copyWeak(v15, &location);
  v15[1] = v5;
  v6 = v4;
  v14 = v6;
  v7 = MEMORY[0x245D5FF10](&v10);
  v8 = [(COInterestTracker *)self delegate:v10];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = [(COInterestTracker *)self secondary];
    [v8 interestTracker:self setInterests:v6 forMember:v9 callback:v7];
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

- (void)setInterests:(id)a3
{
  v10 = a3;
  v4 = [(COInterestTracker *)self interests];
  v5 = [v4 isEqualToSet:v10];

  if ((v5 & 1) == 0)
  {
    v6 = [v10 copy];
    interests = self->_interests;
    self->_interests = v6;

    if (![(COInterestTracker *)self primaryAvailable])
    {
      v8 = [(COInterestTracker *)self secondary];

      if (v8)
      {
        v9 = [(COInterestTracker *)self interests];
        [(COInterestTracker *)self _setInterest:v9];
      }
    }
  }
}

- (void)setPrimaryAvailable:(BOOL)a3
{
  if (self->_primaryAvailable != a3)
  {
    v3 = a3;
    self->_primaryAvailable = a3;
    v5 = [(COInterestTracker *)self secondary];

    if (v5)
    {
      if (v3)
      {
        v6 = [MEMORY[0x277CBEB98] set];
        [(COInterestTracker *)self _setInterest:v6];

        [(COInterestTracker *)self _checkTriggerReset];
      }

      else
      {
        [(COInterestTracker *)self setTriggerReset:1];
        v7 = [(COInterestTracker *)self interests];
        [(COInterestTracker *)self _setInterest:v7];
      }
    }
  }
}

- (void)setSecondary:(id)a3
{
  v5 = a3;
  secondary = self->_secondary;
  v8 = v5;
  if (v5 && secondary)
  {
    if (([(COClusterMember *)secondary isEqual:secondary]& 1) != 0)
    {
      goto LABEL_10;
    }
  }

  else if (!(v5 | secondary))
  {
    goto LABEL_10;
  }

  objc_storeStrong(&self->_secondary, a3);
  if (![(COInterestTracker *)self primaryAvailable])
  {
    if (v8)
    {
      v7 = [(COInterestTracker *)self interests];
      [(COInterestTracker *)self _setInterest:v7];
    }

    else
    {
      [(COInterestTracker *)self _nextInterestSerial];
      [(COInterestTracker *)self setTriggerReset:0];
    }
  }

LABEL_10:
}

- (COInterestTracker)initWithAccessory:(id)a3 delegate:(id)a4 primaryAvailable:(BOOL)a5 secondary:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = COInterestTracker;
  v14 = [(COInterestTracker *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_accessory, a3);
    objc_storeWeak(&v15->_delegate, v12);
    v15->_primaryAvailable = a5;
    objc_storeStrong(&v15->_secondary, a6);
    v16 = objc_alloc_init(MEMORY[0x277CBEB98]);
    interests = v15->_interests;
    v15->_interests = v16;

    *&v15->_remoteInterests = xmmword_244448740;
  }

  return v15;
}

- (BOOL)canDispatchWithPrimary:(BOOL)a3
{
  if ([(COInterestTracker *)self primaryAvailable])
  {
    if (!a3)
    {
      v5 = [(COInterestTracker *)self secondary];
      v6 = v5 != 0;

      return v6;
    }

    return 1;
  }

  v7 = [(COInterestTracker *)self secondary];

  if (!v7)
  {
    return 0;
  }

  v8 = [(COInterestTracker *)self interestsSerial];
  if (v8 == [(COInterestTracker *)self remoteInterests])
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