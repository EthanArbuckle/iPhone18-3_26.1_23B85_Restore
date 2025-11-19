@interface NUCrossFadeTitleView
- (CGRect)visibleFrame;
- (NUCrossFadeTitleView)initWithStyler:(id)a3;
- (id)_applyStylesToText:(id)a3 styleType:(unint64_t)a4;
- (id)_applyStylesToTextAndGlyph:(id)a3 styleType:(unint64_t)a4;
- (id)applyStylesToValueFromTitleViewUpdate:(id)a3;
- (id)viewForValueType:(unint64_t)a3;
- (void)layoutSubviews;
- (void)updateTitleViewWithUpdate:(id)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation NUCrossFadeTitleView

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = NUCrossFadeTitleView;
  [(NUCrossFadeTitleView *)&v33 layoutSubviews];
  [(NUCrossFadeTitleView *)self bounds];
  v4 = v3;
  [(NUCrossFadeTitleView *)self bounds];
  v6 = v5 * 0.5;
  v7 = [(NUCrossFadeTitleView *)self titleImageView];
  [v7 setFrame:{0.0, 0.0, v4, v6}];

  [(NUCrossFadeTitleView *)self center];
  v9 = v8;
  v11 = v10;
  v12 = [(NUCrossFadeTitleView *)self titleImageView];
  [v12 setCenter:{v9, v11}];

  [(NUCrossFadeTitleView *)self bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(NUCrossFadeTitleView *)self bounds];
  v20 = v19;
  v21 = [(NUCrossFadeTitleView *)self titleLabel];
  [v21 setFrame:{v14, v16, v20, v18}];

  [(NUCrossFadeTitleView *)self center];
  v23 = v22;
  v25 = v24;
  v26 = [(NUCrossFadeTitleView *)self titleLabel];
  [v26 setCenter:{v23, v25}];

  v27 = [(NUCrossFadeTitleView *)self textAndGlyphView];
  [v27 setFrame:{v14, v16, v20, v18}];

  [(NUCrossFadeTitleView *)self center];
  v29 = v28;
  v31 = v30;
  v32 = [(NUCrossFadeTitleView *)self textAndGlyphView];
  [v32 setCenter:{v29, v31}];
}

- (NUCrossFadeTitleView)initWithStyler:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = NUCrossFadeTitleView;
  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);
  v10 = [(NUCrossFadeTitleView *)&v21 initWithFrame:*MEMORY[0x277CBF3A0], v7, v8, v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_styler, a3);
    v11->_displayValueType = 3;
    v12 = objc_alloc_init(NUCrossFadeViewAnimator);
    animator = v11->_animator;
    v11->_animator = v12;

    v14 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v6, v7, v8, v9}];
    titleImageView = v11->_titleImageView;
    v11->_titleImageView = v14;

    [(UIImageView *)v11->_titleImageView setAutoresizingMask:2];
    [(UIImageView *)v11->_titleImageView setContentMode:1];
    [(UIImageView *)v11->_titleImageView nu_supportViewDebugging];
    [(NUCrossFadeTitleView *)v11 addSubview:v11->_titleImageView];
    v16 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v6, v7, v8, v9}];
    titleLabel = v11->_titleLabel;
    v11->_titleLabel = v16;

    [(UILabel *)v11->_titleLabel setAutoresizingMask:2];
    [(UILabel *)v11->_titleLabel setNumberOfLines:1];
    [(UILabel *)v11->_titleLabel setMinimumScaleFactor:0.25];
    [(UILabel *)v11->_titleLabel nu_supportViewDebugging];
    [(NUCrossFadeTitleView *)v11 addSubview:v11->_titleLabel];
    v18 = [[NUTextAndGlyphView alloc] initWithFrame:v6, v7, v8, v9];
    textAndGlyphView = v11->_textAndGlyphView;
    v11->_textAndGlyphView = v18;

    [(UIView *)v11->_textAndGlyphView nu_supportViewDebugging];
    [(NUCrossFadeTitleView *)v11 addSubview:v11->_textAndGlyphView];
  }

  return v11;
}

- (void)updateTitleViewWithUpdate:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v15 = a3;
  v8 = a5;
  v9 = [(NUCrossFadeTitleView *)self viewForValueType:[(NUCrossFadeTitleView *)self displayValueType]];
  v10 = -[NUCrossFadeTitleView viewForValueType:](self, "viewForValueType:", [v15 valueType]);
  -[NUCrossFadeTitleView setDisplayValueType:](self, "setDisplayValueType:", [v15 valueType]);
  v11 = [(NUCrossFadeTitleView *)self applyStylesToValueFromTitleViewUpdate:v15];
  v12 = [(NUCrossFadeTitleView *)self animator];
  v13 = v12;
  if (a4)
  {
    [v12 crossFadeFromView:v9 toView:v10 value:v11 completion:v8];
  }

  else
  {
    [v12 resetView:v9];

    v14 = [(NUCrossFadeTitleView *)self animator];
    [v14 resetView:v10];

    [v9 nu_crossFadeViewSetValue:0];
    [v10 nu_crossFadeViewSetValue:v11];
    if (v8)
    {
      v8[2](v8);
    }
  }

  [(NUCrossFadeTitleView *)self setUpdate:v15];
}

- (CGRect)visibleFrame
{
  v7 = [(NUCrossFadeTitleView *)self displayValueType];
  if (v7 <= 1)
  {
    if (!v7)
    {
      v8 = [(NUCrossFadeTitleView *)self titleImageView];
      goto LABEL_11;
    }

    if (v7 != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  switch(v7)
  {
    case 2:
      v8 = [(NUCrossFadeTitleView *)self textAndGlyphView];
      goto LABEL_11;
    case 4:
LABEL_8:
      v8 = [(NUCrossFadeTitleView *)self titleLabel];
LABEL_11:
      v9 = v8;
      [v8 frame];
      v2 = v10;
      v3 = v11;
      v4 = v12;
      v5 = v13;

      break;
    case 3:
      v2 = *MEMORY[0x277CBF3A0];
      v3 = *(MEMORY[0x277CBF3A0] + 8);
      v4 = *(MEMORY[0x277CBF3A0] + 16);
      v5 = *(MEMORY[0x277CBF3A0] + 24);
      break;
  }

LABEL_12:
  v14 = v2;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)viewForValueType:(unint64_t)a3
{
  v4 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v4 = [(NUCrossFadeTitleView *)self textAndGlyphView];
      goto LABEL_10;
    }

    if (a3 != 4)
    {
      goto LABEL_10;
    }

LABEL_7:
    v4 = [(NUCrossFadeTitleView *)self titleLabel];
    goto LABEL_10;
  }

  if (!a3)
  {
    v4 = [(NUCrossFadeTitleView *)self titleImageView];
    goto LABEL_10;
  }

  if (a3 == 1)
  {
    goto LABEL_7;
  }

LABEL_10:

  return v4;
}

- (id)applyStylesToValueFromTitleViewUpdate:(id)a3
{
  v5 = a3;
  v6 = [v5 valueType];
  if (v6 <= 1)
  {
    if (!v6)
    {
      goto LABEL_12;
    }

    if (v6 != 1)
    {
      goto LABEL_13;
    }

    v7 = [v5 textAlignment];
    v8 = [(NUCrossFadeTitleView *)self titleLabel];
    [v8 setTextAlignment:v7];

    v9 = [v5 value];
    v10 = -[NUCrossFadeTitleView _applyStylesToText:styleType:](self, "_applyStylesToText:styleType:", v9, [v5 styleType]);
LABEL_10:
    v3 = v10;

    goto LABEL_13;
  }

  switch(v6)
  {
    case 2:
      v9 = [v5 value];
      v10 = -[NUCrossFadeTitleView _applyStylesToTextAndGlyph:styleType:](self, "_applyStylesToTextAndGlyph:styleType:", v9, [v5 styleType]);
      goto LABEL_10;
    case 4:
      v11 = [(NUCrossFadeTitleView *)self titleLabel];
      [v11 setNumberOfLines:0];

      v12 = [v5 textAlignment];
      v13 = [(NUCrossFadeTitleView *)self titleLabel];
      [v13 setTextAlignment:v12];

      goto LABEL_12;
    case 3:
LABEL_12:
      v3 = [v5 value];
      break;
  }

LABEL_13:

  return v3;
}

- (id)_applyStylesToText:(id)a3 styleType:(unint64_t)a4
{
  v6 = a3;
  v7 = [(NUCrossFadeTitleView *)self styler];
  if (v7 && (v8 = v7, [(NUCrossFadeTitleView *)self styler], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_respondsToSelector(), v9, v8, (v10 & 1) != 0))
  {
    if (v6)
    {
      v11 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v12 = [v6 componentsSeparatedByCharactersInSet:v11];

      v13 = [v12 count];
      if (v13 >= 2)
      {
        v14 = 2;
      }

      else
      {
        v14 = v13;
      }

      v15 = [(NUCrossFadeTitleView *)self titleLabel];
      [v15 setNumberOfLines:v14];

      v16 = [(NUCrossFadeTitleView *)self styler];
      [(NUCrossFadeTitleView *)self bounds];
      v19 = [v16 styleTitleText:v6 styleType:a4 boundingSize:{v17, v18}];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = v6;
  }

  return v19;
}

- (id)_applyStylesToTextAndGlyph:(id)a3 styleType:(unint64_t)a4
{
  v6 = a3;
  v7 = [(NUCrossFadeTitleView *)self styler];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = v7;
  v9 = [(NUCrossFadeTitleView *)self styler];
  v10 = objc_opt_respondsToSelector();

  if ((v10 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (v6)
  {
    v11 = [v6 attributedText];

    if (v11)
    {
LABEL_5:
      v12 = v6;
      goto LABEL_6;
    }

    v14 = [(NUCrossFadeTitleView *)self styler];
    v15 = [v6 text];
    [(NUCrossFadeTitleView *)self bounds];
    v18 = [v14 styleTitleText:v15 styleType:a4 boundingSize:{v16, v17}];

    v19 = [NUTextAndGlyph alloc];
    v20 = [v6 glyph];
    v12 = [(NUTextAndGlyph *)v19 initWithAttributedText:v18 glyph:v20];

    -[NUTextAndGlyph setAlignment:](v12, "setAlignment:", [v6 alignment]);
  }

  else
  {
    v12 = 0;
  }

LABEL_6:

  return v12;
}

@end