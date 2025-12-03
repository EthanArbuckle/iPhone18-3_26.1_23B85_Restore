@interface Environment.ContentProtectionObservable
- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state;
@end

@implementation Environment.ContentProtectionObservable

- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state
{
  MEMORY[0x1E69E5928](self);
  sub_1B0419F68();
  MEMORY[0x1E69E5920](self);
}

@end