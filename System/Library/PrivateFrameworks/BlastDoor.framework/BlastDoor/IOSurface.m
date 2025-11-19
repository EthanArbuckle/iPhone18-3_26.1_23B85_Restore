@interface IOSurface
@end

@implementation IOSurface

uint64_t __IOSurface_ForwardDeclarationsLogHandle_block_invoke()
{
  IOSurface_ForwardDeclarationsLogHandle_log = os_log_create("com.apple.Messages.blastdoor", "IOSurface_ForwardDeclarations");

  return MEMORY[0x2821F96F8]();
}

@end