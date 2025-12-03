@interface NTKHandView
- (id)transitionContainerView;
- (void)_initWithImage:(id)image forDevice:(id)device;
- (void)setColor:(id)color;
- (void)setHandDotColor:(id)color;
- (void)setInlayColor:(id)color;
- (void)setInlayInsets:(UIEdgeInsets)insets;
@end

@implementation NTKHandView

- (void)_initWithImage:(id)image forDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = NTKHandView;
  [(CLKUIHandView *)&v4 _initWithImage:image forDevice:device];
}

- (void)setColor:(id)color
{
  v3.receiver = self;
  v3.super_class = NTKHandView;
  [(CLKUIHandView *)&v3 setColor:color];
}

- (void)setInlayColor:(id)color
{
  v3.receiver = self;
  v3.super_class = NTKHandView;
  [(CLKUIHandView *)&v3 setInlayColor:color];
}

- (void)setInlayInsets:(UIEdgeInsets)insets
{
  v3.receiver = self;
  v3.super_class = NTKHandView;
  [(CLKUIHandView *)&v3 setInlayInsets:insets.top, insets.left, insets.bottom, insets.right];
}

- (void)setHandDotColor:(id)color
{
  v3.receiver = self;
  v3.super_class = NTKHandView;
  [(CLKUIHandView *)&v3 setHandDotColor:color];
}

- (id)transitionContainerView
{
  transitionContainerView = self->_transitionContainerView;
  if (!transitionContainerView)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    [(NTKHandView *)self bounds];
    v5 = [v4 initWithFrame:?];
    v6 = self->_transitionContainerView;
    self->_transitionContainerView = v5;

    [(NTKHandView *)self addSubview:self->_transitionContainerView];
    transitionContainerView = self->_transitionContainerView;
  }

  return transitionContainerView;
}

@end