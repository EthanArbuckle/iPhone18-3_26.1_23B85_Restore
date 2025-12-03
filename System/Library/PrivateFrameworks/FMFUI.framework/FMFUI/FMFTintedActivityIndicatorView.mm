@interface FMFTintedActivityIndicatorView
- (void)awakeFromNib;
- (void)tintColorDidChange;
@end

@implementation FMFTintedActivityIndicatorView

- (void)awakeFromNib
{
  v4.receiver = self;
  v4.super_class = FMFTintedActivityIndicatorView;
  [(FMFTintedActivityIndicatorView *)&v4 awakeFromNib];
  tintColor = [(FMFTintedActivityIndicatorView *)self tintColor];
  [(FMFTintedActivityIndicatorView *)self setColor:tintColor];
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = FMFTintedActivityIndicatorView;
  [(FMFTintedActivityIndicatorView *)&v4 tintColorDidChange];
  tintColor = [(FMFTintedActivityIndicatorView *)self tintColor];
  [(FMFTintedActivityIndicatorView *)self setColor:tintColor];
}

@end