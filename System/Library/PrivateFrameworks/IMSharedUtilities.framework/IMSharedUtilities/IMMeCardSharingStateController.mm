@interface IMMeCardSharingStateController
+ (id)sharedInstance;
- (BOOL)sharingEnabled;
- (BOOL)wasSharingEverEnabled;
- (IMMeCardSharingStateController)init;
- (unint64_t)sharingAudience;
- (void)_incrementSharingVersion;
- (void)_migrateMeCardDomains;
- (void)_syncPreferenceDidChange;
- (void)postNameFormatChangedNotification;
- (void)setImageForkedFromMeCard:(BOOL)a3;
- (void)setNameForkedFromMeCard:(BOOL)a3;
- (void)setNameFormat:(unint64_t)a3;
- (void)setSharingAudience:(unint64_t)a3;
- (void)setSharingEnabled:(BOOL)a3;
@end

@implementation IMMeCardSharingStateController

+ (id)sharedInstance
{
  if (qword_1ED8CA3F0 != -1)
  {
    sub_1A85EC5B0();
  }

  return qword_1ED8CA350;
}

- (IMMeCardSharingStateController)init
{
  v5.receiver = self;
  v5.super_class = IMMeCardSharingStateController;
  v2 = [(IMMeCardSharingStateController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IMMeCardSharingStateController *)v2 _migrateMeCardDomains];
  }

  return v3;
}

- (void)_migrateMeCardDomains
{
  if (IMIsRunningInMobileSMS())
  {
    v2 = IMGetDomainBoolForKey();
    v3 = IMGetCachedDomainValueForKey();
    v4 = IMGetCachedDomainValueForKey();
    v5 = IMGetCachedDomainValueForKey();
    if ((v2 & 1) == 0)
    {
      v6 = v5;
      if (v3 || v4 || v5)
      {
        if (v3)
        {
          IMSetDomainValueForKey();
        }

        if (v4)
        {
          [v4 unsignedIntegerValue];
          IMSetDomainIntForKey();
        }

        if (v6)
        {
          IMSetDomainValueForKey();
        }

        IMSetDomainBoolForKey();
        IMSetDomainValueForKey();
        IMSetDomainValueForKey();

        IMSetDomainValueForKey();
      }
    }
  }
}

- (BOOL)sharingEnabled
{
  v2 = IMSharedHelperNickNameEnabled();
  if (v2)
  {

    LOBYTE(v2) = IMGetDomainBoolForKey();
  }

  return v2;
}

- (void)setSharingEnabled:(BOOL)a3
{
  [MEMORY[0x1E696AD98] numberWithBool:a3];
  IMSetDomainValueForKey();

  MEMORY[0x1EEE66B58](self, sel__syncPreferenceDidChange);
}

- (unint64_t)sharingAudience
{
  v3 = IMGetCachedDomainIntForKeyWithDefaultValue();
  if (!v3)
  {
    v3 = 1;
    [(IMMeCardSharingStateController *)self setSharingAudience:1];
  }

  return v3;
}

- (void)setSharingAudience:(unint64_t)a3
{
  if (a3 <= 1)
  {
    a3 = 1;
  }

  [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  IMSetDomainValueForKey();

  MEMORY[0x1EEE66B58](self, sel__syncPreferenceDidChange);
}

- (void)setNameFormat:(unint64_t)a3
{
  [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];

  IMSetDomainValueForKey();
}

- (void)postNameFormatChangedNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.MeCardSharingNameFormat.changed", 0, 0, 1u);
}

- (void)setNameForkedFromMeCard:(BOOL)a3
{
  [MEMORY[0x1E696AD98] numberWithBool:a3];
  IMSetDomainValueForKey();

  MEMORY[0x1EEE66B58](self, sel__syncPreferenceDidChange);
}

- (void)setImageForkedFromMeCard:(BOOL)a3
{
  [MEMORY[0x1E696AD98] numberWithBool:a3];
  IMSetDomainValueForKey();

  MEMORY[0x1EEE66B58](self, sel__syncPreferenceDidChange);
}

- (void)_incrementSharingVersion
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = IMGetDomainIntForKey();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412546;
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v2];
      v6 = 2112;
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v2 + 1];
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Incrementing our MeCard Sharing pref version number from %@ to %@", &v4, 0x16u);
    }
  }

  [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v2 + 1];
  IMSetDomainValueForKey();
}

- (void)_syncPreferenceDidChange
{
  [(IMMeCardSharingStateController *)self _incrementSharingVersion];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];

  [v2 postNotificationName:@"__kIMNicknamePreferencesDidChangeNotification" object:0];
}

- (BOOL)wasSharingEverEnabled
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesGetAppBooleanValue(@"MeCardSharingEnabled", @"com.apple.messages.nicknames", &keyExistsAndHasValidFormat);
  return keyExistsAndHasValidFormat != 0;
}

@end