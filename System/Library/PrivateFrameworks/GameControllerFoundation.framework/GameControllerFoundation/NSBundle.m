@interface NSBundle
@end

@implementation NSBundle

uint64_t __46__NSBundle_GC__GameControllerFoundationBundle__block_invoke()
{
  GameControllerFoundationBundle_Bundle = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  return MEMORY[0x1EEE66BB8]();
}

Class __45__NSBundle_GC__GameControllerFrameworkBundle__block_invoke()
{
  result = NSClassFromString(@"GCController");
  if (result)
  {
    GameControllerFrameworkBundle_Bundle = [MEMORY[0x1E696AAE8] bundleForClass:result];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

@end