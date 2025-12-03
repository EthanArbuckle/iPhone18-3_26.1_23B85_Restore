@interface CUIPSDLayerEffectOuterGlow
- (BOOL)updateLayerEffectPreset:(id)preset error:(id *)error;
- (CUIPSDLayerEffectOuterGlow)init;
- (CUIPSDLayerEffectOuterGlow)initWithEffectFromPreset:(id)preset atIndex:(unsigned int)index;
- (id)description;
- (void)dealloc;
@end

@implementation CUIPSDLayerEffectOuterGlow

- (BOOL)updateLayerEffectPreset:(id)preset error:(id *)error
{
  color = [(CUIPSDLayerEffectOuterGlow *)self color];
  if (color)
  {
    Components = CGColorGetComponents([(CUIColor *)[(CUIPSDLayerEffectOuterGlow *)self color] CGColor]);
    v9 = rint(*Components * 255.0);
    v10 = rint(Components[1] * 255.0);
    v11 = rint(Components[2] * 255.0);
    blurSize = [(CUIPSDLayerEffectOuterGlow *)self blurSize];
    spread = [(CUIPSDLayerEffectOuterGlow *)self spread];
    [(CUIPSDLayerEffectOuterGlow *)self opacity];
    [preset addOuterGlowWithColorRed:v9 green:v10 blue:v11 opacity:blurSize blur:spread spread:?];
  }

  else
  {
    v16 = NSLocalizedDescriptionKey;
    v17 = @"Outer Glow is missing color information";
    v14 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:[NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1]];
    if (error)
    {
      *error = v14;
    }
  }

  return color != 0;
}

- (CUIPSDLayerEffectOuterGlow)initWithEffectFromPreset:(id)preset atIndex:(unsigned int)index
{
  v8.receiver = self;
  v8.super_class = CUIPSDLayerEffectOuterGlow;
  v6 = [(CUIPSDLayerEffectOuterGlow *)&v8 init];
  -[CUIPSDLayerEffectOuterGlow setColor:](v6, "setColor:", -[CUIPSDLayerEffectComponent _colorFromShapeEffectValue:](v6, "_colorFromShapeEffectValue:", [preset valueForParameter:0 inEffectAtIndex:index]));
  -[CUIPSDLayerEffectOuterGlow setOpacity:](v6, "setOpacity:", COERCE_DOUBLE([preset valueForParameter:2 inEffectAtIndex:index]));
  -[CUIPSDLayerEffectOuterGlow setBlurSize:](v6, "setBlurSize:", [preset valueForParameter:4 inEffectAtIndex:index]);
  -[CUIPSDLayerEffectOuterGlow setSpread:](v6, "setSpread:", [preset valueForParameter:9 inEffectAtIndex:index]);
  [(CUIPSDLayerEffectOuterGlow *)v6 setBlendMode:0];
  [(CUIPSDLayerEffectComponent *)v6 setVisible:1];
  return v6;
}

- (CUIPSDLayerEffectOuterGlow)init
{
  v5.receiver = self;
  v5.super_class = CUIPSDLayerEffectOuterGlow;
  v2 = [(CUIPSDLayerEffectOuterGlow *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CUIPSDLayerEffectComponent *)v2 setName:@"Outer Glow"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CUIPSDLayerEffectOuterGlow;
  v3 = [(CUIPSDLayerEffectOuterGlow *)&v7 description];
  blendMode = [(CUIPSDLayerEffectOuterGlow *)self blendMode];
  [(CUIPSDLayerEffectOuterGlow *)self opacity];
  return [v3 stringByAppendingString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"blendMode: %d opacity: %f color: %@ blurSize: %d spread: %d", blendMode, v5, -[CUIColor description](-[CUIPSDLayerEffectOuterGlow color](self, "color"), "description"), -[CUIPSDLayerEffectOuterGlow blurSize](self, "blurSize"), -[CUIPSDLayerEffectOuterGlow spread](self, "spread"))}];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIPSDLayerEffectOuterGlow;
  [(CUIPSDLayerEffectComponent *)&v3 dealloc];
}

@end