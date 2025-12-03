@interface CALNNotificationSourceUtils
+ (id)displayNameForJunkIdentity:(id)identity;
+ (void)updateSubtitleAndThreadIdentifierOnNotificationContent:(id)content forDelegateSourceWithTitle:(id)title identifier:(id)identifier;
@end

@implementation CALNNotificationSourceUtils

+ (id)displayNameForJunkIdentity:(id)identity
{
  identityCopy = identity;
  emailAddress = [identityCopy emailAddress];

  if (emailAddress)
  {
    emailAddress2 = [identityCopy emailAddress];
  }

  else
  {
    phoneNumber = [identityCopy phoneNumber];

    if (phoneNumber)
    {
      mEMORY[0x277CF7CB8] = [MEMORY[0x277CF7CB8] sharedGenerator];
      phoneNumber2 = [identityCopy phoneNumber];
      emailAddress2 = [mEMORY[0x277CF7CB8] formattedStringForPhoneNumber:phoneNumber2];
    }

    else
    {
      mEMORY[0x277CF7CB8] = [identityCopy URL];
      emailAddress2 = [mEMORY[0x277CF7CB8] absoluteString];
    }
  }

  return emailAddress2;
}

+ (void)updateSubtitleAndThreadIdentifierOnNotificationContent:(id)content forDelegateSourceWithTitle:(id)title identifier:(id)identifier
{
  identifierCopy = identifier;
  titleCopy = title;
  contentCopy = content;
  v10 = +[CALNBundle bundle];
  v12 = [v10 localizedStringForKey:@"For %@" value:&stru_28551FB98 table:0];

  titleCopy = [MEMORY[0x277CCACA8] localizedStringWithFormat:v12, titleCopy];

  [contentCopy setSubtitle:titleCopy];
  [contentCopy setThreadIdentifier:identifierCopy];
}

@end