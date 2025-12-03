@interface BTDevicePickerRemoteViewController
- (BTDevicePickerRemoteViewControllerHost)_delegate;
- (void)didDismissWithResult:(int64_t)result deviceAddress:(id)address;
- (void)discoveredDevice:(id)device deviceAddress:(id)address;
@end

@implementation BTDevicePickerRemoteViewController

- (void)didDismissWithResult:(int64_t)result deviceAddress:(id)address
{
  addressCopy = address;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didDismissWithResult:result deviceAddress:addressCopy];
}

- (void)discoveredDevice:(id)device deviceAddress:(id)address
{
  addressCopy = address;
  deviceCopy = device;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained discoveredDevice:deviceCopy deviceAddress:addressCopy];
}

- (BTDevicePickerRemoteViewControllerHost)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end