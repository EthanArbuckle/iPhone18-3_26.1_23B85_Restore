@interface CFXEffectPickerCollectionViewCell
- (JTImage)image;
- (id)accessibilityLabel;
- (void)awakeFromNib;
- (void)configureCellAppearence;
- (void)prepareForReuse;
- (void)setImage:(id)image;
@end

@implementation CFXEffectPickerCollectionViewCell

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = CFXEffectPickerCollectionViewCell;
  [(CFXEffectPickerCollectionViewCell *)&v3 awakeFromNib];
  [(CFXEffectPickerCollectionViewCell *)self configureCellAppearence];
}

- (void)configureCellAppearence
{
  imageView = [(CFXEffectPickerCollectionViewCell *)self imageView];
  layer = [imageView layer];
  [layer setCornerRadius:7.0];

  imageView2 = [(CFXEffectPickerCollectionViewCell *)self imageView];
  [imageView2 setClipsToBounds:1];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CFXEffectPickerCollectionViewCell;
  [(CFXEffectPickerCollectionViewCell *)&v4 prepareForReuse];
  imageView = [(CFXEffectPickerCollectionViewCell *)self imageView];
  [imageView setJtImage:0];

  [(CFXEffectPickerCollectionViewCell *)self setEffect:0];
  [(CFXEffectPickerCollectionViewCell *)self setEffectIdentifier:0];
}

- (void)setImage:(id)image
{
  imageCopy = image;
  imageView = [(CFXEffectPickerCollectionViewCell *)self imageView];
  [imageView setJtImage:imageCopy];
}

- (JTImage)image
{
  imageView = [(CFXEffectPickerCollectionViewCell *)self imageView];
  jtImage = [imageView jtImage];

  return jtImage;
}

- (id)accessibilityLabel
{
  v5.receiver = self;
  v5.super_class = CFXEffectPickerCollectionViewCell;
  accessibilityLabel = [(CFXEffectPickerCollectionViewCell *)&v5 accessibilityLabel];
  lowercaseString = [accessibilityLabel lowercaseString];

  return lowercaseString;
}

@end