@interface MRDPinPairingDialog_CFUN
- (void)showWithPin:(id)pin forClient:(id)client;
@end

@implementation MRDPinPairingDialog_CFUN

- (void)showWithPin:(id)pin forClient:(id)client
{
  pinCopy = pin;
  v8 = objc_alloc_init(MSVSystemDialogOptions);
  v5 = MRLocalizedString();
  [v8 setAlertHeader:v5];

  [v8 setAlertMessage:pinCopy];
  v6 = MRLocalizedString();
  [v8 setDefaultButtonTitle:v6];

  v7 = [[MSVSystemDialog alloc] initWithOptions:v8];
  [v7 presentWithCompletion:0];
}

@end