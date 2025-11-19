@interface FASharedServicesSpecifierCell
- (id)blankIcon;
- (id)getLazyIcon;
- (void)refreshCellContentsWithSpecifier:(id)a3;
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
  v2 = [(PSTableCell *)&v8 getLazyIcon];
  v3 = [_FASharedServiceImage alloc];
  v4 = [v2 CGImage];
  [v2 scale];
  v6 = -[_FASharedServiceImage initWithCGImage:scale:orientation:](v3, "initWithCGImage:scale:orientation:", v4, [v2 imageOrientation], v5);

  return v6;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v8.receiver = self;
  v8.super_class = FASharedServicesSpecifierCell;
  v4 = a3;
  [(PSTableCell *)&v8 refreshCellContentsWithSpecifier:v4];
  v5 = [(FASharedServicesSpecifierCell *)self imageView:v8.receiver];
  [v5 setContentMode:1];

  v6 = [(FASharedServicesSpecifierCell *)self detailTextLabel];
  v7 = [v4 propertyForKey:*MEMORY[0x277D40160]];

  [v6 setText:v7];
  [(FASharedServicesSpecifierCell *)self setNeedsLayout];
}

@end