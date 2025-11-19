@interface BTDevicePickerRemoteViewController
- (BTDevicePickerRemoteViewControllerHost)_delegate;
- (void)didDismissWithResult:(int64_t)a3 deviceAddress:(id)a4;
- (void)discoveredDevice:(id)a3 deviceAddress:(id)a4;
@end

@implementation BTDevicePickerRemoteViewController

- (void)didDismissWithResult:(int64_t)a3 deviceAddress:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didDismissWithResult:a3 deviceAddress:v6];
}

- (void)discoveredDevice:(id)a3 deviceAddress:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained discoveredDevice:v7 deviceAddress:v6];
}

- (BTDevicePickerRemoteViewControllerHost)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end