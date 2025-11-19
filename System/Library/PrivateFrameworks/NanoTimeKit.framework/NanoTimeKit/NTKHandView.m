@interface NTKHandView
- (id)transitionContainerView;
- (void)_initWithImage:(id)a3 forDevice:(id)a4;
- (void)setColor:(id)a3;
- (void)setHandDotColor:(id)a3;
- (void)setInlayColor:(id)a3;
- (void)setInlayInsets:(UIEdgeInsets)a3;
@end

@implementation NTKHandView

- (void)_initWithImage:(id)a3 forDevice:(id)a4
{
  v4.receiver = self;
  v4.super_class = NTKHandView;
  [(CLKUIHandView *)&v4 _initWithImage:a3 forDevice:a4];
}

- (void)setColor:(id)a3
{
  v3.receiver = self;
  v3.super_class = NTKHandView;
  [(CLKUIHandView *)&v3 setColor:a3];
}

- (void)setInlayColor:(id)a3
{
  v3.receiver = self;
  v3.super_class = NTKHandView;
  [(CLKUIHandView *)&v3 setInlayColor:a3];
}

- (void)setInlayInsets:(UIEdgeInsets)a3
{
  v3.receiver = self;
  v3.super_class = NTKHandView;
  [(CLKUIHandView *)&v3 setInlayInsets:a3.top, a3.left, a3.bottom, a3.right];
}

- (void)setHandDotColor:(id)a3
{
  v3.receiver = self;
  v3.super_class = NTKHandView;
  [(CLKUIHandView *)&v3 setHandDotColor:a3];
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