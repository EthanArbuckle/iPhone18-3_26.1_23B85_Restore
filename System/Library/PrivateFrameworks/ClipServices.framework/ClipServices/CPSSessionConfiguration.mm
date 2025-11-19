@interface CPSSessionConfiguration
+ (CPSSessionConfiguration)localConfiguration;
+ (CPSSessionConfiguration)pptConfiguration;
+ (CPSSessionConfiguration)pptLocalConfiguration;
+ (id)_defaultSourceBundleIDToReasonMap;
+ (id)reasonForSourceBundleID:(id)a3;
+ (id)standardConfigurationWithURL:(id)a3 fallbackBundleID:(id)a4;
- (BOOL)analyticsShouldIncludeReferrerURL;
- (BOOL)canPrefetchEncryptionKey;
- (BOOL)isInvokedByPhysicalCode;
- (BOOL)mayLaunchWithoutInvocationUI;
- (CPSSessionConfiguration)initWithCoder:(id)a3;
- (NSString)analyticsLaunchReason;
- (NSString)analyticsReferrerBundleID;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPSSessionConfiguration

+ (id)standardConfigurationWithURL:(id)a3 fallbackBundleID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(CPSSessionConfiguration);
  v8 = [MEMORY[0x277CCAD78] UUID];
  [(CPSSessionConfiguration *)v7 setSessionID:v8];

  v9 = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [v9 bundleIdentifier];
  [(CPSSessionConfiguration *)v7 setSourceBundleID:v10];

  v11 = [(CPSSessionConfiguration *)v7 sourceBundleID];
  v12 = [CPSSessionConfiguration reasonForSourceBundleID:v11];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"Other";
  }

  [(CPSSessionConfiguration *)v7 setLaunchReason:v14];

  if (!v6)
  {
    v6 = [v5 cps_fallbackBundleIdentifier];
  }

  [(CPSSessionConfiguration *)v7 setFallbackClipBundleID:v6];

  return v7;
}

+ (CPSSessionConfiguration)localConfiguration
{
  v2 = +[CPSSessionConfiguration standardConfiguration];
  [v2 setUseLocalContent:1];

  return v2;
}

+ (CPSSessionConfiguration)pptConfiguration
{
  v2 = +[CPSSessionConfiguration standardConfiguration];
  [v2 setUsedByPPT:1];

  return v2;
}

+ (CPSSessionConfiguration)pptLocalConfiguration
{
  v2 = +[CPSSessionConfiguration standardConfiguration];
  [v2 setUsedByPPT:1];
  [v2 setUseLocalContent:1];

  return v2;
}

+ (id)_defaultSourceBundleIDToReasonMap
{
  v6[14] = *MEMORY[0x277D85DE8];
  v5[0] = @"com.apple.mobilesafari";
  v5[1] = @"com.apple.SafariViewService";
  v6[0] = @"Safari";
  v6[1] = @"Safari";
  v5[2] = @"com.apple.Maps";
  v5[3] = @"com.apple.MobileSMS";
  v6[2] = @"Maps";
  v6[3] = @"Messages";
  v5[4] = @"com.apple.BarcodeSupport.BarcodeNotificationService";
  v5[5] = @"com.apple.duetexpertd";
  v6[4] = @"NFC";
  v6[5] = @"LocationBased";
  v5[6] = @"com.apple.Spotlight";
  v5[7] = @"com.apple.springboard";
  v6[6] = @"SpotlightSearch";
  v6[7] = @"SpringBoard";
  v5[8] = @"com.apple.SpringBoard";
  v5[9] = @"com.apple.BarcodeScanner";
  v6[8] = @"SpringBoard";
  v6[9] = @"QR";
  v5[10] = @"com.apple.DTServiceHub";
  v5[11] = @"com.apple.siri";
  v6[10] = @"DeveloperTools";
  v6[11] = @"Siri";
  v5[12] = @"com.apple.ClipTester";
  v5[13] = @"com.apple.camera";
  v6[12] = @"ClipTester";
  v6[13] = @"QR";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:14];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)reasonForSourceBundleID:(id)a3
{
  v3 = a3;
  v4 = +[CPSSessionConfiguration _defaultSourceBundleIDToReasonMap];
  v5 = [v4 objectForKey:v3];

  return v5;
}

- (NSString)analyticsReferrerBundleID
{
  referrerBundleID = self->_referrerBundleID;
  if (!referrerBundleID)
  {
    referrerBundleID = self->_sourceBundleID;
  }

  return referrerBundleID;
}

- (NSString)analyticsLaunchReason
{
  v3 = [CPSSessionConfiguration reasonForSourceBundleID:self->_referrerBundleID];
  launchReason = v3;
  if (!v3)
  {
    launchReason = self->_launchReason;
  }

  p_isa = launchReason;

  if ([(NSString *)p_isa isEqualToString:@"Safari"]|| [(NSString *)p_isa isEqualToString:@"InApp"])
  {
    if (self->_referrerBundleID)
    {
      v6 = @"App Referral";
    }

    else
    {
      v6 = @"Web Referral";
    }

    v7 = v6;

    p_isa = &v7->isa;
  }

  return p_isa;
}

- (BOOL)analyticsShouldIncludeReferrerURL
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"Web Referral";
  v7[1] = @"App Referral";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [(CPSSessionConfiguration *)self analyticsLaunchReason];
  LOBYTE(self) = [v3 containsObject:v4];

  v5 = *MEMORY[0x277D85DE8];
  return self;
}

- (BOOL)canPrefetchEncryptionKey
{
  if ([(NSString *)self->_launchReason isEqualToString:@"NFC"]|| [(NSString *)self->_sourceBundleID isEqualToString:@"com.apple.BarcodeScanner"])
  {
    return 0;
  }

  else
  {
    return ![(NSString *)self->_launchReason isEqualToString:@"Other"];
  }
}

- (BOOL)mayLaunchWithoutInvocationUI
{
  v6[7] = *MEMORY[0x277D85DE8];
  v6[0] = @"Maps";
  v6[1] = @"Safari";
  v6[2] = @"Messages";
  v6[3] = @"Mail";
  v6[4] = @"SpotlightSearch";
  v6[5] = @"LocationBased";
  v6[6] = @"Shazam";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:7];
  LOBYTE(self) = [v3 containsObject:self->_launchReason];

  v4 = *MEMORY[0x277D85DE8];
  return self;
}

- (BOOL)isInvokedByPhysicalCode
{
  v2 = [(CPSSessionConfiguration *)self launchReason];
  if ([v2 isEqualToString:@"QR"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"AppclipCode"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:@"NFC"];
  }

  return v3;
}

- (CPSSessionConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CPSSessionConfiguration;
  v5 = [(CPSSessionConfiguration *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceBundleID"];
    sourceBundleID = v5->_sourceBundleID;
    v5->_sourceBundleID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referrerBundleID"];
    referrerBundleID = v5->_referrerBundleID;
    v5->_referrerBundleID = v10;

    v5->_usedByPPT = [v4 decodeBoolForKey:@"useByTest"];
    v5->_useLocalContent = [v4 decodeBoolForKey:@"useLocalContent"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceReason"];
    launchReason = v5->_launchReason;
    v5->_launchReason = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fallbackClipBundleID"];
    fallbackClipBundleID = v5->_fallbackClipBundleID;
    v5->_fallbackClipBundleID = v14;

    v5->_originIsControlCenter = [v4 decodeBoolForKey:@"originIsControlCenter"];
    v5->_isForSwitcherOverlay = [v4 decodeBoolForKey:@"isForSwitcherOverlay"];
    v16 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sessionID = self->_sessionID;
  v5 = a3;
  [v5 encodeObject:sessionID forKey:@"sessionID"];
  [v5 encodeObject:self->_sourceBundleID forKey:@"sourceBundleID"];
  [v5 encodeObject:self->_referrerBundleID forKey:@"referrerBundleID"];
  [v5 encodeBool:self->_usedByPPT forKey:@"useByTest"];
  [v5 encodeBool:self->_useLocalContent forKey:@"useLocalContent"];
  [v5 encodeObject:self->_launchReason forKey:@"sourceReason"];
  [v5 encodeObject:self->_fallbackClipBundleID forKey:@"fallbackClipBundleID"];
  [v5 encodeBool:self->_originIsControlCenter forKey:@"originIsControlCenter"];
  [v5 encodeBool:self->_isForSwitcherOverlay forKey:@"isForSwitcherOverlay"];
}

@end