@interface FASharedServicesSpecifierCell
- (id)blankIcon;
- (id)getLazyIcon;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation FASharedServicesSpecifierCell

- (id)blankIcon
{
  if (blankIcon_onceToken != -1)
  {
    [FASharedServicesSpecifierCell blankIcon];
  }

  v3 = blankIcon__blankIcon;

  return v3;
}

void __42__FASharedServicesSpecifierCell_blankIcon__block_invoke()
{
  v3.width = 40.0;
  v3.height = 40.0;
  UIGraphicsBeginImageContextWithOptions(v3, 0, 0.0);
  v0 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v1 = blankIcon__blankIcon;
  blankIcon__blankIcon = v0;
}

- (id)getLazyIcon
{
  v8.receiver = self;
  v8.super_class = FASharedServicesSpecifierCell;
  getLazyIcon = [(PSTableCell *)&v8 getLazyIcon];
  v3 = [_FASharedServiceImage alloc];
  cGImage = [getLazyIcon CGImage];
  [getLazyIcon scale];
  v6 = -[_FASharedServiceImage initWithCGImage:scale:orientation:](v3, "initWithCGImage:scale:orientation:", cGImage, [getLazyIcon imageOrientation], v5);

  return v6;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = FASharedServicesSpecifierCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v8 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [(FASharedServicesSpecifierCell *)self imageView:v8.receiver];
  [v5 setContentMode:1];

  detailTextLabel = [(FASharedServicesSpecifierCell *)self detailTextLabel];
  v7 = [specifierCopy propertyForKey:*MEMORY[0x277D40160]];

  [detailTextLabel setText:v7];
  [(FASharedServicesSpecifierCell *)self setNeedsLayout];
}

@end