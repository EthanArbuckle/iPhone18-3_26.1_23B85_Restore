@interface NSObject
@end

@implementation NSObject

uint64_t __47__NSObject_NUUtilities__nu_implementsProtocol___block_invoke(uint64_t a1, const char **a2, int a3, int a4)
{
  v6 = *(a1 + 32);
  v7 = *a2;
  if (a4)
  {
    InstanceMethod = class_getInstanceMethod(v6, v7);
    if (InstanceMethod)
    {
LABEL_3:
      Description = method_getDescription(InstanceMethod);
      return strcmp(Description->types, a2[1]) == 0;
    }
  }

  else
  {
    InstanceMethod = class_getClassMethod(v6, v7);
    if (InstanceMethod)
    {
      goto LABEL_3;
    }
  }

  return a3 ^ 1u;
}

@end