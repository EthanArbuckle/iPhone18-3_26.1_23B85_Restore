@interface CBStrobeFilter
- (BOOL)isPolluted;
- (BOOL)wasFlashlightOnAt:(float)a3;
- (CBStrobeFilter)initWithFlashlightManager:(id)a3;
- (CBStrobeFilter)initWithQueue:(id)a3;
- (id)filterEvent:(id)a3;
- (id)handleALSEvent:(id)a3;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation CBStrobeFilter

- (CBStrobeFilter)initWithFlashlightManager:(id)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6.receiver = self;
  v6.super_class = CBStrobeFilter;
  v9 = [(CBStrobeFilter *)&v6 init];
  if (v9)
  {
    v3 = os_log_create("com.apple.CoreBrightness.CBStrobeFilter", "default");
    v9->super._logHandle = v3;
    v4 = MEMORY[0x1E69E5928](v7);
    v9->_flashlightManager = v4;
  }

  return v9;
}

- (CBStrobeFilter)initWithQueue:(id)a3
{
  context = objc_autoreleasePoolPush();
  v5 = [(CBStrobeFilter *)self initWithFlashlightManager:[[CBFlashlightManager alloc] initWithQueue:a3 andSamplingTime:1000000000]];
  objc_autoreleasePoolPop(context);
  return v5;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  if (self->super._logHandle)
  {
    MEMORY[0x1E69E5920](v5->super._logHandle);
    v5->super._logHandle = 0;
  }

  *&v2 = MEMORY[0x1E69E5920](v5->_flashlightManager).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBStrobeFilter;
  [(CBStrobeFilter *)&v3 dealloc];
}

- (void)start
{
  if (!self->_isActive)
  {
    [(CBFlashlightManager *)self->_flashlightManager start];
    self->_isActive = 1;
  }
}

- (void)stop
{
  if (self->_isActive)
  {
    [(CBFlashlightManager *)self->_flashlightManager stop];
    self->_isActive = 0;
  }
}

- (id)filterEvent:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return [(CBStrobeFilter *)self handleALSEvent:a3];
  }

  else
  {
    return a3;
  }
}

- (id)handleALSEvent:(id)a3
{
  [a3 timestamp];
  v7 = v3;
  [a3 integrationTime];
  *&v5 = v7 - v4;
  self->_pollutedWithEvent = [(CBStrobeFilter *)self wasFlashlightOnAt:v5];
  return a3;
}

- (BOOL)wasFlashlightOnAt:(float)a3
{
  if (!self->_isActive || !self->_flashlightManager)
  {
    return 0;
  }

  LODWORD(v4) = [(CBFlashlightManager *)self->_flashlightManager flashlightState]>> 32;
  if (([(CBFlashlightManager *)self->_flashlightManager flashlightState]& 1) == 0)
  {
    if (!float_equal(v4, 0.0))
    {
      return a3 <= (v4 + 0.25);
    }

    return 0;
  }

  return a3 >= (v4 - 0.25);
}

- (BOOL)isPolluted
{
  if (!self->_isActive || !self->_flashlightManager)
  {
    return 0;
  }

  v3 = 1;
  if (([(CBFlashlightManager *)self->_flashlightManager flashlightState]& 1) == 0)
  {
    return self->_pollutedWithEvent;
  }

  return v3;
}

@end