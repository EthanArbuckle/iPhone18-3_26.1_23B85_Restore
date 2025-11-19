@interface DOCTagCheckableDotView
- (DOCTagCheckableDotView)initWithFrame:(CGRect)a3;
- (int64_t)tagColor;
- (void)layoutSublayersOfLayer:(id)a3;
- (void)layoutSubviews;
- (void)setChecked:(BOOL)a3;
- (void)setTagColor:(int64_t)a3;
- (void)updateBorderLayerVisibility;
- (void)updateLayoutOfLayers;
@end

@implementation DOCTagCheckableDotView

- (DOCTagCheckableDotView)initWithFrame:(CGRect)a3
{
  v38[4] = *MEMORY[0x277D85DE8];
  v37.receiver = self;
  v37.super_class = DOCTagCheckableDotView;
  v3 = [(DOCTagCheckableDotView *)&v37 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v11 = [(DOCTagCheckableDotView *)v3 layer];
    v12 = [(DOCTagCheckableDotView *)v3 borderLayer];
    [v11 addSublayer:v12];

    v13 = [(DOCTagCheckableDotView *)v3 tagDotView];
    [(DOCTagCheckableDotView *)v3 addSubview:v13];

    [(DOCTagCheckableDotView *)v3 insetForBorderLayer];
    v15 = v14;
    v28 = MEMORY[0x277CCAAD0];
    v34 = [(DOCTagCheckableDotView *)v3 topAnchor];
    v35 = [(DOCTagCheckableDotView *)v3 tagDotView];
    v33 = [v35 topAnchor];
    v16 = -v15;
    v32 = [v34 constraintEqualToAnchor:v33 constant:v16];
    v38[0] = v32;
    v31 = [(DOCTagCheckableDotView *)v3 tagDotView];
    v30 = [v31 bottomAnchor];
    v29 = [(DOCTagCheckableDotView *)v3 bottomAnchor];
    v27 = [v30 constraintEqualToAnchor:v29 constant:v16];
    v38[1] = v27;
    v17 = [(DOCTagCheckableDotView *)v3 leadingAnchor];
    v18 = [(DOCTagCheckableDotView *)v3 tagDotView];
    v19 = [v18 leadingAnchor];
    v20 = [v17 constraintEqualToAnchor:v19 constant:v16];
    v38[2] = v20;
    v21 = [(DOCTagCheckableDotView *)v3 tagDotView];
    v22 = [v21 trailingAnchor];
    v23 = [(DOCTagCheckableDotView *)v3 trailingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:v16];
    v38[3] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];
    [v28 activateConstraints:v25];
  }

  return v3;
}

- (int64_t)tagColor
{
  v2 = [(DOCTagCheckableDotView *)self tagDotView];
  v3 = [v2 itemTag];
  v4 = [v3 labelIndex];

  return v4;
}

- (void)setTagColor:(int64_t)a3
{
  v5 = [MEMORY[0x277D06260] untitledTagForRendering:a3];
  v4 = [(DOCTagCheckableDotView *)self tagDotView];
  [v4 setItemTag:v5];
}

- (void)setChecked:(BOOL)a3
{
  if (self->_checked != a3)
  {
    v4 = a3;
    self->_checked = a3;
    v6 = [(DOCTagCheckableDotView *)self tagDotView];
    [v6 setChecked:v4];

    [(DOCTagCheckableDotView *)self updateBorderLayerVisibility];
  }
}

- (void)updateBorderLayerVisibility
{
  v3 = [(DOCTagCheckableDotView *)self tagColor];
  v4 = [(DOCTagCheckableDotView *)self borderLayer];
  [v4 lineWidth];
  v6 = v5;

  v7 = 1;
  if ([(DOCTagCheckableDotView *)self checked])
  {
    if (v6 > 0.0 && v3 != 0)
    {
      v9 = +[DOCTagRenderer shared];
      v7 = [v9 differentiateWithShapes];
    }
  }

  v10 = [(DOCTagCheckableDotView *)self borderLayer];
  [v10 setHidden:v7];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = DOCTagCheckableDotView;
  [(DOCTagCheckableDotView *)&v10 layoutSubviews];
  v3 = +[DOCTagAppearance makerUI];
  v4 = [v3 rowOfTagsDotSelectionBorderColor];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277D75348] clearColor];
  }

  v7 = v6;

  v8 = [v7 CGColor];
  v9 = [(DOCTagCheckableDotView *)self borderLayer];
  [v9 setStrokeColor:v8];
}

- (void)layoutSublayersOfLayer:(id)a3
{
  v6.receiver = self;
  v6.super_class = DOCTagCheckableDotView;
  v4 = a3;
  [(DOCTagCheckableDotView *)&v6 layoutSublayersOfLayer:v4];
  v5 = [(DOCTagCheckableDotView *)self layer:v6.receiver];

  if (v5 == v4)
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
  v17 = [(DOCTagCheckableDotView *)self borderLayer];
  [v17 setFrame:{v10, v12, v14, v16}];

  v21 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{x, y, width, height}];
  v18 = v21;
  v19 = [v21 CGPath];
  v20 = [(DOCTagCheckableDotView *)self borderLayer];
  [v20 setPath:v19];
}

@end