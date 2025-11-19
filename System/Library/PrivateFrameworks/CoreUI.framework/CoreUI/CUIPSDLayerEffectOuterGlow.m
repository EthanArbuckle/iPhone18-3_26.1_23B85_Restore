@interface CUIPSDLayerEffectOuterGlow
- (BOOL)updateLayerEffectPreset:(id)a3 error:(id *)a4;
- (CUIPSDLayerEffectOuterGlow)init;
- (CUIPSDLayerEffectOuterGlow)initWithEffectFromPreset:(id)a3 atIndex:(unsigned int)a4;
- (id)description;
- (void)dealloc;
@end

@implementation CUIPSDLayerEffectOuterGlow

- (BOOL)updateLayerEffectPreset:(id)a3 error:(id *)a4
{
  v7 = [(CUIPSDLayerEffectOuterGlow *)self color];
  if (v7)
  {
    Components = CGColorGetComponents([(CUIColor *)[(CUIPSDLayerEffectOuterGlow *)self color] CGColor]);
    v9 = rint(*Components * 255.0);
    v10 = rint(Components[1] * 255.0);
    v11 = rint(Components[2] * 255.0);
    v12 = [(CUIPSDLayerEffectOuterGlow *)self blurSize];
    v13 = [(CUIPSDLayerEffectOuterGlow *)self spread];
    [(CUIPSDLayerEffectOuterGlow *)self opacity];
    [a3 addOuterGlowWithColorRed:v9 green:v10 blue:v11 opacity:v12 blur:v13 spread:?];
  }

  else
  {
    v16 = NSLocalizedDescriptionKey;
    v17 = @"Outer Glow is missing color information";
    v14 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:[NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1]];
    if (a4)
    {
      *a4 = v14;
    }
  }

  return v7 != 0;
}

- (CUIPSDLayerEffectOuterGlow)initWithEffectFromPreset:(id)a3 atIndex:(unsigned int)a4
{
  v8.receiver = self;
  v8.super_class = CUIPSDLayerEffectOuterGlow;
  v6 = [(CUIPSDLayerEffectOuterGlow *)&v8 init];
  -[CUIPSDLayerEffectOuterGlow setColor:](v6, "setColor:", -[CUIPSDLayerEffectComponent _colorFromShapeEffectValue:](v6, "_colorFromShapeEffectValue:", [a3 valueForParameter:0 inEffectAtIndex:a4]));
  -[CUIPSDLayerEffectOuterGlow setOpacity:](v6, "setOpacity:", COERCE_DOUBLE([a3 valueForParameter:2 inEffectAtIndex:a4]));
  -[CUIPSDLayerEffectOuterGlow setBlurSize:](v6, "setBlurSize:", [a3 valueForParameter:4 inEffectAtIndex:a4]);
  -[CUIPSDLayerEffectOuterGlow setSpread:](v6, "setSpread:", [a3 valueForParameter:9 inEffectAtIndex:a4]);
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
  v4 = [(CUIPSDLayerEffectOuterGlow *)self blendMode];
  [(CUIPSDLayerEffectOuterGlow *)self opacity];
  return [v3 stringByAppendingString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"blendMode: %d opacity: %f color: %@ blurSize: %d spread: %d", v4, v5, -[CUIColor description](-[CUIPSDLayerEffectOuterGlow color](self, "color"), "description"), -[CUIPSDLayerEffectOuterGlow blurSize](self, "blurSize"), -[CUIPSDLayerEffectOuterGlow spread](self, "spread"))}];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIPSDLayerEffectOuterGlow;
  [(CUIPSDLayerEffectComponent *)&v3 dealloc];
}

@end