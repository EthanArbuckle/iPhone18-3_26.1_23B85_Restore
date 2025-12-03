@interface MUPlatterViewStyleProvider
- (UIColor)fillColor;
- (id)visualEffectForTraitCollection:(id)collection;
@end

@implementation MUPlatterViewStyleProvider

- (UIColor)fillColor
{
  if ([(MUPlatterViewStyleProvider *)self backgroundStyle]== 1)
  {
    [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.9];
  }

  else
  {
    +[MUInfoCardStyle cardBackgroundColor];
  }
  v2 = ;

  return v2;
}

- (id)visualEffectForTraitCollection:(id)collection
{
  collectionCopy = collection;
  if ([(MUPlatterViewStyleProvider *)self backgroundStyle]== 1)
  {
    v5 = [MEMORY[0x1E69DC730] effectWithStyle:_MKBlurEffectStyleForTraitCollection()];
    v6 = [MEMORY[0x1E69DD248] effectForBlurEffect:v5 style:6];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end