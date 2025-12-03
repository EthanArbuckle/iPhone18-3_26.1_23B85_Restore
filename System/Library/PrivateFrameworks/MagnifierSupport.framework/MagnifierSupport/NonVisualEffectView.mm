@interface NonVisualEffectView
- (NonVisualEffectView)initWithCoder:(id)coder;
- (NonVisualEffectView)initWithEffect:(id)effect;
- (NonVisualEffectView)initWithFrame:(CGRect)frame;
- (UIView)contentView;
- (_UIVisualEffectBackdropView)_captureView;
- (void)_setCornerRadius:(double)radius;
- (void)setEffect:(id)effect;
@end

@implementation NonVisualEffectView

- (NonVisualEffectView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = [(NonVisualEffectView *)self initWithEffect:0];
  v8 = v7;
  if (v7)
  {
    [(NonVisualEffectView *)v7 setFrame:x, y, width, height];
  }

  return v8;
}

- (NonVisualEffectView)initWithEffect:(id)effect
{
  effectCopy = effect;
  v8.receiver = self;
  v8.super_class = NonVisualEffectView;
  v5 = [(NonVisualEffectView *)&v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    [(NonVisualEffectView *)v5 setAutoresizesSubviews:1];
    [(NonVisualEffectView *)v6 setEffect:effectCopy];
  }

  return v6;
}

- (NonVisualEffectView)initWithCoder:(id)coder
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"-[%@ %@] not implemeneted", v8, v9}];

  return [(NonVisualEffectView *)self initWithEffect:0];
}

- (UIView)contentView
{
  contentView = self->_contentView;
  if (!contentView)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    [(NonVisualEffectView *)self bounds];
    v5 = [v4 initWithFrame:?];
    v6 = self->_contentView;
    self->_contentView = v5;

    [(UIView *)self->_contentView setClipsToBounds:1];
    [(UIView *)self->_contentView setAutoresizingMask:18];
    [(UIView *)self->_contentView _setContinuousCornerRadius:self->_cornerRadius];
    [(NonVisualEffectView *)self addSubview:self->_contentView];
    contentView = self->_contentView;
  }

  return contentView;
}

- (void)setEffect:(id)effect
{
  effectCopy = effect;
  effect = self->_effect;
  if (effect != effectCopy)
  {
    v15 = effectCopy;
    v6 = [(UIVisualEffect *)effect isEqual:effectCopy];
    effectCopy = v15;
    if ((v6 & 1) == 0)
    {
      v7 = [(UIVisualEffect *)v15 copy];
      v8 = self->_effect;
      self->_effect = v7;

      backgroundView = self->_backgroundView;
      if (self->_effect)
      {
        if (!backgroundView)
        {
          v11 = objc_alloc(MEMORY[0x277D75D18]);
          [(NonVisualEffectView *)self bounds];
          v12 = [v11 initWithFrame:?];
          v13 = self->_backgroundView;
          self->_backgroundView = v12;

          [(UIView *)self->_backgroundView setAutoresizingMask:18];
          [(UIView *)self->_backgroundView _setContinuousCornerRadius:self->_cornerRadius];
          [(UIView *)self->_backgroundView setClipsToBounds:1];
          v14 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.600000024];
          [(UIView *)self->_backgroundView setBackgroundColor:v14];

          [(NonVisualEffectView *)self insertSubview:self->_backgroundView atIndex:0];
          goto LABEL_9;
        }

        v10 = 0;
      }

      else
      {
        v10 = 1;
      }

      [(UIView *)backgroundView setHidden:v10];
LABEL_9:
      effectCopy = v15;
    }
  }
}

- (void)_setCornerRadius:(double)radius
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    subviews = [(NonVisualEffectView *)self subviews];
    v5 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(subviews);
          }

          [*(*(&v9 + 1) + 8 * i) _setContinuousCornerRadius:radius];
        }

        v6 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (_UIVisualEffectBackdropView)_captureView
{
  WeakRetained = objc_loadWeakRetained(&self->__captureView);

  return WeakRetained;
}

@end