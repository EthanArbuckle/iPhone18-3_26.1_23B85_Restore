@interface VFXRenderer(Generative_Playground)
- (void)vfx_setClearBackground;
@end

@implementation VFXRenderer(Generative_Playground)

- (void)vfx_setClearBackground
{
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [self setBackgroundColor:clearColor];
}

@end