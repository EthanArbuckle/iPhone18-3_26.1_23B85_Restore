@interface IMDCarrierReportJunkHelper
+ (BOOL)validateReportJunkCarrierAddress:(id)address;
+ (id)createJunkReportMessageBodyTextForMessageItem:(id)item junkChatStyle:(unsigned __int8)style serviceName:(id)name;
+ (id)fetchMMSReportJunkCarrierAddressForPhoneNumber:(id)number simID:(id)d;
+ (id)fetchSMSReportJunkCarrierAddressForPhoneNumber:(id)number simID:(id)d;
+ (id)jsonSerializeDictionary:(id)dictionary;
+ (id)jsonSerializeDictionaryStrippingOutMessageContent:(id)content;
+ (id)receiveDateForMessageItem:(id)item;
@end

@implementation IMDCarrierReportJunkHelper

+ (id)createJunkReportMessageBodyTextForMessageItem:(id)item junkChatStyle:(unsigned __int8)style serviceName:(id)name
{
  styleCopy = style;
  v40 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  nameCopy = name;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  subject = [itemCopy subject];
  v12 = @"MMS";
  if (![subject length])
  {
    fileTransferGUIDs = [itemCopy fileTransferGUIDs];
    if ([fileTransferGUIDs count])
    {
      v14 = 0;
    }

    else
    {
      v14 = styleCopy == 45;
    }

    if (v14)
    {
      v12 = @"SMS";
    }
  }

  v15 = v12;
  if ([nameCopy isEqualToString:*MEMORY[0x277D1A608]])
  {
    v16 = nameCopy;

    fallbackHash = [itemCopy fallbackHash];
    v18 = [fallbackHash rangeOfString:@"__"];
    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = v18;
      if (v18 <= [fallbackHash length])
      {
        v20 = [fallbackHash substringToIndex:v19];

        fallbackHash = v20;
      }
    }

    if (fallbackHash)
    {
      [dictionary setValue:fallbackHash forKey:@"e"];
    }

    v21 = +[IMDFileTransferCenter sharedInstance];
    fileTransferGUIDs2 = [itemCopy fileTransferGUIDs];
    firstObject = [fileTransferGUIDs2 firstObject];
    v24 = [v21 transferForGUID:firstObject];

    originalFilename = [v24 originalFilename];
    [dictionary setObject:originalFilename forKeyedSubscript:@"a"];

    v26 = @"A03";
    v15 = v16;
  }

  else
  {
    v26 = @"A01";
  }

  [dictionary setValue:v15 forKey:@"r"];
  [dictionary setValue:v26 forKey:@"v"];
  handle = [itemCopy handle];
  im_stripCategoryLabel = [handle im_stripCategoryLabel];

  if (im_stripCategoryLabel)
  {
    [dictionary setValue:im_stripCategoryLabel forKey:@"f"];
  }

  v29 = [self receiveDateForMessageItem:itemCopy];
  if (v29)
  {
    [dictionary setValue:v29 forKey:@"t"];
  }

  body = [itemCopy body];
  string = [body string];

  if (string)
  {
    [dictionary setValue:string forKey:@"m"];
  }

  v32 = [self jsonSerializeDictionary:dictionary];
  v33 = IMLogHandleForCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = [self jsonSerializeDictionaryStrippingOutMessageContent:dictionary];
    v38 = 138412290;
    v39 = v34;
    _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Created serialize junk report: %@", &v38, 0xCu);
  }

  v35 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v32];
  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

+ (id)receiveDateForMessageItem:(id)item
{
  v12 = *MEMORY[0x277D85DE8];
  time = [item time];
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v4 setLocale:v5];
  [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss ZZZ"];
  v6 = [v4 stringFromDate:time];
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

+ (id)jsonSerializeDictionary:(id)dictionary
{
  v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionary options:0 error:0];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];

  return v4;
}

+ (id)jsonSerializeDictionaryStrippingOutMessageContent:(id)content
{
  v4 = MEMORY[0x277CBEB38];
  v5 = [content copy];
  v6 = [v4 dictionaryWithDictionary:v5];

  [v6 setObject:@"(hidden)" forKey:@"m"];
  v7 = [self jsonSerializeDictionary:v6];

  return v7;
}

+ (BOOL)validateReportJunkCarrierAddress:(id)address
{
  v15 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF MATCHES %@", @"^[+]?[0-9]+$"];
  if ([v4 evaluateWithObject:addressCopy])
  {
    v5 = [objc_alloc(MEMORY[0x277CBDB70]) initWithStringValue:addressCopy];
    digitsRemovingDialingCode = [v5 digitsRemovingDialingCode];
    v7 = [digitsRemovingDialingCode length];
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
      v14 = addressCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Not a valid report junk address from carrier. Carrier report junk address - %@", buf, 0xCu);
    }

    v8 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)fetchSMSReportJunkCarrierAddressForPhoneNumber:(id)number simID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D1A8F8] carrierBundleValueForKeyHierarchy:&unk_283F4EE88 phoneNumber:number simID:d];
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

+ (id)fetchMMSReportJunkCarrierAddressForPhoneNumber:(id)number simID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D1A8F8] carrierBundleValueForKeyHierarchy:&unk_283F4EEA0 phoneNumber:number simID:d];
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