@interface CBStrobeFilter
- (BOOL)isPolluted;
- (BOOL)wasFlashlightOnAt:(float)at;
- (CBStrobeFilter)initWithFlashlightManager:(id)manager;
- (CBStrobeFilter)initWithQueue:(id)queue;
- (id)filterEvent:(id)event;
- (id)handleALSEvent:(id)event;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation CBStrobeFilter

- (CBStrobeFilter)initWithFlashlightManager:(id)manager
{
  selfCopy = self;
  v8 = a2;
  managerCopy = manager;
  v6.receiver = self;
  v6.super_class = CBStrobeFilter;
  selfCopy = [(CBStrobeFilter *)&v6 init];
  if (selfCopy)
  {
    v3 = os_log_create("com.apple.CoreBrightness.CBStrobeFilter", "default");
    selfCopy->super._logHandle = v3;
    v4 = MEMORY[0x1E69E5928](managerCopy);
    selfCopy->_flashlightManager = v4;
  }

  return selfCopy;
}

- (CBStrobeFilter)initWithQueue:(id)queue
{
  context = objc_autoreleasePoolPush();
  v5 = [(CBStrobeFilter *)self initWithFlashlightManager:[[CBFlashlightManager alloc] initWithQueue:queue andSamplingTime:1000000000]];
  objc_autoreleasePoolPop(context);
  return v5;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  if (self->super._logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->super._logHandle);
    selfCopy->super._logHandle = 0;
  }

  *&v2 = MEMORY[0x1E69E5920](selfCopy->_flashlightManager).n128_u64[0];
  v3.receiver = selfCopy;
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

- (id)filterEvent:(id)event
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return [(CBStrobeFilter *)self handleALSEvent:event];
  }

  else
  {
    return event;
  }
}

- (id)handleALSEvent:(id)event
{
  [event timestamp];
  v7 = v3;
  [event integrationTime];
  *&v5 = v7 - v4;
  self->_pollutedWithEvent = [(CBStrobeFilter *)self wasFlashlightOnAt:v5];
  return event;
}

- (BOOL)wasFlashlightOnAt:(float)at
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
      return at <= (v4 + 0.25);
    }

    return 0;
  }

  return at >= (v4 - 0.25);
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