@interface CUIPSDLayerEffectDropShadow
- (BOOL)updateLayerEffectPreset:(id)a3 error:(id *)a4;
- (CUIPSDLayerEffectDropShadow)init;
- (CUIPSDLayerEffectDropShadow)initWithEffectFromPreset:(id)a3 atIndex:(unsigned int)a4;
- (void)dealloc;
@end

@implementation CUIPSDLayerEffectDropShadow

- (BOOL)updateLayerEffectPreset:(id)a3 error:(id *)a4
{
  v7 = [(CUIPSDLayerEffectDropShadow *)self color];
  if (v7)
  {
    Components = CGColorGetComponents([(CUIColor *)[(CUIPSDLayerEffectDropShadow *)self color] CGColor]);
    v9 = rint(*Components * 255.0);
    v10 = rint(Components[1] * 255.0);
    v11 = rint(Components[2] * 255.0);
    v12 = [(CUIPSDLayerEffectDropShadow *)self blurSize];
    v13 = [(CUIPSDLayerEffectDropShadow *)self distance];
    v14 = [(CUIPSDLayerEffectDropShadow *)self spread];
    [(CUIPSDLayerEffectDropShadow *)self opacity];
    v16 = v15;
    LODWORD(v19) = [(CUIPSDLayerEffectDropShadow *)self angle];
    [a3 addDropShadowWithColorRed:v9 green:v10 blue:v11 opacity:v12 blur:v14 spread:v13 offset:v16 angle:v19];
  }

  else
  {
    v20 = NSLocalizedDescriptionKey;
    v21 = @"Drop Shadow is missing color information";
    v17 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:[NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1]];
    if (a4)
    {
      *a4 = v17;
    }
  }

  return v7 != 0;
}

- (CUIPSDLayerEffectDropShadow)initWithEffectFromPreset:(id)a3 atIndex:(unsigned int)a4
{
  v8.receiver = self;
  v8.super_class = CUIPSDLayerEffectDropShadow;
  v6 = [(CUIPSDLayerEffectDropShadow *)&v8 init];
  -[CUIPSDLayerEffectDropShadow setColor:](v6, "setColor:", -[CUIPSDLayerEffectComponent _colorFromShapeEffectValue:](v6, "_colorFromShapeEffectValue:", [a3 valueForParameter:0 inEffectAtIndex:a4]));
  -[CUIPSDLayerEffectDropShadow setOpacity:](v6, "setOpacity:", COERCE_DOUBLE([a3 valueForParameter:2 inEffectAtIndex:a4]));
  -[CUIPSDLayerEffectDropShadow setBlurSize:](v6, "setBlurSize:", [a3 valueForParameter:4 inEffectAtIndex:a4]);
  -[CUIPSDLayerEffectDropShadow setSpread:](v6, "setSpread:", [a3 valueForParameter:9 inEffectAtIndex:a4]);
  -[CUIPSDLayerEffectDropShadow setDistance:](v6, "setDistance:", [a3 valueForParameter:5 inEffectAtIndex:a4]);
  -[CUIPSDLayerEffectDropShadow setAngle:](v6, "setAngle:", [a3 valueForParameter:6 inEffectAtIndex:a4]);
  [(CUIPSDLayerEffectDropShadow *)v6 setBlendMode:0];
  [(CUIPSDLayerEffectComponent *)v6 setVisible:1];
  return v6;
}

- (CUIPSDLayerEffectDropShadow)init
{
  v5.receiver = self;
  v5.super_class = CUIPSDLayerEffectDropShadow;
  v2 = [(CUIPSDLayerEffectDropShadow *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CUIPSDLayerEffectComponent *)v2 setName:@"Drop Shadow"];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIPSDLayerEffectDropShadow;
  [(CUIPSDLayerEffectComponent *)&v3 dealloc];
}

@end