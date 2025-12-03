@interface CenteredIconDescriptionCollectionViewCell
- (void)layoutSubviews;
@end

@implementation CenteredIconDescriptionCollectionViewCell

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for CenteredIconDescriptionCollectionViewCell();
  v2 = v4.receiver;
  [(CenteredIconDescriptionCollectionViewCell *)&v4 layoutSubviews];
  layer = [v2 layer];
  [layer setCornerRadius_];
}

@end