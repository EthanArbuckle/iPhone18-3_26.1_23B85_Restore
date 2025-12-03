@interface BrightnessSystem
- (BrightnessSystem)init;
- (void)dealloc;
@end

@implementation BrightnessSystem

- (BrightnessSystem)init
{
  selfCopy = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = BrightnessSystem;
  selfCopy = [(BrightnessSystem *)&v4 init];
  if (selfCopy)
  {
    v2 = objc_alloc_init(BrightnessSystemInternal);
    selfCopy->bsi = v2;
  }

  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  if (self->bsi)
  {
    [(BrightnessSystemInternal *)selfCopy->bsi destroyServer];
    MEMORY[0x1E69E5920](selfCopy->bsi);
  }

  v2.receiver = selfCopy;
  v2.super_class = BrightnessSystem;
  [(BrightnessSystem *)&v2 dealloc];
}

@end