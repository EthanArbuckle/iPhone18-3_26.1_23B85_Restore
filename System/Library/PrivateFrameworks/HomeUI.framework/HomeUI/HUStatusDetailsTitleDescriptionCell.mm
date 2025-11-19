@interface HUStatusDetailsTitleDescriptionCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (HFStringGenerator)descriptionText;
- (HFStringGenerator)titleText;
- (HUStatusDetailsTitleDescriptionCell)initWithFrame:(CGRect)a3;
- (void)_layoutContentApplyingFrames:(BOOL)a3 forTargetSize:(CGSize)a4 desiredSize:(CGSize *)a5;
- (void)layoutSubviews;
- (void)setDescriptionText:(id)a3;
- (void)setLayoutOptions:(id)a3;
- (void)setTitleText:(id)a3;
@end

@implementation HUStatusDetailsTitleDescriptionCell

- (HUStatusDetailsTitleDescriptionCell)initWithFrame:(CGRect)a3
{
  v25.receiver = self;
  v25.super_class = HUStatusDetailsTitleDescriptionCell;
  v3 = [(HUStatusDetailsTitleDescriptionCell *)&v25 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(HUStatusDetailsTitleDescriptionCell *)v3 setTitleLabel:v4];

    v5 = [(HUStatusDetailsTitleDescriptionCell *)v3 titleLabel];
    [v5 setNumberOfLines:0];

    v6 = [(HUStatusDetailsTitleDescriptionCell *)v3 contentView];
    v7 = [(HUStatusDetailsTitleDescriptionCell *)v3 titleLabel];
    [v6 addSubview:v7];

    v8 = objc_alloc(MEMORY[0x277D75C40]);
    v9 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(HUStatusDetailsTitleDescriptionCell *)v3 setDescriptionTextView:v9];

    v10 = [(HUStatusDetailsTitleDescriptionCell *)v3 descriptionTextView];
    [v10 setDelegate:v3];

    v11 = [(HUStatusDetailsTitleDescriptionCell *)v3 descriptionTextView];
    [v11 setEditable:0];

    v12 = [(HUStatusDetailsTitleDescriptionCell *)v3 descriptionTextView];
    [v12 _setInteractiveTextSelectionDisabled:1];

    v13 = [(HUStatusDetailsTitleDescriptionCell *)v3 descriptionTextView];
    [v13 setScrollEnabled:0];

    v14 = [(HUStatusDetailsTitleDescriptionCell *)v3 descriptionTextView];
    [v14 setBackgroundColor:0];

    v15 = *MEMORY[0x277D768C8];
    v16 = *(MEMORY[0x277D768C8] + 8);
    v17 = *(MEMORY[0x277D768C8] + 16);
    v18 = *(MEMORY[0x277D768C8] + 24);
    v19 = [(HUStatusDetailsTitleDescriptionCell *)v3 descriptionTextView];
    [v19 setTextContainerInset:{v15, v16, v17, v18}];

    v20 = [(HUStatusDetailsTitleDescriptionCell *)v3 descriptionTextView];
    v21 = [v20 textContainer];
    [v21 setLineFragmentPadding:0.0];

    v22 = [(HUStatusDetailsTitleDescriptionCell *)v3 contentView];
    v23 = [(HUStatusDetailsTitleDescriptionCell *)v3 descriptionTextView];
    [v22 addSubview:v23];
  }

  return v3;
}

- (HFStringGenerator)titleText
{
  v2 = [(HUStatusDetailsTitleDescriptionCell *)self titleLabel];
  v3 = [v2 attributedText];

  return v3;
}

- (void)setTitleText:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [a3 stringWithAttributes:MEMORY[0x277CBEC10]];
  v5 = [v4 string];
  v6 = [v5 localizedUppercaseString];

  v7 = objc_alloc(MEMORY[0x277CCA898]);
  v12 = *MEMORY[0x277D740C0];
  v8 = [MEMORY[0x277D75348] systemGrayColor];
  v13[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v7 initWithString:v6 attributes:v9];
  v11 = [(HUStatusDetailsTitleDescriptionCell *)self titleLabel];
  [v11 setAttributedText:v10];
}

- (HFStringGenerator)descriptionText
{
  v2 = [(HUStatusDetailsTitleDescriptionCell *)self descriptionTextView];
  v3 = [v2 attributedText];

  return v3;
}

- (void)setDescriptionText:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D756E0];
  v5 = a3;
  v6 = [v4 prominentInsetGroupedHeaderConfiguration];
  v14[0] = *MEMORY[0x277D740A8];
  v7 = [v6 secondaryTextProperties];
  v8 = [v7 font];
  v15[0] = v8;
  v14[1] = *MEMORY[0x277D740C0];
  v9 = [v6 secondaryTextProperties];
  v10 = [v9 color];
  v15[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v12 = [v5 stringWithAttributes:v11];

  v13 = [(HUStatusDetailsTitleDescriptionCell *)self descriptionTextView];
  [v13 setAttributedText:v12];
}

- (void)setLayoutOptions:(id)a3
{
  v8 = a3;
  if (([v8 isEqual:self->_layoutOptions] & 1) == 0)
  {
    objc_storeStrong(&self->_layoutOptions, a3);
    v5 = [(HUStatusDetailsTitleDescriptionCell *)self layoutOptions];
    v6 = [v5 sectionHeaderFont];
    v7 = [(HUStatusDetailsTitleDescriptionCell *)self titleLabel];
    [v7 setFont:v6];

    [(HUStatusDetailsTitleDescriptionCell *)self invalidateIntrinsicContentSize];
    [(HUStatusDetailsTitleDescriptionCell *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v5 = *MEMORY[0x277CBF3A8];
  [(HUStatusDetailsTitleDescriptionCell *)self _layoutContentApplyingFrames:0 forTargetSize:&v5 desiredSize:a3.width, a3.height];
  v4 = *(&v5 + 1);
  v3 = *&v5;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_layoutContentApplyingFrames:(BOOL)a3 forTargetSize:(CGSize)a4 desiredSize:(CGSize *)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v10 = *MEMORY[0x277CBF348];
  v11 = [(HUStatusDetailsTitleDescriptionCell *)self titleLabel];
  [v11 sizeThatFits:{width, height}];
  v13 = v12;

  v14 = [(HUStatusDetailsTitleDescriptionCell *)self layoutOptions];
  [v14 sectionTitleMargin];
  v16 = v15;

  if (v8)
  {
    v17 = [(HUStatusDetailsTitleDescriptionCell *)self titleLabel];
    [v17 setFrame:{v10, v16, width, v13}];
  }

  v18 = [(HUStatusDetailsTitleDescriptionCell *)self descriptionTextView];
  v19 = [v18 font];
  [v19 _scaledValueForValue:20.0];
  v21 = HURoundToScreenScale(v20);

  v22 = [(HUStatusDetailsTitleDescriptionCell *)self titleLabel];
  v23 = [v22 font];
  [v23 descender];
  v25 = v13 + v16 + v24;

  v26 = [(HUStatusDetailsTitleDescriptionCell *)self descriptionTextView];
  v44 = [v26 font];

  v27 = [(HUStatusDetailsTitleDescriptionCell *)self descriptionTextView];
  [v27 sizeThatFits:{width, height}];
  v29 = v28;

  [v44 ascender];
  v31 = v21 + v25 - v30;
  if (v8)
  {
    v32 = [(HUStatusDetailsTitleDescriptionCell *)self descriptionTextView];
    [v32 setFrame:{v10, v31, width, v29}];
  }

  v33 = v44;
  if (a5)
  {
    v46.origin.x = v10;
    v46.origin.y = v16;
    v46.size.width = width;
    v46.size.height = v13;
    v50.origin.x = v10;
    v50.origin.y = v31;
    v50.size.width = width;
    v50.size.height = v29;
    v47 = CGRectUnion(v46, v50);
    x = v47.origin.x;
    y = v47.origin.y;
    v36 = v47.size.width;
    v47.origin.x = v10;
    v47.origin.y = v31;
    v47.size.width = width;
    v47.size.height = v29;
    MaxY = CGRectGetMaxY(v47);
    [v44 lineHeight];
    v39 = v38;
    [v44 ascender];
    v41 = MaxY - (v39 - v40) + 14.0;
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = v36;
    v48.size.height = v41;
    MaxX = CGRectGetMaxX(v48);
    v49.origin.x = x;
    v49.origin.y = y;
    v49.size.width = v36;
    v49.size.height = v41;
    v43 = CGRectGetMaxY(v49);
    v33 = v44;
    a5->width = MaxX;
    a5->height = v43;
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = HUStatusDetailsTitleDescriptionCell;
  [(HUStatusDetailsTitleDescriptionCell *)&v5 layoutSubviews];
  [(HUStatusDetailsTitleDescriptionCell *)self bounds];
  [(HUStatusDetailsTitleDescriptionCell *)self _layoutContentApplyingFrames:1 forTargetSize:0 desiredSize:v3, v4];
}

@end