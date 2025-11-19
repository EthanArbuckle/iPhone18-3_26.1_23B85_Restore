@interface BWNodeDroppedSampleMessage
+ (id)newMessageWithDroppedSample:(id)a3;
- (void)_initWithDroppedSample:(void *)a1;
- (void)dealloc;
@end

@implementation BWNodeDroppedSampleMessage

+ (id)newMessageWithDroppedSample:(id)a3
{
  v4 = [BWNodeDroppedSampleMessage alloc];

  return [(BWNodeDroppedSampleMessage *)v4 _initWithDroppedSample:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWNodeDroppedSampleMessage;
  [(BWNodeDroppedSampleMessage *)&v3 dealloc];
}

- (void)_initWithDroppedSample:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v6.receiver = a1;
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