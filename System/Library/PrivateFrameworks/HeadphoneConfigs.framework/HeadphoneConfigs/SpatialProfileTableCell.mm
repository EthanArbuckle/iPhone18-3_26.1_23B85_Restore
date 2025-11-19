@interface SpatialProfileTableCell
- (SpatialProfileTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
@end

@implementation SpatialProfileTableCell

- (SpatialProfileTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v6.receiver = self;
  v6.super_class = SpatialProfileTableCell;
  return [(PSTableCell *)&v6 initWithStyle:1 reuseIdentifier:a4 specifier:a5];
}

@end