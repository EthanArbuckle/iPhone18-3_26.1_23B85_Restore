@interface IMUnknownSenderHelper
+ (BOOL)accountCountryIsCandidateForInternationalFiltering:(id)a3;
+ (BOOL)accountRegionIsCandidateForInternationalFiltering:(id)a3;
+ (BOOL)receiverIsCandidateForInternationalFiltering:(id)a3;
+ (BOOL)receivingID:(id)a3 isCountryCode:(id)a4;
+ (BOOL)shouldShowInternationalSenderWarningForHandleID:(id)a3;
+ (id)mapID:(id)a3 usingKey:(id)a4;
@end

@implementation IMUnknownSenderHelper

+ (BOOL)receiverIsCandidateForInternationalFiltering:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [IMUnknownSenderHelper receivingID:v3 isCountryCode:@"tw"];
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      v8 = v3;
      v9 = 2112;
      v10 = @"tw";
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Receiving id (%@) with country code (%@) is a candidate for international filtering.", &v7, 0x16u);
    }
  }

  return v4;
}

+ (BOOL)accountRegionIsCandidateForInternationalFiltering:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 isEqualToString:@"R:TW"])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = v3;
        _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Region (%@) is a candidate for international filtering.", &v7, 0xCu);
      }

LABEL_10:
    }
  }

  else
  {
    if (!IMGetDomainBoolForKey())
    {
      v5 = 0;
      goto LABEL_13;
    }

    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        LOWORD(v7) = 0;
        _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Region is a candidate for international filtering.", &v7, 2u);
      }

      goto LABEL_10;
    }
  }

  v5 = 1;
LABEL_13:

  return v5;
}

+ (BOOL)accountCountryIsCandidateForInternationalFiltering:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 isEqualToString:@"tw"])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = v3;
        _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Country (%@) is a candidate for international filtering.", &v7, 0xCu);
      }

LABEL_10:
    }
  }

  else
  {
    if (!IMGetDomainBoolForKey())
    {
      v5 = 0;
      goto LABEL_13;
    }

    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        LOWORD(v7) = 0;
        _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Country is a candidate for international filtering.", &v7, 2u);
      }

      goto LABEL_10;
    }
  }

  v5 = 1;
LABEL_13:

  return v5;
}

+ (BOOL)shouldShowInternationalSenderWarningForHandleID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = MEMORY[0x1AC570A80](v4);
    v6 = [a1 mapID:v5 usingKey:@"mapSendingIDForSpamFilter"];

    if ((IMStringIsEmail() & 1) != 0 || !MEMORY[0x1AC570A50](v6))
    {
      v8 = 0;
    }

    else
    {
      v7 = IMCountryCodeForNumber();
      v8 = v7 != 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)receivingID:(id)a3 isCountryCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v8 = MEMORY[0x1AC570A80](v6);
    v9 = [a1 mapID:v8 usingKey:@"mapSendingIDForSpamFilter"];

    if (MEMORY[0x1AC570A50](v9))
    {
      v10 = IMCountryCodeForNumber();
      v11 = [v10 isEqualToString:v7];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

+ (id)mapID:(id)a3 usingKey:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = IMGetCachedDomainValueForKey();
  v8 = v7;
  if (v7 && ([v7 objectForKey:v5], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 138412546;
        v13 = v5;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Mapping id (%@) to (%@).", &v12, 0x16u);
      }
    }
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

@end