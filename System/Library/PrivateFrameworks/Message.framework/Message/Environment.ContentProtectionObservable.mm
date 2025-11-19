@interface Environment.ContentProtectionObservable
- (void)contentProtectionStateChanged:(int64_t)a3 previousState:(int64_t)a4;
@end

@implementation Environment.ContentProtectionObservable

- (void)contentProtectionStateChanged:(int64_t)a3 previousState:(int64_t)a4
{
  MEMORY[0x1E69E5928](self);
  sub_1B0419F68();
  MEMORY[0x1E69E5920](self);
}

@end