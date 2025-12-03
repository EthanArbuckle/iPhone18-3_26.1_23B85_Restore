@interface DOCHorizontalTagDotPicker
- (CGSize)intrinsicContentSize;
- (DOCHorizontalTagDotPicker)initWithFrame:(CGRect)frame;
- (id)selectedTagDotView;
- (void)handleChangeColor:(id)color;
- (void)setSelectedTagColor:(int64_t)color;
- (void)setSelectedTagColorForLocation:(CGPoint)location;
@end

@implementation DOCHorizontalTagDotPicker

- (CGSize)intrinsicContentSize
{
  v2 = +[DOCTagAppearance makerUI];
  [v2 rowOfTagsDotSize];
  v4 = v3;
  [v2 rowOfTagsContentInsets];
  v6 = v4 + v5;
  [v2 rowOfTagsContentInsets];
  v8 = v6 + v7;

  v9 = 500.0;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (DOCHorizontalTagDotPicker)initWithFrame:(CGRect)frame
{
  v55[8] = *MEMORY[0x277D85DE8];
  v53.receiver = self;
  v53.super_class = DOCHorizontalTagDotPicker;
  v3 = [(DOCHorizontalTagDotPicker *)&v53 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_selectedTagColor = -1;
    v5 = dotViewForColor(0, 1);
    v55[0] = v5;
    v6 = dotViewForColor(6, 0);
    v55[1] = v6;
    v7 = dotViewForColor(7, 0);
    v55[2] = v7;
    v8 = dotViewForColor(5, 0);
    v55[3] = v8;
    v9 = dotViewForColor(2, 0);
    v55[4] = v9;
    v10 = dotViewForColor(4, 0);
    v55[5] = v10;
    v11 = dotViewForColor(3, 0);
    v55[6] = v11;
    v12 = dotViewForColor(1, 0);
    v55[7] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:8];
    dotViews = v4->_dotViews;
    v4->_dotViews = v13;

    v15 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:v4 action:sel_handleChangeColor_];
    [(UIGestureRecognizer *)v15 setMinimumNumberOfTouches:1];
    [(UIGestureRecognizer *)v15 setMaximumNumberOfTouches:1];
    [(UIGestureRecognizer *)v15 _setCanPanVertically:0];
    [(UIGestureRecognizer *)v15 _setHysteresis:0.0];
    changeColorPanGestureRecognizer = v4->_changeColorPanGestureRecognizer;
    v4->_changeColorPanGestureRecognizer = v15;
    v52 = v15;

    v17 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v4 action:sel_handleChangeColor_];
    [(UIGestureRecognizer *)v17 setMinimumPressDuration:0.0];
    changeColorTapGestureRecognizer = v4->_changeColorTapGestureRecognizer;
    v4->_changeColorTapGestureRecognizer = v17;
    v51 = v17;

    v19 = objc_alloc_init(MEMORY[0x277D75A68]);
    stackView = v4->_stackView;
    v4->_stackView = v19;

    [(UIStackView *)v4->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_stackView setAxis:0];
    [(UIStackView *)v4->_stackView doc_addFlexiblySpacedArrangedSubviews:v4->_dotViews minSpacing:1.0 maxSpacing:35.0];
    [(DOCHorizontalTagDotPicker *)v4 setSelectedTagColor:0];
    stackView = [(DOCHorizontalTagDotPicker *)v4 stackView];
    [(DOCHorizontalTagDotPicker *)v4 addSubview:stackView];

    changeColorTapGestureRecognizer = [(DOCHorizontalTagDotPicker *)v4 changeColorTapGestureRecognizer];
    [(DOCHorizontalTagDotPicker *)v4 addGestureRecognizer:changeColorTapGestureRecognizer];

    changeColorPanGestureRecognizer = [(DOCHorizontalTagDotPicker *)v4 changeColorPanGestureRecognizer];
    [(DOCHorizontalTagDotPicker *)v4 addGestureRecognizer:changeColorPanGestureRecognizer];

    changeColorPanGestureRecognizer2 = [(DOCHorizontalTagDotPicker *)v4 changeColorPanGestureRecognizer];
    changeColorTapGestureRecognizer2 = [(DOCHorizontalTagDotPicker *)v4 changeColorTapGestureRecognizer];
    [changeColorPanGestureRecognizer2 requireGestureRecognizerToFail:changeColorTapGestureRecognizer2];

    v39 = MEMORY[0x277CCAAD0];
    stackView2 = [(DOCHorizontalTagDotPicker *)v4 stackView];
    leadingAnchor = [stackView2 leadingAnchor];
    layoutMarginsGuide = [(DOCHorizontalTagDotPicker *)v4 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v46 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    v54[0] = v46;
    stackView3 = [(DOCHorizontalTagDotPicker *)v4 stackView];
    trailingAnchor = [stackView3 trailingAnchor];
    layoutMarginsGuide2 = [(DOCHorizontalTagDotPicker *)v4 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v41 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v54[1] = v41;
    stackView4 = [(DOCHorizontalTagDotPicker *)v4 stackView];
    centerXAnchor = [stackView4 centerXAnchor];
    centerXAnchor2 = [(DOCHorizontalTagDotPicker *)v4 centerXAnchor];
    v36 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v54[2] = v36;
    stackView5 = [(DOCHorizontalTagDotPicker *)v4 stackView];
    topAnchor = [stackView5 topAnchor];
    topAnchor2 = [(DOCHorizontalTagDotPicker *)v4 topAnchor];
    v29 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v54[3] = v29;
    stackView6 = [(DOCHorizontalTagDotPicker *)v4 stackView];
    bottomAnchor = [stackView6 bottomAnchor];
    bottomAnchor2 = [(DOCHorizontalTagDotPicker *)v4 bottomAnchor];
    v33 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v54[4] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:5];
    [v39 activateConstraints:v34];
  }

  return v4;
}

- (void)setSelectedTagColor:(int64_t)color
{
  if (self->_selectedTagColor != color)
  {
    selectedTagDotView = [(DOCHorizontalTagDotPicker *)self selectedTagDotView];
    [selectedTagDotView setChecked:0];

    self->_selectedTagColor = color;
    selectedTagDotView2 = [(DOCHorizontalTagDotPicker *)self selectedTagDotView];
    [selectedTagDotView2 setChecked:1];
  }
}

- (id)selectedTagDotView
{
  selectedTagColor = [(DOCHorizontalTagDotPicker *)self selectedTagColor];
  if (selectedTagColor > 7)
  {
    v6 = 0;
  }

  else
  {
    v4 = qword_249B9A358[selectedTagColor];
    dotViews = [(DOCHorizontalTagDotPicker *)self dotViews];
    v6 = [dotViews objectAtIndexedSubscript:v4];
  }

  return v6;
}

- (void)handleChangeColor:(id)color
{
  colorCopy = color;
  state = [colorCopy state];
  if (state <= 2)
  {
    if (state == 1)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DOCHorizontalTagDotPicker selectedTagColor](self, "selectedTagColor")}];
      [(DOCHorizontalTagDotPicker *)self setPreviousSelectedTagColor:v7];
    }

    else if (state != 2)
    {
      goto LABEL_12;
    }

    stackView = [(DOCHorizontalTagDotPicker *)self stackView];
    [colorCopy locationInView:stackView];
    [(DOCHorizontalTagDotPicker *)self setSelectedTagColorForLocation:?];

    goto LABEL_12;
  }

  if (state == 3)
  {
LABEL_9:
    [(DOCHorizontalTagDotPicker *)self setPreviousSelectedTagColor:0];
    goto LABEL_12;
  }

  if (state == 4)
  {
    previousSelectedTagColor = [(DOCHorizontalTagDotPicker *)self previousSelectedTagColor];

    if (previousSelectedTagColor)
    {
      previousSelectedTagColor2 = [(DOCHorizontalTagDotPicker *)self previousSelectedTagColor];
      -[DOCHorizontalTagDotPicker setSelectedTagColor:](self, "setSelectedTagColor:", [previousSelectedTagColor2 integerValue]);

      goto LABEL_9;
    }
  }

LABEL_12:
}

- (void)setSelectedTagColorForLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  dotViews = [(DOCHorizontalTagDotPicker *)self dotViews];
  v7 = [dotViews countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(dotViews);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        [v11 frame];
        v18.x = x;
        v18.y = y;
        if (CGRectContainsPoint(v19, v18))
        {
          -[DOCHorizontalTagDotPicker setSelectedTagColor:](self, "setSelectedTagColor:", [v11 tagColor]);
          goto LABEL_11;
        }
      }

      v8 = [dotViews countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

@end