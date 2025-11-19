@interface SFVibrantSeparatorView
- (SFVibrantSeparatorView)initWithFrame:(CGRect)a3;
@end

@implementation SFVibrantSeparatorView

- (SFVibrantSeparatorView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = SFVibrantSeparatorView;
  v3 = [(SFVibrantSeparatorView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] whiteColor];
    v5 = [(SFVibrantSeparatorView *)v3 contentView];
    [v5 setBackgroundColor:v4];

    v6 = MEMORY[0x1E69DD248];
    v7 = [MEMORY[0x1E69DC730] effectWithStyle:8];
    v8 = [v6 effectForBlurEffect:v7 style:7];
    [(SFVibrantSeparatorView *)v3 setEffect:v8];

    v9 = v3;
  }

  return v3;
}

@end