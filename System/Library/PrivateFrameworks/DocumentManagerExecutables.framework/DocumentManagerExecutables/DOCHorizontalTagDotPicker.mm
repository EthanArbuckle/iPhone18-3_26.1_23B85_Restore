@interface DOCHorizontalTagDotPicker
- (CGSize)intrinsicContentSize;
- (DOCHorizontalTagDotPicker)initWithFrame:(CGRect)a3;
- (id)selectedTagDotView;
- (void)handleChangeColor:(id)a3;
- (void)setSelectedTagColor:(int64_t)a3;
- (void)setSelectedTagColorForLocation:(CGPoint)a3;
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

- (DOCHorizontalTagDotPicker)initWithFrame:(CGRect)a3
{
  v55[8] = *MEMORY[0x277D85DE8];
  v53.receiver = self;
  v53.super_class = DOCHorizontalTagDotPicker;
  v3 = [(DOCHorizontalTagDotPicker *)&v53 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v21 = [(DOCHorizontalTagDotPicker *)v4 stackView];
    [(DOCHorizontalTagDotPicker *)v4 addSubview:v21];

    v22 = [(DOCHorizontalTagDotPicker *)v4 changeColorTapGestureRecognizer];
    [(DOCHorizontalTagDotPicker *)v4 addGestureRecognizer:v22];

    v23 = [(DOCHorizontalTagDotPicker *)v4 changeColorPanGestureRecognizer];
    [(DOCHorizontalTagDotPicker *)v4 addGestureRecognizer:v23];

    v24 = [(DOCHorizontalTagDotPicker *)v4 changeColorPanGestureRecognizer];
    v25 = [(DOCHorizontalTagDotPicker *)v4 changeColorTapGestureRecognizer];
    [v24 requireGestureRecognizerToFail:v25];

    v39 = MEMORY[0x277CCAAD0];
    v50 = [(DOCHorizontalTagDotPicker *)v4 stackView];
    v48 = [v50 leadingAnchor];
    v49 = [(DOCHorizontalTagDotPicker *)v4 layoutMarginsGuide];
    v47 = [v49 leadingAnchor];
    v46 = [v48 constraintGreaterThanOrEqualToAnchor:v47];
    v54[0] = v46;
    v45 = [(DOCHorizontalTagDotPicker *)v4 stackView];
    v43 = [v45 trailingAnchor];
    v44 = [(DOCHorizontalTagDotPicker *)v4 layoutMarginsGuide];
    v42 = [v44 trailingAnchor];
    v41 = [v43 constraintLessThanOrEqualToAnchor:v42];
    v54[1] = v41;
    v40 = [(DOCHorizontalTagDotPicker *)v4 stackView];
    v38 = [v40 centerXAnchor];
    v37 = [(DOCHorizontalTagDotPicker *)v4 centerXAnchor];
    v36 = [v38 constraintEqualToAnchor:v37];
    v54[2] = v36;
    v26 = [(DOCHorizontalTagDotPicker *)v4 stackView];
    v27 = [v26 topAnchor];
    v28 = [(DOCHorizontalTagDotPicker *)v4 topAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    v54[3] = v29;
    v30 = [(DOCHorizontalTagDotPicker *)v4 stackView];
    v31 = [v30 bottomAnchor];
    v32 = [(DOCHorizontalTagDotPicker *)v4 bottomAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];
    v54[4] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:5];
    [v39 activateConstraints:v34];
  }

  return v4;
}

- (void)setSelectedTagColor:(int64_t)a3
{
  if (self->_selectedTagColor != a3)
  {
    v5 = [(DOCHorizontalTagDotPicker *)self selectedTagDotView];
    [v5 setChecked:0];

    self->_selectedTagColor = a3;
    v6 = [(DOCHorizontalTagDotPicker *)self selectedTagDotView];
    [v6 setChecked:1];
  }
}

- (id)selectedTagDotView
{
  v3 = [(DOCHorizontalTagDotPicker *)self selectedTagColor];
  if (v3 > 7)
  {
    v6 = 0;
  }

  else
  {
    v4 = qword_249B9A358[v3];
    v5 = [(DOCHorizontalTagDotPicker *)self dotViews];
    v6 = [v5 objectAtIndexedSubscript:v4];
  }

  return v6;
}

- (void)handleChangeColor:(id)a3
{
  v9 = a3;
  v4 = [v9 state];
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DOCHorizontalTagDotPicker selectedTagColor](self, "selectedTagColor")}];
      [(DOCHorizontalTagDotPicker *)self setPreviousSelectedTagColor:v7];
    }

    else if (v4 != 2)
    {
      goto LABEL_12;
    }

    v8 = [(DOCHorizontalTagDotPicker *)self stackView];
    [v9 locationInView:v8];
    [(DOCHorizontalTagDotPicker *)self setSelectedTagColorForLocation:?];

    goto LABEL_12;
  }

  if (v4 == 3)
  {
LABEL_9:
    [(DOCHorizontalTagDotPicker *)self setPreviousSelectedTagColor:0];
    goto LABEL_12;
  }

  if (v4 == 4)
  {
    v5 = [(DOCHorizontalTagDotPicker *)self previousSelectedTagColor];

    if (v5)
    {
      v6 = [(DOCHorizontalTagDotPicker *)self previousSelectedTagColor];
      -[DOCHorizontalTagDotPicker setSelectedTagColor:](self, "setSelectedTagColor:", [v6 integerValue]);

      goto LABEL_9;
    }
  }

LABEL_12:
}

- (void)setSelectedTagColorForLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(DOCHorizontalTagDotPicker *)self dotViews];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
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

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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