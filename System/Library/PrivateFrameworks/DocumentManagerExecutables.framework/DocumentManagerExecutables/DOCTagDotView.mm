@interface DOCTagDotView
- (DOCTagDotView)initWithDefaultTagDimension:(double)dimension adjustsSizeForContentSizeCategory:(BOOL)category;
- (void)_updateLayoutOfLayers;
- (void)_withoutAnimations:(id)animations;
- (void)dealloc;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)layoutSubviews;
- (void)loadItemTagImageIfNecessary;
- (void)setChecked:(BOOL)checked;
- (void)setItemTag:(id)tag;
- (void)setItemTagImage:(id)image;
- (void)setRenderedTagVariant:(unint64_t)variant;
- (void)updateContents;
- (void)updateForChangedTraitsAffectingFonts;
- (void)updateLayoutOfLayers;
@end

@implementation DOCTagDotView

- (DOCTagDotView)initWithDefaultTagDimension:(double)dimension adjustsSizeForContentSizeCategory:(BOOL)category
{
  categoryCopy = category;
  v38[1] = *MEMORY[0x277D85DE8];
  v37.receiver = self;
  v37.super_class = DOCTagDotView;
  v6 = [(DOCTagDotView *)&v37 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    v6->_renderedTagVariant = 0;
    v6->_defaultTagDimension = dimension;
    v6->_adjustsSizeForContentSizeCategory = categoryCopy;
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
    layer = [(DOCTagDotView *)v7 layer];
    checkmarkLayer = [(DOCTagDotView *)v7 checkmarkLayer];
    [layer addSublayer:checkmarkLayer];

    [(DOCTagDotView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    heightAnchor = [(DOCTagDotView *)v7 heightAnchor];
    v18 = [heightAnchor constraintEqualToConstant:dimension];
    tagDimensionConstraint = v7->_tagDimensionConstraint;
    v7->_tagDimensionConstraint = v18;

    widthAnchor = [(DOCTagDotView *)v7 widthAnchor];
    heightAnchor2 = [(DOCTagDotView *)v7 heightAnchor];
    v22 = [widthAnchor constraintEqualToAnchor:heightAnchor2];
    [v22 setActive:1];

    [(DOCTagDotView *)v7 updateForChangedTraitsAffectingFonts];
    [(NSLayoutConstraint *)v7->_tagDimensionConstraint setActive:1];
    objc_initWeak(&location, v7);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v31 = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v33 = __79__DOCTagDotView_initWithDefaultTagDimension_adjustsSizeForContentSizeCategory___block_invoke;
    v34 = &unk_278FA1C58;
    objc_copyWeak(&v35, &location);
    v25 = [defaultCenter addObserverForName:*MEMORY[0x277D76448] object:0 queue:mainQueue usingBlock:&v31];
    v38[0] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:{1, v31, v32, v33, v34}];
    notificationObservances = v7->_notificationObservances;
    v7->_notificationObservances = v26;

    if (categoryCopy)
    {
      doc_traitsAffectingFonts = [MEMORY[0x277D75C80] doc_traitsAffectingFonts];
      v29 = [(DOCTagDotView *)v7 registerForTraitChanges:doc_traitsAffectingFonts withAction:sel_updateForChangedTraitsAffectingFonts];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  notificationObservances = self->_notificationObservances;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __24__DOCTagDotView_dealloc__block_invoke;
  v7[3] = &unk_278FA24E8;
  v8 = defaultCenter;
  v5 = defaultCenter;
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
    defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
    [(DOCTagDotView *)self defaultTagDimension];
    v7 = v6;
    traitCollection = [(DOCTagDotView *)self traitCollection];
    [defaultMetrics scaledValueForValue:traitCollection compatibleWithTraitCollection:v7];
    v4 = v9;
  }

  [(NSLayoutConstraint *)self->_tagDimensionConstraint constant];
  if (v4 != v10)
  {
    [(NSLayoutConstraint *)self->_tagDimensionConstraint setConstant:v4];

    [(DOCTagDotView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setItemTag:(id)tag
{
  tagCopy = tag;
  if (self->_itemTag != tagCopy)
  {
    v6 = tagCopy;
    objc_storeStrong(&self->_itemTag, tag);
    [(DOCTagDotView *)self setNeedsItemTagImageUpdate];
    [(DOCTagDotView *)self updateContents];
    tagCopy = v6;
  }
}

- (void)setItemTagImage:(id)image
{
  imageCopy = image;
  if (self->_itemTagImage != imageCopy)
  {
    objc_storeStrong(&self->_itemTagImage, image);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __33__DOCTagDotView_setItemTagImage___block_invoke;
    v6[3] = &unk_278FA1E80;
    v6[4] = self;
    v7 = imageCopy;
    [(DOCTagDotView *)self _withoutAnimations:v6];
  }
}

void __33__DOCTagDotView_setItemTagImage___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) dotView];
  [v2 setImage:v1];
}

- (void)_withoutAnimations:(id)animations
{
  animationsCopy = animations;
  v4 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__DOCTagDotView__withoutAnimations___block_invoke;
  v6[3] = &unk_278FA1EA8;
  v7 = animationsCopy;
  v5 = animationsCopy;
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

- (void)setChecked:(BOOL)checked
{
  if (self->_checked != checked)
  {
    checkedCopy = checked;
    self->_checked = checked;
    checkmarkLayer = [(DOCTagDotView *)self checkmarkLayer];
    [checkmarkLayer setHidden:!checkedCopy];
  }
}

- (void)setRenderedTagVariant:(unint64_t)variant
{
  if (self->_renderedTagVariant != variant)
  {
    self->_renderedTagVariant = variant;
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

- (void)layoutSublayersOfLayer:(id)layer
{
  v6.receiver = self;
  v6.super_class = DOCTagDotView;
  layerCopy = layer;
  [(DOCTagDotView *)&v6 layoutSublayersOfLayer:layerCopy];
  v5 = [(DOCTagDotView *)self layer:v6.receiver];

  if (v5 == layerCopy)
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
    tagDimensionConstraint = [(DOCTagDotView *)self tagDimensionConstraint];
    [tagDimensionConstraint constant];
    v6 = v5;

    itemTag = [(DOCTagDotView *)self itemTag];
    v10 = [DOCTagRenderingRequest requestForTag:itemTag tagDimension:self->_renderedTagVariant variant:v6];

    [v10 setAllowUnsizedSymbolImages:1];
    v8 = +[DOCTagRenderer shared];
    v9 = [v8 renderImageWithRequest:v10];

    [(DOCTagDotView *)self setItemTagImage:v9];
  }
}

- (void)updateContents
{
  [(DOCTagDotView *)self loadItemTagImageIfNecessary];
  itemTag = [(DOCTagDotView *)self itemTag];
  tagColorIfNotClear = [itemTag tagColorIfNotClear];

  if (tagColorIfNotClear)
  {
    [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    [MEMORY[0x277D06260] nonClearNoneTagColor];
  }
  v4 = ;
  cGColor = [v4 CGColor];
  checkmarkLayer = [(DOCTagDotView *)self checkmarkLayer];
  [checkmarkLayer setBackgroundColor:cGColor];
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
  dotView = [(DOCTagDotView *)self dotView];
  [dotView setFrame:{v4, v6, v8, v10}];

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
  checkmarkLayer = [(DOCTagDotView *)self checkmarkLayer];
  [checkmarkLayer setFrame:{x, y, width, height}];

  checkmarkLayer2 = [(DOCTagDotView *)self checkmarkLayer];
  [checkmarkLayer2 bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  checkmarkLayer3 = [(DOCTagDotView *)self checkmarkLayer];
  mask = [checkmarkLayer3 mask];
  [mask setFrame:{v30, v32, v34, v36}];
}

@end