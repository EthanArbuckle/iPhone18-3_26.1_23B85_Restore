@interface MRUHardwareVolumeDataSource
- (MRUHardwareVolumeDataSource)initWithVolumeDataSource:(id)source;
- (double)calculateButtonRepeatDelay;
- (void)cancelVolumeEvent;
- (void)changeVolumeBy:(double)by;
- (void)consumeSinglePressDownForButtonKind:(int64_t)kind;
- (void)consumeSinglePressUpForButtonKind:(int64_t)kind;
- (void)decreaseVolume;
- (void)handleDecreaseDown;
- (void)handleIncreaseDown;
- (void)increaseVolume;
@end

@implementation MRUHardwareVolumeDataSource

- (MRUHardwareVolumeDataSource)initWithVolumeDataSource:(id)source
{
  sourceCopy = source;
  v10.receiver = self;
  v10.super_class = MRUHardwareVolumeDataSource;
  v6 = [(MRUHardwareVolumeDataSource *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_volumeDataSource, source);
    [(MPVolumeControllerDataSource *)v7->_volumeDataSource volume];
    v7->_pendingVolumeChange = v8;
  }

  return v7;
}

- (void)consumeSinglePressDownForButtonKind:(int64_t)kind
{
  v8 = *MEMORY[0x1E69E9840];
  if (kind == 3)
  {
    v5 = MCLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = objc_opt_class();
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ received volume increase touch down", &v6, 0xCu);
    }

    [(MRUHardwareVolumeDataSource *)self handleIncreaseDown];
  }

  else if (kind == 4)
  {
    v4 = MCLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = objc_opt_class();
      _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ received volume decrease touch down", &v6, 0xCu);
    }

    [(MRUHardwareVolumeDataSource *)self handleDecreaseDown];
  }
}

- (void)consumeSinglePressUpForButtonKind:(int64_t)kind
{
  v7 = *MEMORY[0x1E69E9840];
  if (kind == 4)
  {
    [(MRUHardwareVolumeDataSource *)self cancelVolumeEvent];
    v3 = MCLogCategoryDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = objc_opt_class();
      v4 = "%{public}@ received volume decrease touch up";
      goto LABEL_7;
    }
  }

  else
  {
    if (kind != 3)
    {
      return;
    }

    [(MRUHardwareVolumeDataSource *)self cancelVolumeEvent];
    v3 = MCLogCategoryDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = objc_opt_class();
      v4 = "%{public}@ received volume increase touch up";
LABEL_7:
      _os_log_impl(&dword_1A20FC000, v3, OS_LOG_TYPE_DEFAULT, v4, &v5, 0xCu);
    }
  }
}

- (void)handleDecreaseDown
{
  v7[1] = *MEMORY[0x1E69E9840];
  [(MPVolumeControllerDataSource *)self->_volumeDataSource volume];
  self->_pendingVolumeChange = v3;
  self->_debounceVolumeRepeat = 1;
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_increaseVolume object:0];
  [(MRUHardwareVolumeDataSource *)self calculateButtonRepeatDelay];
  v5 = v4;
  v7[0] = *MEMORY[0x1E695DA28];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [(MRUHardwareVolumeDataSource *)self performSelector:sel_decreaseVolume withObject:0 afterDelay:v6 inModes:v5];

  [(MRUHardwareVolumeDataSource *)self decreaseVolume];
}

- (void)handleIncreaseDown
{
  v7[1] = *MEMORY[0x1E69E9840];
  [(MPVolumeControllerDataSource *)self->_volumeDataSource volume];
  self->_pendingVolumeChange = v3;
  self->_debounceVolumeRepeat = 1;
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_decreaseVolume object:0];
  [(MRUHardwareVolumeDataSource *)self calculateButtonRepeatDelay];
  v5 = v4;
  v7[0] = *MEMORY[0x1E695DA28];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [(MRUHardwareVolumeDataSource *)self performSelector:sel_increaseVolume withObject:0 afterDelay:v6 inModes:v5];

  [(MRUHardwareVolumeDataSource *)self increaseVolume];
}

- (void)increaseVolume
{
  self->_debounceVolumeRepeat = 0;
  if (([(MPVolumeControllerDataSource *)self->_volumeDataSource volumeControlCapabilities]& 5) != 0)
  {
    [(MPVolumeControllerDataSource *)self->_volumeDataSource beginIncreasingRelativeVolume];
    volumeDataSource = self->_volumeDataSource;

    [(MPVolumeControllerDataSource *)volumeDataSource endIncreasingRelativeVolume];
  }

  else
  {

    [(MRUHardwareVolumeDataSource *)self changeVolumeBy:0.0625];
  }
}

- (void)decreaseVolume
{
  self->_debounceVolumeRepeat = 0;
  if (([(MPVolumeControllerDataSource *)self->_volumeDataSource volumeControlCapabilities]& 5) != 0)
  {
    [(MPVolumeControllerDataSource *)self->_volumeDataSource beginDecreasingRelativeVolume];
    volumeDataSource = self->_volumeDataSource;

    [(MPVolumeControllerDataSource *)volumeDataSource endDecreasingRelativeVolume];
  }

  else
  {

    [(MRUHardwareVolumeDataSource *)self changeVolumeBy:-0.0625];
  }
}

- (void)cancelVolumeEvent
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_increaseVolume object:0];
  v3 = MEMORY[0x1E69E58C0];

  [v3 cancelPreviousPerformRequestsWithTarget:self selector:sel_decreaseVolume object:0];
}

- (void)changeVolumeBy:(double)by
{
  v11 = *MEMORY[0x1E69E9840];
  byCopy = -by;
  if (by >= 0.0)
  {
    byCopy = by;
  }

  if (byCopy > 0.00000011920929)
  {
    v5 = self->_pendingVolumeChange + by;
    if (v5 < 0.0)
    {
      v5 = 0.0;
    }

    self->_pendingVolumeChange = fmin(v5, 1.0);
    v6 = MCLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      pendingVolumeChange = self->_pendingVolumeChange;
      v9 = 134217984;
      v10 = pendingVolumeChange;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "Committing volume change to: %f", &v9, 0xCu);
    }

    v8 = self->_pendingVolumeChange;
    *&v8 = v8;
    [(MPVolumeControllerDataSource *)self->_volumeDataSource setVolume:v8];
  }
}

- (double)calculateButtonRepeatDelay
{
  result = 0.1;
  if (self->_debounceVolumeRepeat)
  {
    return 0.6;
  }

  return result;
}

@end