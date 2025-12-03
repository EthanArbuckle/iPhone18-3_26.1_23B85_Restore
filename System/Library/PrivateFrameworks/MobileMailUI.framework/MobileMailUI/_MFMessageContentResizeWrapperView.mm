@interface _MFMessageContentResizeWrapperView
- (_MFMessageContentResizeWrapperView)initWithFrame:(CGRect)frame snapshotView:(id)view;
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

- (_MFMessageContentResizeWrapperView)initWithFrame:(CGRect)frame snapshotView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  v14.receiver = self;
  v14.super_class = _MFMessageContentResizeWrapperView;
  height = [(_MFMessageContentResizeWrapperView *)&v14 initWithFrame:x, y, width, height];
  if (height)
  {
    [viewCopy frame];
    height->_snapshotViewYOrigin = v12;
    objc_storeStrong(&height->_snapshotView, view);
    [(UIView *)height->_snapshotView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)height->_snapshotView setAutoresizingMask:0];
    [(_MFMessageContentResizeWrapperView *)height setAutoresizingMask:18];
    [(_MFMessageContentResizeWrapperView *)height addSubview:height->_snapshotView];
  }

  return height;
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