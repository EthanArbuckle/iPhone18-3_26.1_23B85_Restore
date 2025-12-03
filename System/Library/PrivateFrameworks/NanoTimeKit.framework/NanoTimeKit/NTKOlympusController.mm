@interface NTKOlympusController
- (BOOL)_hasWindrunnerWedge;
- (NTKFaceView)faceView;
- (NTKOlympusController)initWithFaceView:(id)view olympusView:(id)olympusView;
- (NTKOlympusTimeView)olympusView;
- (void)_animateClockHandsFromDate:(id)date toDate:(id)toDate duration:(double)duration;
- (void)_applyWindrunnerMask;
- (void)_handleSignificantTimeChanged;
- (void)_startClockUpdates;
- (void)_stopClockUpdates;
- (void)_updateHourComponentsWithDate:(id)date;
- (void)_updateTimeComponentsWithDate:(id)date hour:(int64_t)hour minute:(int64_t)minute second:(int64_t)second;
- (void)applyDataMode:(int64_t)mode;
- (void)dealloc;
- (void)setOverrideDate:(id)date duration:(double)duration;
@end

@implementation NTKOlympusController

- (NTKOlympusController)initWithFaceView:(id)view olympusView:(id)olympusView
{
  viewCopy = view;
  olympusViewCopy = olympusView;
  v12.receiver = self;
  v12.super_class = NTKOlympusController;
  v8 = [(NTKOlympusController *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_faceView, viewCopy);
    objc_storeWeak(&v9->_olympusView, olympusViewCopy);
    [(NTKOlympusController *)v9 _startClockUpdates];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__handleSignificantTimeChanged name:*MEMORY[0x277D766F0] object:0];
  }

  return v9;
}

- (void)dealloc
{
  [(NTKOlympusController *)self _stopClockUpdates];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D766F0] object:0];

  v4.receiver = self;
  v4.super_class = NTKOlympusController;
  [(NTKOlympusController *)&v4 dealloc];
}

- (void)applyDataMode:(int64_t)mode
{
  if ((mode - 2) >= 2)
  {
    if (mode == 1)
    {
      [(NTKOlympusController *)self _startClockUpdates];
    }
  }

  else
  {
    [(NTKOlympusController *)self _stopClockUpdates];
  }
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  WeakRetained = objc_loadWeakRetained(&self->_olympusView);
  [WeakRetained setOverrideDate:dateCopy duration:duration];

  date = [(NTKOlympusController *)self date];
  v8 = [dateCopy isEqualToDate:date];

  if ((v8 & 1) == 0)
  {
    v9 = dateCopy;
    if (!dateCopy)
    {
      v9 = [MEMORY[0x277CBB700] now];
    }

    dateCopy = v9;
    date2 = [(NTKOlympusController *)self date];
    [(NTKOlympusController *)self _animateClockHandsFromDate:date2 toDate:dateCopy duration:duration];
  }

  [(NTKOlympusController *)self _updateHourComponentsWithDate:dateCopy];
  v11 = objc_loadWeakRetained(&self->_olympusView);
  canUpdateWindrunnerMask = [v11 canUpdateWindrunnerMask];

  if (canUpdateWindrunnerMask)
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
      mEMORY[0x277CBB700] = [MEMORY[0x277CBB700] sharedInstance];
      v5 = [mEMORY[0x277CBB700] startUpdatesWithUpdateFrequency:1 withHandler:v3 identificationLog:&__block_literal_global_15];
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
    mEMORY[0x277CBB700] = [MEMORY[0x277CBB700] sharedInstance];
    [mEMORY[0x277CBB700] stopUpdatesForToken:self->_clockTimerToken];

    clockTimerToken = self->_clockTimerToken;
    self->_clockTimerToken = 0;
  }
}

- (void)_updateHourComponentsWithDate:(id)date
{
  dateCopy = date;
  v4 = NTKDateHourIn12HourTime(dateCopy);
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [currentCalendar component:64 fromDate:dateCopy];

  currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = [currentCalendar2 component:128 fromDate:dateCopy];

  [(NTKOlympusController *)self _updateTimeComponentsWithDate:dateCopy hour:v4 minute:v6 second:v8];
}

- (void)_updateTimeComponentsWithDate:(id)date hour:(int64_t)hour minute:(int64_t)minute second:(int64_t)second
{
  [(NTKOlympusController *)self setDate:date];
  [(NTKOlympusController *)self setHour:hour];
  [(NTKOlympusController *)self setMinute:minute];

  [(NTKOlympusController *)self setSecond:second];
}

- (void)_animateClockHandsFromDate:(id)date toDate:(id)toDate duration:(double)duration
{
  dateCopy = date;
  toDateCopy = toDate;
  if ([(NTKOlympusController *)self _hasWindrunnerWedge])
  {
    WeakRetained = objc_loadWeakRetained(&self->_olympusView);
    [WeakRetained animateClockHandsFromDate:dateCopy toDate:toDateCopy duration:duration];
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
  faceView = [(NTKOlympusController *)self faceView];
  currentDisplayDate = [faceView currentDisplayDate];
  [WeakRetained applyWindrunnerMaskWithDate:currentDisplayDate];
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