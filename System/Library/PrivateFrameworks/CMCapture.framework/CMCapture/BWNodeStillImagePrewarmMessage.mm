@interface BWNodeStillImagePrewarmMessage
+ (id)newMessageWithStillImageSettings:(id)settings resourceConfig:(id)config;
- (id)_initWithStillImageSettings:(id)settings resourceConfig:(id)config;
- (void)dealloc;
@end

@implementation BWNodeStillImagePrewarmMessage

+ (id)newMessageWithStillImageSettings:(id)settings resourceConfig:(id)config
{
  v6 = [BWNodeStillImagePrewarmMessage alloc];

  return [(BWNodeStillImagePrewarmMessage *)v6 _initWithStillImageSettings:settings resourceConfig:config];
}

- (id)_initWithStillImageSettings:(id)settings resourceConfig:(id)config
{
  v9.receiver = self;
  v9.super_class = BWNodeStillImagePrewarmMessage;
  v6 = [(BWNodeStillImagePrewarmMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    *&v6->super._category = 0x700000001;
    v6->_stillImageSettings = settings;
    v7->_resourceConfig = config;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWNodeStillImagePrewarmMessage;
  [(BWNodeStillImagePrewarmMessage *)&v3 dealloc];
}

@end