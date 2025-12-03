@interface VFXView(Generative_Playground)
- (void)_vfx_setColorSpace:()Generative_Playground;
- (void)vfx_setClearBackground;
- (void)vfx_setExtendedLinearSRGBColorSpace;
- (void)vfx_setLinearSRGBColorSpace;
@end

@implementation VFXView(Generative_Playground)

- (void)vfx_setClearBackground
{
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [self setBackgroundColor:clearColor];
}

- (void)vfx_setExtendedLinearSRGBColorSpace
{
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F108]);
  [self _vfx_setColorSpace:v2];

  CGColorSpaceRelease(v2);
}

- (void)vfx_setLinearSRGBColorSpace
{
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
  [self _vfx_setColorSpace:v2];

  CGColorSpaceRelease(v2);
}

- (void)_vfx_setColorSpace:()Generative_Playground
{
  if (objc_opt_respondsToSelector())
  {
    [self performSelector:sel_setColorSpace_ withObject:a3];
    v4 = a3;
  }

  else
  {
    layer = [self layer];
    [layer setColorspace:a3];
    v4 = layer;
  }
}

@end