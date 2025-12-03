@interface OBTextSectionView
- (OBTextSectionView)initWithHeader:(id)header content:(id)content;
- (id)_contentFont;
- (id)_headerFont;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation OBTextSectionView

- (OBTextSectionView)initWithHeader:(id)header content:(id)content
{
  headerCopy = header;
  contentCopy = content;
  v33.receiver = self;
  v33.super_class = OBTextSectionView;
  v8 = [(OBTextSectionView *)&v33 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    [(OBTextSectionView *)v8 setAxis:1];
    [(OBTextSectionView *)v9 setAlignment:1];
    if ([headerCopy length])
    {
      v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      [(OBTextSectionView *)v9 setHeaderLabel:v10];

      headerLabel = [(OBTextSectionView *)v9 headerLabel];
      [headerLabel setTranslatesAutoresizingMaskIntoConstraints:0];

      headerLabel2 = [(OBTextSectionView *)v9 headerLabel];
      [headerLabel2 setText:headerCopy];

      headerLabel3 = [(OBTextSectionView *)v9 headerLabel];
      [headerLabel3 setTextAlignment:4];

      labelColor = [MEMORY[0x1E69DC888] labelColor];
      headerLabel4 = [(OBTextSectionView *)v9 headerLabel];
      [headerLabel4 setTextColor:labelColor];

      _headerFont = [(OBTextSectionView *)v9 _headerFont];
      headerLabel5 = [(OBTextSectionView *)v9 headerLabel];
      [headerLabel5 setFont:_headerFont];

      headerLabel6 = [(OBTextSectionView *)v9 headerLabel];
      [headerLabel6 setNumberOfLines:0];

      headerLabel7 = [(OBTextSectionView *)v9 headerLabel];
      [(OBTextSectionView *)v9 addArrangedSubview:headerLabel7];
    }

    if ([contentCopy length])
    {
      v20 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      [(OBTextSectionView *)v9 setContentLabel:v20];

      contentLabel = [(OBTextSectionView *)v9 contentLabel];
      [contentLabel setTranslatesAutoresizingMaskIntoConstraints:0];

      contentLabel2 = [(OBTextSectionView *)v9 contentLabel];
      [contentLabel2 setText:contentCopy];

      contentLabel3 = [(OBTextSectionView *)v9 contentLabel];
      [contentLabel3 setTextAlignment:4];

      labelColor2 = [MEMORY[0x1E69DC888] labelColor];
      contentLabel4 = [(OBTextSectionView *)v9 contentLabel];
      [contentLabel4 setTextColor:labelColor2];

      _contentFont = [(OBTextSectionView *)v9 _contentFont];
      contentLabel5 = [(OBTextSectionView *)v9 contentLabel];
      [contentLabel5 setFont:_contentFont];

      contentLabel6 = [(OBTextSectionView *)v9 contentLabel];
      [contentLabel6 setNumberOfLines:0];

      contentLabel7 = [(OBTextSectionView *)v9 contentLabel];
      [(OBTextSectionView *)v9 addArrangedSubview:contentLabel7];

      headerLabel8 = [(OBTextSectionView *)v9 headerLabel];

      if (headerLabel8)
      {
        headerLabel9 = [(OBTextSectionView *)v9 headerLabel];
        [(OBTextSectionView *)v9 setCustomSpacing:headerLabel9 afterView:6.0];
      }
    }
  }

  return v9;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = OBTextSectionView;
  [(OBTextSectionView *)&v8 traitCollectionDidChange:change];
  _headerFont = [(OBTextSectionView *)self _headerFont];
  headerLabel = [(OBTextSectionView *)self headerLabel];
  [headerLabel setFont:_headerFont];

  _contentFont = [(OBTextSectionView *)self _contentFont];
  contentLabel = [(OBTextSectionView *)self contentLabel];
  [contentLabel setFont:_contentFont];
}

- (id)_headerFont
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
  v3 = MEMORY[0x1E69DB878];
  v4 = [v2 fontDescriptorWithSymbolicTraits:2];
  v5 = [v3 fontWithDescriptor:v4 size:0.0];

  return v5;
}

- (id)_contentFont
{
  v2 = MEMORY[0x1E69DB878];
  v3 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
  v4 = [v2 fontWithDescriptor:v3 size:0.0];

  return v4;
}

@end