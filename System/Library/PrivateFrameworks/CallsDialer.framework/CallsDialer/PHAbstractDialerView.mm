@interface PHAbstractDialerView
- (id)senderIdentityMenuForDialerField:(id)a3 selectedSenderIdentity:(id)a4;
- (void)dealloc;
- (void)dialerField:(id)a3 stringWasPasted:(id)a4;
- (void)dialerLCDFieldTextDidChange:(id)a3;
- (void)updateIDSStatus;
@end

@implementation PHAbstractDialerView

- (void)dealloc
{
  [(DialerLCDFieldProtocol *)self->_lcdView setDelegate:0];
  v3.receiver = self;
  v3.super_class = PHAbstractDialerView;
  [(PHAbstractDialerView *)&v3 dealloc];
}

- (void)dialerLCDFieldTextDidChange:(id)a3
{
  if (self->_lcdView == a3)
  {
    delegate = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      v5 = self->_delegate;

      [(DialerViewDelegate *)v5 dialerViewTextDidChange:self];
    }
  }
}

- (void)dialerField:(id)a3 stringWasPasted:(id)a4
{
  v6 = a4;
  if (self->_lcdView == a3)
  {
    delegate = self->_delegate;
    v8 = v6;
    if (objc_opt_respondsToSelector())
    {
      [(DialerViewDelegate *)self->_delegate dialerView:self stringWasPasted:v8];
    }
  }

  MEMORY[0x2821F9730]();
}

- (id)senderIdentityMenuForDialerField:(id)a3 selectedSenderIdentity:(id)a4
{
  v6 = a4;
  if (self->_lcdView == a3 && (delegate = self->_delegate, (objc_opt_respondsToSelector() & 1) != 0))
  {
    v8 = [(DialerViewDelegate *)self->_delegate senderIdentityMenuForDialerView:self selectedSenderIdentity:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateIDSStatus
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v4 = self->_delegate;

    [(DialerViewDelegate *)v4 updateIDSStatus];
  }
}

@end