@interface _NTKCGalleryCollectionFooter
+ (id)reuseIdentifier;
- (_NTKCGalleryCollectionFooter)initWithFrame:(CGRect)frame;
- (void)_fontSizeDidChange;
- (void)layoutSubviews;
- (void)setText:(id)text;
@end

@implementation _NTKCGalleryCollectionFooter

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (_NTKCGalleryCollectionFooter)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _NTKCGalleryCollectionFooter;
  v3 = [(_NTKCGalleryCollectionFooter *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    label = v3->_label;
    v3->_label = v4;

    v6 = BPSTextColor();
    [(UILabel *)v3->_label setTextColor:v6];

    [(UILabel *)v3->_label setNumberOfLines:0];
    [(_NTKCGalleryCollectionFooter *)v3 addSubview:v3->_label];
    [(_NTKCGalleryCollectionFooter *)v3 _fontSizeDidChange];
  }

  return v3;
}

- (void)setText:(id)text
{
  v13[1] = *MEMORY[0x277D85DE8];
  textCopy = text;
  text = [(UILabel *)self->_label text];
  v6 = [textCopy isEqualToString:text];

  if ((v6 & 1) == 0)
  {
    if (textCopy)
    {
      v7 = objc_alloc(MEMORY[0x277CCA898]);
      v12 = *MEMORY[0x277D74118];
      LODWORD(v8) = 0.5;
      v9 = [MEMORY[0x277D74240] NTKHyphenationParagraphStyleWithFactor:v8];
      [v9 setLineBreakMode:4];
      v13[0] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v11 = [v7 initWithString:textCopy attributes:v10];

      [(UILabel *)self->_label setAttributedText:v11];
    }

    else
    {
      [(UILabel *)self->_label setText:0];
    }

    [(_NTKCGalleryCollectionFooter *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = _NTKCGalleryCollectionFooter;
  [(_NTKCGalleryCollectionFooter *)&v10 layoutSubviews];
  [(_NTKCGalleryCollectionFooter *)self bounds];
  Width = CGRectGetWidth(v11);
  v4 = NTKCScreenStyle();
  IsRTL = CLKLayoutIsRTL();
  [(UILabel *)self->_label frame];
  v6 = 0.0;
  if ((IsRTL & 1) == 0)
  {
    if (NTKCScreenStyle() == -1)
    {
      v6 = 11.0;
    }

    else
    {
      v6 = 15.0;
    }
  }

  v7 = 15.0;
  if (v4 == -1)
  {
    v7 = 11.0;
  }

  v8 = Width - v7;
  [NTKCFaceContainerView sizeForFaceSize:1 style:FaceSize()];
  [(UILabel *)self->_label setFrame:v6, 0.0, v8, v9];
}

- (void)_fontSizeDidChange
{
  v3 = NTKCScreenStyle();
  v4 = MEMORY[0x277D76968];
  if (v3 != -1)
  {
    v4 = MEMORY[0x277D769C0];
  }

  v5 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*v4];
  v6 = [v5 fontDescriptorWithSymbolicTraits:0x8000];

  v7 = [MEMORY[0x277D74300] fontWithDescriptor:v6 size:0.0];

  [(UILabel *)self->_label setFont:v7];

  [(_NTKCGalleryCollectionFooter *)self setNeedsLayout];
}

@end