@interface IMCarrierReportJunkHelper
+ (BOOL)canReportJunkOverCellularServiceOfMessageItem:(id)a3;
+ (BOOL)isReportJunkServiceAllowedForMessageItem:(id)a3 junkChatStyle:(unsigned __int8)a4;
+ (BOOL)userInHomeCountryWithDestinationCallerID:(id)a3;
+ (BOOL)validateReportJunkCarrierAddress:(id)a3;
+ (BOOL)wifiCallingEnabledForDestinationCallerID:(id)a3;
+ (id)fetchMMSReportJunkCarrierAddressForPhoneNumber:(id)a3 simID:(id)a4;
+ (id)fetchSMSReportJunkCarrierAddressForPhoneNumber:(id)a3 simID:(id)a4;
+ (id)reportJunkCarrierAddressForMessageItem:(id)a3 junkChatStyle:(unsigned __int8)a4;
@end

@implementation IMCarrierReportJunkHelper

+ (BOOL)canReportJunkOverCellularServiceOfMessageItem:(id)a3
{
  v4 = [a3 destinationCallerID];
  v5 = [a1 userInHomeCountryWithDestinationCallerID:v4];
  LOBYTE(a1) = [a1 wifiCallingEnabledForDestinationCallerID:v4] | v5;

  return a1 & 1;
}

+ (BOOL)isReportJunkServiceAllowedForMessageItem:(id)a3 junkChatStyle:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 service];
    v9 = [v8 isEqualToString:IMServiceNameRCS[0]];

    v10 = [a1 reportJunkCarrierAddressForMessageItem:v7 junkChatStyle:v4];
    if (!v10)
    {
      v11 = IMCarrierReportJunkLogHandle();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if ((v9 & 1) == 0)
      {
        if (v12)
        {
          *v17 = 0;
          _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_DEFAULT, "Found nil carrier address in carrier bundle. Report Junk not allowed.", v17, 2u);
        }

        LOBYTE(v14) = 0;
        goto LABEL_16;
      }

      if (v12)
      {
        *v16 = 0;
        _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_DEFAULT, "Found nil carrier address in carrier bundle, but this is an RCS message. We can still report junk over RCS.", v16, 2u);
      }
    }

    v13 = [v7 destinationCallerID];
    v11 = [IMCTSMSUtilities carrierNameForPhoneNumber:v13];

    if (v9)
    {
      LOBYTE(v14) = v11 != 0;
    }

    else
    {
      v14 = (v11 != 0) & [a1 validateReportJunkCarrierAddress:v10];
    }

LABEL_16:

    goto LABEL_17;
  }

  v10 = IMCarrierReportJunkLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_DEFAULT, "No message item provided", buf, 2u);
  }

  LOBYTE(v14) = 0;
LABEL_17:

  return v14;
}

+ (id)reportJunkCarrierAddressForMessageItem:(id)a3 junkChatStyle:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 destinationCallerID];
  if (!v7 || (IMStringIsEmail() & 1) != 0)
  {
    v8 = 0;
    goto LABEL_14;
  }

  v9 = MEMORY[0x1AC570A50](v7);
  v10 = v7;
  v11 = v9 == 0;
  if (v9)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v6 subject];
  if ([v14 length])
  {
  }

  else
  {
    v17 = [v6 fileTransferGUIDs];
    v18 = [v17 count];

    if (v4 == 45 && !v18)
    {
      v15 = [a1 fetchSMSReportJunkCarrierAddressForPhoneNumber:v12 simID:v13];
      goto LABEL_13;
    }
  }

  v15 = [a1 fetchMMSReportJunkCarrierAddressForPhoneNumber:v12 simID:v13];
LABEL_13:
  v8 = v15;

LABEL_14:

  return v8;
}

+ (id)fetchSMSReportJunkCarrierAddressForPhoneNumber:(id)a3 simID:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [IMCTSMSUtilities carrierBundleValueForKeyHierarchy:&unk_1F1BFAE68 phoneNumber:v5 simID:v6];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = v7;
    v9 = [v8 valueForKey:@"SMSCarrierReportJunkAddress"];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = v9;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Report junk address provided by carrier is -> %@.\n", &v14, 0xCu);
      }
    }

    v11 = v9;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = 138412546;
        v15 = &unk_1F1BFAE68;
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Error getting Carrier Bundle dictionary. Key Hierarchy -> %@.\nCarrier Bundle object -> %@", &v14, 0x16u);
      }
    }

    v11 = 0;
  }

  return v11;
}

+ (id)fetchMMSReportJunkCarrierAddressForPhoneNumber:(id)a3 simID:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [IMCTSMSUtilities carrierBundleValueForKeyHierarchy:&unk_1F1BFAE80 phoneNumber:v5 simID:v6];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = v7;
    v9 = [v8 valueForKey:@"MMSCarrierReportJunkAddress"];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = v9;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Report junk address provided by carrier is -> %@.\n", &v14, 0xCu);
      }
    }

    v11 = v9;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = 138412546;
        v15 = &unk_1F1BFAE80;
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Error getting Carrier Bundle dictionary. Key Hierarchy -> %@.\nCarrier Bundle object -> %@", &v14, 0x16u);
      }
    }

    v11 = 0;
  }

  return v11;
}

+ (BOOL)validateReportJunkCarrierAddress:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF MATCHES %@", @"^[+]?[0-9]+$"];
  if ([v4 evaluateWithObject:v3])
  {
    v5 = [objc_alloc(MEMORY[0x1E695CF50]) initWithStringValue:v3];
    v6 = [v5 digitsRemovingDialingCode];
    v7 = [v6 length];
    v8 = v7 < 11;
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = @"NO";
        if (v7 < 11)
        {
          v10 = @"YES";
        }

        *buf = 138412290;
        v14 = v10;
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Is valid carrier report junk address - %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v14 = v3;
        _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Not a valid report junk address from carrier. Carrier report junk address - %@", buf, 0xCu);
      }
    }

    v8 = 0;
  }

  return v8;
}

+ (BOOL)userInHomeCountryWithDestinationCallerID:(id)a3
{
  v3 = a3;
  if (v3 && (IMStringIsEmail() & 1) == 0)
  {
    v5 = MEMORY[0x1AC570A50](v3);
    v6 = v3;
    v7 = v5 == 0;
    if (v5)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    if (v7)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    v10 = +[IMCTSubscriptionUtilities sharedInstance];
    v11 = [v10 ctSubscriptionInfo];
    v12 = [v11 __im_subscriptionContextForForSimID:v9 phoneNumber:v8];

    v13 = +[IMCTSubscriptionUtilities sharedInstance];
    v4 = [v13 simInHomeCountryWithSubscriptionContext:v12];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)wifiCallingEnabledForDestinationCallerID:(id)a3
{
  v3 = a3;
  if (v3 && (IMStringIsEmail() & 1) == 0)
  {
    v5 = MEMORY[0x1AC570A50](v3);
    v6 = v3;
    v7 = v5 == 0;
    if (v5)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    if (v7)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    v10 = +[IMCTSubscriptionUtilities sharedInstance];
    v11 = [v10 ctSubscriptionInfo];
    v12 = [v11 __im_subscriptionContextForForSimID:v9 phoneNumber:v8];

    v13 = +[IMCTSubscriptionUtilities sharedInstance];
    v4 = [v13 wifiCallingEnabledForSubscriptionContext:v12];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end