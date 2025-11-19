@interface HMDStructuredDataFoundationOutputPointerWriter
- (void)initWithOutput:(void *)a1;
@end

@implementation HMDStructuredDataFoundationOutputPointerWriter

- (void)initWithOutput:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    _HMFPreconditionFailure();
    return 0;
  }

  v7.receiver = a1;
  v7.super_class = HMDStructuredDataFoundationOutputPointerWriter;
  v3 = objc_msgSendSuper2(&v7, sel_init);
  v4 = v3;
  if (v3)
  {
    v3[6] = a2;
    v5 = *a2;
    *a2 = 0;
  }

  return v4;
}

@end