@interface CALNNotificationSourceUtils
+ (id)displayNameForJunkIdentity:(id)a3;
+ (void)updateSubtitleAndThreadIdentifierOnNotificationContent:(id)a3 forDelegateSourceWithTitle:(id)a4 identifier:(id)a5;
@end

@implementation CALNNotificationSourceUtils

+ (id)displayNameForJunkIdentity:(id)a3
{
  v3 = a3;
  v4 = [v3 emailAddress];

  if (v4)
  {
    v5 = [v3 emailAddress];
  }

  else
  {
    v6 = [v3 phoneNumber];

    if (v6)
    {
      v7 = [MEMORY[0x277CF7CB8] sharedGenerator];
      v8 = [v3 phoneNumber];
      v5 = [v7 formattedStringForPhoneNumber:v8];
    }

    else
    {
      v7 = [v3 URL];
      v5 = [v7 absoluteString];
    }
  }

  return v5;
}

+ (void)updateSubtitleAndThreadIdentifierOnNotificationContent:(id)a3 forDelegateSourceWithTitle:(id)a4 identifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[CALNBundle bundle];
  v12 = [v10 localizedStringForKey:@"For %@" value:&stru_28551FB98 table:0];

  v11 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v12, v8];

  [v9 setSubtitle:v11];
  [v9 setThreadIdentifier:v7];
}

@end