@interface IMCarrierReportJunkHelper
+ (BOOL)canReportJunkOverCellularServiceOfMessageItem:(id)item;
+ (BOOL)isReportJunkServiceAllowedForMessageItem:(id)item junkChatStyle:(unsigned __int8)style;
+ (BOOL)userInHomeCountryWithDestinationCallerID:(id)d;
+ (BOOL)validateReportJunkCarrierAddress:(id)address;
+ (BOOL)wifiCallingEnabledForDestinationCallerID:(id)d;
+ (id)fetchMMSReportJunkCarrierAddressForPhoneNumber:(id)number simID:(id)d;
+ (id)fetchSMSReportJunkCarrierAddressForPhoneNumber:(id)number simID:(id)d;
+ (id)reportJunkCarrierAddressForMessageItem:(id)item junkChatStyle:(unsigned __int8)style;
@end

@implementation IMCarrierReportJunkHelper

+ (BOOL)canReportJunkOverCellularServiceOfMessageItem:(id)item
{
  destinationCallerID = [item destinationCallerID];
  v5 = [self userInHomeCountryWithDestinationCallerID:destinationCallerID];
  LOBYTE(self) = [self wifiCallingEnabledForDestinationCallerID:destinationCallerID] | v5;

  return self & 1;
}

+ (BOOL)isReportJunkServiceAllowedForMessageItem:(id)item junkChatStyle:(unsigned __int8)style
{
  styleCopy = style;
  itemCopy = item;
  v7 = itemCopy;
  if (itemCopy)
  {
    service = [itemCopy service];
    v9 = [service isEqualToString:IMServiceNameRCS[0]];

    v10 = [self reportJunkCarrierAddressForMessageItem:v7 junkChatStyle:styleCopy];
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

    destinationCallerID = [v7 destinationCallerID];
    v11 = [IMCTSMSUtilities carrierNameForPhoneNumber:destinationCallerID];

    if (v9)
    {
      LOBYTE(v14) = v11 != 0;
    }

    else
    {
      v14 = (v11 != 0) & [self validateReportJunkCarrierAddress:v10];
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

+ (id)reportJunkCarrierAddressForMessageItem:(id)item junkChatStyle:(unsigned __int8)style
{
  styleCopy = style;
  itemCopy = item;
  destinationCallerID = [itemCopy destinationCallerID];
  if (!destinationCallerID || (IMStringIsEmail() & 1) != 0)
  {
    v8 = 0;
    goto LABEL_14;
  }

  v9 = MEMORY[0x1AC570A50](destinationCallerID);
  v10 = destinationCallerID;
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

  subject = [itemCopy subject];
  if ([subject length])
  {
  }

  else
  {
    fileTransferGUIDs = [itemCopy fileTransferGUIDs];
    v18 = [fileTransferGUIDs count];

    if (styleCopy == 45 && !v18)
    {
      v15 = [self fetchSMSReportJunkCarrierAddressForPhoneNumber:v12 simID:v13];
      goto LABEL_13;
    }
  }

  v15 = [self fetchMMSReportJunkCarrierAddressForPhoneNumber:v12 simID:v13];
LABEL_13:
  v8 = v15;

LABEL_14:

  return v8;
}

+ (id)fetchSMSReportJunkCarrierAddressForPhoneNumber:(id)number simID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  dCopy = d;
  v7 = [IMCTSMSUtilities carrierBundleValueForKeyHierarchy:&unk_1F1BFAE68 phoneNumber:numberCopy simID:dCopy];
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

+ (id)fetchMMSReportJunkCarrierAddressForPhoneNumber:(id)number simID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  dCopy = d;
  v7 = [IMCTSMSUtilities carrierBundleValueForKeyHierarchy:&unk_1F1BFAE80 phoneNumber:numberCopy simID:dCopy];
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

+ (BOOL)validateReportJunkCarrierAddress:(id)address
{
  v15 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF MATCHES %@", @"^[+]?[0-9]+$"];
  if ([v4 evaluateWithObject:addressCopy])
  {
    v5 = [objc_alloc(MEMORY[0x1E695CF50]) initWithStringValue:addressCopy];
    digitsRemovingDialingCode = [v5 digitsRemovingDialingCode];
    v7 = [digitsRemovingDialingCode length];
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
        v14 = addressCopy;
        _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Not a valid report junk address from carrier. Carrier report junk address - %@", buf, 0xCu);
      }
    }

    v8 = 0;
  }

  return v8;
}

+ (BOOL)userInHomeCountryWithDestinationCallerID:(id)d
{
  dCopy = d;
  if (dCopy && (IMStringIsEmail() & 1) == 0)
  {
    v5 = MEMORY[0x1AC570A50](dCopy);
    v6 = dCopy;
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
    ctSubscriptionInfo = [v10 ctSubscriptionInfo];
    v12 = [ctSubscriptionInfo __im_subscriptionContextForForSimID:v9 phoneNumber:v8];

    v13 = +[IMCTSubscriptionUtilities sharedInstance];
    v4 = [v13 simInHomeCountryWithSubscriptionContext:v12];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)wifiCallingEnabledForDestinationCallerID:(id)d
{
  dCopy = d;
  if (dCopy && (IMStringIsEmail() & 1) == 0)
  {
    v5 = MEMORY[0x1AC570A50](dCopy);
    v6 = dCopy;
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
    ctSubscriptionInfo = [v10 ctSubscriptionInfo];
    v12 = [ctSubscriptionInfo __im_subscriptionContextForForSimID:v9 phoneNumber:v8];

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