@interface NotesBarBackgroundView
- (NotesBarBackgroundView)initWithCoder:(id)coder;
- (NotesBarBackgroundView)initWithFrame:(CGRect)frame;
- (void)_setOverrideUserInterfaceStyle:(int64_t)style;
- (void)commonInit;
- (void)registerForTraitChanges;
- (void)setColor:(id)color;
- (void)updateColor;
@end

@implementation NotesBarBackgroundView

- (NotesBarBackgroundView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = NotesBarBackgroundView;
  v3 = [(NotesBarBackgroundView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(NotesBarBackgroundView *)v3 commonInit];
  }

  return v4;
}

- (NotesBarBackgroundView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = NotesBarBackgroundView;
  v3 = [(NotesBarBackgroundView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(NotesBarBackgroundView *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  [(NotesBarBackgroundView *)self setUserInteractionEnabled:0];
  layer = [(NotesBarBackgroundView *)self layer];
  [layer setAllowsGroupOpacity:0];

  [(NotesBarBackgroundView *)self setClipsToBounds:1];

  [(NotesBarBackgroundView *)self registerForTraitChanges];
}

- (void)setColor:(id)color
{
  objc_storeStrong(&self->_color, color);

  [(NotesBarBackgroundView *)self updateColor];
}

- (void)updateColor
{
  if (![(NotesBarBackgroundView *)self hasBlur])
  {
    if ([(NotesBarBackgroundView *)self _overrideUserInterfaceStyle]== 1)
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }

    else
    {
      [(NotesBarBackgroundView *)self color];
    }
    blurView6 = ;
    ic_appearanceInfo = [(UIView *)self ic_appearanceInfo];
    [ic_appearanceInfo navigationBarAlpha];
    v20 = [blurView6 colorWithAlphaComponent:?];
    [(NotesBarBackgroundView *)self setBackgroundColor:v20];

    blurView = [(NotesBarBackgroundView *)self blurView];
    [blurView removeFromSuperview];

    goto LABEL_11;
  }

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(NotesBarBackgroundView *)self setBackgroundColor:clearColor];

  blurView2 = [(NotesBarBackgroundView *)self blurView];

  if (!blurView2)
  {
    v5 = [MEMORY[0x1E69DC730] effectWithStyle:10];
    v6 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v5];
    [(NotesBarBackgroundView *)self setBlurView:v6];

    [(NotesBarBackgroundView *)self frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    blurView3 = [(NotesBarBackgroundView *)self blurView];
    [blurView3 setFrame:{v8, v10, v12, v14}];

    blurView4 = [(NotesBarBackgroundView *)self blurView];
    [blurView4 setAutoresizingMask:18];
  }

  blurView5 = [(NotesBarBackgroundView *)self blurView];
  superview = [blurView5 superview];

  if (!superview)
  {
    blurView6 = [(NotesBarBackgroundView *)self blurView];
    [(NotesBarBackgroundView *)self addSubview:?];
LABEL_11:
  }
}

- (void)_setOverrideUserInterfaceStyle:(int64_t)style
{
  v4.receiver = self;
  v4.super_class = NotesBarBackgroundView;
  [(NotesBarBackgroundView *)&v4 _setOverrideUserInterfaceStyle:style];
  [(NotesBarBackgroundView *)self updateColor];
}

- (void)registerForTraitChanges
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v4 = [(NotesBarBackgroundView *)self registerForTraitChanges:v3 withAction:sel_updateColor];
}

@end