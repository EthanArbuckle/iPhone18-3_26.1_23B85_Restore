@interface BWNodeStillImagePrewarmMessage
+ (id)newMessageWithStillImageSettings:(id)a3 resourceConfig:(id)a4;
- (id)_initWithStillImageSettings:(id)a3 resourceConfig:(id)a4;
- (void)dealloc;
@end

@implementation BWNodeStillImagePrewarmMessage

+ (id)newMessageWithStillImageSettings:(id)a3 resourceConfig:(id)a4
{
  v6 = [BWNodeStillImagePrewarmMessage alloc];

  return [(BWNodeStillImagePrewarmMessage *)v6 _initWithStillImageSettings:a3 resourceConfig:a4];
}

- (id)_initWithStillImageSettings:(id)a3 resourceConfig:(id)a4
{
  v9.receiver = self;
  v9.super_class = BWNodeStillImagePrewarmMessage;
  v6 = [(BWNodeStillImagePrewarmMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    *&v6->super._category = 0x700000001;
    v6->_stillImageSettings = a3;
    v7->_resourceConfig = a4;
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