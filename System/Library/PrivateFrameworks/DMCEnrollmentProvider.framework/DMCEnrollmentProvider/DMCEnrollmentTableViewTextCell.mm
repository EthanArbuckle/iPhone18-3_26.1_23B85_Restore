@interface DMCEnrollmentTableViewTextCell
- (BOOL)isMultipleLines:(id)a3;
- (DMCEnrollmentTableViewTextCell)initWithText:(id)a3 bold:(BOOL)a4 subText:(id)a5 layoutStyle:(unint64_t)a6;
- (UITextView)hiddenTextView;
- (double)_horizontalMargin;
- (double)_verticalMargin;
- (id)_rectsOfLinkText;
- (id)_subTextFont;
- (id)_textFontIsBold:(BOOL)a3;
- (void)_updateTextFont;
- (void)configureLinkText:(id)a3 forceLineBreak:(BOOL)a4 linkAction:(id)a5;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
- (void)setLinkAction:(id)a3;
- (void)setLinkText:(id)a3;
- (void)setLinkTextOnNextLine:(BOOL)a3;
- (void)setText:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
@end

@implementation DMCEnrollmentTableViewTextCell

- (DMCEnrollmentTableViewTextCell)initWithText:(id)a3 bold:(BOOL)a4 subText:(id)a5 layoutStyle:(unint64_t)a6
{
  v8 = a4;
  v63[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v54 = a5;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v58.receiver = self;
  v58.super_class = DMCEnrollmentTableViewTextCell;
  v13 = [(DMCEnrollmentTableViewTextCell *)&v58 initWithStyle:0 reuseIdentifier:v12];

  if (v13)
  {
    [(DMCEnrollmentTableViewTextCell *)v13 setSelectionStyle:0];
    [(DMCEnrollmentTableViewTextCell *)v13 setUserInteractionEnabled:0];
    v14 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(DMCEnrollmentTableViewTextCell *)v13 setBackgroundColor:v14];

    v13->_shouldCalculateLinkTextLineBreak = 1;
    v13->_layoutStyle = a6;
    v13->_textAlignment = 2 * ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] != 0);
    v13->_bold = v8;
    v15 = [MEMORY[0x277D75220] buttonWithType:1];
    button = v13->_button;
    v13->_button = v15;

    [(UIButton *)v13->_button setHidden:1];
    v17 = [(DMCEnrollmentTableViewTextCell *)v13 contentView];
    [v17 addSubview:v13->_button];

    v18 = objc_opt_new();
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v18 setNumberOfLines:0];
    v19 = [(DMCEnrollmentTableViewTextCell *)v13 _textFontIsBold:v8];
    [v18 setFont:v19];

    v20 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v18 setTextColor:v20];

    [v18 setTextAlignment:v13->_textAlignment];
    [v18 setText:v10];
    v21 = [(DMCEnrollmentTableViewTextCell *)v13 contentView];
    [v21 addSubview:v18];

    [(DMCEnrollmentTableViewTextCell *)v13 _horizontalMargin];
    v23 = v22;
    [(DMCEnrollmentTableViewTextCell *)v13 _verticalMargin];
    v25 = v24;
    if (v54)
    {
      v26 = objc_opt_new();
      [(UILabel *)v26 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UILabel *)v26 setNumberOfLines:1];
      v27 = [(DMCEnrollmentTableViewTextCell *)v13 _subTextFont];
      [(UILabel *)v26 setFont:v27];

      v28 = [MEMORY[0x277D75348] secondaryLabelColor];
      [(UILabel *)v26 setTextColor:v28];

      [(UILabel *)v26 setTextAlignment:v13->_textAlignment];
      [(UILabel *)v26 setText:v54];
      [(UILabel *)v26 sizeToFit];
      v29 = [(DMCEnrollmentTableViewTextCell *)v13 contentView];
      [v29 addSubview:v26];

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
      v39 = [v37 constraintsWithVisualFormat:v38 options:0 metrics:0 views:v30];

      v40 = [(DMCEnrollmentTableViewTextCell *)v13 contentView];
      [v40 addConstraints:v33];

      v41 = [(DMCEnrollmentTableViewTextCell *)v13 contentView];
      [v41 addConstraints:v36];

      v42 = [(DMCEnrollmentTableViewTextCell *)v13 contentView];
      [v42 addConstraints:v39];

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

      v48 = [(DMCEnrollmentTableViewTextCell *)v13 contentView];
      [v48 addConstraints:v33];

      v39 = [(DMCEnrollmentTableViewTextCell *)v13 contentView];
      [v39 addConstraints:v36];
    }

    v49 = [v10 copy];
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
  v3 = [(DMCEnrollmentTableViewTextCell *)self linkText];

  if (v3)
  {
    [(DMCEnrollmentTableViewTextCell *)self setUserInteractionEnabled:1];
    if (self->_hiddenTextView)
    {
      v4 = [(DMCEnrollmentTableViewTextCell *)self label];
      [v4 frame];
      v6 = v5;
      v8 = v7;
      v10 = v9;

      v11 = [(DMCEnrollmentTableViewTextCell *)self contentView];
      [v11 bounds];
      v12 = CGRectGetHeight(v33) - v8;

      v13 = [(DMCEnrollmentTableViewTextCell *)self hiddenTextView];
      [v13 setFrame:{v6 + -8.0, v8, v10 + 16.0, v12}];
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

    v15 = [(DMCEnrollmentTableViewTextCell *)self _rectsOfLinkText];
    if ([(DMCEnrollmentTableViewTextCell *)self shouldCalculateLinkTextLineBreak])
    {
      [(DMCEnrollmentTableViewTextCell *)self setLinkTextOnNextLine:[(DMCEnrollmentTableViewTextCell *)self isMultipleLines:v15]| [(DMCEnrollmentTableViewTextCell *)self linkTextOnNextLine]];
    }

    v16 = [v15 firstObject];
    [v16 rect];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    [(DMCEnrollmentTableViewTextCell *)self _horizontalMargin];
    v26 = v25 + v18 + -18.0;
    [(DMCEnrollmentTableViewTextCell *)self _verticalMargin];
    v28 = v20 + -10.0 + v27;
    v29 = [(DMCEnrollmentTableViewTextCell *)self button];
    [v29 setFrame:{v26, v28, v22 + 20.0, v24 + 20.0}];

    v30 = [(DMCEnrollmentTableViewTextCell *)self button];
    [v30 setHidden:0];
  }

  else
  {
    v15 = [(DMCEnrollmentTableViewTextCell *)self button];
    [v15 setHidden:1];
  }
}

- (void)setTextAlignment:(int64_t)a3
{
  if (self->_textAlignment != a3)
  {
    self->_textAlignment = a3;
    [(UILabel *)self->_label setTextAlignment:?];
  }
}

- (void)configureLinkText:(id)a3 forceLineBreak:(BOOL)a4 linkAction:(id)a5
{
  v6 = a4;
  v9 = a3;
  v8 = a5;
  if (v6)
  {
    [(DMCEnrollmentTableViewTextCell *)self setShouldCalculateLinkTextLineBreak:0];
    [(DMCEnrollmentTableViewTextCell *)self setLinkTextOnNextLine:1];
  }

  [(DMCEnrollmentTableViewTextCell *)self setLinkText:v9];
  [(DMCEnrollmentTableViewTextCell *)self setLinkAction:v8];
}

- (void)setLinkText:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_linkText isEqualToString:?])
  {
    objc_storeStrong(&self->_linkText, a3);
    [(DMCEnrollmentTableViewTextCell *)self _updateTextFont];
  }
}

- (void)setLinkAction:(id)a3
{
  v4 = a3;
  v5 = _Block_copy(v4);
  linkAction = self->_linkAction;
  self->_linkAction = v5;

  if (v4)
  {
    v7 = [(DMCEnrollmentTableViewTextCell *)self button];
    v8 = MEMORY[0x277D750C8];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__DMCEnrollmentTableViewTextCell_setLinkAction___block_invoke;
    v10[3] = &unk_278EE7D18;
    v11 = v4;
    v9 = [v8 actionWithHandler:v10];
    [v7 addAction:v9 forControlEvents:64];
  }
}

- (void)setText:(id)a3
{
  v8 = a3;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    v4 = [v8 copy];
    text = self->_text;
    self->_text = v4;

    v6 = self->_text;
    v7 = [(DMCEnrollmentTableViewTextCell *)self label];
    [v7 setText:v6];

    [(DMCEnrollmentTableViewTextCell *)self setNeedsDisplay];
  }
}

- (void)setLinkTextOnNextLine:(BOOL)a3
{
  if (self->_linkTextOnNextLine != a3)
  {
    block[5] = v3;
    block[6] = v4;
    self->_linkTextOnNextLine = a3;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__DMCEnrollmentTableViewTextCell_setLinkTextOnNextLine___block_invoke;
    block[3] = &unk_278EE74C0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__DMCEnrollmentTableViewTextCell_setEnabled___block_invoke;
  v3[3] = &unk_278EE7A58;
  v3[4] = self;
  v4 = a3;
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
  v3 = [(DMCEnrollmentTableViewTextCell *)self hiddenTextView];
  v4 = [v3 endOfDocument];
  v5 = [v3 positionFromPosition:v4 offset:0];

  v6 = [v3 endOfDocument];
  v7 = [(DMCEnrollmentTableViewTextCell *)self linkText];
  v8 = [v3 positionFromPosition:v6 offset:{-objc_msgSend(v7, "length")}];

  v9 = [v3 textRangeFromPosition:v8 toPosition:v5];
  v10 = [v3 selectionRectsForRange:v9];

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
    v5 = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v4 setBackgroundColor:v5];

    v6 = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v4 setTextColor:v6];

    [(UITextView *)v4 setTextAlignment:self->_textAlignment];
    v7 = [(DMCEnrollmentTableViewTextCell *)self label];
    v8 = [v7 font];
    [(UITextView *)v4 setFont:v8];

    [(UITextView *)v4 setTextContainerInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    v9 = [(DMCEnrollmentTableViewTextCell *)self label];
    [v9 frame];
    [(UITextView *)v4 setFrame:?];

    [(UITextView *)v4 setAutoresizingMask:18];
    v10 = [(DMCEnrollmentTableViewTextCell *)self contentView];
    [v10 addSubview:v4];

    v11 = [(DMCEnrollmentTableViewTextCell *)self contentView];
    [v11 sendSubviewToBack:v4];

    v12 = self->_hiddenTextView;
    self->_hiddenTextView = v4;

    hiddenTextView = self->_hiddenTextView;
  }

  return hiddenTextView;
}

- (void)_updateTextFont
{
  v53[2] = *MEMORY[0x277D85DE8];
  v43 = [(DMCEnrollmentTableViewTextCell *)self text];
  v39 = objc_opt_new();
  v51 = *MEMORY[0x277D740A8];
  v3 = v51;
  v4 = [(DMCEnrollmentTableViewTextCell *)self _textFontIsBold:[(DMCEnrollmentTableViewTextCell *)self bold]];
  v53[0] = v4;
  v52 = *MEMORY[0x277D740C0];
  v5 = v52;
  v6 = [MEMORY[0x277D75348] labelColor];
  v53[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v51 count:2];

  v8 = objc_opt_new();
  [v8 setLineBreakMode:4];
  v48[0] = v3;
  v9 = [(DMCEnrollmentTableViewTextCell *)self _textFontIsBold:[(DMCEnrollmentTableViewTextCell *)self bold]];
  v50[0] = v9;
  v48[1] = v5;
  v10 = [MEMORY[0x277D75348] systemBlueColor];
  v49 = *MEMORY[0x277D74118];
  v11 = v49;
  v50[1] = v10;
  v50[2] = v8;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v48 count:3];

  v12 = v7;
  v46[0] = v3;
  v13 = [(DMCEnrollmentTableViewTextCell *)self _textFontIsBold:[(DMCEnrollmentTableViewTextCell *)self bold]];
  v47[0] = v13;
  v46[1] = v5;
  v14 = [MEMORY[0x277D75348] placeholderTextColor];
  v46[2] = v11;
  v47[1] = v14;
  v47[2] = v8;
  v40 = v8;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];

  v44[0] = v3;
  v15 = [(DMCEnrollmentTableViewTextCell *)self _textFontIsBold:[(DMCEnrollmentTableViewTextCell *)self bold]];
  v44[1] = v5;
  v45[0] = v15;
  v16 = v39;
  v17 = [MEMORY[0x277D75348] clearColor];
  v45[1] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];

  if (v43)
  {
    v19 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v43 attributes:v12];
    [v39 appendAttributedString:v19];
  }

  v20 = [(DMCEnrollmentTableViewTextCell *)self linkText];

  if (v20)
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

    v23 = [(DMCEnrollmentTableViewTextCell *)self linkText];
    v38 = [v21 stringWithFormat:v22, v23];

    v24 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v38 attributes:v18];
    [v39 appendAttributedString:v24];

    v25 = objc_alloc(MEMORY[0x277CCA898]);
    v26 = [(DMCEnrollmentTableViewTextCell *)self linkText];
    v27 = v42;
    v28 = [v25 initWithString:v26 attributes:v42];

    v29 = objc_alloc(MEMORY[0x277CCA898]);
    v30 = [(DMCEnrollmentTableViewTextCell *)self linkText];
    v31 = v41;
    v32 = [v29 initWithString:v30 attributes:v41];

    v33 = [v39 string];
    v34 = [(DMCEnrollmentTableViewTextCell *)self hiddenTextView];
    [v34 setText:v33];

    v16 = v39;
  }

  else
  {
    v32 = 0;
    v28 = 0;
    v31 = v41;
    v27 = v42;
  }

  v35 = [(DMCEnrollmentTableViewTextCell *)self label];
  [v35 setAttributedText:v16];

  v36 = [(DMCEnrollmentTableViewTextCell *)self button];
  [v36 setAttributedTitle:v28 forState:0];

  v37 = [(DMCEnrollmentTableViewTextCell *)self button];
  [v37 setAttributedTitle:v32 forState:2];

  [(DMCEnrollmentTableViewTextCell *)self setNeedsLayout];
}

- (id)_textFontIsBold:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A20]];
  [v5 pointSize];
  v7 = v6;

  v8 = MEMORY[0x277D74310];
  v9 = *MEMORY[0x277D76918];
  v10 = [(DMCEnrollmentTableViewTextCell *)self traitCollection];
  v11 = [v8 preferredFontDescriptorWithTextStyle:v9 compatibleWithTraitCollection:v10];

  v12 = MEMORY[0x277D74300];
  if (v3)
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

- (BOOL)isMultipleLines:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * i) rect];
        if (v8 > 0.0)
        {
          ++v5;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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