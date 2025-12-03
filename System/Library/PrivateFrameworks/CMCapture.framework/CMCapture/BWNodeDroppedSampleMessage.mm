@interface BWNodeDroppedSampleMessage
+ (id)newMessageWithDroppedSample:(id)sample;
- (void)_initWithDroppedSample:(void *)sample;
- (void)dealloc;
@end

@implementation BWNodeDroppedSampleMessage

+ (id)newMessageWithDroppedSample:(id)sample
{
  v4 = [BWNodeDroppedSampleMessage alloc];

  return [(BWNodeDroppedSampleMessage *)v4 _initWithDroppedSample:sample];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWNodeDroppedSampleMessage;
  [(BWNodeDroppedSampleMessage *)&v3 dealloc];
}

- (void)_initWithDroppedSample:(void *)sample
{
  if (!sample)
  {
    return 0;
  }

  v6.receiver = sample;
  v6.super_class = BWNodeDroppedSampleMessage;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  v4 = v3;
  if (v3)
  {
    v3[1] = 0x200000002;
    v3[2] = a2;
  }

  return v4;
}

@end