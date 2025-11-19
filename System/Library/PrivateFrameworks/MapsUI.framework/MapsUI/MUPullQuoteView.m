@interface MUPullQuoteView
- (void)_expand;
@end

@implementation MUPullQuoteView

- (void)_expand
{
  v3 = [(MUExpandingLabel *)self labelResizedBlock];

  if (v3)
  {
    v4 = [(MUExpandingLabel *)self labelResizedBlock];
    v4[2]();
  }
}

@end