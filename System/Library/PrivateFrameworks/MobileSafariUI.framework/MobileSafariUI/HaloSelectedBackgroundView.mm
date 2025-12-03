@interface HaloSelectedBackgroundView
- (HaloSelectedBackgroundView)initWithFrame:(CGRect)frame;
- (void)_updateHaloColor;
@end

@implementation HaloSelectedBackgroundView

- (HaloSelectedBackgroundView)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = HaloSelectedBackgroundView;
  v3 = [(HaloSelectedBackgroundView *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    haloRing = v3->_haloRing;
    v3->_haloRing = v4;

    [(UIView *)v3->_haloRing setTranslatesAutoresizingMaskIntoConstraints:0];
    isSolariumEnabled = [MEMORY[0x277D49A08] isSolariumEnabled];
    v7 = 23.0;
    if (isSolariumEnabled)
    {
      v7 = 25.0;
    }

    [(UIView *)v3->_haloRing _setContinuousCornerRadius:v7];
    layer = [(UIView *)v3->_haloRing layer];
    [layer setBorderWidth:3.0];

    [(HaloSelectedBackgroundView *)v3 addSubview:v3->_haloRing];
    v9 = MEMORY[0x277CCAAD0];
    v10 = v3->_haloRing;
    UIEdgeInsetsMakeWithEdges();
    v11 = [v9 safari_constraintsMatchingFrameOfView:v3 withFrameOfView:v10 edgeInsets:?];
    [v9 activateConstraints:v11];

    [(HaloSelectedBackgroundView *)v3 _updateHaloColor];
    objc_initWeak(&location, v3);
    systemTraitsAffectingColorAppearance = [MEMORY[0x277D75C80] systemTraitsAffectingColorAppearance];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __44__HaloSelectedBackgroundView_initWithFrame___block_invoke;
    v16[3] = &unk_2781D7828;
    objc_copyWeak(&v17, &location);
    v13 = [(HaloSelectedBackgroundView *)v3 registerForTraitChanges:systemTraitsAffectingColorAppearance withHandler:v16];

    v14 = v3;
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __44__HaloSelectedBackgroundView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateHaloColor];
}

- (void)_updateHaloColor
{
  tertiaryLabelColor = [MEMORY[0x277D75348] tertiaryLabelColor];
  v3 = tertiaryLabelColor;
  cGColor = [tertiaryLabelColor CGColor];
  layer = [(UIView *)self->_haloRing layer];
  [layer setBorderColor:cGColor];
}

@end