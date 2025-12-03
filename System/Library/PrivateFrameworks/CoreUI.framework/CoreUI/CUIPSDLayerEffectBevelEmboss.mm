@interface CUIPSDLayerEffectBevelEmboss
- (BOOL)updateLayerEffectPreset:(id)preset error:(id *)error;
- (CUIPSDLayerEffectBevelEmboss)init;
- (CUIPSDLayerEffectBevelEmboss)initWithEffectFromPreset:(id)preset atIndex:(unsigned int)index;
- (id)description;
- (void)dealloc;
@end

@implementation CUIPSDLayerEffectBevelEmboss

- (BOOL)updateLayerEffectPreset:(id)preset error:(id *)error
{
  if (![(CUIPSDLayerEffectBevelEmboss *)self highlightColor]|| ![(CUIPSDLayerEffectBevelEmboss *)self shadowColor])
  {
    v22 = NSCocoaErrorDomain;
    v33 = NSLocalizedDescriptionKey;
    v34 = @"Bevel is missing color information";
    v23 = &v34;
    v24 = &v33;
    goto LABEL_12;
  }

  if ([(CUIPSDLayerEffectBevelEmboss *)self highlightBlendMode]&& [(CUIPSDLayerEffectBevelEmboss *)self highlightBlendMode]!= 1 || [(CUIPSDLayerEffectBevelEmboss *)self shadowBlendMode]&& [(CUIPSDLayerEffectBevelEmboss *)self shadowBlendMode]!= 1)
  {
    v22 = NSCocoaErrorDomain;
    v31 = NSLocalizedDescriptionKey;
    v32 = @"Bevel contains unsupported blend mode information";
    v23 = &v32;
    v24 = &v31;
LABEL_12:
    v25 = [NSError errorWithDomain:v22 code:-1 userInfo:[NSDictionary dictionaryWithObjects:v23 forKeys:v24 count:1]];
    v17 = 0;
    if (error)
    {
      *error = v25;
    }

    return v17;
  }

  Components = CGColorGetComponents([(CUIColor *)[(CUIPSDLayerEffectBevelEmboss *)self highlightColor] CGColor]);
  v30 = rint(*Components * 255.0);
  v8 = rint(Components[1] * 255.0);
  v9 = rint(Components[2] * 255.0);
  v10 = CGColorGetComponents([(CUIColor *)[(CUIPSDLayerEffectBevelEmboss *)self shadowColor] CGColor]);
  v11 = rint(*v10 * 255.0);
  v12 = rint(v10[1] * 255.0);
  v13 = rint(v10[2] * 255.0);
  blurSize = [(CUIPSDLayerEffectBevelEmboss *)self blurSize];
  softenSize = [(CUIPSDLayerEffectBevelEmboss *)self softenSize];
  direction = [(CUIPSDLayerEffectBevelEmboss *)self direction];
  v17 = 1;
  if (direction == 1231953952)
  {
    [(CUIPSDLayerEffectBevelEmboss *)self highlightOpacity];
    v19 = v27;
    [(CUIPSDLayerEffectBevelEmboss *)self shadowOpacity];
    v21 = v28;
    LODWORD(v29) = 1;
    goto LABEL_16;
  }

  if (direction == 1333097504)
  {
    [(CUIPSDLayerEffectBevelEmboss *)self highlightOpacity];
    v19 = v18;
    [(CUIPSDLayerEffectBevelEmboss *)self shadowOpacity];
    v21 = v20;
    LODWORD(v29) = 0;
LABEL_16:
    [preset addBevelEmbossWithHighlightColorRed:v30 green:v8 blue:v9 opacity:v11 shadowColorRed:v12 green:v13 blue:v19 opacity:v21 blur:__PAIR64__(softenSize soften:blurSize) bevelStyle:v29];
  }

  return v17;
}

- (CUIPSDLayerEffectBevelEmboss)initWithEffectFromPreset:(id)preset atIndex:(unsigned int)index
{
  v8.receiver = self;
  v8.super_class = CUIPSDLayerEffectBevelEmboss;
  v6 = [(CUIPSDLayerEffectBevelEmboss *)&v8 init];
  -[CUIPSDLayerEffectBevelEmboss setBlurSize:](v6, "setBlurSize:", [preset valueForParameter:4 inEffectAtIndex:index]);
  -[CUIPSDLayerEffectBevelEmboss setSoftenSize:](v6, "setSoftenSize:", [preset valueForParameter:8 inEffectAtIndex:index]);
  -[CUIPSDLayerEffectBevelEmboss setHighlightColor:](v6, "setHighlightColor:", -[CUIPSDLayerEffectComponent _colorFromShapeEffectValue:](v6, "_colorFromShapeEffectValue:", [preset valueForParameter:0 inEffectAtIndex:index]));
  -[CUIPSDLayerEffectBevelEmboss setHighlightOpacity:](v6, "setHighlightOpacity:", COERCE_DOUBLE([preset valueForParameter:2 inEffectAtIndex:index]));
  -[CUIPSDLayerEffectBevelEmboss setShadowColor:](v6, "setShadowColor:", -[CUIPSDLayerEffectComponent _colorFromShapeEffectValue:](v6, "_colorFromShapeEffectValue:", [preset valueForParameter:1 inEffectAtIndex:index]));
  -[CUIPSDLayerEffectBevelEmboss setShadowOpacity:](v6, "setShadowOpacity:", COERCE_DOUBLE([preset valueForParameter:3 inEffectAtIndex:index]));
  [(CUIPSDLayerEffectBevelEmboss *)v6 setHighlightBlendMode:0];
  [(CUIPSDLayerEffectBevelEmboss *)v6 setShadowBlendMode:0];
  [(CUIPSDLayerEffectBevelEmboss *)v6 setAngle:90];
  [(CUIPSDLayerEffectBevelEmboss *)v6 setAltitude:30];
  [(CUIPSDLayerEffectBevelEmboss *)v6 setDirection:1231953952];
  [(CUIPSDLayerEffectComponent *)v6 setVisible:1];
  return v6;
}

- (CUIPSDLayerEffectBevelEmboss)init
{
  v5.receiver = self;
  v5.super_class = CUIPSDLayerEffectBevelEmboss;
  v2 = [(CUIPSDLayerEffectBevelEmboss *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CUIPSDLayerEffectComponent *)v2 setName:@"Bevel Emboss"];
  }

  return v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = CUIPSDLayerEffectBevelEmboss;
  return [-[CUIPSDLayerEffectBevelEmboss description](&v3 description)];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIPSDLayerEffectBevelEmboss;
  [(CUIPSDLayerEffectComponent *)&v3 dealloc];
}

@end