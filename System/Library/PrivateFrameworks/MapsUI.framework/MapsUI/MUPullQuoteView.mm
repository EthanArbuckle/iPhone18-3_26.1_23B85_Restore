@interface MUPullQuoteView
- (void)_expand;
@end

@implementation MUPullQuoteView

- (void)_expand
{
  labelResizedBlock = [(MUExpandingLabel *)self labelResizedBlock];

  if (labelResizedBlock)
  {
    labelResizedBlock2 = [(MUExpandingLabel *)self labelResizedBlock];
    labelResizedBlock2[2]();
  }
}

@end