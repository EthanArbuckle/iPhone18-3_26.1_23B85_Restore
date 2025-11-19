@interface CFXEffectPickerCollectionViewCell
- (JTImage)image;
- (id)accessibilityLabel;
- (void)awakeFromNib;
- (void)configureCellAppearence;
- (void)prepareForReuse;
- (void)setImage:(id)a3;
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
  v3 = [(CFXEffectPickerCollectionViewCell *)self imageView];
  v4 = [v3 layer];
  [v4 setCornerRadius:7.0];

  v5 = [(CFXEffectPickerCollectionViewCell *)self imageView];
  [v5 setClipsToBounds:1];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CFXEffectPickerCollectionViewCell;
  [(CFXEffectPickerCollectionViewCell *)&v4 prepareForReuse];
  v3 = [(CFXEffectPickerCollectionViewCell *)self imageView];
  [v3 setJtImage:0];

  [(CFXEffectPickerCollectionViewCell *)self setEffect:0];
  [(CFXEffectPickerCollectionViewCell *)self setEffectIdentifier:0];
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(CFXEffectPickerCollectionViewCell *)self imageView];
  [v5 setJtImage:v4];
}

- (JTImage)image
{
  v2 = [(CFXEffectPickerCollectionViewCell *)self imageView];
  v3 = [v2 jtImage];

  return v3;
}

- (id)accessibilityLabel
{
  v5.receiver = self;
  v5.super_class = CFXEffectPickerCollectionViewCell;
  v2 = [(CFXEffectPickerCollectionViewCell *)&v5 accessibilityLabel];
  v3 = [v2 lowercaseString];

  return v3;
}

@end