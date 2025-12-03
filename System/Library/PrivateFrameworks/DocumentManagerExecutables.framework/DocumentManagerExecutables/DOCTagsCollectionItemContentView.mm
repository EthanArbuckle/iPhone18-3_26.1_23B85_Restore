@interface DOCTagsCollectionItemContentView
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size;
- (DOCTagsCollectionItemContentView)initWithFrame:(CGRect)frame;
- (DOCTagsCollectionItemContentViewDelegate)delegate;
- (UIMenu)menuForContextMenuPresentation;
- (id)fontForTagSizing;
- (void)layoutSubviews;
- (void)removeTag:(id)tag;
- (void)setIsMixed:(BOOL)mixed;
- (void)setMaxWidth:(double)width;
- (void)setTagValue:(id)value;
- (void)updateAttributedString;
- (void)updateColors;
- (void)updateForChangedTraitsAffectingFonts;
@end

@implementation DOCTagsCollectionItemContentView

- (DOCTagsCollectionItemContentView)initWithFrame:(CGRect)frame
{
  v18.receiver = self;
  v18.super_class = DOCTagsCollectionItemContentView;
  v3 = [(DOCTagsCollectionItemContentView *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[DOCTagAppearance infoCollection];
    [v4 cellCornerRadius];
    [(DOCTagsCollectionItemContentView *)v3 setCornerRadius:?];
    [(DOCTagsCollectionItemContentView *)v3 cornerRadius];
    [(DOCTagsCollectionItemContentView *)v3 _setContinuousCornerRadius:?];
    v3->_maxWidth = -1.0;
    v5 = objc_alloc_init(MEMORY[0x277D756B8]);
    tagNameLabel = v3->_tagNameLabel;
    v3->_tagNameLabel = v5;

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v3->_tagNameLabel setTextColor:secondaryLabelColor];

    v8 = MEMORY[0x277D74300];
    v9 = *MEMORY[0x277D76968];
    traitCollection = [(DOCTagsCollectionItemContentView *)v3 traitCollection];
    v11 = [v8 preferredFontForTextStyle:v9 compatibleWithTraitCollection:traitCollection];

    fontDescriptor = [v11 fontDescriptor];
    v13 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];
    v14 = [MEMORY[0x277D74300] fontWithDescriptor:v13 size:0.0];
    [(UILabel *)v3->_tagNameLabel setFont:v14];
    [(UILabel *)v3->_tagNameLabel setAdjustsFontForContentSizeCategory:1];
    [(DOCTagsCollectionItemContentView *)v3 addSubview:v3->_tagNameLabel];
    doc_traitsAffectingFonts = [MEMORY[0x277D75C80] doc_traitsAffectingFonts];
    v16 = [(DOCTagsCollectionItemContentView *)v3 registerForTraitChanges:doc_traitsAffectingFonts withAction:sel_updateForChangedTraitsAffectingFonts];
  }

  return v3;
}

- (void)removeTag:(id)tag
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  tagValue = self->_tagValue;

  if (WeakRetained)
  {
    v6 = tagValue == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 tagsCollectionItem:self didDeleteTag:self->_tagValue];
  }
}

- (void)setTagValue:(id)value
{
  valueCopy = value;
  if (self->_tagValue != valueCopy)
  {
    v6 = valueCopy;
    objc_storeStrong(&self->_tagValue, value);
    [(DOCTagsCollectionItemContentView *)self updateColors];
    [(DOCTagsCollectionItemContentView *)self updateAttributedString];
    [(DOCTagsCollectionItemContentView *)self invalidateIntrinsicContentSize];
    valueCopy = v6;
  }
}

- (void)setMaxWidth:(double)width
{
  if (self->_maxWidth != width)
  {
    self->_maxWidth = width;
    [(DOCTagsCollectionItemContentView *)self invalidateIntrinsicContentSize];
  }
}

- (void)layoutSubviews
{
  v3 = +[DOCTagAppearance infoCollection];
  [(DOCTagsCollectionItemContentView *)self bounds];
  [(DOCTagsCollectionItemContentView *)self setCornerRadius:v4 * 0.5];
  [(DOCTagsCollectionItemContentView *)self cornerRadius];
  [(DOCTagsCollectionItemContentView *)self _setContinuousCornerRadius:?];
  [(DOCTagsCollectionItemContentView *)self updateColors];
  v22.receiver = self;
  v22.super_class = DOCTagsCollectionItemContentView;
  [(DOCTagsCollectionItemContentView *)&v22 layoutSubviews];
  [(DOCTagsCollectionItemContentView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v3 cellContentInsets];
  v14 = v6 + v13;
  v16 = v10 - (v13 + v15);
  v18 = v8 + v17;
  v20 = v12 - (v17 + v19);
  tagNameLabel = [(DOCTagsCollectionItemContentView *)self tagNameLabel];
  [tagNameLabel setFrame:{v14, v18, v16, v20}];
}

- (CGSize)intrinsicContentSize
{
  v3 = +[DOCTagAppearance infoCollection];
  [v3 cellContentInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  tagNameLabel = [(DOCTagsCollectionItemContentView *)self tagNameLabel];
  [tagNameLabel intrinsicContentSize];
  v14 = v13;
  v16 = v15;

  v17 = v7 + v11 + v14;
  maxWidth = self->_maxWidth;
  if (v17 > maxWidth && maxWidth > -1.0)
  {
    v17 = self->_maxWidth;
  }

  v20 = v5 + v9 + v16;
  result.height = v20;
  result.width = v17;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = +[DOCTagAppearance infoCollection];
  [v6 cellContentInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  tagNameLabel = [(DOCTagsCollectionItemContentView *)self tagNameLabel];
  [tagNameLabel systemLayoutSizeFittingSize:{width, height}];
  v17 = v16;
  v19 = v18;

  v20 = v10 + v14 + v17;
  maxWidth = self->_maxWidth;
  if (v20 > maxWidth && maxWidth > -1.0)
  {
    v20 = self->_maxWidth;
  }

  v23 = v8 + v12 + v19;
  result.height = v23;
  result.width = v20;
  return result;
}

- (void)setIsMixed:(BOOL)mixed
{
  if (self->_isMixed != mixed)
  {
    self->_isMixed = mixed;
    [(DOCTagsCollectionItemContentView *)self updateColors];

    [(DOCTagsCollectionItemContentView *)self updateAttributedString];
  }
}

- (void)updateColors
{
  if ([(DOCTagsCollectionItemContentView *)self isMixed])
  {
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    tagNameLabel = [(DOCTagsCollectionItemContentView *)self tagNameLabel];
    [tagNameLabel setTextColor:secondaryLabelColor];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(DOCTagsCollectionItemContentView *)self setBackgroundColor:clearColor];

    tagValue = [(DOCTagsCollectionItemContentView *)self tagValue];
    tagBackgroundColor = [tagValue tagBackgroundColor];
    cGColor = [tagBackgroundColor CGColor];
    layer = [(DOCTagsCollectionItemContentView *)self layer];
    [layer setBorderColor:cGColor];

    layer2 = [(DOCTagsCollectionItemContentView *)self layer];
    [layer2 setBorderWidth:1.0];
  }

  else
  {
    tagValue2 = [(DOCTagsCollectionItemContentView *)self tagValue];
    layer2 = [tagValue2 tagColor];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    v12 = [layer2 isEqual:clearColor2];

    if (v12)
    {
      secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
      tagNameLabel2 = [(DOCTagsCollectionItemContentView *)self tagNameLabel];
      [tagNameLabel2 setTextColor:secondaryLabelColor2];
    }

    else
    {
      secondaryLabelColor2 = [(DOCTagsCollectionItemContentView *)self tagNameLabel];
      [secondaryLabelColor2 setTextColor:layer2];
    }

    tagValue3 = [(DOCTagsCollectionItemContentView *)self tagValue];
    tagBackgroundColor2 = [tagValue3 tagBackgroundColor];
    [(DOCTagsCollectionItemContentView *)self setBackgroundColor:tagBackgroundColor2];

    clearColor3 = [MEMORY[0x277D75348] clearColor];
    cGColor2 = [clearColor3 CGColor];
    layer3 = [(DOCTagsCollectionItemContentView *)self layer];
    [layer3 setBorderColor:cGColor2];

    layer4 = [(DOCTagsCollectionItemContentView *)self layer];
    [layer4 setBorderWidth:0.0];
  }
}

- (id)fontForTagSizing
{
  tagNameLabel = [(DOCTagsCollectionItemContentView *)self tagNameLabel];
  font = [tagNameLabel font];
  _fontAdjustedForCurrentContentSizeCategory = [font _fontAdjustedForCurrentContentSizeCategory];

  return _fontAdjustedForCurrentContentSizeCategory;
}

- (void)updateAttributedString
{
  v20[1] = *MEMORY[0x277D85DE8];
  v19 = *MEMORY[0x277D740A8];
  fontForTagSizing = [(DOCTagsCollectionItemContentView *)self fontForTagSizing];
  v20[0] = fontForTagSizing;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  if ([(DOCTagsCollectionItemContentView *)self isMixed])
  {
    v5 = +[DOCTagAppearance renderingAppearance];
    outlineTagsToIndicateMixedState = [v5 outlineTagsToIndicateMixedState];

    v7 = outlineTagsToIndicateMixedState & 1;
  }

  else
  {
    v7 = 0;
  }

  fontForTagSizing2 = [(DOCTagsCollectionItemContentView *)self fontForTagSizing];
  [fontForTagSizing2 capHeight];
  v10 = v9 + 0.0;

  tagValue = [(DOCTagsCollectionItemContentView *)self tagValue];
  displayName = [tagValue displayName];

  tagValue2 = [(DOCTagsCollectionItemContentView *)self tagValue];
  v14 = [DOCTagStringRenderingRequest requestForTag:tagValue2 tagDimension:displayName text:v4 textAttributes:v7 variant:v10];

  [v14 setAllowUnsizedSymbolImages:1];
  v15 = +[DOCTagAppearance infoCollection];
  [v15 tagToLabelSpacing];
  [v14 setTagToTitleSpacing:?];

  [v14 setLayoutDirection:{-[DOCTagsCollectionItemContentView effectiveUserInterfaceLayoutDirection](self, "effectiveUserInterfaceLayoutDirection")}];
  [v14 setClearTagRenderingMode:1];
  tagNameLabel = [(DOCTagsCollectionItemContentView *)self tagNameLabel];
  v17 = +[DOCTagRenderer shared];
  v18 = [v17 renderAttributedStringWithRequest:v14 titleHighlighter:&__block_literal_global_10];
  [tagNameLabel setAttributedText:v18];
}

id __58__DOCTagsCollectionItemContentView_updateAttributedString__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAB48];
  v3 = a2;
  v4 = [[v2 alloc] initWithAttributedString:v3];

  return v4;
}

- (void)updateForChangedTraitsAffectingFonts
{
  [(DOCTagsCollectionItemContentView *)self updateAttributedString];

  [(DOCTagsCollectionItemContentView *)self setNeedsLayout];
}

- (UIMenu)menuForContextMenuPresentation
{
  v17[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v2 = [MEMORY[0x277D755B8] systemImageNamed:@"tag.slash"];
  v3 = MEMORY[0x277D750C8];
  v4 = _DocumentManagerBundle();
  v5 = [v4 localizedStringForKey:@"Remove Tag" value:@"Remove Tag" table:@"Localizable"];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __66__DOCTagsCollectionItemContentView_menuForContextMenuPresentation__block_invoke;
  v14 = &unk_278FA1F60;
  objc_copyWeak(&v15, &location);
  v6 = [v3 actionWithTitle:v5 image:v2 identifier:0 handler:&v11];

  [v6 setAttributes:{2, v11, v12, v13, v14}];
  v7 = MEMORY[0x277D75710];
  v17[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v9 = [v7 menuWithTitle:&stru_285CBC3C8 image:0 identifier:0 options:1 children:v8];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v9;
}

void __66__DOCTagsCollectionItemContentView_menuForContextMenuPresentation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained removeTag:0];
}

- (DOCTagsCollectionItemContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end