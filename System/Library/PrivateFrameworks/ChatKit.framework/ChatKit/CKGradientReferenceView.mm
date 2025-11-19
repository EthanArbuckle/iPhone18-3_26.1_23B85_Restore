@interface CKGradientReferenceView
- (CGRect)gradientFrame;
- (CKGradientReferenceView)initWithFrame:(CGRect)a3;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setGradientFrame:(CGRect)a3;
@end

@implementation CKGradientReferenceView

- (CGRect)gradientFrame
{
  x = self->_gradientFrame.origin.x;
  y = self->_gradientFrame.origin.y;
  width = self->_gradientFrame.size.width;
  height = self->_gradientFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CKGradientReferenceView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = CKGradientReferenceView;
  v3 = [(CKGradientReferenceView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    p_gradientFrame = &v3->_gradientFrame;
    [(CKGradientReferenceView *)v3 bounds];
    *&p_gradientFrame->origin.x = v6;
    v4->_gradientFrame.origin.y = v7;
    v4->_gradientFrame.size.width = v8;
    v4->_gradientFrame.size.height = v9;
  }

  return v4;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CKGradientReferenceView *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = CKGradientReferenceView;
  [(CKGradientReferenceView *)&v13 setFrame:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(UIView *)self setGradientViewsNeedLayout];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CKGradientReferenceView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = CKGradientReferenceView;
  [(CKGradientReferenceView *)&v13 setBounds:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(UIView *)self setGradientViewsNeedLayout];
  }
}

- (void)setGradientFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_gradientFrame = &self->_gradientFrame;
  if (!CGRectEqualToRect(self->_gradientFrame, a3))
  {
    p_gradientFrame->origin.x = x;
    p_gradientFrame->origin.y = y;
    p_gradientFrame->size.width = width;
    p_gradientFrame->size.height = height;

    [(UIView *)self setGradientViewsNeedLayout];
  }
}

@end