@interface CUIPSDLayerEffectInnerGlow
- (BOOL)updateLayerEffectPreset:(id)a3 error:(id *)a4;
- (CUIPSDLayerEffectInnerGlow)init;
- (CUIPSDLayerEffectInnerGlow)initWithEffectFromPreset:(id)a3 atIndex:(unsigned int)a4;
- (id)description;
- (void)dealloc;
@end

@implementation CUIPSDLayerEffectInnerGlow

- (BOOL)updateLayerEffectPreset:(id)a3 error:(id *)a4
{
  v7 = [(CUIPSDLayerEffectInnerGlow *)self color];
  if (v7)
  {
    Components = CGColorGetComponents([(CUIColor *)[(CUIPSDLayerEffectInnerGlow *)self color] CGColor]);
    v9 = rint(*Components * 255.0);
    v10 = rint(Components[1] * 255.0);
    v11 = rint(Components[2] * 255.0);
    v12 = [(CUIPSDLayerEffectInnerGlow *)self blurSize];
    [(CUIPSDLayerEffectInnerGlow *)self opacity];
    [a3 addInnerGlowWithColorRed:v9 green:v10 blue:v11 opacity:v12 blur:1852797549 blendMode:?];
  }

  else
  {
    v15 = NSLocalizedDescriptionKey;
    v16 = @"Inner Glow is missing color information";
    v13 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:[NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1]];
    if (a4)
    {
      *a4 = v13;
    }
  }

  return v7 != 0;
}

- (CUIPSDLayerEffectInnerGlow)initWithEffectFromPreset:(id)a3 atIndex:(unsigned int)a4
{
  v8.receiver = self;
  v8.super_class = CUIPSDLayerEffectInnerGlow;
  v6 = [(CUIPSDLayerEffectInnerGlow *)&v8 init];
  -[CUIPSDLayerEffectInnerGlow setColor:](v6, "setColor:", -[CUIPSDLayerEffectComponent _colorFromShapeEffectValue:](v6, "_colorFromShapeEffectValue:", [a3 valueForParameter:0 inEffectAtIndex:a4]));
  -[CUIPSDLayerEffectInnerGlow setOpacity:](v6, "setOpacity:", COERCE_DOUBLE([a3 valueForParameter:2 inEffectAtIndex:a4]));
  -[CUIPSDLayerEffectInnerGlow setBlurSize:](v6, "setBlurSize:", [a3 valueForParameter:4 inEffectAtIndex:a4]);
  [(CUIPSDLayerEffectInnerGlow *)v6 setBlendMode:0];
  [(CUIPSDLayerEffectInnerGlow *)v6 setBlendMode:0];
  [(CUIPSDLayerEffectComponent *)v6 setVisible:1];
  return v6;
}

- (CUIPSDLayerEffectInnerGlow)init
{
  v5.receiver = self;
  v5.super_class = CUIPSDLayerEffectInnerGlow;
  v2 = [(CUIPSDLayerEffectInnerGlow *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CUIPSDLayerEffectComponent *)v2 setName:@"Inner Glow"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CUIPSDLayerEffectInnerGlow;
  v3 = [(CUIPSDLayerEffectInnerGlow *)&v7 description];
  v4 = [(CUIPSDLayerEffectInnerGlow *)self blendMode];
  [(CUIPSDLayerEffectInnerGlow *)self opacity];
  return [v3 stringByAppendingString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"blendMode: %d opacity: %f color: %@ blurSize: %d", v4, v5, -[CUIColor description](-[CUIPSDLayerEffectInnerGlow color](self, "color"), "description"), -[CUIPSDLayerEffectInnerGlow blurSize](self, "blurSize"))}];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIPSDLayerEffectInnerGlow;
  [(CUIPSDLayerEffectComponent *)&v3 dealloc];
}

@end