@interface IMDCarrierReportJunkHelper
+ (BOOL)validateReportJunkCarrierAddress:(id)a3;
+ (id)createJunkReportMessageBodyTextForMessageItem:(id)a3 junkChatStyle:(unsigned __int8)a4 serviceName:(id)a5;
+ (id)fetchMMSReportJunkCarrierAddressForPhoneNumber:(id)a3 simID:(id)a4;
+ (id)fetchSMSReportJunkCarrierAddressForPhoneNumber:(id)a3 simID:(id)a4;
+ (id)jsonSerializeDictionary:(id)a3;
+ (id)jsonSerializeDictionaryStrippingOutMessageContent:(id)a3;
+ (id)receiveDateForMessageItem:(id)a3;
@end

@implementation IMDCarrierReportJunkHelper

+ (id)createJunkReportMessageBodyTextForMessageItem:(id)a3 junkChatStyle:(unsigned __int8)a4 serviceName:(id)a5
{
  v6 = a4;
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB38] dictionary];
  v11 = [v8 subject];
  v12 = @"MMS";
  if (![v11 length])
  {
    v13 = [v8 fileTransferGUIDs];
    if ([v13 count])
    {
      v14 = 0;
    }

    else
    {
      v14 = v6 == 45;
    }

    if (v14)
    {
      v12 = @"SMS";
    }
  }

  v15 = v12;
  if ([v9 isEqualToString:*MEMORY[0x277D1A608]])
  {
    v16 = v9;

    v17 = [v8 fallbackHash];
    v18 = [v17 rangeOfString:@"__"];
    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = v18;
      if (v18 <= [v17 length])
      {
        v20 = [v17 substringToIndex:v19];

        v17 = v20;
      }
    }

    if (v17)
    {
      [v10 setValue:v17 forKey:@"e"];
    }

    v21 = +[IMDFileTransferCenter sharedInstance];
    v22 = [v8 fileTransferGUIDs];
    v23 = [v22 firstObject];
    v24 = [v21 transferForGUID:v23];

    v25 = [v24 originalFilename];
    [v10 setObject:v25 forKeyedSubscript:@"a"];

    v26 = @"A03";
    v15 = v16;
  }

  else
  {
    v26 = @"A01";
  }

  [v10 setValue:v15 forKey:@"r"];
  [v10 setValue:v26 forKey:@"v"];
  v27 = [v8 handle];
  v28 = [v27 im_stripCategoryLabel];

  if (v28)
  {
    [v10 setValue:v28 forKey:@"f"];
  }

  v29 = [a1 receiveDateForMessageItem:v8];
  if (v29)
  {
    [v10 setValue:v29 forKey:@"t"];
  }

  v30 = [v8 body];
  v31 = [v30 string];

  if (v31)
  {
    [v10 setValue:v31 forKey:@"m"];
  }

  v32 = [a1 jsonSerializeDictionary:v10];
  v33 = IMLogHandleForCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = [a1 jsonSerializeDictionaryStrippingOutMessageContent:v10];
    v38 = 138412290;
    v39 = v34;
    _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Created serialize junk report: %@", &v38, 0xCu);
  }

  v35 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v32];
  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

+ (id)receiveDateForMessageItem:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [a3 time];
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v4 setLocale:v5];
  [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss ZZZ"];
  v6 = [v4 stringFromDate:v3];
  v7 = IMLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Receiving date of message item -> %@", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)jsonSerializeDictionary:(id)a3
{
  v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:a3 options:0 error:0];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];

  return v4;
}

+ (id)jsonSerializeDictionaryStrippingOutMessageContent:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  v5 = [a3 copy];
  v6 = [v4 dictionaryWithDictionary:v5];

  [v6 setObject:@"(hidden)" forKey:@"m"];
  v7 = [a1 jsonSerializeDictionary:v6];

  return v7;
}

+ (BOOL)validateReportJunkCarrierAddress:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF MATCHES %@", @"^[+]?[0-9]+$"];
  if ([v4 evaluateWithObject:v3])
  {
    v5 = [objc_alloc(MEMORY[0x277CBDB70]) initWithStringValue:v3];
    v6 = [v5 digitsRemovingDialingCode];
    v7 = [v6 length];
    v8 = v7 < 11;
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"NO";
      if (v7 < 11)
      {
        v10 = @"YES";
      }

      *buf = 138412290;
      v14 = v10;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Is valid carrier report junk address - %@", buf, 0xCu);
    }
  }

  else
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v3;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Not a valid report junk address from carrier. Carrier report junk address - %@", buf, 0xCu);
    }

    v8 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)fetchSMSReportJunkCarrierAddressForPhoneNumber:(id)a3 simID:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D1A8F8] carrierBundleValueForKeyHierarchy:&unk_283F4EE88 phoneNumber:a3 simID:a4];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 valueForKey:@"SMSCarrierReportJunkAddress"];
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Report junk address provided by carrier is -> %@.\n", &v11, 0xCu);
    }

    v7 = v5;
    v8 = v7;
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D5FF8(v4, v7);
    }

    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)fetchMMSReportJunkCarrierAddressForPhoneNumber:(id)a3 simID:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D1A8F8] carrierBundleValueForKeyHierarchy:&unk_283F4EEA0 phoneNumber:a3 simID:a4];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 valueForKey:@"MMSCarrierReportJunkAddress"];
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Report junk address provided by carrier is -> %@.\n", &v11, 0xCu);
    }

    v7 = v5;
    v8 = v7;
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 138412546;
      v12 = &unk_283F4EEA0;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Error getting Carrier Bundle dictionary. Key Hierarchy -> %@.\nCarrier Bundle object -> %@", &v11, 0x16u);
    }

    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end