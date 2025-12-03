@interface NSObject(DOCMethodSwizzling)
+ (void)_doc_swapMethodWithSelector:()DOCMethodSwizzling withMethodWithSelector:;
@end

@implementation NSObject(DOCMethodSwizzling)

+ (void)_doc_swapMethodWithSelector:()DOCMethodSwizzling withMethodWithSelector:
{
  InstanceMethod = class_getInstanceMethod(self, name);
  Implementation = method_getImplementation(InstanceMethod);
  v9 = class_getInstanceMethod(self, a3);
  v10 = method_getImplementation(v9);
  TypeEncoding = method_getTypeEncoding(InstanceMethod);
  if (class_addMethod(self, a3, Implementation, TypeEncoding))
  {
    v12 = method_getTypeEncoding(v9);

    class_replaceMethod(self, name, v10, v12);
  }

  else
  {

    method_exchangeImplementations(v9, InstanceMethod);
  }
}

@end