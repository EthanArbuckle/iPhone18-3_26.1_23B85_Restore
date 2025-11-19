@interface CKTableViewCellActionButton
- (CGSize)sizeThatFits:(CGSize)a3;
@end

@implementation CKTableViewCellActionButton

- (CGSize)sizeThatFits:(CGSize)a3
{
  v6.receiver = self;
  v6.super_class = CKTableViewCellActionButton;
  [(CKTableViewCellActionButton *)&v6 sizeThatFits:a3.width, a3.height];
  v5 = fmax(v4, 82.0);
  result.height = v3;
  result.width = v5;
  return result;
}

@end