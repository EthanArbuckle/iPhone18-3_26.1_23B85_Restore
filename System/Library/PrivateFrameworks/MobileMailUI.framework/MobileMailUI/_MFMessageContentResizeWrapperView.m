@interface _MFMessageContentResizeWrapperView
- (_MFMessageContentResizeWrapperView)initWithFrame:(CGRect)a3 snapshotView:(id)a4;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation _MFMessageContentResizeWrapperView

- (void)dealloc
{
  [(UIView *)self->_snapshotView removeFromSuperview];
  v3.receiver = self;
  v3.super_class = _MFMessageContentResizeWrapperView;
  [(_MFMessageContentResizeWrapperView *)&v3 dealloc];
}

- (_MFMessageContentResizeWrapperView)initWithFrame:(CGRect)a3 snapshotView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = _MFMessageContentResizeWrapperView;
  v11 = [(_MFMessageContentResizeWrapperView *)&v14 initWithFrame:x, y, width, height];
  if (v11)
  {
    [v10 frame];
    v11->_snapshotViewYOrigin = v12;
    objc_storeStrong(&v11->_snapshotView, a4);
    [(UIView *)v11->_snapshotView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v11->_snapshotView setAutoresizingMask:0];
    [(_MFMessageContentResizeWrapperView *)v11 setAutoresizingMask:18];
    [(_MFMessageContentResizeWrapperView *)v11 addSubview:v11->_snapshotView];
  }

  return v11;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = _MFMessageContentResizeWrapperView;
  [(_MFMessageContentResizeWrapperView *)&v10 layoutSubviews];
  [(UIView *)self->_snapshotView frame];
  v4 = v3;
  v6 = v5;
  [(_MFMessageContentResizeWrapperView *)self layoutMargins];
  v8 = v7;
  [(_MFMessageContentResizeWrapperView *)self snapshotViewYOrigin];
  [(UIView *)self->_snapshotView setFrame:v8, v9, v4, v6];
}

@end