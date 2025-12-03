@interface CUIPSDLayerEffectInnerShadow
- (BOOL)updateLayerEffectPreset:(id)preset error:(id *)error;
- (CUIPSDLayerEffectInnerShadow)init;
- (CUIPSDLayerEffectInnerShadow)initWithEffectFromPreset:(id)preset atIndex:(unsigned int)index;
- (void)dealloc;
@end

@implementation CUIPSDLayerEffectInnerShadow

- (BOOL)updateLayerEffectPreset:(id)preset error:(id *)error
{
  color = [(CUIPSDLayerEffectInnerShadow *)self color];
  if (color)
  {
    Components = CGColorGetComponents([(CUIColor *)[(CUIPSDLayerEffectInnerShadow *)self color] CGColor]);
    v9 = rint(*Components * 255.0);
    v10 = rint(Components[1] * 255.0);
    v11 = rint(Components[2] * 255.0);
    blurSize = [(CUIPSDLayerEffectInnerShadow *)self blurSize];
    distance = [(CUIPSDLayerEffectInnerShadow *)self distance];
    [(CUIPSDLayerEffectInnerShadow *)self opacity];
    LODWORD(v17) = 1852797549;
    [preset addInnerShadowWithColorRed:v9 green:v10 blue:v11 opacity:blurSize blur:distance offset:-[CUIPSDLayerEffectInnerShadow angle](self angle:"angle") blendMode:{v14, v17}];
  }

  else
  {
    v18 = NSLocalizedDescriptionKey;
    v19 = @"Inner Shadow is missing color information";
    v15 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:[NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1]];
    if (error)
    {
      *error = v15;
    }
  }

  return color != 0;
}

- (CUIPSDLayerEffectInnerShadow)initWithEffectFromPreset:(id)preset atIndex:(unsigned int)index
{
  v8.receiver = self;
  v8.super_class = CUIPSDLayerEffectInnerShadow;
  v6 = [(CUIPSDLayerEffectInnerShadow *)&v8 init];
  -[CUIPSDLayerEffectInnerShadow setColor:](v6, "setColor:", -[CUIPSDLayerEffectComponent _colorFromShapeEffectValue:](v6, "_colorFromShapeEffectValue:", [preset valueForParameter:0 inEffectAtIndex:index]));
  -[CUIPSDLayerEffectInnerShadow setOpacity:](v6, "setOpacity:", COERCE_DOUBLE([preset valueForParameter:2 inEffectAtIndex:index]));
  -[CUIPSDLayerEffectInnerShadow setBlurSize:](v6, "setBlurSize:", [preset valueForParameter:4 inEffectAtIndex:index]);
  -[CUIPSDLayerEffectInnerShadow setDistance:](v6, "setDistance:", [preset valueForParameter:5 inEffectAtIndex:index]);
  -[CUIPSDLayerEffectInnerShadow setAngle:](v6, "setAngle:", [preset valueForParameter:6 inEffectAtIndex:index]);
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