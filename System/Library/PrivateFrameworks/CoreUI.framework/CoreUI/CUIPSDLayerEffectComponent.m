@interface CUIPSDLayerEffectComponent
- (BOOL)updateLayerEffectPreset:(id)a3 error:(id *)a4;
- (CUIPSDLayerEffectComponent)initWithEffectFromPreset:(id)a3 atIndex:(unsigned int)a4;
- (id)_colorFromShapeEffectValue:(id)a3;
- (void)dealloc;
@end

@implementation CUIPSDLayerEffectComponent

- (BOOL)updateLayerEffectPreset:(id)a3 error:(id *)a4
{
  v7 = NSLocalizedDescriptionKey;
  v8 = @"Effect Component not yet supported";
  v5 = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:[NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1]];
  if (a4)
  {
    *a4 = v5;
  }

  return 0;
}

- (CUIPSDLayerEffectComponent)initWithEffectFromPreset:(id)a3 atIndex:(unsigned int)a4
{
  v6 = [NSAssertionHandler currentHandler:a3];
  Name = sel_getName(a2);
  [(NSAssertionHandler *)v6 handleFailureInMethod:a2 object:self file:@"CUIPSLayerEffectsPreset.m" lineNumber:151 description:@"Abstract method %s called directly on %@.  This must be implemented by subclasses", Name, objc_opt_class()];
  return 0;
}

- (id)_colorFromShapeEffectValue:(id)a3
{
  v3.i32[0] = a3.var4;
  v3.i32[1] = a3.var4 >> 8;
  v9 = vcvtq_f64_f32(vdiv_f32(vcvt_f32_u32(vand_s8(v3, 0xFF000000FFLL)), vdup_n_s32(0x437F0000u)));
  v10 = (a3.var2.b / 255.0);
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