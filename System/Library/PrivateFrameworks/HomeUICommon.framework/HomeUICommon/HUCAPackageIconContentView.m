@interface HUCAPackageIconContentView
- (CGSize)assetNoMarginSize;
- (CGSize)assetSize;
- (CGSize)iconContentIntrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (HUCAPackageIconContentView)initWithFrame:(CGRect)a3;
- (void)_applyModifiers;
- (void)_tryRenouncePackageForIconDescriptor:(id)a3;
- (void)_updateWithPackage:(id)a3 animated:(BOOL)a4;
- (void)dealloc;
- (void)layoutRootLayer;
- (void)layoutSubviews;
- (void)reclaimIconIfPossible;
- (void)renounceIconIfPossible;
- (void)setState:(id)a3 animated:(BOOL)a4;
- (void)stateController:(id)a3 transitionDidStart:(id)a4 speed:(float)a5;
@end

@implementation HUCAPackageIconContentView

- (HUCAPackageIconContentView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = HUCAPackageIconContentView;
  v3 = [(HUIconContentView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(HUCAPackageIconContentView *)v3 layer];
    [v5 setAllowsGroupBlending:0];

    v6 = [(HUCAPackageIconContentView *)v4 layer];
    [v6 setAllowsGroupOpacity:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [(HUIconContentView *)self iconDescriptor];
  [(HUCAPackageIconContentView *)self _tryRenouncePackageForIconDescriptor:v3];

  v4.receiver = self;
  v4.super_class = HUCAPackageIconContentView;
  [(HUCAPackageIconContentView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = HUCAPackageIconContentView;
  [(HUCAPackageIconContentView *)&v3 layoutSubviews];
  [(HUCAPackageIconContentView *)self layoutRootLayer];
}

- (void)layoutRootLayer
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setAnimationDuration:0.0];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(HUCAPackageIconContentView *)self assetSize];
  v4 = v3;
  v6 = v5;
  if ([(HUCAPackageIconContentView *)self useAssetMarginSize])
  {
    [(HUCAPackageIconContentView *)self assetNoMarginSize];
    if (v8 != *MEMORY[0x277CBF3A8] || v7 != *(MEMORY[0x277CBF3A8] + 8))
    {
      [(HUCAPackageIconContentView *)self assetNoMarginSize];
      v4 = v10;
      v6 = v11;
    }
  }

  [(HUCAPackageIconContentView *)self frame];
  v13 = v12 / v4;
  [(HUCAPackageIconContentView *)self frame];
  if (v13 >= v14 / v6)
  {
    v15 = v14 / v6;
  }

  else
  {
    v15 = v13;
  }

  [(HUCAPackageIconContentView *)self center];
  v17 = v16;
  v19 = v18;
  v20 = [(HUCAPackageIconContentView *)self rootLayer];
  [v20 setPosition:{v17, v19}];

  CATransform3DMakeScale(&v23, v15, v15, 1.0);
  v21 = [(HUCAPackageIconContentView *)self rootLayer];
  v22 = v23;
  [v21 setTransform:&v22];

  [MEMORY[0x277CD9FF0] commit];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  if (![(HUCAPackageIconContentView *)self useAssetMarginSize:a3.width]|| (([(HUCAPackageIconContentView *)self assetNoMarginSize], v5 == *MEMORY[0x277CBF3A8]) ? (v6 = v4 == *(MEMORY[0x277CBF3A8] + 8)) : (v6 = 0), v6))
  {

    [(HUCAPackageIconContentView *)self assetSize];
  }

  else
  {

    [(HUCAPackageIconContentView *)self assetNoMarginSize];
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setState:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HUCAPackageIconContentView *)self stateController];
  v8 = [(HUCAPackageIconContentView *)self rootLayer];
  v9 = [v7 stateOfLayer:v8];

  v10 = [(HUCAPackageIconContentView *)self stateController];
  v11 = [v10 layer];
  v12 = [v11 stateWithName:v6];

  if (!v12)
  {
    if (([v6 isEqualToString:*MEMORY[0x277D13750]] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", *MEMORY[0x277D13798]))
    {
      v13 = [(HUCAPackageIconContentView *)self stateController];
      v14 = [v13 layer];
      v12 = [v14 stateWithName:*MEMORY[0x277D13760]];

      if (v12)
      {
        goto LABEL_12;
      }

      v15 = [(HUCAPackageIconContentView *)self stateController];
      v16 = [v15 layer];
      v17 = v16;
      v18 = MEMORY[0x277D13788];
      goto LABEL_8;
    }

    if ([v6 isEqualToString:*MEMORY[0x277D13748]])
    {
      v15 = [(HUCAPackageIconContentView *)self stateController];
      v16 = [v15 layer];
      v17 = v16;
      v18 = MEMORY[0x277D13740];
LABEL_8:
      v12 = [v16 stateWithName:*v18];

      goto LABEL_12;
    }

    v19 = HFLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v24 = [(HUIconContentView *)self iconDescriptor];
      v25 = [v24 identifier];
      v26 = 138412546;
      v27 = v6;
      v28 = 2112;
      v29 = v25;
      _os_log_error_impl(&dword_254573000, v19, OS_LOG_TYPE_ERROR, "Failed to identify state named: %@ for iconDescriptor: %@", &v26, 0x16u);
    }

    v12 = 0;
  }

LABEL_12:
  if (([v12 isEqual:v9] & 1) == 0)
  {
    if (v4 && [objc_opt_class() _isAnimationEnabled])
    {
      v20 = [(HUCAPackageIconContentView *)self stateController];
      v21 = [(HUCAPackageIconContentView *)self rootLayer];
      LODWORD(v22) = 1.0;
      [v20 setState:v12 ofLayer:v21 transitionSpeed:v22];
    }

    else
    {
      v20 = [(HUCAPackageIconContentView *)self stateController];
      v21 = [(HUCAPackageIconContentView *)self rootLayer];
      [v20 setState:v12 ofLayer:v21];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_updateWithPackage:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = [(HUIconContentView *)self iconDescriptor];

  if (v7)
  {
    v8 = +[HUCAPackageIconManager sharedInstance];
    v9 = [(HUIconContentView *)self iconDescriptor];
    v10 = [v8 tryReclaimPackage:v6 forIconDescriptor:v9];

    [(HUCAPackageIconContentView *)self setRenouncedPackageDescriptor:0];
    objc_opt_class();
    v11 = [v10 publishedObjectWithName:@"Icon"];
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (!v13)
    {
      NSLog(&cfstr_FailedToIdenti_0.isa, v10);
    }

    objc_opt_class();
    v14 = [v10 publishedObjectWithName:@"IconNoMargin"];
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (v16)
    {
      [v16 size];
      [(HUCAPackageIconContentView *)self setAssetNoMarginSize:?];
    }

    [MEMORY[0x277CD9FF0] begin];
    if (!a4)
    {
      [MEMORY[0x277CD9FF0] setAnimationDuration:0.0];
      [MEMORY[0x277CD9FF0] setDisableActions:1];
    }

    v17 = [(HUCAPackageIconContentView *)self rootLayer];
    v18 = [v17 superlayer];
    v19 = [(HUCAPackageIconContentView *)self layer];

    if (v18 == v19)
    {
      v20 = [(HUCAPackageIconContentView *)self rootLayer];
      [v20 removeFromSuperlayer];
    }

    [(HUCAPackageIconContentView *)self setPackage:v10];
    v21 = [(HUCAPackageIconContentView *)self stateController];
    [v21 setDelegate:0];

    v22 = [(HUCAPackageIconContentView *)self package];
    v23 = [v22 rootLayer];
    [(HUCAPackageIconContentView *)self setRootLayer:v23];

    v24 = [(HUCAPackageIconContentView *)self traitCollection];
    [v24 displayScale];
    v26 = v25;
    v27 = [(HUCAPackageIconContentView *)self rootLayer];
    [v27 setRasterizationScale:v26];

    v28 = objc_alloc(MEMORY[0x277CD9FB8]);
    v29 = [(HUCAPackageIconContentView *)self rootLayer];
    v30 = [v28 initWithLayer:v29];
    [(HUCAPackageIconContentView *)self setStateController:v30];

    v31 = [(HUCAPackageIconContentView *)self stateController];
    [v31 setDelegate:self];

    if (!v13)
    {
      v11 = [(HUCAPackageIconContentView *)self rootLayer];
    }

    [v11 size];
    [(HUCAPackageIconContentView *)self setAssetSize:?];
    if (!v13)
    {
    }

    v32 = [(HUCAPackageIconContentView *)self package];
    v33 = [v32 publishedObjectNames];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __58__HUCAPackageIconContentView__updateWithPackage_animated___block_invoke;
    v37[3] = &unk_27977D678;
    v37[4] = self;
    v34 = [v33 na_map:v37];
    [(HUCAPackageIconContentView *)self setPackageLayers:v34];

    v35 = [(HUCAPackageIconContentView *)self layer];
    v36 = [(HUCAPackageIconContentView *)self rootLayer];
    [v35 addSublayer:v36];

    [(HUCAPackageIconContentView *)self layoutRootLayer];
    [MEMORY[0x277CD9FF0] commit];
  }
}

HUCAPackageLayer *__58__HUCAPackageIconContentView__updateWithPackage_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) package];
  v5 = [v4 publishedObjectWithName:v3];

  objc_opt_class();
  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [[HUCAPackageLayer alloc] initWithName:v3 layer:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_applyModifiers
{
  objc_opt_class();
  v3 = [(HUIconContentView *)self iconDescriptor];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [(HUCAPackageIconContentView *)self packageLayers];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__HUCAPackageIconContentView__applyModifiers__block_invoke;
    v7[3] = &unk_27977D6F0;
    v8 = v5;
    [v6 na_each:v7];
  }
}

void __45__HUCAPackageIconContentView__applyModifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 iconModifiers];
  [v3 applyModifiers:v4];
}

- (void)_tryRenouncePackageForIconDescriptor:(id)a3
{
  v18 = a3;
  v4 = [(HUCAPackageIconContentView *)self stateController];

  if (v4)
  {
    v5 = [(HUCAPackageIconContentView *)self stateController];
    v6 = [v5 removeAllStateChanges];

    v7 = [(HUCAPackageIconContentView *)self stateController];
    [v7 cancelTimers];

    [(HUCAPackageIconContentView *)self setStateController:0];
  }

  v8 = [(HUCAPackageIconContentView *)self package];
  if (!v18 || !v8)
  {
    goto LABEL_7;
  }

  v9 = [(HUCAPackageIconContentView *)self renouncedPackageDescriptor];
  if (v9)
  {

LABEL_7:
    goto LABEL_8;
  }

  v10 = [(HUCAPackageIconContentView *)self package];
  v11 = [v10 rootLayer];
  v12 = [v11 superlayer];
  v13 = [(HUCAPackageIconContentView *)self layer];

  if (v12 == v13)
  {
    v14 = [(HUCAPackageIconContentView *)self package];
    v15 = [v14 rootLayer];
    [v15 removeFromSuperlayer];

    v16 = +[HUCAPackageIconManager sharedInstance];
    v17 = [(HUCAPackageIconContentView *)self package];
    [v16 returnPackageToCache:v17 forIconDescriptor:v18];

    [(HUCAPackageIconContentView *)self setRenouncedPackageDescriptor:v18];
  }

LABEL_8:
}

- (void)reclaimIconIfPossible
{
  v3 = [(HUIconContentView *)self iconDescriptor];
  [(HUCAPackageIconContentView *)self updateWithIconDescriptor:v3 displayStyle:[(HUIconContentView *)self displayStyle] animated:0];
}

- (void)renounceIconIfPossible
{
  v3 = [(HUIconContentView *)self iconDescriptor];
  [(HUCAPackageIconContentView *)self _tryRenouncePackageForIconDescriptor:v3];
}

- (CGSize)iconContentIntrinsicContentSize
{
  if (![(HUCAPackageIconContentView *)self useAssetMarginSize]|| (([(HUCAPackageIconContentView *)self assetNoMarginSize], v4 == *MEMORY[0x277CBF3A8]) ? (v5 = v3 == *(MEMORY[0x277CBF3A8] + 8)) : (v5 = 0), v5))
  {

    [(HUCAPackageIconContentView *)self assetSize];
  }

  else
  {

    [(HUCAPackageIconContentView *)self assetNoMarginSize];
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (void)stateController:(id)a3 transitionDidStart:(id)a4 speed:(float)a5
{
  v5 = [(HUCAPackageIconContentView *)self rootLayer:a3];
  [v5 setShouldRasterize:0];
}

- (CGSize)assetSize
{
  width = self->_assetSize.width;
  height = self->_assetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)assetNoMarginSize
{
  width = self->_assetNoMarginSize.width;
  height = self->_assetNoMarginSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end