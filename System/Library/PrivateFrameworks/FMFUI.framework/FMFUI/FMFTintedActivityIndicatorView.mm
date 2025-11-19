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
  v3 = [(FMFTintedActivityIndicatorView *)self tintColor];
  [(FMFTintedActivityIndicatorView *)self setColor:v3];
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = FMFTintedActivityIndicatorView;
  [(FMFTintedActivityIndicatorView *)&v4 tintColorDidChange];
  v3 = [(FMFTintedActivityIndicatorView *)self tintColor];
  [(FMFTintedActivityIndicatorView *)self setColor:v3];
}

@end