@interface CPLDefaultValueBOOLNO
@end

@implementation CPLDefaultValueBOOLNO

uint64_t _CPLDefaultValueBOOLNO_block_invoke(uint64_t a1, void *a2, const char *a3)
{
  v4 = a2;
  v5 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v5, a3);
  LODWORD(a3) = (MethodImplementation)(v4, a3);

  return a3 ^ 1;
}

@end