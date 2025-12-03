@interface CKActionMenuItem
+ (id)itemWithImageTemplate:(id)template tintColor:(id)color highlightedTintColor:(id)tintColor target:(id)target action:(SEL)action;
- (CKActionMenuItem)init;
- (CKActionMenuItem)initWithView:(id)view label:(id)label target:(id)target action:(SEL)action;
- (SEL)action;
- (id)description;
- (void)sendAction;
- (void)setAction:(SEL)action;
- (void)setEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)updateForState:(int64_t)state touchInside:(BOOL)inside;
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

+ (id)itemWithImageTemplate:(id)template tintColor:(id)color highlightedTintColor:(id)tintColor target:(id)target action:(SEL)action
{
  templateCopy = template;
  targetCopy = target;
  tintColorCopy = tintColor;
  colorCopy = color;
  if ([templateCopy renderingMode] != 2)
  {
    v15 = [templateCopy imageWithRenderingMode:2];

    templateCopy = v15;
  }

  v16 = [[CKActionMenuItemImageView alloc] initWithImage:templateCopy tintColor:colorCopy highlightedTintColor:tintColorCopy];

  v17 = [objc_alloc(objc_opt_class()) initWithView:v16 label:0 target:targetCopy action:action];

  return v17;
}

- (CKActionMenuItem)initWithView:(id)view label:(id)label target:(id)target action:(SEL)action
{
  viewCopy = view;
  labelCopy = label;
  targetCopy = target;
  v20.receiver = self;
  v20.super_class = CKActionMenuItem;
  v13 = [(CKActionMenuItem *)&v20 init];
  v14 = v13;
  if (v13)
  {
    [(CKActionMenuItem *)v13 setView:viewCopy];
    [(CKActionMenuItem *)v14 setLabel:labelCopy];
    [(CKActionMenuItem *)v14 setTarget:targetCopy];
    [(CKActionMenuItem *)v14 setAction:action];
    v14->_enabled = 1;
    if (objc_opt_respondsToSelector())
    {
      [viewCopy setEnabled:-[CKActionMenuItem isEnabled](v14 animated:{"isEnabled"), 0}];
    }

    if (objc_opt_respondsToSelector())
    {
      [viewCopy setHighlighted:-[CKActionMenuItem isHighlighted](v14 animated:{"isHighlighted"), 0}];
    }

    if (objc_opt_respondsToSelector())
    {
      [viewCopy setSelected:-[CKActionMenuItem isSelected](v14 animated:{"isSelected"), 0}];
    }

    if (objc_opt_respondsToSelector())
    {
      [labelCopy setEnabled:-[CKActionMenuItem isEnabled](v14 animated:{"isEnabled"), 0}];
    }

    if (objc_opt_respondsToSelector())
    {
      [labelCopy setHighlighted:-[CKActionMenuItem isHighlighted](v14 animated:{"isHighlighted"), 0}];
    }

    if (objc_opt_respondsToSelector())
    {
      [labelCopy setSelected:-[CKActionMenuItem isSelected](v14 animated:{"isSelected"), 0}];
    }

    layer = [labelCopy layer];
    LODWORD(v16) = 0.75;
    [layer setShadowOpacity:v16];

    layer2 = [labelCopy layer];
    [layer2 setShadowOffset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];

    layer3 = [labelCopy layer];
    [layer3 setShadowRadius:3.0];
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

- (void)setEnabled:(BOOL)enabled animated:(BOOL)animated
{
  if (self->_enabled != enabled)
  {
    animatedCopy = animated;
    enabledCopy = enabled;
    self->_enabled = enabled;
    view = [(CKActionMenuItem *)self view];
    if (objc_opt_respondsToSelector())
    {
      [view setEnabled:enabledCopy animated:animatedCopy];
    }

    label = [(CKActionMenuItem *)self label];
    if (objc_opt_respondsToSelector())
    {
      [label setEnabled:enabledCopy animated:animatedCopy];
    }
  }
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  if (self->_highlighted != highlighted)
  {
    animatedCopy = animated;
    highlightedCopy = highlighted;
    self->_highlighted = highlighted;
    view = [(CKActionMenuItem *)self view];
    if (objc_opt_respondsToSelector())
    {
      [view setHighlighted:highlightedCopy animated:animatedCopy];
    }

    label = [(CKActionMenuItem *)self label];
    if (objc_opt_respondsToSelector())
    {
      [label setHighlighted:highlightedCopy animated:animatedCopy];
    }
  }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  if (self->_selected != selected)
  {
    animatedCopy = animated;
    selectedCopy = selected;
    self->_selected = selected;
    view = [(CKActionMenuItem *)self view];
    if (objc_opt_respondsToSelector())
    {
      [view setSelected:selectedCopy animated:animatedCopy];
    }

    label = [(CKActionMenuItem *)self label];
    if (objc_opt_respondsToSelector())
    {
      [label setSelected:selectedCopy animated:animatedCopy];
    }
  }
}

- (void)updateForState:(int64_t)state touchInside:(BOOL)inside
{
  insideCopy = inside;
  if ((state - 1) < 2)
  {
    insideCopy2 = inside;
    v7 = 1;
LABEL_6:

    [(CKActionMenuItem *)self setHighlighted:insideCopy2 animated:v7];
    return;
  }

  if (state != 3)
  {
    if (state != 4)
    {
      return;
    }

    insideCopy2 = 0;
    v7 = 0;
    goto LABEL_6;
  }

  [(CKActionMenuItem *)self setHighlighted:0 animated:1];
  if (insideCopy)
  {

    [(CKActionMenuItem *)self sendAction];
  }
}

- (void)sendAction
{
  if ([(CKActionMenuItem *)self action])
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    action = [(CKActionMenuItem *)self action];
    target = [(CKActionMenuItem *)self target];
    [mEMORY[0x1E69DC668] sendAction:action to:target from:self forEvent:0];
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

- (void)setAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_action = actionCopy;
}

@end