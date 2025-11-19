@interface CPLDefaultValueNSINTEGER0
@end

@implementation CPLDefaultValueNSINTEGER0

BOOL _CPLDefaultValueNSINTEGER0_block_invoke_2(uint64_t a1, void *a2, const char *a3)
{
  v4 = a2;
  v5 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v5, a3);
  v7 = (MethodImplementation)(v4, a3);

  return v7 == 0;
}

@end