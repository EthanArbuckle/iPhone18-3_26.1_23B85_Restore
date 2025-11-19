@interface NSObject(WFRuntimeUtilities)
+ (void)wf_enumerateClassMethodsWithPrefix:()WFRuntimeUtilities usingBlock:;
@end

@implementation NSObject(WFRuntimeUtilities)

+ (void)wf_enumerateClassMethodsWithPrefix:()WFRuntimeUtilities usingBlock:
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    outCount = 0;
    Class = object_getClass(a1);
    v9 = class_copyMethodList(Class, &outCount);
    if (outCount)
    {
      for (i = 0; i < outCount; ++i)
      {
        v11 = v9[i];
        Name = method_getName(v11);
        v13 = NSStringFromSelector(Name);
        if ([v13 hasPrefix:v6])
        {
          v7[2](v7, v11, Name);
        }
      }
    }

    free(v9);
  }
}

@end