@interface CKMeCardSharingNameProvider
+ (id)nameContactForPrimaryAccount;
+ (id)nameProviderForAccount:(id)account;
+ (id)nameProviderForContact:(id)contact;
+ (id)nameProviderForNickname:(id)nickname;
+ (id)nameProviderForPrimaryAccount;
@end

@implementation CKMeCardSharingNameProvider

+ (id)nameProviderForContact:(id)contact
{
  contactCopy = contact;
  if (contactCopy)
  {
    v4 = objc_alloc_init(CKMeCardSharingNameProvider);
    if (v4)
    {
      givenName = [contactCopy givenName];
      [(CKMeCardSharingNameProvider *)v4 setGivenName:givenName];

      middleName = [contactCopy middleName];
      [(CKMeCardSharingNameProvider *)v4 setMiddleName:middleName];

      familyName = [contactCopy familyName];
      [(CKMeCardSharingNameProvider *)v4 setFamilyName:familyName];

      nickname = [contactCopy nickname];
      [(CKMeCardSharingNameProvider *)v4 setNickname:nickname];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "nameProviderForContact: called with nil contact", v11, 2u);
      }
    }

    v4 = 0;
  }

  return v4;
}

+ (id)nameProviderForNickname:(id)nickname
{
  nicknameCopy = nickname;
  if (nicknameCopy)
  {
    v4 = objc_alloc_init(CKMeCardSharingNameProvider);
    if (v4)
    {
      firstName = [nicknameCopy firstName];
      [(CKMeCardSharingNameProvider *)v4 setGivenName:firstName];

      lastName = [nicknameCopy lastName];
      [(CKMeCardSharingNameProvider *)v4 setFamilyName:lastName];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "nameProviderForNickname: called with nil contact", v9, 2u);
      }
    }

    v4 = 0;
  }

  return v4;
}

+ (id)nameProviderForAccount:(id)account
{
  accountCopy = account;
  if (accountCopy)
  {
    v4 = objc_alloc_init(CKMeCardSharingNameProvider);
    if (v4)
    {
      aa_firstName = [accountCopy aa_firstName];
      [(CKMeCardSharingNameProvider *)v4 setGivenName:aa_firstName];

      aa_middleName = [accountCopy aa_middleName];
      [(CKMeCardSharingNameProvider *)v4 setMiddleName:aa_middleName];

      aa_lastName = [accountCopy aa_lastName];
      [(CKMeCardSharingNameProvider *)v4 setFamilyName:aa_lastName];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "nameProviderForAccount: called with nil account", v10, 2u);
      }
    }

    v4 = 0;
  }

  return v4;
}

+ (id)nameProviderForPrimaryAccount
{
  v3 = MEMORY[0x193AF5EC0](@"ACAccountStore", @"Accounts");
  if (v3)
  {
    v4 = objc_alloc_init(v3);
    aa_primaryAppleAccount = [v4 aa_primaryAppleAccount];
    v6 = [self nameProviderForAccount:aa_primaryAppleAccount];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "CKMeCardSharingNameProvider: Failed linking Accounts", v9, 2u);
      }
    }

    v6 = 0;
  }

  return v6;
}

+ (id)nameContactForPrimaryAccount
{
  v2 = MEMORY[0x193AF5EC0](@"ACAccountStore", @"Accounts");
  if (v2)
  {
    v3 = objc_alloc_init(v2);
    aa_primaryAppleAccount = [v3 aa_primaryAppleAccount];
    v5 = objc_alloc_init(MEMORY[0x1E695CF18]);
    aa_firstName = [aa_primaryAppleAccount aa_firstName];
    [v5 setGivenName:aa_firstName];

    aa_lastName = [aa_primaryAppleAccount aa_lastName];
    [v5 setFamilyName:aa_lastName];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "CKMeCardSharingNameProvider: Failed linking Accounts", v10, 2u);
      }
    }

    v5 = 0;
  }

  return v5;
}

@end