@interface CUIPSDLayerEffectColorOverlay
- (BOOL)updateLayerEffectPreset:(id)preset error:(id *)error;
- (CUIPSDLayerEffectColorOverlay)init;
- (CUIPSDLayerEffectColorOverlay)initWithEffectFromPreset:(id)preset atIndex:(unsigned int)index;
- (id)description;
- (void)dealloc;
@end

@implementation CUIPSDLayerEffectColorOverlay

- (BOOL)updateLayerEffectPreset:(id)preset error:(id *)error
{
  color = [(CUIPSDLayerEffectColorOverlay *)self color];
  if (color)
  {
    Components = CGColorGetComponents([(CUIColor *)[(CUIPSDLayerEffectColorOverlay *)self color] CGColor]);
    v9 = rint(*Components * 255.0);
    v10 = rint(Components[1] * 255.0);
    v11 = rint(Components[2] * 255.0);
    [(CUIPSDLayerEffectColorOverlay *)self opacity];
    [preset addColorFillWithRed:v9 green:v10 blue:v11 opacity:1852797549 blendMode:0 tintable:?];
  }

  else
  {
    v14 = NSLocalizedDescriptionKey;
    v15 = @"Color Overlay is missing color information";
    v12 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:[NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1]];
    if (error)
    {
      *error = v12;
    }
  }

  return color != 0;
}

- (CUIPSDLayerEffectColorOverlay)initWithEffectFromPreset:(id)preset atIndex:(unsigned int)index
{
  v8.receiver = self;
  v8.super_class = CUIPSDLayerEffectColorOverlay;
  v6 = [(CUIPSDLayerEffectColorOverlay *)&v8 init];
  -[CUIPSDLayerEffectColorOverlay setColor:](v6, "setColor:", -[CUIPSDLayerEffectComponent _colorFromShapeEffectValue:](v6, "_colorFromShapeEffectValue:", [preset valueForParameter:0 inEffectAtIndex:index]));
  -[CUIPSDLayerEffectColorOverlay setOpacity:](v6, "setOpacity:", COERCE_DOUBLE([preset valueForParameter:2 inEffectAtIndex:index]));
  [(CUIPSDLayerEffectColorOverlay *)v6 setBlendMode:0];
  [(CUIPSDLayerEffectComponent *)v6 setVisible:1];
  return v6;
}

- (CUIPSDLayerEffectColorOverlay)init
{
  v5.receiver = self;
  v5.super_class = CUIPSDLayerEffectColorOverlay;
  v2 = [(CUIPSDLayerEffectColorOverlay *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CUIPSDLayerEffectComponent *)v2 setName:@"Color Overlay"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CUIPSDLayerEffectColorOverlay;
  v3 = [(CUIPSDLayerEffectColorOverlay *)&v7 description];
  blendMode = [(CUIPSDLayerEffectColorOverlay *)self blendMode];
  [(CUIPSDLayerEffectColorOverlay *)self opacity];
  return [v3 stringByAppendingString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"blendMode: %d opacity: %f color: %@", blendMode, v5, -[CUIColor description](-[CUIPSDLayerEffectColorOverlay color](self, "color"), "description"))}];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIPSDLayerEffectColorOverlay;
  [(CUIPSDLayerEffectComponent *)&v3 dealloc];
}

@end