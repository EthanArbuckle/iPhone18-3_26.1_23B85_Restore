@interface MCMContainerTransientPath
+ (Class)_containerClassPathClass;
@end

@implementation MCMContainerTransientPath

+ (Class)_containerClassPathClass
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return objc_opt_class();
}

@end