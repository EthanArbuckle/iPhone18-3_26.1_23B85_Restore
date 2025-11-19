@interface ISiOSAppRecipe
- (ISiOSAppRecipe)init;
- (id)layerTreeForSize:(CGSize)a3 scale:(double)a4;
- (id)primaryResourceEffectReturningBackgroundContentOverride:(id *)a3;
- (void)updateRecipeWithImageDescriptor:(id)a3;
@end

@implementation ISiOSAppRecipe

- (ISiOSAppRecipe)init
{
  v5.receiver = self;
  v5.super_class = ISiOSAppRecipe;
  v2 = [(ISiOSAppRecipe *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ISiOSAppRecipe *)v2 setShouldApplyMask:1];
    [(ISiOSAppRecipe *)v3 setShouldDrawBorder:0];
    [(ISiOSAppRecipe *)v3 setTintColor:0];
    [(ISiOSAppRecipe *)v3 setAllowDarkAndTintable:0];
    [(ISiOSAppRecipe *)v3 setSegment:0];
  }

  return v3;
}

- (void)updateRecipeWithImageDescriptor:(id)a3
{
  v4 = a3;
  -[ISiOSAppRecipe setShouldApplyMask:](self, "setShouldApplyMask:", [v4 shouldApplyMask]);
  -[ISiOSAppRecipe setShouldDrawBorder:](self, "setShouldDrawBorder:", [v4 drawBorder]);
  v5 = [v4 tintColor];
  [(ISiOSAppRecipe *)self setTintColor:v5];

  -[ISiOSAppRecipe setAppearance:](self, "setAppearance:", [v4 appearance]);
  -[ISiOSAppRecipe setBackground:](self, "setBackground:", [v4 background]);
  -[ISiOSAppRecipe setTemplateVariant:](self, "setTemplateVariant:", [v4 templateVariant]);
  LOBYTE(v5) = [v4 specialIconOptions];

  if ((v5 & 2) != 0)
  {

    [(ISiOSAppRecipe *)self setAllowDarkAndTintable:1];
  }
}

- (id)primaryResourceEffectReturningBackgroundContentOverride:(id *)a3
{
  if ([(ISiOSAppRecipe *)self templateVariant])
  {
    *a3 = 0;
    v5 = objc_opt_new();
LABEL_3:
    v6 = v5;
    goto LABEL_16;
  }

  if (![(ISiOSAppRecipe *)self allowDarkAndTintable]|| [(ISiOSAppRecipe *)self appearance]!= 2)
  {
    if (![(ISiOSAppRecipe *)self allowDarkAndTintable]|| [(ISiOSAppRecipe *)self appearance]!= 1)
    {
      [MEMORY[0x1E69A8968] white];
      *a3 = v6 = 0;
      goto LABEL_16;
    }

    *a3 = objc_alloc_init(ISDarkBackgroundResource);
    if ([(ISiOSAppRecipe *)self segment])
    {
      v9 = ISSegmentDarkEffect;
    }

    else
    {
      v11 = +[ISDefaults sharedInstance];
      v12 = [v11 isDarkIconDimmingForDedicatedAssetsEnabled];

      if (!v12)
      {
LABEL_26:
        v6 = 0;
        goto LABEL_16;
      }

      v9 = ISIntelligentDimEffect;
    }

    v5 = objc_alloc_init(v9);
    goto LABEL_3;
  }

  *a3 = objc_alloc_init(ISDarkBackgroundResource);
  if ([(ISiOSAppRecipe *)self generic])
  {
    *a3 = [objc_alloc(MEMORY[0x1E69A8968]) initWithRed:0.0784 green:0.0784 blue:0.0784 alpha:1.0];
  }

  if (![(ISiOSAppRecipe *)self segment])
  {
    if (self->tintColor)
    {
      v5 = [[ISBlendledTintEffect alloc] initWithColor:self->tintColor];
      goto LABEL_3;
    }

    goto LABEL_26;
  }

  v7 = [ISSegmentTintEffect alloc];
  v8 = [(ISiOSAppRecipe *)self tintColor];
  if (v8)
  {
    v6 = [(ISSegmentTintEffect *)v7 initWithColor:v8];
  }

  else
  {
    v13 = [MEMORY[0x1E69A8968] white];
    v6 = [(ISSegmentTintEffect *)v7 initWithColor:v13];
  }

LABEL_16:
  if ([(ISiOSAppRecipe *)self background]== 1)
  {
    *a3 = 0;
  }

  return v6;
}

- (id)layerTreeForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v8 = objc_alloc_init(ISLayer);
  [(ISLayer *)v8 setSize:width, height];
  [(ISLayer *)v8 setName:@"root layer"];
  v9 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v9 setName:@"Background"];
  [(ISLayer *)v9 setSize:width, height];
  v10 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v10 setName:@"primary asset layer"];
  [(ISLayer *)v10 setSize:width, height];
  [(ISContentLayer *)v10 setContent:@"kISPrimaryResourceKey"];
  v19 = 0;
  v11 = [(ISiOSAppRecipe *)self primaryResourceEffectReturningBackgroundContentOverride:&v19];
  v12 = v19;
  [(ISLayer *)v10 setEffect:v11];

  [(ISContentLayer *)v9 setContent:v12];
  [(ISLayer *)v9 addSublayer:v10];
  if ([(ISiOSAppRecipe *)self shouldApplyMask]&& ![(ISiOSAppRecipe *)self templateVariant])
  {
    v13 = objc_alloc_init(ISContentLayer);
    [(ISLayer *)v13 setSize:width, height];
    [(ISLayer *)v13 setName:@"mask layer"];
    v14 = +[ISShapeCompositorResource continuousRoundedRectShape];
    [(ISContentLayer *)v13 setContent:v14];

    [(ISLayer *)v9 setMask:v13];
  }

  [(ISLayer *)v8 addSublayer:v9];

  if ([(ISiOSAppRecipe *)self shouldDrawBorder])
  {
    v15 = objc_alloc_init(ISContentLayer);
    [(ISLayer *)v15 setName:@"border"];
    [(ISLayer *)v15 setSize:width, height];
    v16 = objc_opt_new();
    v17 = [MEMORY[0x1E69A8968] borderColorForAppearance:{-[ISiOSAppRecipe appearance](self, "appearance")}];
    [v16 setLineColor:v17];

    [v16 setFillColor:0];
    [v16 setLineWidth:1.0 / a4];
    [(ISContentLayer *)v15 setContent:v16];
    [(ISLayer *)v8 addSublayer:v15];
  }

  return v8;
}

@end