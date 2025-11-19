@interface Settings
@end

@implementation Settings

uint64_t __nanophotos_log_Settings_block_invoke()
{
  qword_27FA46CF0 = os_log_create("com.apple.NanoPhotos", "Settings");

  return MEMORY[0x2821F96F8]();
}

@end