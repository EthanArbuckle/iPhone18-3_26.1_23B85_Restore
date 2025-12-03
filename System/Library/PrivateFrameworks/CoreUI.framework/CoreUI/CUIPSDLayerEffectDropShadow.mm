@interface CUIPSDLayerEffectDropShadow
- (BOOL)updateLayerEffectPreset:(id)preset error:(id *)error;
- (CUIPSDLayerEffectDropShadow)init;
- (CUIPSDLayerEffectDropShadow)initWithEffectFromPreset:(id)preset atIndex:(unsigned int)index;
- (void)dealloc;
@end

@implementation CUIPSDLayerEffectDropShadow

- (BOOL)updateLayerEffectPreset:(id)preset error:(id *)error
{
  color = [(CUIPSDLayerEffectDropShadow *)self color];
  if (color)
  {
    Components = CGColorGetComponents([(CUIColor *)[(CUIPSDLayerEffectDropShadow *)self color] CGColor]);
    v9 = rint(*Components * 255.0);
    v10 = rint(Components[1] * 255.0);
    v11 = rint(Components[2] * 255.0);
    blurSize = [(CUIPSDLayerEffectDropShadow *)self blurSize];
    distance = [(CUIPSDLayerEffectDropShadow *)self distance];
    spread = [(CUIPSDLayerEffectDropShadow *)self spread];
    [(CUIPSDLayerEffectDropShadow *)self opacity];
    v16 = v15;
    LODWORD(v19) = [(CUIPSDLayerEffectDropShadow *)self angle];
    [preset addDropShadowWithColorRed:v9 green:v10 blue:v11 opacity:blurSize blur:spread spread:distance offset:v16 angle:v19];
  }

  else
  {
    v20 = NSLocalizedDescriptionKey;
    v21 = @"Drop Shadow is missing color information";
    v17 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:[NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1]];
    if (error)
    {
      *error = v17;
    }
  }

  return color != 0;
}

- (CUIPSDLayerEffectDropShadow)initWithEffectFromPreset:(id)preset atIndex:(unsigned int)index
{
  v8.receiver = self;
  v8.super_class = CUIPSDLayerEffectDropShadow;
  v6 = [(CUIPSDLayerEffectDropShadow *)&v8 init];
  -[CUIPSDLayerEffectDropShadow setColor:](v6, "setColor:", -[CUIPSDLayerEffectComponent _colorFromShapeEffectValue:](v6, "_colorFromShapeEffectValue:", [preset valueForParameter:0 inEffectAtIndex:index]));
  -[CUIPSDLayerEffectDropShadow setOpacity:](v6, "setOpacity:", COERCE_DOUBLE([preset valueForParameter:2 inEffectAtIndex:index]));
  -[CUIPSDLayerEffectDropShadow setBlurSize:](v6, "setBlurSize:", [preset valueForParameter:4 inEffectAtIndex:index]);
  -[CUIPSDLayerEffectDropShadow setSpread:](v6, "setSpread:", [preset valueForParameter:9 inEffectAtIndex:index]);
  -[CUIPSDLayerEffectDropShadow setDistance:](v6, "setDistance:", [preset valueForParameter:5 inEffectAtIndex:index]);
  -[CUIPSDLayerEffectDropShadow setAngle:](v6, "setAngle:", [preset valueForParameter:6 inEffectAtIndex:index]);
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