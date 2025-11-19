@interface NTKOlympusController
- (BOOL)_hasWindrunnerWedge;
- (NTKFaceView)faceView;
- (NTKOlympusController)initWithFaceView:(id)a3 olympusView:(id)a4;
- (NTKOlympusTimeView)olympusView;
- (void)_animateClockHandsFromDate:(id)a3 toDate:(id)a4 duration:(double)a5;
- (void)_applyWindrunnerMask;
- (void)_handleSignificantTimeChanged;
- (void)_startClockUpdates;
- (void)_stopClockUpdates;
- (void)_updateHourComponentsWithDate:(id)a3;
- (void)_updateTimeComponentsWithDate:(id)a3 hour:(int64_t)a4 minute:(int64_t)a5 second:(int64_t)a6;
- (void)applyDataMode:(int64_t)a3;
- (void)dealloc;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
@end

@implementation NTKOlympusController

- (NTKOlympusController)initWithFaceView:(id)a3 olympusView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = NTKOlympusController;
  v8 = [(NTKOlympusController *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_faceView, v6);
    objc_storeWeak(&v9->_olympusView, v7);
    [(NTKOlympusController *)v9 _startClockUpdates];
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v9 selector:sel__handleSignificantTimeChanged name:*MEMORY[0x277D766F0] object:0];
  }

  return v9;
}

- (void)dealloc
{
  [(NTKOlympusController *)self _stopClockUpdates];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D766F0] object:0];

  v4.receiver = self;
  v4.super_class = NTKOlympusController;
  [(NTKOlympusController *)&v4 dealloc];
}

- (void)applyDataMode:(int64_t)a3
{
  if ((a3 - 2) >= 2)
  {
    if (a3 == 1)
    {
      [(NTKOlympusController *)self _startClockUpdates];
    }
  }

  else
  {
    [(NTKOlympusController *)self _stopClockUpdates];
  }
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v13 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_olympusView);
  [WeakRetained setOverrideDate:v13 duration:a4];

  v7 = [(NTKOlympusController *)self date];
  v8 = [v13 isEqualToDate:v7];

  if ((v8 & 1) == 0)
  {
    v9 = v13;
    if (!v13)
    {
      v9 = [MEMORY[0x277CBB700] now];
    }

    v13 = v9;
    v10 = [(NTKOlympusController *)self date];
    [(NTKOlympusController *)self _animateClockHandsFromDate:v10 toDate:v13 duration:a4];
  }

  [(NTKOlympusController *)self _updateHourComponentsWithDate:v13];
  v11 = objc_loadWeakRetained(&self->_olympusView);
  v12 = [v11 canUpdateWindrunnerMask];

  if (v12)
  {
    [(NTKOlympusController *)self _applyWindrunnerMask];
  }
}

- (void)_startClockUpdates
{
  if (!self->_clockTimerToken)
  {
    if ([(NTKOlympusController *)self _hasWindrunnerWedge])
    {
      objc_initWeak(&location, self);
      v7 = MEMORY[0x277D85DD0];
      v8 = 3221225472;
      v9 = __42__NTKOlympusController__startClockUpdates__block_invoke;
      v10 = &unk_27877ED48;
      objc_copyWeak(&v11, &location);
      v3 = _Block_copy(&v7);
      v4 = [MEMORY[0x277CBB700] sharedInstance];
      v5 = [v4 startUpdatesWithUpdateFrequency:1 withHandler:v3 identificationLog:&__block_literal_global_15];
      clockTimerToken = self->_clockTimerToken;
      self->_clockTimerToken = v5;

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

void __42__NTKOlympusController__startClockUpdates__block_invoke(uint64_t a1, void *a2, id *a3)
{
  v22 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = *a3;
    v8 = [WeakRetained olympusView];
    [v8 setDate:v7];

    v9 = [v6 minute];
    [v6 _updateTimeComponentsWithDate:*a3 hour:NTK12HourTimeFrom24HourTime(a3[1]) minute:a3[2] second:a3[3]];
    +[NTKOlympusMask angleForHour:minutes:](NTKOlympusMask, "angleForHour:minutes:", [v6 hour], objc_msgSend(v6, "minute"));
    v11 = v10;
    +[NTKOlympusMask angleForMinute:seconds:](NTKOlympusMask, "angleForMinute:seconds:", [v6 minute], objc_msgSend(v6, "second"));
    v13 = v12;
    v14 = [v6 olympusView];
    [v14 hourHandAngle];
    if (v11 - v15 > 1.0)
    {
      v18 = 1;
    }

    else
    {
      v16 = [v6 olympusView];
      [v16 minuteHandAngle];
      v18 = v13 - v17 > 1.0;
    }

    v19 = [v6 minute];
    v20 = [v6 olympusView];
    if ([v20 canUpdateWindrunnerMask])
    {
      v21 = v9 != v19 || v18;

      if (v21 == 1)
      {
        [v6 _applyWindrunnerMask];
      }
    }

    else
    {
    }
  }
}

- (void)_stopClockUpdates
{
  if (self->_clockTimerToken)
  {
    v3 = [MEMORY[0x277CBB700] sharedInstance];
    [v3 stopUpdatesForToken:self->_clockTimerToken];

    clockTimerToken = self->_clockTimerToken;
    self->_clockTimerToken = 0;
  }
}

- (void)_updateHourComponentsWithDate:(id)a3
{
  v9 = a3;
  v4 = NTKDateHourIn12HourTime(v9);
  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [v5 component:64 fromDate:v9];

  v7 = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = [v7 component:128 fromDate:v9];

  [(NTKOlympusController *)self _updateTimeComponentsWithDate:v9 hour:v4 minute:v6 second:v8];
}

- (void)_updateTimeComponentsWithDate:(id)a3 hour:(int64_t)a4 minute:(int64_t)a5 second:(int64_t)a6
{
  [(NTKOlympusController *)self setDate:a3];
  [(NTKOlympusController *)self setHour:a4];
  [(NTKOlympusController *)self setMinute:a5];

  [(NTKOlympusController *)self setSecond:a6];
}

- (void)_animateClockHandsFromDate:(id)a3 toDate:(id)a4 duration:(double)a5
{
  v10 = a3;
  v8 = a4;
  if ([(NTKOlympusController *)self _hasWindrunnerWedge])
  {
    WeakRetained = objc_loadWeakRetained(&self->_olympusView);
    [WeakRetained animateClockHandsFromDate:v10 toDate:v8 duration:a5];
  }
}

- (BOOL)_hasWindrunnerWedge
{
  WeakRetained = objc_loadWeakRetained(&self->_olympusView);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_olympusView);
    v5 = [v4 currentStyle] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_handleSignificantTimeChanged
{
  if ([(NTKOlympusController *)self _hasWindrunnerWedge])
  {

    [(NTKOlympusController *)self _applyWindrunnerMask];
  }
}

- (void)_applyWindrunnerMask
{
  WeakRetained = objc_loadWeakRetained(&self->_olympusView);
  v3 = [(NTKOlympusController *)self faceView];
  v4 = [v3 currentDisplayDate];
  [WeakRetained applyWindrunnerMaskWithDate:v4];
}

- (NTKOlympusTimeView)olympusView
{
  WeakRetained = objc_loadWeakRetained(&self->_olympusView);

  return WeakRetained;
}

- (NTKFaceView)faceView
{
  WeakRetained = objc_loadWeakRetained(&self->_faceView);

  return WeakRetained;
}

@end