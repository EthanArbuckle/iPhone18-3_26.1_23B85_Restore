@interface CNObjCRuntimeAPI
+ (void)enumerateMethodsOfClass:(Class)a3 withBlock:(id)a4;
@end

@implementation CNObjCRuntimeAPI

+ (void)enumerateMethodsOfClass:(Class)a3 withBlock:(id)a4
{
  v5 = a4;
  if (a3)
  {
    outCount = 0;
    v6 = class_copyMethodList(a3, &outCount);
    if (outCount)
    {
        ;
      }
    }

    free(v6);
  }
}

@end