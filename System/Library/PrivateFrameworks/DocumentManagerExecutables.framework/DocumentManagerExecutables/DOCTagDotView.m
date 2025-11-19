@interface DOCTagDotView
- (DOCTagDotView)initWithDefaultTagDimension:(double)a3 adjustsSizeForContentSizeCategory:(BOOL)a4;
- (void)_updateLayoutOfLayers;
- (void)_withoutAnimations:(id)a3;
- (void)dealloc;
- (void)layoutSublayersOfLayer:(id)a3;
- (void)layoutSubviews;
- (void)loadItemTagImageIfNecessary;
- (void)setChecked:(BOOL)a3;
- (void)setItemTag:(id)a3;
- (void)setItemTagImage:(id)a3;
- (void)setRenderedTagVariant:(unint64_t)a3;
- (void)updateContents;
- (void)updateForChangedTraitsAffectingFonts;
- (void)updateLayoutOfLayers;
@end

@implementation DOCTagDotView

- (DOCTagDotView)initWithDefaultTagDimension:(double)a3 adjustsSizeForContentSizeCategory:(BOOL)a4
{
  v4 = a4;
  v38[1] = *MEMORY[0x277D85DE8];
  v37.receiver = self;
  v37.super_class = DOCTagDotView;
  v6 = [(DOCTagDotView *)&v37 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    v6->_renderedTagVariant = 0;
    v6->_defaultTagDimension = a3;
    v6->_adjustsSizeForContentSizeCategory = v4;
    v8 = objc_alloc_init(MEMORY[0x277D755E8]);
    dotView = v7->_dotView;
    v7->_dotView = v8;

    v10 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    checkmarkLayer = v7->_checkmarkLayer;
    v7->_checkmarkLayer = v10;

    [(CALayer *)v7->_checkmarkLayer setHidden:1];
    v12 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    v13 = +[DOCTagCheckmarkView checkmarkImage];
    v14 = v13;
    [v12 setContents:{objc_msgSend(v13, "CGImage")}];

    [(CALayer *)v7->_checkmarkLayer setMask:v12];
    [(DOCTagDotView *)v7 updateLayoutOfLayers];
    [(DOCTagDotView *)v7 addSubview:v7->_dotView];
    v15 = [(DOCTagDotView *)v7 layer];
    v16 = [(DOCTagDotView *)v7 checkmarkLayer];
    [v15 addSublayer:v16];

    [(DOCTagDotView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [(DOCTagDotView *)v7 heightAnchor];
    v18 = [v17 constraintEqualToConstant:a3];
    tagDimensionConstraint = v7->_tagDimensionConstraint;
    v7->_tagDimensionConstraint = v18;

    v20 = [(DOCTagDotView *)v7 widthAnchor];
    v21 = [(DOCTagDotView *)v7 heightAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    [v22 setActive:1];

    [(DOCTagDotView *)v7 updateForChangedTraitsAffectingFonts];
    [(NSLayoutConstraint *)v7->_tagDimensionConstraint setActive:1];
    objc_initWeak(&location, v7);
    v23 = [MEMORY[0x277CCAB98] defaultCenter];
    v24 = [MEMORY[0x277CCABD8] mainQueue];
    v31 = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v33 = __79__DOCTagDotView_initWithDefaultTagDimension_adjustsSizeForContentSizeCategory___block_invoke;
    v34 = &unk_278FA1C58;
    objc_copyWeak(&v35, &location);
    v25 = [v23 addObserverForName:*MEMORY[0x277D76448] object:0 queue:v24 usingBlock:&v31];
    v38[0] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:{1, v31, v32, v33, v34}];
    notificationObservances = v7->_notificationObservances;
    v7->_notificationObservances = v26;

    if (v4)
    {
      v28 = [MEMORY[0x277D75C80] doc_traitsAffectingFonts];
      v29 = [(DOCTagDotView *)v7 registerForTraitChanges:v28 withAction:sel_updateForChangedTraitsAffectingFonts];
    }

    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __79__DOCTagDotView_initWithDefaultTagDimension_adjustsSizeForContentSizeCategory___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateLayoutOfLayers];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  notificationObservances = self->_notificationObservances;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __24__DOCTagDotView_dealloc__block_invoke;
  v7[3] = &unk_278FA24E8;
  v8 = v3;
  v5 = v3;
  [(NSArray *)notificationObservances enumerateObjectsUsingBlock:v7];

  v6.receiver = self;
  v6.super_class = DOCTagDotView;
  [(DOCTagDotView *)&v6 dealloc];
}

- (void)updateForChangedTraitsAffectingFonts
{
  [(DOCTagDotView *)self defaultTagDimension];
  v4 = v3;
  if ([(DOCTagDotView *)self adjustsSizeForContentSizeCategory])
  {
    v5 = [MEMORY[0x277D75520] defaultMetrics];
    [(DOCTagDotView *)self defaultTagDimension];
    v7 = v6;
    v8 = [(DOCTagDotView *)self traitCollection];
    [v5 scaledValueForValue:v8 compatibleWithTraitCollection:v7];
    v4 = v9;
  }

  [(NSLayoutConstraint *)self->_tagDimensionConstraint constant];
  if (v4 != v10)
  {
    [(NSLayoutConstraint *)self->_tagDimensionConstraint setConstant:v4];

    [(DOCTagDotView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setItemTag:(id)a3
{
  v5 = a3;
  if (self->_itemTag != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_itemTag, a3);
    [(DOCTagDotView *)self setNeedsItemTagImageUpdate];
    [(DOCTagDotView *)self updateContents];
    v5 = v6;
  }
}

- (void)setItemTagImage:(id)a3
{
  v5 = a3;
  if (self->_itemTagImage != v5)
  {
    objc_storeStrong(&self->_itemTagImage, a3);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __33__DOCTagDotView_setItemTagImage___block_invoke;
    v6[3] = &unk_278FA1E80;
    v6[4] = self;
    v7 = v5;
    [(DOCTagDotView *)self _withoutAnimations:v6];
  }
}

void __33__DOCTagDotView_setItemTagImage___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) dotView];
  [v2 setImage:v1];
}

- (void)_withoutAnimations:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__DOCTagDotView__withoutAnimations___block_invoke;
  v6[3] = &unk_278FA1EA8;
  v7 = v3;
  v5 = v3;
  [v4 performWithoutAnimation:v6];
}

uint64_t __36__DOCTagDotView__withoutAnimations___block_invoke(uint64_t a1)
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  (*(*(a1 + 32) + 16))();
  v2 = MEMORY[0x277CD9FF0];

  return [v2 commit];
}

- (void)setChecked:(BOOL)a3
{
  if (self->_checked != a3)
  {
    v4 = a3;
    self->_checked = a3;
    v5 = [(DOCTagDotView *)self checkmarkLayer];
    [v5 setHidden:!v4];
  }
}

- (void)setRenderedTagVariant:(unint64_t)a3
{
  if (self->_renderedTagVariant != a3)
  {
    self->_renderedTagVariant = a3;
    [(DOCTagDotView *)self setNeedsItemTagImageUpdate];
  }
}

- (void)layoutSubviews
{
  [(DOCTagDotView *)self updateContents];
  v3.receiver = self;
  v3.super_class = DOCTagDotView;
  [(DOCTagDotView *)&v3 layoutSubviews];
}

- (void)layoutSublayersOfLayer:(id)a3
{
  v6.receiver = self;
  v6.super_class = DOCTagDotView;
  v4 = a3;
  [(DOCTagDotView *)&v6 layoutSublayersOfLayer:v4];
  v5 = [(DOCTagDotView *)self layer:v6.receiver];

  if (v5 == v4)
  {
    [(DOCTagDotView *)self updateLayoutOfLayers];
  }
}

- (void)loadItemTagImageIfNecessary
{
  itemTagImage = self->_itemTagImage;
  if (([(DOCTagDotView *)self needsItemTagImageUpdate]|| !itemTagImage) && self->_itemTag)
  {
    self->_needsItemTagImageUpdate = 0;
    v4 = [(DOCTagDotView *)self tagDimensionConstraint];
    [v4 constant];
    v6 = v5;

    v7 = [(DOCTagDotView *)self itemTag];
    v10 = [DOCTagRenderingRequest requestForTag:v7 tagDimension:self->_renderedTagVariant variant:v6];

    [v10 setAllowUnsizedSymbolImages:1];
    v8 = +[DOCTagRenderer shared];
    v9 = [v8 renderImageWithRequest:v10];

    [(DOCTagDotView *)self setItemTagImage:v9];
  }
}

- (void)updateContents
{
  [(DOCTagDotView *)self loadItemTagImageIfNecessary];
  v3 = [(DOCTagDotView *)self itemTag];
  v7 = [v3 tagColorIfNotClear];

  if (v7)
  {
    [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    [MEMORY[0x277D06260] nonClearNoneTagColor];
  }
  v4 = ;
  v5 = [v4 CGColor];
  v6 = [(DOCTagDotView *)self checkmarkLayer];
  [v6 setBackgroundColor:v5];
}

- (void)updateLayoutOfLayers
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __37__DOCTagDotView_updateLayoutOfLayers__block_invoke;
  v2[3] = &unk_278FA1C30;
  v2[4] = self;
  [(DOCTagDotView *)self _withoutAnimations:v2];
}

- (void)_updateLayoutOfLayers
{
  [(DOCTagDotView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(DOCTagDotView *)self dotView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v39 = +[DOCTagCheckmarkView checkmarkImage];
  [v39 size];
  v13 = v12;
  v15 = v14;
  [(DOCTagDotView *)self bounds];
  v17 = v16 * 0.5;
  if (v16 * 0.5 > 0.0)
  {
    [v39 size];
    v19 = v18 / v17;
    [v39 size];
    v21 = v20 / v17;
    if (v19 >= v20 / v17)
    {
      v21 = v19;
    }

    if (v21 > 1.0)
    {
      v13 = v13 / v21;
      v15 = v15 / v21;
    }
  }

  [(DOCTagDotView *)self bounds];
  v22 = CGRectGetMidX(v41) - v13 * 0.5;
  [(DOCTagDotView *)self bounds];
  v43.origin.y = CGRectGetMidY(v42) - v15 * 0.5;
  v43.origin.x = v22;
  v43.size.width = v13;
  v43.size.height = v15;
  v44 = CGRectIntegral(v43);
  x = v44.origin.x;
  y = v44.origin.y;
  width = v44.size.width;
  height = v44.size.height;
  v27 = [(DOCTagDotView *)self checkmarkLayer];
  [v27 setFrame:{x, y, width, height}];

  v28 = [(DOCTagDotView *)self checkmarkLayer];
  [v28 bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = [(DOCTagDotView *)self checkmarkLayer];
  v38 = [v37 mask];
  [v38 setFrame:{v30, v32, v34, v36}];
}

@end