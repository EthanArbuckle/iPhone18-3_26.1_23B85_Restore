@interface BrightnessSystem
- (BrightnessSystem)init;
- (void)dealloc;
@end

@implementation BrightnessSystem

- (BrightnessSystem)init
{
  v6 = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = BrightnessSystem;
  v6 = [(BrightnessSystem *)&v4 init];
  if (v6)
  {
    v2 = objc_alloc_init(BrightnessSystemInternal);
    v6->bsi = v2;
  }

  return v6;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  if (self->bsi)
  {
    [(BrightnessSystemInternal *)v4->bsi destroyServer];
    MEMORY[0x1E69E5920](v4->bsi);
  }

  v2.receiver = v4;
  v2.super_class = BrightnessSystem;
  [(BrightnessSystem *)&v2 dealloc];
}

@end