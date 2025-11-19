@interface _SFUIViewPopoverSourceInfo
- (CGRect)popoverSourceRect;
- (NSString)description;
- (UIView)zoomTransitionSourceView;
- (_SFUIViewPopoverSourceInfo)initWithView:(id)a3 insets:(UIEdgeInsets)a4;
- (_SFUIViewPopoverSourceInfo)initWithView:(id)a3 rect:(CGRect)a4;
@end

@implementation _SFUIViewPopoverSourceInfo

- (_SFUIViewPopoverSourceInfo)initWithView:(id)a3 insets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v10 = a3;
  v15.receiver = self;
  v15.super_class = _SFUIViewPopoverSourceInfo;
  v11 = [(_SFUIViewPopoverSourceInfo *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_view, a3);
    v12->_insets.top = top;
    v12->_insets.left = left;
    v12->_insets.bottom = bottom;
    v12->_insets.right = right;
    v12->_permittedArrowDirections = 15;
    v13 = v12;
  }

  return v12;
}

- (_SFUIViewPopoverSourceInfo)initWithView:(id)a3 rect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  [v9 bounds];
  v14 = [(_SFUIViewPopoverSourceInfo *)self initWithView:v9 insets:SFEdgeInsetsForInsetingRectToRect(v10, v11, v12, v13, x, y, width, height)];

  return v14;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  view = self->_view;
  if (view)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = view;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [(UIView *)v8 center];
    v11 = NSStringFromCGPoint(v17);
    [(UIView *)v8 bounds];
    v12 = NSStringFromCGRect(v18);
    v13 = [v7 stringWithFormat:@"<%@: %p center = %@, bounds = %@>", v10, v8, v11, v12];;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v3 stringWithFormat:@"<%@: %p view = %@>", v5, self, v13];;

  return v14;
}

- (CGRect)popoverSourceRect
{
  [(UIView *)self->_view bounds];
  top = self->_insets.top;
  left = self->_insets.left;
  v6 = v5 + left;
  v8 = top + v7;
  v10 = v9 - (left + self->_insets.right);
  v12 = v11 - (top + self->_insets.bottom);
  result.size.height = v12;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v6;
  return result;
}

- (UIView)zoomTransitionSourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_zoomTransitionSourceView);

  return WeakRetained;
}

@end