@interface VFXRenderer(Generative_Playground)
- (void)vfx_setClearBackground;
@end

@implementation VFXRenderer(Generative_Playground)

- (void)vfx_setClearBackground
{
  v2 = [MEMORY[0x1E69DC888] clearColor];
  [a1 setBackgroundColor:v2];
}

@end