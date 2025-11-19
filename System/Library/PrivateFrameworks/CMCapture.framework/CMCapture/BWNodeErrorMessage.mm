@interface BWNodeErrorMessage
+ (id)newMessageWithNodeError:(id)a3;
- (void)_initWithNodeError:(void *)a1;
- (void)dealloc;
@end

@implementation BWNodeErrorMessage

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWNodeErrorMessage;
  [(BWNodeErrorMessage *)&v3 dealloc];
}

- (void)_initWithNodeError:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v6.receiver = a1;
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

+ (id)newMessageWithNodeError:(id)a3
{
  v4 = [BWNodeErrorMessage alloc];

  return [(BWNodeErrorMessage *)v4 _initWithNodeError:a3];
}

@end