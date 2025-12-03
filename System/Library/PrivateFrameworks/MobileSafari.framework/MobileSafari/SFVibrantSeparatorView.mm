@interface SFVibrantSeparatorView
- (SFVibrantSeparatorView)initWithFrame:(CGRect)frame;
@end

@implementation SFVibrantSeparatorView

- (SFVibrantSeparatorView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = SFVibrantSeparatorView;
  v3 = [(SFVibrantSeparatorView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    contentView = [(SFVibrantSeparatorView *)v3 contentView];
    [contentView setBackgroundColor:whiteColor];

    v6 = MEMORY[0x1E69DD248];
    v7 = [MEMORY[0x1E69DC730] effectWithStyle:8];
    v8 = [v6 effectForBlurEffect:v7 style:7];
    [(SFVibrantSeparatorView *)v3 setEffect:v8];

    v9 = v3;
  }

  return v3;
}

@end