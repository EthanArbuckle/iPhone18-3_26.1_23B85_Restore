@interface UIImage
@end

@implementation UIImage

uint64_t ___ef_log_UIImage_block_invoke()
{
  v0 = os_log_create("com.apple.email", "UIImage");
  v1 = _ef_log_UIImage_log;
  _ef_log_UIImage_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end