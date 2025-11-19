@interface CUIPSDLayerEffectGradientOverlay
- (BOOL)updateLayerEffectPreset:(id)a3 error:(id *)a4;
- (CUIPSDLayerEffectGradientOverlay)init;
- (CUIPSDLayerEffectGradientOverlay)initWithEffectFromPreset:(id)a3 atIndex:(unsigned int)a4;
- (void)dealloc;
@end

@implementation CUIPSDLayerEffectGradientOverlay

- (BOOL)updateLayerEffectPreset:(id)a3 error:(id *)a4
{
  v7 = [(CUIPSDLayerEffectGradientOverlay *)self gradient];
  if (v7)
  {
    v8 = [(CUIPSDGradient *)[(CUIPSDLayerEffectGradientOverlay *)self gradient] evaluator];
    v9 = [(CUIPSDGradientEvaluator *)v8 blendMode];
    [(CUIPSDGradientEvaluator *)v8 _smoothedGradientColorAtLocation:0.0];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(CUIPSDGradientEvaluator *)v8 _smoothedGradientColorAtLocation:1.0];
    v16 = rint(v11 * 255.0);
    v18 = rint(v17 * 255.0);
    v20 = rint(v19 * 255.0);
    v22 = rint(v21 * 255.0);
    [(CUIPSDGradientEvaluator *)v8 fillColor];
    v24 = v23;
    LODWORD(v27) = [CUIShapeEffectPreset cuiEffectBlendModeFromCGBlendMode:v9];
    [a3 addGradientFillWithTopColorRed:v16 green:rint(v13 * 255.0) blue:rint(v15 * 255.0) bottomColorRed:v18 green:v20 blue:v22 opacity:v24 blendMode:v27];
  }

  else
  {
    v28 = NSLocalizedDescriptionKey;
    v29 = @"Gradient is missing gradient information";
    v25 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:[NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1]];
    if (a4)
    {
      *a4 = v25;
    }
  }

  return v7 != 0;
}

- (CUIPSDLayerEffectGradientOverlay)initWithEffectFromPreset:(id)a3 atIndex:(unsigned int)a4
{
  v16.receiver = self;
  v16.super_class = CUIPSDLayerEffectGradientOverlay;
  v6 = [(CUIPSDLayerEffectGradientOverlay *)&v16 init];
  v7 = a4;
  v8 = [a3 valueForParameter:2 inEffectAtIndex:a4];
  v9.i32[0] = [a3 valueForParameter:0 inEffectAtIndex:v7];
  v9.i32[1] = v9.i32[0] >> 8;
  v10 = vdup_n_s32(0x437F0000u);
  *components = vcvtq_f64_f32(vdiv_f32(vcvt_f32_u32(vand_s8(v9, 0xFF000000FFLL)), v10));
  v18 = (v9.u8[2] / 255.0);
  v19 = v8;
  SRGB = _CUIColorSpaceGetSRGB();
  v12 = CGColorCreate(SRGB, components);
  v13.i32[0] = [a3 valueForParameter:1 inEffectAtIndex:v7];
  v13.i32[1] = v13.i32[0] >> 8;
  *components = vcvtq_f64_f32(vdiv_f32(vcvt_f32_u32(vand_s8(v13, 0xFF000000FFLL)), v10));
  v18 = (v13.u8[2] / 255.0);
  v19 = v8;
  v14 = CGColorCreate(SRGB, components);
  [(CUIPSDLayerEffectGradientOverlay *)v6 setGradient:[CUIPSDGradient cuiPSDGradientWithColors:[NSArray arrayWithObjects:v12 locations:v14 midpointLocations:0] angle:&unk_1F00F7E58 isRadial:0, 0, 90.0]];
  [(CUIPSDLayerEffectComponent *)v6 setVisible:1];
  CFRelease(v14);
  CFRelease(v12);
  return v6;
}

- (CUIPSDLayerEffectGradientOverlay)init
{
  v5.receiver = self;
  v5.super_class = CUIPSDLayerEffectGradientOverlay;
  v2 = [(CUIPSDLayerEffectGradientOverlay *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CUIPSDLayerEffectComponent *)v2 setName:@"Gradient Overlay"];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIPSDLayerEffectGradientOverlay;
  [(CUIPSDLayerEffectComponent *)&v3 dealloc];
}

@end