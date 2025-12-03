@interface SpatialProfileTableCell
- (SpatialProfileTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation SpatialProfileTableCell

- (SpatialProfileTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = SpatialProfileTableCell;
  return [(PSTableCell *)&v6 initWithStyle:1 reuseIdentifier:identifier specifier:specifier];
}

@end