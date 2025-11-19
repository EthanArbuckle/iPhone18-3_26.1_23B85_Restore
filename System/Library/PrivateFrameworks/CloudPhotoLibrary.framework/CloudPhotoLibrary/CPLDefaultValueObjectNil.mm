@interface CPLDefaultValueObjectNil
@end

@implementation CPLDefaultValueObjectNil

BOOL _CPLDefaultValueObjectNil_block_invoke_3(uint64_t a1, void *a2, const char *a3)
{
  v4 = a2;
  v5 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v5, a3);
  v7 = (MethodImplementation)(v4, a3);

  return v7 == 0;
}

@end