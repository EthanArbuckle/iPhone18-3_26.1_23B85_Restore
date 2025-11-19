@interface CKCustomButton
- (void)layoutSubviews;
@end

@implementation CKCustomButton

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = CKCustomButton;
  [(CKCustomButton *)&v2 layoutSubviews];
}

@end