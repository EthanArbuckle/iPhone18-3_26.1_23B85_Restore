@interface FLHiddenImageTableCell
- (void)layoutSubviews;
@end

@implementation FLHiddenImageTableCell

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = FLHiddenImageTableCell;
  [(PSTableCell *)&v4 layoutSubviews];
  imageView = [(FLHiddenImageTableCell *)self imageView];
  [imageView setHidden:1];
}

@end