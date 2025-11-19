@interface HKUITodayCirclePulseView
- (HKUITodayCirclePulseView)initWithFrame:(CGRect)a3;
- (void)_layoutSubviews;
- (void)pulse:(id)a3;
@end

@implementation HKUITodayCirclePulseView

- (HKUITodayCirclePulseView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = HKUITodayCirclePulseView;
  v3 = [(HKUITodayCirclePulseView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] clearColor];
    [(HKUITodayCirclePulseView *)v3 setBackgroundColor:v4];

    [(HKUITodayCirclePulseView *)v3 setClipsToBounds:0];
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    backgroundContainer = v3->_backgroundContainer;
    v3->_backgroundContainer = v5;

    v7 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v3->_backgroundContainer setBackgroundColor:v7];

    v8 = objc_alloc_init(HKUITodayCirclePulseBackground);
    background = v3->_background;
    v3->_background = v8;

    v10 = [MEMORY[0x1E69DC888] clearColor];
    [(HKUITodayCirclePulseBackground *)v3->_background setBackgroundColor:v10];

    [(HKUITodayCirclePulseBackground *)v3->_background setAutoresizingMask:18];
    [(UIView *)v3->_backgroundContainer addSubview:v3->_background];
    [(HKUITodayCirclePulseView *)v3 addSubview:v3->_backgroundContainer];
    v11 = [MEMORY[0x1E6979398] layer];
    dayLabel = v3->_dayLabel;
    v3->_dayLabel = v11;

    v13 = [(HKUITodayCirclePulseView *)v3 layer];
    [v13 addSublayer:v3->_dayLabel];
  }

  return v3;
}

- (void)_layoutSubviews
{
  [(HKUITodayCirclePulseView *)self circleDiameter];
  UIRoundToViewScale();
  v4 = v3;
  [(HKUITodayCirclePulseView *)self circleDiameter];
  v6 = v5;
  [(HKUITodayCirclePulseView *)self circleDiameter];
  v18.origin.x = HKUICeilRectToScreenScale(0.0, 0.0, v6, v7);
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  v19 = CGRectInset(v18, 1.0, 1.0);
  v12 = v19.origin.x;
  v13 = v19.origin.y;
  v14 = v19.size.width;
  v16 = v19.size.height;
  [(CALayer *)self->_dayLabel setFrame:x, y, width, height];
  [(CALayer *)self->_dayLabel setPosition:v4, v4];
  [(UIView *)self->_backgroundContainer setFrame:v12, v13, v14, v16];
  backgroundContainer = self->_backgroundContainer;

  [(UIView *)backgroundContainer setCenter:v4, v4];
}

- (void)pulse:(id)a3
{
  v4 = a3;
  [(HKUITodayCirclePulseView *)self _layoutSubviews];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __34__HKUITodayCirclePulseView_pulse___block_invoke;
  v10[3] = &unk_1E81B55A8;
  v10[4] = self;
  [MEMORY[0x1E69DD250] _animateUsingSpringWithDuration:0x20000 delay:v10 options:0 mass:0.230000004 stiffness:0.0700000003 damping:1.20000005 initialVelocity:400.0 animations:16.0 completion:0.0];
  v5 = MEMORY[0x1E69DD250];
  v8 = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__HKUITodayCirclePulseView_pulse___block_invoke_2;
  v9[3] = &unk_1E81B55A8;
  v9[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__HKUITodayCirclePulseView_pulse___block_invoke_3;
  v7[3] = &unk_1E81B7D20;
  v6 = v4;
  [v5 _animateUsingSpringWithDuration:196608 delay:v9 options:v7 mass:1.28999996 stiffness:0.0 damping:1.20000005 initialVelocity:400.0 animations:16.0 completion:0.0];
}

void __34__HKUITodayCirclePulseView_pulse___block_invoke(uint64_t a1)
{
  v2 = *(MEMORY[0x1E69792E8] + 80);
  *&v7.m31 = *(MEMORY[0x1E69792E8] + 64);
  *&v7.m33 = v2;
  v3 = *(MEMORY[0x1E69792E8] + 112);
  *&v7.m41 = *(MEMORY[0x1E69792E8] + 96);
  *&v7.m43 = v3;
  v4 = *(MEMORY[0x1E69792E8] + 16);
  *&v7.m11 = *MEMORY[0x1E69792E8];
  *&v7.m13 = v4;
  v5 = *(MEMORY[0x1E69792E8] + 48);
  *&v7.m21 = *(MEMORY[0x1E69792E8] + 32);
  *&v7.m23 = v5;
  CATransform3DScale(&v8, &v7, 0.84, 0.84, 1.0);
  v6 = [*(*(a1 + 32) + 408) layer];
  v7 = v8;
  [v6 setTransform:&v7];
}

void __34__HKUITodayCirclePulseView_pulse___block_invoke_2(uint64_t a1)
{
  v2 = *(MEMORY[0x1E69792E8] + 80);
  *&v7.m31 = *(MEMORY[0x1E69792E8] + 64);
  *&v7.m33 = v2;
  v3 = *(MEMORY[0x1E69792E8] + 112);
  *&v7.m41 = *(MEMORY[0x1E69792E8] + 96);
  *&v7.m43 = v3;
  v4 = *(MEMORY[0x1E69792E8] + 16);
  *&v7.m11 = *MEMORY[0x1E69792E8];
  *&v7.m13 = v4;
  v5 = *(MEMORY[0x1E69792E8] + 48);
  *&v7.m21 = *(MEMORY[0x1E69792E8] + 32);
  *&v7.m23 = v5;
  CATransform3DScale(&v8, &v7, 1.19047619, 1.19047619, 1.0);
  v6 = [*(*(a1 + 32) + 416) layer];
  v7 = v8;
  [v6 setTransform:&v7];
}

uint64_t __34__HKUITodayCirclePulseView_pulse___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end