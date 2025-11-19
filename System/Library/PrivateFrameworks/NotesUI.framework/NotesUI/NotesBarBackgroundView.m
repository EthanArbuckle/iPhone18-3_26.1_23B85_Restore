@interface NotesBarBackgroundView
- (NotesBarBackgroundView)initWithCoder:(id)a3;
- (NotesBarBackgroundView)initWithFrame:(CGRect)a3;
- (void)_setOverrideUserInterfaceStyle:(int64_t)a3;
- (void)commonInit;
- (void)registerForTraitChanges;
- (void)setColor:(id)a3;
- (void)updateColor;
@end

@implementation NotesBarBackgroundView

- (NotesBarBackgroundView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = NotesBarBackgroundView;
  v3 = [(NotesBarBackgroundView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(NotesBarBackgroundView *)v3 commonInit];
  }

  return v4;
}

- (NotesBarBackgroundView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = NotesBarBackgroundView;
  v3 = [(NotesBarBackgroundView *)&v6 initWithCoder:a3];
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
  v3 = [(NotesBarBackgroundView *)self layer];
  [v3 setAllowsGroupOpacity:0];

  [(NotesBarBackgroundView *)self setClipsToBounds:1];

  [(NotesBarBackgroundView *)self registerForTraitChanges];
}

- (void)setColor:(id)a3
{
  objc_storeStrong(&self->_color, a3);

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
    v22 = ;
    v19 = [(UIView *)self ic_appearanceInfo];
    [v19 navigationBarAlpha];
    v20 = [v22 colorWithAlphaComponent:?];
    [(NotesBarBackgroundView *)self setBackgroundColor:v20];

    v21 = [(NotesBarBackgroundView *)self blurView];
    [v21 removeFromSuperview];

    goto LABEL_11;
  }

  v3 = [MEMORY[0x1E69DC888] clearColor];
  [(NotesBarBackgroundView *)self setBackgroundColor:v3];

  v4 = [(NotesBarBackgroundView *)self blurView];

  if (!v4)
  {
    v5 = [MEMORY[0x1E69DC730] effectWithStyle:10];
    v6 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v5];
    [(NotesBarBackgroundView *)self setBlurView:v6];

    [(NotesBarBackgroundView *)self frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(NotesBarBackgroundView *)self blurView];
    [v15 setFrame:{v8, v10, v12, v14}];

    v16 = [(NotesBarBackgroundView *)self blurView];
    [v16 setAutoresizingMask:18];
  }

  v17 = [(NotesBarBackgroundView *)self blurView];
  v18 = [v17 superview];

  if (!v18)
  {
    v22 = [(NotesBarBackgroundView *)self blurView];
    [(NotesBarBackgroundView *)self addSubview:?];
LABEL_11:
  }
}

- (void)_setOverrideUserInterfaceStyle:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = NotesBarBackgroundView;
  [(NotesBarBackgroundView *)&v4 _setOverrideUserInterfaceStyle:a3];
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