@interface ICRTexturePool
+ (void)clear;
- (ICRTexturePool)init;
@end

@implementation ICRTexturePool

+ (void)clear
{
  if (qword_1EDB2FAA8 != -1)
  {
    swift_once();
  }

  v2 = *(qword_1EDB32760 + 16);
  os_unfair_lock_lock((v2 + 40));
  *(v2 + 16) = MEMORY[0x1E69E7CC0];

  os_unfair_lock_unlock((v2 + 40));
}

- (ICRTexturePool)init
{
  v3.receiver = self;
  v3.super_class = ICRTexturePool;
  return [(ICRTexturePool *)&v3 init];
}

@end