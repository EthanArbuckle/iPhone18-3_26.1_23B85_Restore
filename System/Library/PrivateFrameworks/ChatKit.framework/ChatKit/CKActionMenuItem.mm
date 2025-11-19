@interface CKActionMenuItem
+ (id)itemWithImageTemplate:(id)a3 tintColor:(id)a4 highlightedTintColor:(id)a5 target:(id)a6 action:(SEL)a7;
- (CKActionMenuItem)init;
- (CKActionMenuItem)initWithView:(id)a3 label:(id)a4 target:(id)a5 action:(SEL)a6;
- (SEL)action;
- (id)description;
- (void)sendAction;
- (void)setAction:(SEL)a3;
- (void)setEnabled:(BOOL)a3 animated:(BOOL)a4;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)updateForState:(int64_t)a3 touchInside:(BOOL)a4;
@end

@implementation CKActionMenuItem

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CKActionMenuItem;
  v4 = [(CKActionMenuItem *)&v8 description];
  v5 = NSStringFromSelector([(CKActionMenuItem *)self action]);
  v6 = [v3 stringWithFormat:@"%@ action: %@ enabled: %d highlighted: %d selected: %d", v4, v5, -[CKActionMenuItem isEnabled](self, "isEnabled"), -[CKActionMenuItem isHighlighted](self, "isHighlighted"), -[CKActionMenuItem isSelected](self, "isSelected")];

  return v6;
}

+ (id)itemWithImageTemplate:(id)a3 tintColor:(id)a4 highlightedTintColor:(id)a5 target:(id)a6 action:(SEL)a7
{
  v11 = a3;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  if ([v11 renderingMode] != 2)
  {
    v15 = [v11 imageWithRenderingMode:2];

    v11 = v15;
  }

  v16 = [[CKActionMenuItemImageView alloc] initWithImage:v11 tintColor:v14 highlightedTintColor:v13];

  v17 = [objc_alloc(objc_opt_class()) initWithView:v16 label:0 target:v12 action:a7];

  return v17;
}

- (CKActionMenuItem)initWithView:(id)a3 label:(id)a4 target:(id)a5 action:(SEL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v20.receiver = self;
  v20.super_class = CKActionMenuItem;
  v13 = [(CKActionMenuItem *)&v20 init];
  v14 = v13;
  if (v13)
  {
    [(CKActionMenuItem *)v13 setView:v10];
    [(CKActionMenuItem *)v14 setLabel:v11];
    [(CKActionMenuItem *)v14 setTarget:v12];
    [(CKActionMenuItem *)v14 setAction:a6];
    v14->_enabled = 1;
    if (objc_opt_respondsToSelector())
    {
      [v10 setEnabled:-[CKActionMenuItem isEnabled](v14 animated:{"isEnabled"), 0}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v10 setHighlighted:-[CKActionMenuItem isHighlighted](v14 animated:{"isHighlighted"), 0}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v10 setSelected:-[CKActionMenuItem isSelected](v14 animated:{"isSelected"), 0}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v11 setEnabled:-[CKActionMenuItem isEnabled](v14 animated:{"isEnabled"), 0}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v11 setHighlighted:-[CKActionMenuItem isHighlighted](v14 animated:{"isHighlighted"), 0}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v11 setSelected:-[CKActionMenuItem isSelected](v14 animated:{"isSelected"), 0}];
    }

    v15 = [v11 layer];
    LODWORD(v16) = 0.75;
    [v15 setShadowOpacity:v16];

    v17 = [v11 layer];
    [v17 setShadowOffset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];

    v18 = [v11 layer];
    [v18 setShadowRadius:3.0];
  }

  return v14;
}

- (CKActionMenuItem)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[CKActionMenuItem init]"];
  [v3 raise:v4 format:{@"Don't call %@. Use the designated initializer instead.", v5}];

  return 0;
}

- (void)setEnabled:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_enabled != a3)
  {
    v5 = a4;
    v6 = a3;
    self->_enabled = a3;
    v9 = [(CKActionMenuItem *)self view];
    if (objc_opt_respondsToSelector())
    {
      [v9 setEnabled:v6 animated:v5];
    }

    v8 = [(CKActionMenuItem *)self label];
    if (objc_opt_respondsToSelector())
    {
      [v8 setEnabled:v6 animated:v5];
    }
  }
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_highlighted != a3)
  {
    v5 = a4;
    v6 = a3;
    self->_highlighted = a3;
    v9 = [(CKActionMenuItem *)self view];
    if (objc_opt_respondsToSelector())
    {
      [v9 setHighlighted:v6 animated:v5];
    }

    v8 = [(CKActionMenuItem *)self label];
    if (objc_opt_respondsToSelector())
    {
      [v8 setHighlighted:v6 animated:v5];
    }
  }
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_selected != a3)
  {
    v5 = a4;
    v6 = a3;
    self->_selected = a3;
    v9 = [(CKActionMenuItem *)self view];
    if (objc_opt_respondsToSelector())
    {
      [v9 setSelected:v6 animated:v5];
    }

    v8 = [(CKActionMenuItem *)self label];
    if (objc_opt_respondsToSelector())
    {
      [v8 setSelected:v6 animated:v5];
    }
  }
}

- (void)updateForState:(int64_t)a3 touchInside:(BOOL)a4
{
  v4 = a4;
  if ((a3 - 1) < 2)
  {
    v6 = a4;
    v7 = 1;
LABEL_6:

    [(CKActionMenuItem *)self setHighlighted:v6 animated:v7];
    return;
  }

  if (a3 != 3)
  {
    if (a3 != 4)
    {
      return;
    }

    v6 = 0;
    v7 = 0;
    goto LABEL_6;
  }

  [(CKActionMenuItem *)self setHighlighted:0 animated:1];
  if (v4)
  {

    [(CKActionMenuItem *)self sendAction];
  }
}

- (void)sendAction
{
  if ([(CKActionMenuItem *)self action])
  {
    v5 = [MEMORY[0x1E69DC668] sharedApplication];
    v3 = [(CKActionMenuItem *)self action];
    v4 = [(CKActionMenuItem *)self target];
    [v5 sendAction:v3 to:v4 from:self forEvent:0];
  }
}

- (SEL)action
{
  if (self->_action)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

- (void)setAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_action = v3;
}

@end