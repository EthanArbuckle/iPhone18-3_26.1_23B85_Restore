@interface HUCAPackageIconContentView
- (CGSize)assetNoMarginSize;
- (CGSize)assetSize;
- (CGSize)iconContentIntrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (HUCAPackageIconContentView)initWithFrame:(CGRect)frame;
- (void)_applyModifiers;
- (void)_tryRenouncePackageForIconDescriptor:(id)descriptor;
- (void)_updateWithPackage:(id)package animated:(BOOL)animated;
- (void)dealloc;
- (void)layoutRootLayer;
- (void)layoutSubviews;
- (void)reclaimIconIfPossible;
- (void)renounceIconIfPossible;
- (void)setState:(id)state animated:(BOOL)animated;
- (void)stateController:(id)controller transitionDidStart:(id)start speed:(float)speed;
@end

@implementation HUCAPackageIconContentView

- (HUCAPackageIconContentView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = HUCAPackageIconContentView;
  v3 = [(HUIconContentView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(HUCAPackageIconContentView *)v3 layer];
    [layer setAllowsGroupBlending:0];

    layer2 = [(HUCAPackageIconContentView *)v4 layer];
    [layer2 setAllowsGroupOpacity:0];
  }

  return v4;
}

- (void)dealloc
{
  iconDescriptor = [(HUIconContentView *)self iconDescriptor];
  [(HUCAPackageIconContentView *)self _tryRenouncePackageForIconDescriptor:iconDescriptor];

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
  rootLayer = [(HUCAPackageIconContentView *)self rootLayer];
  [rootLayer setPosition:{v17, v19}];

  CATransform3DMakeScale(&v23, v15, v15, 1.0);
  rootLayer2 = [(HUCAPackageIconContentView *)self rootLayer];
  v22 = v23;
  [rootLayer2 setTransform:&v22];

  [MEMORY[0x277CD9FF0] commit];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  if (![(HUCAPackageIconContentView *)self useAssetMarginSize:fits.width]|| (([(HUCAPackageIconContentView *)self assetNoMarginSize], v5 == *MEMORY[0x277CBF3A8]) ? (v6 = v4 == *(MEMORY[0x277CBF3A8] + 8)) : (v6 = 0), v6))
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

- (void)setState:(id)state animated:(BOOL)animated
{
  animatedCopy = animated;
  v30 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  stateController = [(HUCAPackageIconContentView *)self stateController];
  rootLayer = [(HUCAPackageIconContentView *)self rootLayer];
  v9 = [stateController stateOfLayer:rootLayer];

  stateController2 = [(HUCAPackageIconContentView *)self stateController];
  layer = [stateController2 layer];
  v12 = [layer stateWithName:stateCopy];

  if (!v12)
  {
    if (([stateCopy isEqualToString:*MEMORY[0x277D13750]] & 1) != 0 || objc_msgSend(stateCopy, "isEqualToString:", *MEMORY[0x277D13798]))
    {
      stateController3 = [(HUCAPackageIconContentView *)self stateController];
      layer2 = [stateController3 layer];
      v12 = [layer2 stateWithName:*MEMORY[0x277D13760]];

      if (v12)
      {
        goto LABEL_12;
      }

      stateController4 = [(HUCAPackageIconContentView *)self stateController];
      layer3 = [stateController4 layer];
      v17 = layer3;
      v18 = MEMORY[0x277D13788];
      goto LABEL_8;
    }

    if ([stateCopy isEqualToString:*MEMORY[0x277D13748]])
    {
      stateController4 = [(HUCAPackageIconContentView *)self stateController];
      layer3 = [stateController4 layer];
      v17 = layer3;
      v18 = MEMORY[0x277D13740];
LABEL_8:
      v12 = [layer3 stateWithName:*v18];

      goto LABEL_12;
    }

    v19 = HFLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      iconDescriptor = [(HUIconContentView *)self iconDescriptor];
      identifier = [iconDescriptor identifier];
      v26 = 138412546;
      v27 = stateCopy;
      v28 = 2112;
      v29 = identifier;
      _os_log_error_impl(&dword_254573000, v19, OS_LOG_TYPE_ERROR, "Failed to identify state named: %@ for iconDescriptor: %@", &v26, 0x16u);
    }

    v12 = 0;
  }

LABEL_12:
  if (([v12 isEqual:v9] & 1) == 0)
  {
    if (animatedCopy && [objc_opt_class() _isAnimationEnabled])
    {
      stateController5 = [(HUCAPackageIconContentView *)self stateController];
      rootLayer2 = [(HUCAPackageIconContentView *)self rootLayer];
      LODWORD(v22) = 1.0;
      [stateController5 setState:v12 ofLayer:rootLayer2 transitionSpeed:v22];
    }

    else
    {
      stateController5 = [(HUCAPackageIconContentView *)self stateController];
      rootLayer2 = [(HUCAPackageIconContentView *)self rootLayer];
      [stateController5 setState:v12 ofLayer:rootLayer2];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_updateWithPackage:(id)package animated:(BOOL)animated
{
  packageCopy = package;
  iconDescriptor = [(HUIconContentView *)self iconDescriptor];

  if (iconDescriptor)
  {
    v8 = +[HUCAPackageIconManager sharedInstance];
    iconDescriptor2 = [(HUIconContentView *)self iconDescriptor];
    v10 = [v8 tryReclaimPackage:packageCopy forIconDescriptor:iconDescriptor2];

    [(HUCAPackageIconContentView *)self setRenouncedPackageDescriptor:0];
    objc_opt_class();
    rootLayer6 = [v10 publishedObjectWithName:@"Icon"];
    if (objc_opt_isKindOfClass())
    {
      v12 = rootLayer6;
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
    if (!animated)
    {
      [MEMORY[0x277CD9FF0] setAnimationDuration:0.0];
      [MEMORY[0x277CD9FF0] setDisableActions:1];
    }

    rootLayer = [(HUCAPackageIconContentView *)self rootLayer];
    superlayer = [rootLayer superlayer];
    layer = [(HUCAPackageIconContentView *)self layer];

    if (superlayer == layer)
    {
      rootLayer2 = [(HUCAPackageIconContentView *)self rootLayer];
      [rootLayer2 removeFromSuperlayer];
    }

    [(HUCAPackageIconContentView *)self setPackage:v10];
    stateController = [(HUCAPackageIconContentView *)self stateController];
    [stateController setDelegate:0];

    package = [(HUCAPackageIconContentView *)self package];
    rootLayer3 = [package rootLayer];
    [(HUCAPackageIconContentView *)self setRootLayer:rootLayer3];

    traitCollection = [(HUCAPackageIconContentView *)self traitCollection];
    [traitCollection displayScale];
    v26 = v25;
    rootLayer4 = [(HUCAPackageIconContentView *)self rootLayer];
    [rootLayer4 setRasterizationScale:v26];

    v28 = objc_alloc(MEMORY[0x277CD9FB8]);
    rootLayer5 = [(HUCAPackageIconContentView *)self rootLayer];
    v30 = [v28 initWithLayer:rootLayer5];
    [(HUCAPackageIconContentView *)self setStateController:v30];

    stateController2 = [(HUCAPackageIconContentView *)self stateController];
    [stateController2 setDelegate:self];

    if (!v13)
    {
      rootLayer6 = [(HUCAPackageIconContentView *)self rootLayer];
    }

    [rootLayer6 size];
    [(HUCAPackageIconContentView *)self setAssetSize:?];
    if (!v13)
    {
    }

    package2 = [(HUCAPackageIconContentView *)self package];
    publishedObjectNames = [package2 publishedObjectNames];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __58__HUCAPackageIconContentView__updateWithPackage_animated___block_invoke;
    v37[3] = &unk_27977D678;
    v37[4] = self;
    v34 = [publishedObjectNames na_map:v37];
    [(HUCAPackageIconContentView *)self setPackageLayers:v34];

    layer2 = [(HUCAPackageIconContentView *)self layer];
    rootLayer7 = [(HUCAPackageIconContentView *)self rootLayer];
    [layer2 addSublayer:rootLayer7];

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
  iconDescriptor = [(HUIconContentView *)self iconDescriptor];
  if (objc_opt_isKindOfClass())
  {
    v4 = iconDescriptor;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    packageLayers = [(HUCAPackageIconContentView *)self packageLayers];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__HUCAPackageIconContentView__applyModifiers__block_invoke;
    v7[3] = &unk_27977D6F0;
    v8 = v5;
    [packageLayers na_each:v7];
  }
}

void __45__HUCAPackageIconContentView__applyModifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 iconModifiers];
  [v3 applyModifiers:v4];
}

- (void)_tryRenouncePackageForIconDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  stateController = [(HUCAPackageIconContentView *)self stateController];

  if (stateController)
  {
    stateController2 = [(HUCAPackageIconContentView *)self stateController];
    removeAllStateChanges = [stateController2 removeAllStateChanges];

    stateController3 = [(HUCAPackageIconContentView *)self stateController];
    [stateController3 cancelTimers];

    [(HUCAPackageIconContentView *)self setStateController:0];
  }

  package = [(HUCAPackageIconContentView *)self package];
  if (!descriptorCopy || !package)
  {
    goto LABEL_7;
  }

  renouncedPackageDescriptor = [(HUCAPackageIconContentView *)self renouncedPackageDescriptor];
  if (renouncedPackageDescriptor)
  {

LABEL_7:
    goto LABEL_8;
  }

  package2 = [(HUCAPackageIconContentView *)self package];
  rootLayer = [package2 rootLayer];
  superlayer = [rootLayer superlayer];
  layer = [(HUCAPackageIconContentView *)self layer];

  if (superlayer == layer)
  {
    package3 = [(HUCAPackageIconContentView *)self package];
    rootLayer2 = [package3 rootLayer];
    [rootLayer2 removeFromSuperlayer];

    v16 = +[HUCAPackageIconManager sharedInstance];
    package4 = [(HUCAPackageIconContentView *)self package];
    [v16 returnPackageToCache:package4 forIconDescriptor:descriptorCopy];

    [(HUCAPackageIconContentView *)self setRenouncedPackageDescriptor:descriptorCopy];
  }

LABEL_8:
}

- (void)reclaimIconIfPossible
{
  iconDescriptor = [(HUIconContentView *)self iconDescriptor];
  [(HUCAPackageIconContentView *)self updateWithIconDescriptor:iconDescriptor displayStyle:[(HUIconContentView *)self displayStyle] animated:0];
}

- (void)renounceIconIfPossible
{
  iconDescriptor = [(HUIconContentView *)self iconDescriptor];
  [(HUCAPackageIconContentView *)self _tryRenouncePackageForIconDescriptor:iconDescriptor];
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

- (void)stateController:(id)controller transitionDidStart:(id)start speed:(float)speed
{
  v5 = [(HUCAPackageIconContentView *)self rootLayer:controller];
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