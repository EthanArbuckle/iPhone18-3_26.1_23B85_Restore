@interface CAMModeSelectTitleView
- (CAMModeSelectTitleView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setTextColor:(id)color;
@end

@implementation CAMModeSelectTitleView

- (CAMModeSelectTitleView)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = CAMModeSelectTitleView;
  v3 = [(CAMModeSelectTitleView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    textColor = v3->_textColor;
    v3->_textColor = whiteColor;

    v6 = objc_alloc(MEMORY[0x1E69DCC10]);
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    titleLabel = v3->__titleLabel;
    v3->__titleLabel = v7;

    [(UILabel *)v3->__titleLabel setTextAlignment:0];
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v3->__titleLabel setTextColor:whiteColor2];

    v10 = [MEMORY[0x1E69DB878] systemFontOfSize:72.0 weight:*MEMORY[0x1E69DB958]];
    [(UILabel *)v3->__titleLabel setFont:v10];

    [(CAMModeSelectTitleView *)v3 addSubview:v3->__titleLabel];
    v11 = v3;
  }

  return v3;
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if (self->_textColor != colorCopy)
  {
    objc_storeStrong(&self->_textColor, color);
    titleLabel = self->__titleLabel;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__CAMModeSelectTitleView_setTextColor___block_invoke;
    v7[3] = &unk_1E76F77B0;
    v7[4] = self;
    [MEMORY[0x1E69DD250] transitionWithView:titleLabel duration:5242880 options:v7 animations:0 completion:0.3];
  }
}

void __39__CAMModeSelectTitleView_setTextColor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[51];
  v3 = [v1 _titleLabel];
  [v3 setTextColor:v2];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = CAMModeSelectTitleView;
  [(CAMModeSelectTitleView *)&v12 layoutSubviews];
  [(CAMModeSelectTitleView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _titleLabel = [(CAMModeSelectTitleView *)self _titleLabel];
  [_titleLabel setFrame:{v4, v6, v8, v10}];
}

@end