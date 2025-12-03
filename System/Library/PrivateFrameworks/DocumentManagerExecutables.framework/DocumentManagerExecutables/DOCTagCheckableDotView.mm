@interface DOCTagCheckableDotView
- (DOCTagCheckableDotView)initWithFrame:(CGRect)frame;
- (int64_t)tagColor;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)layoutSubviews;
- (void)setChecked:(BOOL)checked;
- (void)setTagColor:(int64_t)color;
- (void)updateBorderLayerVisibility;
- (void)updateLayoutOfLayers;
@end

@implementation DOCTagCheckableDotView

- (DOCTagCheckableDotView)initWithFrame:(CGRect)frame
{
  v38[4] = *MEMORY[0x277D85DE8];
  v37.receiver = self;
  v37.super_class = DOCTagCheckableDotView;
  v3 = [(DOCTagCheckableDotView *)&v37 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[DOCTagAppearance makerUI];
    v5 = [DOCTagDotView alloc];
    v36 = v4;
    [v4 rowOfTagsDotSize];
    v6 = [(DOCTagDotView *)v5 initWithDefaultTagDimension:0 adjustsSizeForContentSizeCategory:?];
    tagDotView = v3->_tagDotView;
    v3->_tagDotView = v6;

    v8 = [MEMORY[0x277D755A8] doc_circleWithInset:-6.0];
    [(DOCTagDotView *)v3->_tagDotView setHoverStyle:v8];

    [(DOCTagCheckableDotView *)v3 setHoverStyle:0];
    v9 = objc_alloc_init(MEMORY[0x277CD9F90]);
    borderLayer = v3->_borderLayer;
    v3->_borderLayer = v9;

    [(CAShapeLayer *)v3->_borderLayer setHidden:1];
    [(CAShapeLayer *)v3->_borderLayer setFillColor:0];
    [v4 rowOfTagsDotSelectionBorderWidth];
    [(CAShapeLayer *)v3->_borderLayer setLineWidth:?];
    [(DOCTagCheckableDotView *)v3 updateLayoutOfLayers];
    layer = [(DOCTagCheckableDotView *)v3 layer];
    borderLayer = [(DOCTagCheckableDotView *)v3 borderLayer];
    [layer addSublayer:borderLayer];

    tagDotView = [(DOCTagCheckableDotView *)v3 tagDotView];
    [(DOCTagCheckableDotView *)v3 addSubview:tagDotView];

    [(DOCTagCheckableDotView *)v3 insetForBorderLayer];
    v15 = v14;
    v28 = MEMORY[0x277CCAAD0];
    topAnchor = [(DOCTagCheckableDotView *)v3 topAnchor];
    tagDotView2 = [(DOCTagCheckableDotView *)v3 tagDotView];
    topAnchor2 = [tagDotView2 topAnchor];
    v16 = -v15;
    v32 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v16];
    v38[0] = v32;
    tagDotView3 = [(DOCTagCheckableDotView *)v3 tagDotView];
    bottomAnchor = [tagDotView3 bottomAnchor];
    bottomAnchor2 = [(DOCTagCheckableDotView *)v3 bottomAnchor];
    v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v16];
    v38[1] = v27;
    leadingAnchor = [(DOCTagCheckableDotView *)v3 leadingAnchor];
    tagDotView4 = [(DOCTagCheckableDotView *)v3 tagDotView];
    leadingAnchor2 = [tagDotView4 leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v16];
    v38[2] = v20;
    tagDotView5 = [(DOCTagCheckableDotView *)v3 tagDotView];
    trailingAnchor = [tagDotView5 trailingAnchor];
    trailingAnchor2 = [(DOCTagCheckableDotView *)v3 trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v16];
    v38[3] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];
    [v28 activateConstraints:v25];
  }

  return v3;
}

- (int64_t)tagColor
{
  tagDotView = [(DOCTagCheckableDotView *)self tagDotView];
  itemTag = [tagDotView itemTag];
  labelIndex = [itemTag labelIndex];

  return labelIndex;
}

- (void)setTagColor:(int64_t)color
{
  v5 = [MEMORY[0x277D06260] untitledTagForRendering:color];
  tagDotView = [(DOCTagCheckableDotView *)self tagDotView];
  [tagDotView setItemTag:v5];
}

- (void)setChecked:(BOOL)checked
{
  if (self->_checked != checked)
  {
    checkedCopy = checked;
    self->_checked = checked;
    tagDotView = [(DOCTagCheckableDotView *)self tagDotView];
    [tagDotView setChecked:checkedCopy];

    [(DOCTagCheckableDotView *)self updateBorderLayerVisibility];
  }
}

- (void)updateBorderLayerVisibility
{
  tagColor = [(DOCTagCheckableDotView *)self tagColor];
  borderLayer = [(DOCTagCheckableDotView *)self borderLayer];
  [borderLayer lineWidth];
  v6 = v5;

  differentiateWithShapes = 1;
  if ([(DOCTagCheckableDotView *)self checked])
  {
    if (v6 > 0.0 && tagColor != 0)
    {
      v9 = +[DOCTagRenderer shared];
      differentiateWithShapes = [v9 differentiateWithShapes];
    }
  }

  borderLayer2 = [(DOCTagCheckableDotView *)self borderLayer];
  [borderLayer2 setHidden:differentiateWithShapes];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = DOCTagCheckableDotView;
  [(DOCTagCheckableDotView *)&v10 layoutSubviews];
  v3 = +[DOCTagAppearance makerUI];
  rowOfTagsDotSelectionBorderColor = [v3 rowOfTagsDotSelectionBorderColor];
  v5 = rowOfTagsDotSelectionBorderColor;
  if (rowOfTagsDotSelectionBorderColor)
  {
    clearColor = rowOfTagsDotSelectionBorderColor;
  }

  else
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
  }

  v7 = clearColor;

  cGColor = [v7 CGColor];
  borderLayer = [(DOCTagCheckableDotView *)self borderLayer];
  [borderLayer setStrokeColor:cGColor];
}

- (void)layoutSublayersOfLayer:(id)layer
{
  v6.receiver = self;
  v6.super_class = DOCTagCheckableDotView;
  layerCopy = layer;
  [(DOCTagCheckableDotView *)&v6 layoutSublayersOfLayer:layerCopy];
  v5 = [(DOCTagCheckableDotView *)self layer:v6.receiver];

  if (v5 == layerCopy)
  {
    [(DOCTagCheckableDotView *)self updateLayoutOfLayers];
  }
}

- (void)updateLayoutOfLayers
{
  [(DOCTagCheckableDotView *)self insetForBorderLayer];
  v4 = v3;
  [(DOCTagCheckableDotView *)self bounds];
  v24 = CGRectInset(v23, v4, v4);
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  [(DOCTagCheckableDotView *)self bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  borderLayer = [(DOCTagCheckableDotView *)self borderLayer];
  [borderLayer setFrame:{v10, v12, v14, v16}];

  v21 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{x, y, width, height}];
  v18 = v21;
  cGPath = [v21 CGPath];
  borderLayer2 = [(DOCTagCheckableDotView *)self borderLayer];
  [borderLayer2 setPath:cGPath];
}

@end