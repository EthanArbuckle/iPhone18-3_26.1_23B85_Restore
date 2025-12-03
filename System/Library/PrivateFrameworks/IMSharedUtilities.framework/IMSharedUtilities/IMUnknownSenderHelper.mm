@interface IMUnknownSenderHelper
+ (BOOL)accountCountryIsCandidateForInternationalFiltering:(id)filtering;
+ (BOOL)accountRegionIsCandidateForInternationalFiltering:(id)filtering;
+ (BOOL)receiverIsCandidateForInternationalFiltering:(id)filtering;
+ (BOOL)receivingID:(id)d isCountryCode:(id)code;
+ (BOOL)shouldShowInternationalSenderWarningForHandleID:(id)d;
+ (id)mapID:(id)d usingKey:(id)key;
@end

@implementation IMUnknownSenderHelper

+ (BOOL)receiverIsCandidateForInternationalFiltering:(id)filtering
{
  v11 = *MEMORY[0x1E69E9840];
  filteringCopy = filtering;
  v4 = [IMUnknownSenderHelper receivingID:filteringCopy isCountryCode:@"tw"];
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      v8 = filteringCopy;
      v9 = 2112;
      v10 = @"tw";
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Receiving id (%@) with country code (%@) is a candidate for international filtering.", &v7, 0x16u);
    }
  }

  return v4;
}

+ (BOOL)accountRegionIsCandidateForInternationalFiltering:(id)filtering
{
  v9 = *MEMORY[0x1E69E9840];
  filteringCopy = filtering;
  if ([filteringCopy isEqualToString:@"R:TW"])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = filteringCopy;
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

+ (BOOL)accountCountryIsCandidateForInternationalFiltering:(id)filtering
{
  v9 = *MEMORY[0x1E69E9840];
  filteringCopy = filtering;
  if ([filteringCopy isEqualToString:@"tw"])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = filteringCopy;
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

+ (BOOL)shouldShowInternationalSenderWarningForHandleID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    v5 = MEMORY[0x1AC570A80](dCopy);
    v6 = [self mapID:v5 usingKey:@"mapSendingIDForSpamFilter"];

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

+ (BOOL)receivingID:(id)d isCountryCode:(id)code
{
  dCopy = d;
  codeCopy = code;
  if ([dCopy length])
  {
    v8 = MEMORY[0x1AC570A80](dCopy);
    v9 = [self mapID:v8 usingKey:@"mapSendingIDForSpamFilter"];

    if (MEMORY[0x1AC570A50](v9))
    {
      v10 = IMCountryCodeForNumber();
      v11 = [v10 isEqualToString:codeCopy];
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

+ (id)mapID:(id)d usingKey:(id)key
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  keyCopy = key;
  v7 = IMGetCachedDomainValueForKey();
  v8 = v7;
  if (v7 && ([v7 objectForKey:dCopy], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 138412546;
        v13 = dCopy;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Mapping id (%@) to (%@).", &v12, 0x16u);
      }
    }
  }

  else
  {
    v9 = dCopy;
  }

  return v9;
}

@end