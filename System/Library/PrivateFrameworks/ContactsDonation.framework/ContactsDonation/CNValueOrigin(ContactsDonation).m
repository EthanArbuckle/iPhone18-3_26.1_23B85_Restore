@interface CNValueOrigin(ContactsDonation)
+ (__CFString)localizedApplicationNameForBundleIdentifier:()ContactsDonation;
- (uint64_t)initWithDonationOrigin:()ContactsDonation;
@end

@implementation CNValueOrigin(ContactsDonation)

- (uint64_t)initWithDonationOrigin:()ContactsDonation
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 bundleIdentifier];
  v7 = [v5 localizedApplicationNameForBundleIdentifier:v6];

  v8 = [v4 donationIdentifier];

  v9 = [objc_alloc(MEMORY[0x277CBDBC0]) initWithLocalizedApplicationName:v7 donationIdentifier:v8];
  return v9;
}

+ (__CFString)localizedApplicationNameForBundleIdentifier:()ContactsDonation
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.contacts.donation.accounts"])
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"ACCOUNTS_APP_NAME";
LABEL_7:
    v7 = [v4 localizedStringForKey:v6 value:&stru_2838DBC88 table:@"ContactsDonation"];

    goto LABEL_8;
  }

  if ([v3 isEqualToString:@"com.apple.contacts.donation.phonenumber"])
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"SETTINGS_APP_NAME";
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"com.apple.routined"])
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"SIGNIFICANT_LOCATIONS_APP_NAME";
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"com.apple.contacts.donationtool"])
  {
    v7 = @"Test Data";
  }

  else
  {
    v7 = &stru_2838DBC88;
  }

LABEL_8:

  return v7;
}

@end