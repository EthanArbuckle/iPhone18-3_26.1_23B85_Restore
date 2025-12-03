@interface PKAppProtectionApp
- (PKAppProtectionApp)initWithAppType:(unint64_t)type;
@end

@implementation PKAppProtectionApp

- (PKAppProtectionApp)initWithAppType:(unint64_t)type
{
  v14.receiver = self;
  v14.super_class = PKAppProtectionApp;
  v4 = [(PKAppProtectionApp *)&v14 init];
  v5 = v4;
  if (v4)
  {
    if (type)
    {
      if (type == 1)
      {
        v6 = @"com.apple.mobilemail";
        bundleIdentifier = v5->_bundleIdentifier;
        v5->_bundleIdentifier = &v6->isa;
      }

      else
      {
        bundleIdentifier = v4->_bundleIdentifier;
        v4->_bundleIdentifier = &stru_1F227FD28;
      }

      v10 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v5->_bundleIdentifier allowPlaceholder:0 error:0];
      localizedName = [v10 localizedName];
      localizedName = v5->_localizedName;
      v5->_localizedName = localizedName;

      v5->_isAppAvailable = v10 != 0;
    }

    else
    {
      objc_storeStrong(&v4->_bundleIdentifier, @"com.apple.Passbook");
      v8 = PKLocalizedString(&cfstr_Wallet_1.isa, 0);
      v9 = v5->_localizedName;
      v5->_localizedName = v8;

      v5->_isAppAvailable = 1;
    }
  }

  return v5;
}

@end