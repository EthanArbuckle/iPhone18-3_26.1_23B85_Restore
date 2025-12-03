@interface BWNodeErrorMessage
+ (id)newMessageWithNodeError:(id)error;
- (void)_initWithNodeError:(void *)error;
- (void)dealloc;
@end

@implementation BWNodeErrorMessage

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWNodeErrorMessage;
  [(BWNodeErrorMessage *)&v3 dealloc];
}

- (void)_initWithNodeError:(void *)error
{
  if (!error)
  {
    return 0;
  }

  v6.receiver = error;
  v6.super_class = BWNodeErrorMessage;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  v4 = v3;
  if (v3)
  {
    v3[1] = 0x500000001;
    v3[2] = a2;
  }

  return v4;
}

+ (id)newMessageWithNodeError:(id)error
{
  v4 = [BWNodeErrorMessage alloc];

  return [(BWNodeErrorMessage *)v4 _initWithNodeError:error];
}

@end