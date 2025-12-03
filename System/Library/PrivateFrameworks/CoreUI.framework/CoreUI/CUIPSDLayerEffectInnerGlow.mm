@interface CUIPSDLayerEffectInnerGlow
- (BOOL)updateLayerEffectPreset:(id)preset error:(id *)error;
- (CUIPSDLayerEffectInnerGlow)init;
- (CUIPSDLayerEffectInnerGlow)initWithEffectFromPreset:(id)preset atIndex:(unsigned int)index;
- (id)description;
- (void)dealloc;
@end

@implementation CUIPSDLayerEffectInnerGlow

- (BOOL)updateLayerEffectPreset:(id)preset error:(id *)error
{
  color = [(CUIPSDLayerEffectInnerGlow *)self color];
  if (color)
  {
    Components = CGColorGetComponents([(CUIColor *)[(CUIPSDLayerEffectInnerGlow *)self color] CGColor]);
    v9 = rint(*Components * 255.0);
    v10 = rint(Components[1] * 255.0);
    v11 = rint(Components[2] * 255.0);
    blurSize = [(CUIPSDLayerEffectInnerGlow *)self blurSize];
    [(CUIPSDLayerEffectInnerGlow *)self opacity];
    [preset addInnerGlowWithColorRed:v9 green:v10 blue:v11 opacity:blurSize blur:1852797549 blendMode:?];
  }

  else
  {
    v15 = NSLocalizedDescriptionKey;
    v16 = @"Inner Glow is missing color information";
    v13 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:[NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1]];
    if (error)
    {
      *error = v13;
    }
  }

  return color != 0;
}

- (CUIPSDLayerEffectInnerGlow)initWithEffectFromPreset:(id)preset atIndex:(unsigned int)index
{
  v8.receiver = self;
  v8.super_class = CUIPSDLayerEffectInnerGlow;
  v6 = [(CUIPSDLayerEffectInnerGlow *)&v8 init];
  -[CUIPSDLayerEffectInnerGlow setColor:](v6, "setColor:", -[CUIPSDLayerEffectComponent _colorFromShapeEffectValue:](v6, "_colorFromShapeEffectValue:", [preset valueForParameter:0 inEffectAtIndex:index]));
  -[CUIPSDLayerEffectInnerGlow setOpacity:](v6, "setOpacity:", COERCE_DOUBLE([preset valueForParameter:2 inEffectAtIndex:index]));
  -[CUIPSDLayerEffectInnerGlow setBlurSize:](v6, "setBlurSize:", [preset valueForParameter:4 inEffectAtIndex:index]);
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
  blendMode = [(CUIPSDLayerEffectInnerGlow *)self blendMode];
  [(CUIPSDLayerEffectInnerGlow *)self opacity];
  return [v3 stringByAppendingString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"blendMode: %d opacity: %f color: %@ blurSize: %d", blendMode, v5, -[CUIColor description](-[CUIPSDLayerEffectInnerGlow color](self, "color"), "description"), -[CUIPSDLayerEffectInnerGlow blurSize](self, "blurSize"))}];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIPSDLayerEffectInnerGlow;
  [(CUIPSDLayerEffectComponent *)&v3 dealloc];
}

@end