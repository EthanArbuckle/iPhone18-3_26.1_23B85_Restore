@interface MRDPinPairingDialog_CFUN
- (void)showWithPin:(id)a3 forClient:(id)a4;
@end

@implementation MRDPinPairingDialog_CFUN

- (void)showWithPin:(id)a3 forClient:(id)a4
{
  v4 = a3;
  v8 = objc_alloc_init(MSVSystemDialogOptions);
  v5 = MRLocalizedString();
  [v8 setAlertHeader:v5];

  [v8 setAlertMessage:v4];
  v6 = MRLocalizedString();
  [v8 setDefaultButtonTitle:v6];

  v7 = [[MSVSystemDialog alloc] initWithOptions:v8];
  [v7 presentWithCompletion:0];
}

@end