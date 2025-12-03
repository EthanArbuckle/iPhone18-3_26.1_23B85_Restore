@interface CSRemoteContentModalView
- (CSRemoteContentModalView)initWithFrame:(CGRect)frame;
- (CSRemoteModalContentViewTouchDelegate)touchDelegate;
- (void)setTouchDelegate:(id)delegate;
@end

@implementation CSRemoteContentModalView

- (CSRemoteContentModalView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11.receiver = self;
  v11.super_class = CSRemoteContentModalView;
  v7 = [(CSModalView *)&v11 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D75220]) initWithFrame:{x, y, width, height}];
    backgroundDismissButton = v7->_backgroundDismissButton;
    v7->_backgroundDismissButton = v8;

    [(CSRemoteContentModalView *)v7 addSubview:v7->_backgroundDismissButton];
    [(CSRemoteContentModalView *)v7 sendSubviewToBack:v7->_backgroundDismissButton];
  }

  return v7;
}

- (void)setTouchDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_touchDelegate);
  if (WeakRetained != obj)
  {
    if (WeakRetained)
    {
      [(UIButton *)self->_backgroundDismissButton removeTarget:WeakRetained action:sel_didReceiveTouch forControlEvents:64];
    }

    objc_storeWeak(&self->_touchDelegate, obj);
    [(UIButton *)self->_backgroundDismissButton addTarget:obj action:sel_didReceiveTouch forControlEvents:64];
  }
}

- (CSRemoteModalContentViewTouchDelegate)touchDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_touchDelegate);

  return WeakRetained;
}

@end