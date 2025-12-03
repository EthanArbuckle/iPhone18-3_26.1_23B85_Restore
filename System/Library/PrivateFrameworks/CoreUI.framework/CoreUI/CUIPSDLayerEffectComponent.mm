@interface CUIPSDLayerEffectComponent
- (BOOL)updateLayerEffectPreset:(id)preset error:(id *)error;
- (CUIPSDLayerEffectComponent)initWithEffectFromPreset:(id)preset atIndex:(unsigned int)index;
- (id)_colorFromShapeEffectValue:(id)value;
- (void)dealloc;
@end

@implementation CUIPSDLayerEffectComponent

- (BOOL)updateLayerEffectPreset:(id)preset error:(id *)error
{
  v7 = NSLocalizedDescriptionKey;
  v8 = @"Effect Component not yet supported";
  v5 = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:[NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1]];
  if (error)
  {
    *error = v5;
  }

  return 0;
}

- (CUIPSDLayerEffectComponent)initWithEffectFromPreset:(id)preset atIndex:(unsigned int)index
{
  v6 = [NSAssertionHandler currentHandler:preset];
  Name = sel_getName(a2);
  [(NSAssertionHandler *)v6 handleFailureInMethod:a2 object:self file:@"CUIPSLayerEffectsPreset.m" lineNumber:151 description:@"Abstract method %s called directly on %@.  This must be implemented by subclasses", Name, objc_opt_class()];
  return 0;
}

- (id)_colorFromShapeEffectValue:(id)value
{
  v3.i32[0] = value.var4;
  v3.i32[1] = value.var4 >> 8;
  v9 = vcvtq_f64_f32(vdiv_f32(vcvt_f32_u32(vand_s8(v3, 0xFF000000FFLL)), vdup_n_s32(0x437F0000u)));
  v10 = (value.var2.b / 255.0);
  v11 = 0x3FF0000000000000;
  SRGB = _CUIColorSpaceGetSRGB();
  v5 = CGColorCreate(SRGB, v9.f64);
  v6 = [CUIColor alloc];
  v7 = [(CUIColor *)v6 initWithCGColor:v5, *&v9, *&v10, v11];
  CGColorRelease(v5);
  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIPSDLayerEffectComponent;
  [(CUIPSDLayerEffectComponent *)&v3 dealloc];
}

@end