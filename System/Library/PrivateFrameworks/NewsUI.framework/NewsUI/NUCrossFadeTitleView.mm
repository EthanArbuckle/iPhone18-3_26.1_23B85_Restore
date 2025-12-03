@interface NUCrossFadeTitleView
- (CGRect)visibleFrame;
- (NUCrossFadeTitleView)initWithStyler:(id)styler;
- (id)_applyStylesToText:(id)text styleType:(unint64_t)type;
- (id)_applyStylesToTextAndGlyph:(id)glyph styleType:(unint64_t)type;
- (id)applyStylesToValueFromTitleViewUpdate:(id)update;
- (id)viewForValueType:(unint64_t)type;
- (void)layoutSubviews;
- (void)updateTitleViewWithUpdate:(id)update animated:(BOOL)animated completion:(id)completion;
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
  titleImageView = [(NUCrossFadeTitleView *)self titleImageView];
  [titleImageView setFrame:{0.0, 0.0, v4, v6}];

  [(NUCrossFadeTitleView *)self center];
  v9 = v8;
  v11 = v10;
  titleImageView2 = [(NUCrossFadeTitleView *)self titleImageView];
  [titleImageView2 setCenter:{v9, v11}];

  [(NUCrossFadeTitleView *)self bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(NUCrossFadeTitleView *)self bounds];
  v20 = v19;
  titleLabel = [(NUCrossFadeTitleView *)self titleLabel];
  [titleLabel setFrame:{v14, v16, v20, v18}];

  [(NUCrossFadeTitleView *)self center];
  v23 = v22;
  v25 = v24;
  titleLabel2 = [(NUCrossFadeTitleView *)self titleLabel];
  [titleLabel2 setCenter:{v23, v25}];

  textAndGlyphView = [(NUCrossFadeTitleView *)self textAndGlyphView];
  [textAndGlyphView setFrame:{v14, v16, v20, v18}];

  [(NUCrossFadeTitleView *)self center];
  v29 = v28;
  v31 = v30;
  textAndGlyphView2 = [(NUCrossFadeTitleView *)self textAndGlyphView];
  [textAndGlyphView2 setCenter:{v29, v31}];
}

- (NUCrossFadeTitleView)initWithStyler:(id)styler
{
  stylerCopy = styler;
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
    objc_storeStrong(&v10->_styler, styler);
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

- (void)updateTitleViewWithUpdate:(id)update animated:(BOOL)animated completion:(id)completion
{
  updateCopy = update;
  completionCopy = completion;
  v9 = [(NUCrossFadeTitleView *)self viewForValueType:[(NUCrossFadeTitleView *)self displayValueType]];
  v10 = -[NUCrossFadeTitleView viewForValueType:](self, "viewForValueType:", [updateCopy valueType]);
  -[NUCrossFadeTitleView setDisplayValueType:](self, "setDisplayValueType:", [updateCopy valueType]);
  v11 = [(NUCrossFadeTitleView *)self applyStylesToValueFromTitleViewUpdate:updateCopy];
  animator = [(NUCrossFadeTitleView *)self animator];
  v13 = animator;
  if (animated)
  {
    [animator crossFadeFromView:v9 toView:v10 value:v11 completion:completionCopy];
  }

  else
  {
    [animator resetView:v9];

    animator2 = [(NUCrossFadeTitleView *)self animator];
    [animator2 resetView:v10];

    [v9 nu_crossFadeViewSetValue:0];
    [v10 nu_crossFadeViewSetValue:v11];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  [(NUCrossFadeTitleView *)self setUpdate:updateCopy];
}

- (CGRect)visibleFrame
{
  displayValueType = [(NUCrossFadeTitleView *)self displayValueType];
  if (displayValueType <= 1)
  {
    if (!displayValueType)
    {
      titleImageView = [(NUCrossFadeTitleView *)self titleImageView];
      goto LABEL_11;
    }

    if (displayValueType != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  switch(displayValueType)
  {
    case 2:
      titleImageView = [(NUCrossFadeTitleView *)self textAndGlyphView];
      goto LABEL_11;
    case 4:
LABEL_8:
      titleImageView = [(NUCrossFadeTitleView *)self titleLabel];
LABEL_11:
      v9 = titleImageView;
      [titleImageView frame];
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

- (id)viewForValueType:(unint64_t)type
{
  textAndGlyphView = 0;
  if (type > 1)
  {
    if (type == 2)
    {
      textAndGlyphView = [(NUCrossFadeTitleView *)self textAndGlyphView];
      goto LABEL_10;
    }

    if (type != 4)
    {
      goto LABEL_10;
    }

LABEL_7:
    textAndGlyphView = [(NUCrossFadeTitleView *)self titleLabel];
    goto LABEL_10;
  }

  if (!type)
  {
    textAndGlyphView = [(NUCrossFadeTitleView *)self titleImageView];
    goto LABEL_10;
  }

  if (type == 1)
  {
    goto LABEL_7;
  }

LABEL_10:

  return textAndGlyphView;
}

- (id)applyStylesToValueFromTitleViewUpdate:(id)update
{
  updateCopy = update;
  valueType = [updateCopy valueType];
  if (valueType <= 1)
  {
    if (!valueType)
    {
      goto LABEL_12;
    }

    if (valueType != 1)
    {
      goto LABEL_13;
    }

    textAlignment = [updateCopy textAlignment];
    titleLabel = [(NUCrossFadeTitleView *)self titleLabel];
    [titleLabel setTextAlignment:textAlignment];

    value = [updateCopy value];
    v10 = -[NUCrossFadeTitleView _applyStylesToText:styleType:](self, "_applyStylesToText:styleType:", value, [updateCopy styleType]);
LABEL_10:
    value2 = v10;

    goto LABEL_13;
  }

  switch(valueType)
  {
    case 2:
      value = [updateCopy value];
      v10 = -[NUCrossFadeTitleView _applyStylesToTextAndGlyph:styleType:](self, "_applyStylesToTextAndGlyph:styleType:", value, [updateCopy styleType]);
      goto LABEL_10;
    case 4:
      titleLabel2 = [(NUCrossFadeTitleView *)self titleLabel];
      [titleLabel2 setNumberOfLines:0];

      textAlignment2 = [updateCopy textAlignment];
      titleLabel3 = [(NUCrossFadeTitleView *)self titleLabel];
      [titleLabel3 setTextAlignment:textAlignment2];

      goto LABEL_12;
    case 3:
LABEL_12:
      value2 = [updateCopy value];
      break;
  }

LABEL_13:

  return value2;
}

- (id)_applyStylesToText:(id)text styleType:(unint64_t)type
{
  textCopy = text;
  styler = [(NUCrossFadeTitleView *)self styler];
  if (styler && (v8 = styler, [(NUCrossFadeTitleView *)self styler], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_respondsToSelector(), v9, v8, (v10 & 1) != 0))
  {
    if (textCopy)
    {
      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v12 = [textCopy componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

      v13 = [v12 count];
      if (v13 >= 2)
      {
        v14 = 2;
      }

      else
      {
        v14 = v13;
      }

      titleLabel = [(NUCrossFadeTitleView *)self titleLabel];
      [titleLabel setNumberOfLines:v14];

      styler2 = [(NUCrossFadeTitleView *)self styler];
      [(NUCrossFadeTitleView *)self bounds];
      v19 = [styler2 styleTitleText:textCopy styleType:type boundingSize:{v17, v18}];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = textCopy;
  }

  return v19;
}

- (id)_applyStylesToTextAndGlyph:(id)glyph styleType:(unint64_t)type
{
  glyphCopy = glyph;
  styler = [(NUCrossFadeTitleView *)self styler];
  if (!styler)
  {
    goto LABEL_5;
  }

  v8 = styler;
  styler2 = [(NUCrossFadeTitleView *)self styler];
  v10 = objc_opt_respondsToSelector();

  if ((v10 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (glyphCopy)
  {
    attributedText = [glyphCopy attributedText];

    if (attributedText)
    {
LABEL_5:
      v12 = glyphCopy;
      goto LABEL_6;
    }

    styler3 = [(NUCrossFadeTitleView *)self styler];
    text = [glyphCopy text];
    [(NUCrossFadeTitleView *)self bounds];
    v18 = [styler3 styleTitleText:text styleType:type boundingSize:{v16, v17}];

    v19 = [NUTextAndGlyph alloc];
    glyph = [glyphCopy glyph];
    v12 = [(NUTextAndGlyph *)v19 initWithAttributedText:v18 glyph:glyph];

    -[NUTextAndGlyph setAlignment:](v12, "setAlignment:", [glyphCopy alignment]);
  }

  else
  {
    v12 = 0;
  }

LABEL_6:

  return v12;
}

@end