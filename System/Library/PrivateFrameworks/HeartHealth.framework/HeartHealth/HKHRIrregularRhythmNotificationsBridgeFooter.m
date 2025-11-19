@interface HKHRIrregularRhythmNotificationsBridgeFooter
+ (id)footerWhenAFibHistoryIsEnabled;
+ (id)footerWhenRemotelyDisabled;
+ (id)footerWhenSeedHasExpired;
+ (id)footerWhenUnavailableInOnboardedCountry;
+ (id)standardFooter;
- (HKHRIrregularRhythmNotificationsBridgeFooter)initWithText:(id)a3 linkText:(id)a4 linkURL:(id)a5;
@end

@implementation HKHRIrregularRhythmNotificationsBridgeFooter

- (HKHRIrregularRhythmNotificationsBridgeFooter)initWithText:(id)a3 linkText:(id)a4 linkURL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = HKHRIrregularRhythmNotificationsBridgeFooter;
  v11 = [(HKHRIrregularRhythmNotificationsBridgeFooter *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    text = v11->_text;
    v11->_text = v12;

    v14 = [v9 copy];
    linkText = v11->_linkText;
    v11->_linkText = v14;

    v16 = [v10 copy];
    linkURL = v11->_linkURL;
    v11->_linkURL = v16;
  }

  return v11;
}

+ (id)footerWhenAFibHistoryIsEnabled
{
  v2 = [a1 alloc];
  v3 = HKHRAFibHistoryLocalizedString(@"HEART_NOTIFICATION_IRN_DISABLED_DUE_TO_AFIB_HISTORY_FOOTER");
  v4 = [v2 initWithText:v3 linkText:0 linkURL:0];

  return v4;
}

+ (id)footerWhenSeedHasExpired
{
  v3 = HKHeartRateLocalizedString(@"FEATURE_SEED_EXPIRED_ANTIMONY");
  v4 = +[_HKHeartSettingsUtilities seedExpiredLinkTitle];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", v3, v4];
  v6 = +[_HKHeartSettingsUtilities seedExpiredLinkURL];
  v7 = [[a1 alloc] initWithText:v5 linkText:v4 linkURL:v6];

  return v7;
}

+ (id)footerWhenRemotelyDisabled
{
  v3 = HKHeartRateLocalizedString(@"FEATURE_DISABLED_REMOTELY_ANTIMONY");
  v4 = +[_HKHeartSettingsUtilities remoteDisabledLinkTitle];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", v3, v4];
  v6 = +[_HKHeartSettingsUtilities remoteDisabledLinkURL];
  v7 = [[a1 alloc] initWithText:v5 linkText:v4 linkURL:v6];

  return v7;
}

+ (id)footerWhenUnavailableInOnboardedCountry
{
  v3 = HKHeartRateLocalizedString(@"IRREGULAR_RHYTHM_NOTIFICATIONS_UNAVAILABLE_ON_WATCH");
  v4 = +[_HKHeartSettingsUtilities irregularHeartRhythmFooterLinkTitle];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", v3, v4];
  v6 = +[_HKHeartSettingsUtilities irregularHeartRhythmFooterLinkURL];
  v7 = [[a1 alloc] initWithText:v5 linkText:v4 linkURL:v6];

  return v7;
}

+ (id)standardFooter
{
  v3 = +[_HKHeartSettingsUtilities irregularHeartRhythmFooterDescription];
  v4 = +[_HKHeartSettingsUtilities irregularHeartRhythmFooterLinkTitle];
  v5 = +[_HKHeartSettingsUtilities irregularHeartRhythmFooterLinkURL];
  v6 = [[a1 alloc] initWithText:v3 linkText:v4 linkURL:v5];

  return v6;
}

@end