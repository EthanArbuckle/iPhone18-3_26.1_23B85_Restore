@interface CKTableViewCellActionButton
- (CGSize)sizeThatFits:(CGSize)fits;
@end

@implementation CKTableViewCellActionButton

- (CGSize)sizeThatFits:(CGSize)fits
{
  v6.receiver = self;
  v6.super_class = CKTableViewCellActionButton;
  [(CKTableViewCellActionButton *)&v6 sizeThatFits:fits.width, fits.height];
  v5 = fmax(v4, 82.0);
  result.height = v3;
  result.width = v5;
  return result;
}

@end