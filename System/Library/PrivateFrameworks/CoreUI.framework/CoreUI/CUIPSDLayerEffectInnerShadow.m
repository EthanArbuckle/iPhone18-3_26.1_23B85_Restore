@interface CUIPSDLayerEffectInnerShadow
- (BOOL)updateLayerEffectPreset:(id)a3 error:(id *)a4;
- (CUIPSDLayerEffectInnerShadow)init;
- (CUIPSDLayerEffectInnerShadow)initWithEffectFromPreset:(id)a3 atIndex:(unsigned int)a4;
- (void)dealloc;
@end

@implementation CUIPSDLayerEffectInnerShadow

- (BOOL)updateLayerEffectPreset:(id)a3 error:(id *)a4
{
  v7 = [(CUIPSDLayerEffectInnerShadow *)self color];
  if (v7)
  {
    Components = CGColorGetComponents([(CUIColor *)[(CUIPSDLayerEffectInnerShadow *)self color] CGColor]);
    v9 = rint(*Components * 255.0);
    v10 = rint(Components[1] * 255.0);
    v11 = rint(Components[2] * 255.0);
    v12 = [(CUIPSDLayerEffectInnerShadow *)self blurSize];
    v13 = [(CUIPSDLayerEffectInnerShadow *)self distance];
    [(CUIPSDLayerEffectInnerShadow *)self opacity];
    LODWORD(v17) = 1852797549;
    [a3 addInnerShadowWithColorRed:v9 green:v10 blue:v11 opacity:v12 blur:v13 offset:-[CUIPSDLayerEffectInnerShadow angle](self angle:"angle") blendMode:{v14, v17}];
  }

  else
  {
    v18 = NSLocalizedDescriptionKey;
    v19 = @"Inner Shadow is missing color information";
    v15 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:[NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1]];
    if (a4)
    {
      *a4 = v15;
    }
  }

  return v7 != 0;
}

- (CUIPSDLayerEffectInnerShadow)initWithEffectFromPreset:(id)a3 atIndex:(unsigned int)a4
{
  v8.receiver = self;
  v8.super_class = CUIPSDLayerEffectInnerShadow;
  v6 = [(CUIPSDLayerEffectInnerShadow *)&v8 init];
  -[CUIPSDLayerEffectInnerShadow setColor:](v6, "setColor:", -[CUIPSDLayerEffectComponent _colorFromShapeEffectValue:](v6, "_colorFromShapeEffectValue:", [a3 valueForParameter:0 inEffectAtIndex:a4]));
  -[CUIPSDLayerEffectInnerShadow setOpacity:](v6, "setOpacity:", COERCE_DOUBLE([a3 valueForParameter:2 inEffectAtIndex:a4]));
  -[CUIPSDLayerEffectInnerShadow setBlurSize:](v6, "setBlurSize:", [a3 valueForParameter:4 inEffectAtIndex:a4]);
  -[CUIPSDLayerEffectInnerShadow setDistance:](v6, "setDistance:", [a3 valueForParameter:5 inEffectAtIndex:a4]);
  -[CUIPSDLayerEffectInnerShadow setAngle:](v6, "setAngle:", [a3 valueForParameter:6 inEffectAtIndex:a4]);
  [(CUIPSDLayerEffectInnerShadow *)v6 setBlendMode:0];
  [(CUIPSDLayerEffectComponent *)v6 setVisible:1];
  return v6;
}

- (CUIPSDLayerEffectInnerShadow)init
{
  v5.receiver = self;
  v5.super_class = CUIPSDLayerEffectInnerShadow;
  v2 = [(CUIPSDLayerEffectInnerShadow *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CUIPSDLayerEffectComponent *)v2 setName:@"Inner Shadow"];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIPSDLayerEffectInnerShadow;
  [(CUIPSDLayerEffectComponent *)&v3 dealloc];
}

@end