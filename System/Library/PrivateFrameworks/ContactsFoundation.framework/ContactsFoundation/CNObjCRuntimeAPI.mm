@interface CNObjCRuntimeAPI
+ (void)enumerateMethodsOfClass:(Class)class withBlock:(id)block;
@end

@implementation CNObjCRuntimeAPI

+ (void)enumerateMethodsOfClass:(Class)class withBlock:(id)block
{
  blockCopy = block;
  if (class)
  {
    outCount = 0;
    v6 = class_copyMethodList(class, &outCount);
    if (outCount)
    {
        ;
      }
    }

    free(v6);
  }
}

@end