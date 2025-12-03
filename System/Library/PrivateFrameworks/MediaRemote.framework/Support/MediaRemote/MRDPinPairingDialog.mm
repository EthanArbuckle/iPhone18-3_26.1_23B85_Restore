@interface MRDPinPairingDialog
+ (id)allocWithZone:(_NSZone *)zone;
- (MRDPinPairingDialogDelegate)delegate;
@end

@implementation MRDPinPairingDialog

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {
    if (MSVDeviceIsAppleTV())
    {
      v6 = MRDPinPairingDialog_ATV;
    }

    else
    {
      v6 = MRDPinPairingDialog_CFUN;
    }

    return [(__objc2_class *)v6 allocWithZone:zone];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___MRDPinPairingDialog;
    return objc_msgSendSuper2(&v7, "allocWithZone:", zone);
  }
}

- (MRDPinPairingDialogDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end