@interface SRHostedJindoPresentableAccessoryView
- (CGSize)compactSize;
- (void)setFrame:(CGRect)frame;
@end

@implementation SRHostedJindoPresentableAccessoryView

- (void)setFrame:(CGRect)frame
{
  v3.receiver = self;
  v3.super_class = SRHostedJindoPresentableAccessoryView;
  [(SRHostedJindoPresentableAccessoryView *)&v3 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (CGSize)compactSize
{
  width = self->_compactSize.width;
  height = self->_compactSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end