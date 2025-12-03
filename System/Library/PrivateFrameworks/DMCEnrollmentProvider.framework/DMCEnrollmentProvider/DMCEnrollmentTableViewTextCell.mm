@interface DMCEnrollmentTableViewTextCell
- (BOOL)isMultipleLines:(id)lines;
- (DMCEnrollmentTableViewTextCell)initWithText:(id)text bold:(BOOL)bold subText:(id)subText layoutStyle:(unint64_t)style;
- (UITextView)hiddenTextView;
- (double)_horizontalMargin;
- (double)_verticalMargin;
- (id)_rectsOfLinkText;
- (id)_subTextFont;
- (id)_textFontIsBold:(BOOL)bold;
- (void)_updateTextFont;
- (void)configureLinkText:(id)text forceLineBreak:(BOOL)break linkAction:(id)action;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setLinkAction:(id)action;
- (void)setLinkText:(id)text;
- (void)setLinkTextOnNextLine:(BOOL)line;
- (void)setText:(id)text;
- (void)setTextAlignment:(int64_t)alignment;
@end

@implementation DMCEnrollmentTableViewTextCell

- (DMCEnrollmentTableViewTextCell)initWithText:(id)text bold:(BOOL)bold subText:(id)subText layoutStyle:(unint64_t)style
{
  boldCopy = bold;
  v63[1] = *MEMORY[0x277D85DE8];
  textCopy = text;
  subTextCopy = subText;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v58.receiver = self;
  v58.super_class = DMCEnrollmentTableViewTextCell;
  v13 = [(DMCEnrollmentTableViewTextCell *)&v58 initWithStyle:0 reuseIdentifier:v12];

  if (v13)
  {
    [(DMCEnrollmentTableViewTextCell *)v13 setSelectionStyle:0];
    [(DMCEnrollmentTableViewTextCell *)v13 setUserInteractionEnabled:0];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(DMCEnrollmentTableViewTextCell *)v13 setBackgroundColor:systemBackgroundColor];

    v13->_shouldCalculateLinkTextLineBreak = 1;
    v13->_layoutStyle = style;
    v13->_textAlignment = 2 * ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] != 0);
    v13->_bold = boldCopy;
    v15 = [MEMORY[0x277D75220] buttonWithType:1];
    button = v13->_button;
    v13->_button = v15;

    [(UIButton *)v13->_button setHidden:1];
    contentView = [(DMCEnrollmentTableViewTextCell *)v13 contentView];
    [contentView addSubview:v13->_button];

    v18 = objc_opt_new();
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v18 setNumberOfLines:0];
    v19 = [(DMCEnrollmentTableViewTextCell *)v13 _textFontIsBold:boldCopy];
    [v18 setFont:v19];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [v18 setTextColor:secondaryLabelColor];

    [v18 setTextAlignment:v13->_textAlignment];
    [v18 setText:textCopy];
    contentView2 = [(DMCEnrollmentTableViewTextCell *)v13 contentView];
    [contentView2 addSubview:v18];

    [(DMCEnrollmentTableViewTextCell *)v13 _horizontalMargin];
    v23 = v22;
    [(DMCEnrollmentTableViewTextCell *)v13 _verticalMargin];
    v25 = v24;
    if (subTextCopy)
    {
      v26 = objc_opt_new();
      [(UILabel *)v26 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UILabel *)v26 setNumberOfLines:1];
      _subTextFont = [(DMCEnrollmentTableViewTextCell *)v13 _subTextFont];
      [(UILabel *)v26 setFont:_subTextFont];

      secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
      [(UILabel *)v26 setTextColor:secondaryLabelColor2];

      [(UILabel *)v26 setTextAlignment:v13->_textAlignment];
      [(UILabel *)v26 setText:subTextCopy];
      [(UILabel *)v26 sizeToFit];
      contentView3 = [(DMCEnrollmentTableViewTextCell *)v13 contentView];
      [contentView3 addSubview:v26];

      v60[0] = @"label";
      v60[1] = @"subLabel";
      v61[0] = v18;
      v61[1] = v26;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
      v31 = MEMORY[0x277CCAAD0];
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"|-%f-[label]-%f-|", v23, v23];
      v33 = [v31 constraintsWithVisualFormat:v32 options:0 metrics:0 views:v30];

      v34 = MEMORY[0x277CCAAD0];
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"|-%f-[subLabel]-%f-|", v23, v23];
      v36 = [v34 constraintsWithVisualFormat:v35 options:0 metrics:0 views:v30];

      v37 = MEMORY[0x277CCAAD0];
      v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"V:|-%f-[label]-0-[subLabel]-%f-|", v25, v25];
      contentView8 = [v37 constraintsWithVisualFormat:v38 options:0 metrics:0 views:v30];

      contentView4 = [(DMCEnrollmentTableViewTextCell *)v13 contentView];
      [contentView4 addConstraints:v33];

      contentView5 = [(DMCEnrollmentTableViewTextCell *)v13 contentView];
      [contentView5 addConstraints:v36];

      contentView6 = [(DMCEnrollmentTableViewTextCell *)v13 contentView];
      [contentView6 addConstraints:contentView8];

      subLabel = v13->_subLabel;
      v13->_subLabel = v26;
    }

    else
    {
      v62 = @"label";
      v63[0] = v18;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:&v62 count:1];
      v44 = MEMORY[0x277CCAAD0];
      v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"|-%f-[label]-%f-|", v23, v23];
      v33 = [v44 constraintsWithVisualFormat:v45 options:0 metrics:0 views:v30];

      v46 = MEMORY[0x277CCAAD0];
      v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"V:|-%f-[label]-%f-|", v25, v25];
      v36 = [v46 constraintsWithVisualFormat:v47 options:0 metrics:0 views:v30];

      contentView7 = [(DMCEnrollmentTableViewTextCell *)v13 contentView];
      [contentView7 addConstraints:v33];

      contentView8 = [(DMCEnrollmentTableViewTextCell *)v13 contentView];
      [contentView8 addConstraints:v36];
    }

    v49 = [textCopy copy];
    text = v13->_text;
    v13->_text = v49;

    objc_storeStrong(&v13->_label, v18);
    objc_initWeak(&location, v13);
    v59 = objc_opt_class();
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __72__DMCEnrollmentTableViewTextCell_initWithText_bold_subText_layoutStyle___block_invoke;
    v55[3] = &unk_278EE7C08;
    objc_copyWeak(&v56, &location);
    v52 = [(DMCEnrollmentTableViewTextCell *)v13 registerForTraitChanges:v51 withHandler:v55];

    objc_destroyWeak(&v56);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __72__DMCEnrollmentTableViewTextCell_initWithText_bold_subText_layoutStyle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = [WeakRetained _textFontIsBold:{objc_msgSend(WeakRetained, "bold")}];
    v2 = [WeakRetained label];
    [v2 setFont:v1];

    v3 = [WeakRetained _subTextFont];
    v4 = [WeakRetained subLabel];
    [v4 setFont:v3];

    if (WeakRetained[134])
    {
      v5 = [WeakRetained label];
      v6 = [v5 font];
      v7 = [WeakRetained hiddenTextView];
      [v7 setFont:v6];
    }

    [WeakRetained _updateTextFont];
  }
}

- (void)layoutSubviews
{
  v31.receiver = self;
  v31.super_class = DMCEnrollmentTableViewTextCell;
  [(DMCEnrollmentTableViewTextCell *)&v31 layoutSubviews];
  [(DMCEnrollmentTableViewTextCell *)self bounds];
  [(DMCEnrollmentTableViewTextCell *)self setSeparatorInset:0.0, CGRectGetWidth(v32), 0.0, 0.0];
  linkText = [(DMCEnrollmentTableViewTextCell *)self linkText];

  if (linkText)
  {
    [(DMCEnrollmentTableViewTextCell *)self setUserInteractionEnabled:1];
    if (self->_hiddenTextView)
    {
      label = [(DMCEnrollmentTableViewTextCell *)self label];
      [label frame];
      v6 = v5;
      v8 = v7;
      v10 = v9;

      contentView = [(DMCEnrollmentTableViewTextCell *)self contentView];
      [contentView bounds];
      v12 = CGRectGetHeight(v33) - v8;

      hiddenTextView = [(DMCEnrollmentTableViewTextCell *)self hiddenTextView];
      [hiddenTextView setFrame:{v6 + -8.0, v8, v10 + 16.0, v12}];
    }

    previousWidth = self->_previousWidth;
    [(DMCEnrollmentTableViewTextCell *)self bounds];
    if (previousWidth != CGRectGetWidth(v34))
    {
      [(DMCEnrollmentTableViewTextCell *)self bounds];
      self->_previousWidth = CGRectGetWidth(v35);
      if ([(DMCEnrollmentTableViewTextCell *)self shouldCalculateLinkTextLineBreak])
      {
        [(DMCEnrollmentTableViewTextCell *)self setLinkTextOnNextLine:0];
      }
    }

    _rectsOfLinkText = [(DMCEnrollmentTableViewTextCell *)self _rectsOfLinkText];
    if ([(DMCEnrollmentTableViewTextCell *)self shouldCalculateLinkTextLineBreak])
    {
      [(DMCEnrollmentTableViewTextCell *)self setLinkTextOnNextLine:[(DMCEnrollmentTableViewTextCell *)self isMultipleLines:_rectsOfLinkText]| [(DMCEnrollmentTableViewTextCell *)self linkTextOnNextLine]];
    }

    firstObject = [_rectsOfLinkText firstObject];
    [firstObject rect];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    [(DMCEnrollmentTableViewTextCell *)self _horizontalMargin];
    v26 = v25 + v18 + -18.0;
    [(DMCEnrollmentTableViewTextCell *)self _verticalMargin];
    v28 = v20 + -10.0 + v27;
    button = [(DMCEnrollmentTableViewTextCell *)self button];
    [button setFrame:{v26, v28, v22 + 20.0, v24 + 20.0}];

    button2 = [(DMCEnrollmentTableViewTextCell *)self button];
    [button2 setHidden:0];
  }

  else
  {
    _rectsOfLinkText = [(DMCEnrollmentTableViewTextCell *)self button];
    [_rectsOfLinkText setHidden:1];
  }
}

- (void)setTextAlignment:(int64_t)alignment
{
  if (self->_textAlignment != alignment)
  {
    self->_textAlignment = alignment;
    [(UILabel *)self->_label setTextAlignment:?];
  }
}

- (void)configureLinkText:(id)text forceLineBreak:(BOOL)break linkAction:(id)action
{
  breakCopy = break;
  textCopy = text;
  actionCopy = action;
  if (breakCopy)
  {
    [(DMCEnrollmentTableViewTextCell *)self setShouldCalculateLinkTextLineBreak:0];
    [(DMCEnrollmentTableViewTextCell *)self setLinkTextOnNextLine:1];
  }

  [(DMCEnrollmentTableViewTextCell *)self setLinkText:textCopy];
  [(DMCEnrollmentTableViewTextCell *)self setLinkAction:actionCopy];
}

- (void)setLinkText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_linkText isEqualToString:?])
  {
    objc_storeStrong(&self->_linkText, text);
    [(DMCEnrollmentTableViewTextCell *)self _updateTextFont];
  }
}

- (void)setLinkAction:(id)action
{
  actionCopy = action;
  v5 = _Block_copy(actionCopy);
  linkAction = self->_linkAction;
  self->_linkAction = v5;

  if (actionCopy)
  {
    button = [(DMCEnrollmentTableViewTextCell *)self button];
    v8 = MEMORY[0x277D750C8];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__DMCEnrollmentTableViewTextCell_setLinkAction___block_invoke;
    v10[3] = &unk_278EE7D18;
    v11 = actionCopy;
    v9 = [v8 actionWithHandler:v10];
    [button addAction:v9 forControlEvents:64];
  }
}

- (void)setText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    v4 = [textCopy copy];
    text = self->_text;
    self->_text = v4;

    v6 = self->_text;
    label = [(DMCEnrollmentTableViewTextCell *)self label];
    [label setText:v6];

    [(DMCEnrollmentTableViewTextCell *)self setNeedsDisplay];
  }
}

- (void)setLinkTextOnNextLine:(BOOL)line
{
  if (self->_linkTextOnNextLine != line)
  {
    block[5] = v3;
    block[6] = v4;
    self->_linkTextOnNextLine = line;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__DMCEnrollmentTableViewTextCell_setLinkTextOnNextLine___block_invoke;
    block[3] = &unk_278EE74C0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)setEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__DMCEnrollmentTableViewTextCell_setEnabled___block_invoke;
  v3[3] = &unk_278EE7A58;
  v3[4] = self;
  enabledCopy = enabled;
  [MEMORY[0x277D75D18] performWithoutAnimation:v3];
}

void __45__DMCEnrollmentTableViewTextCell_setEnabled___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) button];
  [v3 setEnabled:v2];

  v4 = [*(a1 + 32) button];
  [v4 layoutIfNeeded];
}

- (id)_rectsOfLinkText
{
  hiddenTextView = [(DMCEnrollmentTableViewTextCell *)self hiddenTextView];
  endOfDocument = [hiddenTextView endOfDocument];
  v5 = [hiddenTextView positionFromPosition:endOfDocument offset:0];

  endOfDocument2 = [hiddenTextView endOfDocument];
  linkText = [(DMCEnrollmentTableViewTextCell *)self linkText];
  v8 = [hiddenTextView positionFromPosition:endOfDocument2 offset:{-objc_msgSend(linkText, "length")}];

  v9 = [hiddenTextView textRangeFromPosition:v8 toPosition:v5];
  v10 = [hiddenTextView selectionRectsForRange:v9];

  return v10;
}

- (UITextView)hiddenTextView
{
  hiddenTextView = self->_hiddenTextView;
  if (!hiddenTextView)
  {
    v4 = objc_opt_new();
    [(UITextView *)v4 setEditable:0];
    [(UITextView *)v4 setScrollEnabled:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v4 setBackgroundColor:clearColor];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v4 setTextColor:clearColor2];

    [(UITextView *)v4 setTextAlignment:self->_textAlignment];
    label = [(DMCEnrollmentTableViewTextCell *)self label];
    font = [label font];
    [(UITextView *)v4 setFont:font];

    [(UITextView *)v4 setTextContainerInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    label2 = [(DMCEnrollmentTableViewTextCell *)self label];
    [label2 frame];
    [(UITextView *)v4 setFrame:?];

    [(UITextView *)v4 setAutoresizingMask:18];
    contentView = [(DMCEnrollmentTableViewTextCell *)self contentView];
    [contentView addSubview:v4];

    contentView2 = [(DMCEnrollmentTableViewTextCell *)self contentView];
    [contentView2 sendSubviewToBack:v4];

    v12 = self->_hiddenTextView;
    self->_hiddenTextView = v4;

    hiddenTextView = self->_hiddenTextView;
  }

  return hiddenTextView;
}

- (void)_updateTextFont
{
  v53[2] = *MEMORY[0x277D85DE8];
  text = [(DMCEnrollmentTableViewTextCell *)self text];
  v39 = objc_opt_new();
  v51 = *MEMORY[0x277D740A8];
  v3 = v51;
  v4 = [(DMCEnrollmentTableViewTextCell *)self _textFontIsBold:[(DMCEnrollmentTableViewTextCell *)self bold]];
  v53[0] = v4;
  v52 = *MEMORY[0x277D740C0];
  v5 = v52;
  labelColor = [MEMORY[0x277D75348] labelColor];
  v53[1] = labelColor;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v51 count:2];

  v8 = objc_opt_new();
  [v8 setLineBreakMode:4];
  v48[0] = v3;
  v9 = [(DMCEnrollmentTableViewTextCell *)self _textFontIsBold:[(DMCEnrollmentTableViewTextCell *)self bold]];
  v50[0] = v9;
  v48[1] = v5;
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  v49 = *MEMORY[0x277D74118];
  v11 = v49;
  v50[1] = systemBlueColor;
  v50[2] = v8;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v48 count:3];

  v12 = v7;
  v46[0] = v3;
  v13 = [(DMCEnrollmentTableViewTextCell *)self _textFontIsBold:[(DMCEnrollmentTableViewTextCell *)self bold]];
  v47[0] = v13;
  v46[1] = v5;
  placeholderTextColor = [MEMORY[0x277D75348] placeholderTextColor];
  v46[2] = v11;
  v47[1] = placeholderTextColor;
  v47[2] = v8;
  v40 = v8;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];

  v44[0] = v3;
  v15 = [(DMCEnrollmentTableViewTextCell *)self _textFontIsBold:[(DMCEnrollmentTableViewTextCell *)self bold]];
  v44[1] = v5;
  v45[0] = v15;
  v16 = v39;
  clearColor = [MEMORY[0x277D75348] clearColor];
  v45[1] = clearColor;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];

  if (text)
  {
    v19 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:text attributes:v12];
    [v39 appendAttributedString:v19];
  }

  linkText = [(DMCEnrollmentTableViewTextCell *)self linkText];

  if (linkText)
  {
    v21 = MEMORY[0x277CCACA8];
    if ([(DMCEnrollmentTableViewTextCell *)self linkTextOnNextLine])
    {
      v22 = @"\n%@";
    }

    else
    {
      v22 = @" %@";
    }

    linkText2 = [(DMCEnrollmentTableViewTextCell *)self linkText];
    v38 = [v21 stringWithFormat:v22, linkText2];

    v24 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v38 attributes:v18];
    [v39 appendAttributedString:v24];

    v25 = objc_alloc(MEMORY[0x277CCA898]);
    linkText3 = [(DMCEnrollmentTableViewTextCell *)self linkText];
    v27 = v42;
    v28 = [v25 initWithString:linkText3 attributes:v42];

    v29 = objc_alloc(MEMORY[0x277CCA898]);
    linkText4 = [(DMCEnrollmentTableViewTextCell *)self linkText];
    v31 = v41;
    v32 = [v29 initWithString:linkText4 attributes:v41];

    string = [v39 string];
    hiddenTextView = [(DMCEnrollmentTableViewTextCell *)self hiddenTextView];
    [hiddenTextView setText:string];

    v16 = v39;
  }

  else
  {
    v32 = 0;
    v28 = 0;
    v31 = v41;
    v27 = v42;
  }

  label = [(DMCEnrollmentTableViewTextCell *)self label];
  [label setAttributedText:v16];

  button = [(DMCEnrollmentTableViewTextCell *)self button];
  [button setAttributedTitle:v28 forState:0];

  button2 = [(DMCEnrollmentTableViewTextCell *)self button];
  [button2 setAttributedTitle:v32 forState:2];

  [(DMCEnrollmentTableViewTextCell *)self setNeedsLayout];
}

- (id)_textFontIsBold:(BOOL)bold
{
  boldCopy = bold;
  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A20]];
  [v5 pointSize];
  v7 = v6;

  v8 = MEMORY[0x277D74310];
  v9 = *MEMORY[0x277D76918];
  traitCollection = [(DMCEnrollmentTableViewTextCell *)self traitCollection];
  v11 = [v8 preferredFontDescriptorWithTextStyle:v9 compatibleWithTraitCollection:traitCollection];

  v12 = MEMORY[0x277D74300];
  if (boldCopy)
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v11 fontDescriptorWithSymbolicTraits:v13];
  v15 = [v12 fontWithDescriptor:v14 size:v7];

  return v15;
}

- (id)_subTextFont
{
  v2 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A20]];
  [v2 pointSize];
  v4 = v3;

  v5 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76920]];
  v6 = MEMORY[0x277D74300];
  v7 = [v5 fontDescriptorWithSymbolicTraits:0];
  v8 = [v6 fontWithDescriptor:v7 size:v4];

  return v8;
}

- (BOOL)isMultipleLines:(id)lines
{
  v15 = *MEMORY[0x277D85DE8];
  linesCopy = lines;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [linesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(linesCopy);
        }

        [*(*(&v10 + 1) + 8 * i) rect];
        if (v8 > 0.0)
        {
          ++v5;
        }
      }

      v4 = [linesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
    LOBYTE(v4) = v5 > 1;
  }

  return v4;
}

- (double)_horizontalMargin
{
  result = 5.0;
  if (self->_layoutStyle == 1)
  {
    return 2.5;
  }

  return result;
}

- (double)_verticalMargin
{
  result = 5.0;
  if (self->_layoutStyle == 1)
  {
    return 2.5;
  }

  return result;
}

@end