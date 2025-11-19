@interface ASEventUID
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
- (ASEventUID)initWithCalFrameworkString:(id)a3;
- (ASEventUID)initWithGlobalObjectIdString:(id)a3;
- (ASEventUID)initWithUidString:(id)a3;
- (id)_uidStringBySettingExceptionDateInOutlookUUIDString:(id)a3 withTimeZone:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)recurrenceIDForResponseEmail;
- (id)uidForActiveSyncWithTimeZone:(id)a3;
- (id)uidForCalFramework;
- (id)uidForResponseEmailWithTimeZone:(id)a3;
- (id)uidFromGlobalObjId:(id)a3 outIsOutlookCreatedUid:(BOOL *)a4;
- (void)setExceptionDate:(id)a3;
@end

@implementation ASEventUID

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_5 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_5;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_5 = v2;
    acceptsTopLevelLeaves___haveChecked_5 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_5 == 1)
  {
    v2 = parsingLeafNode___result_5;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_5 = v2;
    parsingLeafNode___haveChecked_5 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_5 == 1)
  {
    v2 = parsingWithSubItems___result_5;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_5 = v2;
    parsingWithSubItems___haveChecked_5 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_5 == 1)
  {
    v2 = frontingBasicTypes___result_5;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_5 = v2;
    frontingBasicTypes___haveChecked_5 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_5 == 1)
  {
    v2 = notifyOfUnknownTokens___result_5;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_5 = v2;
    notifyOfUnknownTokens___haveChecked_5 = 1;
  }

  return v2 & 1;
}

- (id)uidFromGlobalObjId:(id)a3 outIsOutlookCreatedUid:(BOOL *)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v5 options:0];
  v7 = DALoggingwithCategory();
  v8 = MEMORY[0x277D03988];
  v9 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v7, v9))
  {
    *buf = 138412290;
    *&buf[4] = v6;
    _os_log_impl(&dword_24A0AC000, v7, v9, "creating a uid, the original globalobjid looked like this, after base64decoding : %@", buf, 0xCu);
  }

  if ([v6 length] < 0x28 || ((v10 = objc_msgSend(v6, "bytes"), *v10 == 0xE0008200000004) ? (v11 = v10[1] == 0x8E0821A10B7C574) : (v11 = 0), !v11))
  {
    v12 = DALoggingwithCategory();
    v13 = *(v8 + 3);
    if (!os_log_type_enabled(v12, v13))
    {
LABEL_13:

LABEL_14:
      v15 = 0;
      goto LABEL_15;
    }

    *buf = 138412290;
    *&buf[4] = v6;
    v14 = "Malformed globalObjId: either too small, or incorrect prefix, (global obj id is %@)";
LABEL_12:
    _os_log_impl(&dword_24A0AC000, v12, v13, v14, buf, 0xCu);
    goto LABEL_13;
  }

  v18 = [v6 bytes];
  v19 = *(v18 + 17);
  v20 = (*(v18 + 16) << 8);
  v21 = *(v18 + 18);
  v22 = v20 | v19;
  if (v20 | v19)
  {
    v23 = *(v18 + 19);
    v24 = [MEMORY[0x277CBEBB0] gmt];
    v25 = DALoggingwithCategory();
    v26 = *(v8 + 6);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = [MEMORY[0x277CCA8F8] dateWithYear:v22 month:v21 day:v23 hour:0 minute:0 second:0 timeZone:v24];
      *buf = 138412290;
      *&buf[4] = v27;
      _os_log_impl(&dword_24A0AC000, v25, v26, "Interesting, but will be ignored: there's an Outlook-created exception date here: %@", buf, 0xCu);
    }
  }

  else if (*(v18 + 18) || *(v18 + 19))
  {
    v12 = DALoggingwithCategory();
    v13 = *(v8 + 3);
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_13;
    }

    *buf = 138412290;
    *&buf[4] = v6;
    v14 = "Malformed globalObjId: no exception timestamp, but garbage following the prefix (global obj id is %@)";
    goto LABEL_12;
  }

  v28 = [v6 length];
  v29 = [v6 bytes];
  if (v28 - 40 >= 13)
  {
    v30 = v29;
    if (*(v29 + 40) == 0x6469552D6C614376 && *(v29 + 48) == 1)
    {
      v33 = v28 - 52;
      do
      {
        v34 = v33;
        v35 = v33-- != 0;
      }

      while (v35 && !*(v29 + 51 + v34));
      v36 = v34;
      if (v34 && *(v29 + 53))
      {
        v37 = objc_alloc(MEMORY[0x277CCACA8]);
        v38 = v30 + 52;
        v39 = v36;
        v40 = 4;
      }

      else
      {
        v37 = objc_alloc(MEMORY[0x277CCACA8]);
        v38 = v30 + 52;
        v39 = v36;
        v40 = 10;
      }

      v15 = [v37 initWithBytes:v38 length:v39 encoding:v40];
      goto LABEL_15;
    }
  }

  if (([v6 length] - 20) < 1)
  {
    goto LABEL_14;
  }

  if (a4)
  {
    *a4 = 1;
  }

  v32 = [v6 mutableCopy];
  *buf = 0uLL;
  [v32 replaceBytesInRange:16 withBytes:4 length:{buf, 4}];
  v15 = [v32 da_uppercaseHexStringWithoutSpaces];

LABEL_15:
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_uidStringBySettingExceptionDateInOutlookUUIDString:(id)a3 withTimeZone:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277CBEA90] da_dataWithHexString:a3 stringIsUppercase:1];
  v8 = [v7 mutableCopy];

  if (!v6)
  {
    v6 = [MEMORY[0x277CBEBB0] gmt];
  }

  v9 = [(NSDate *)self->_exceptionDate dateWithCalendarFormat:0 timeZone:v6];
  v10 = [v9 yearOfCommonEra];
  v15 = [v9 monthOfYear];
  v14 = [v9 dayOfMonth];
  v13 = v10;
  [v8 replaceBytesInRange:16 withBytes:{1, &v13 + 1}];
  [v8 replaceBytesInRange:17 withBytes:{1, &v13}];
  [v8 replaceBytesInRange:18 withBytes:{1, &v15}];
  [v8 replaceBytesInRange:19 withBytes:{1, &v14}];
  v11 = [v8 da_uppercaseHexStringWithoutSpaces];

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = ASEventUID;
  v4 = [(ASEventUID *)&v11 description];
  exceptionDate = self->_exceptionDate;
  uidWithoutExceptionDate = self->_uidWithoutExceptionDate;
  v7 = [(ASEventUID *)self uidForCalFramework];
  v8 = [(ASEventUID *)self recurrenceIDForResponseEmail];
  v9 = [v3 stringWithFormat:@"%@, _exceptionDate %@, _uidWithoutExceptionDate %@, uidForCalFramework %@, recurrenceIDForResponseEmail %@", v4, exceptionDate, uidWithoutExceptionDate, v7, v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ASEventUID alloc];
  v5 = [(ASEventUID *)self uidForCalFramework];
  v6 = [(ASEventUID *)v4 initWithCalFrameworkString:v5];

  return v6;
}

- (ASEventUID)initWithCalFrameworkString:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = ASEventUID;
  v5 = [(ASEventUID *)&v23 init];
  if (v5)
  {
    v8 = 0;
    if ([v4 length] >= 0x10)
    {
      v6 = [v4 UTF8String];
      if (*v6 == 0xE0008200000004 && v6[1] == 0x8E0821A10B7C574)
      {
        v8 = 1;
      }
    }

    v5->_isOutlookCreatedUid = v8;
    v9 = [v4 rangeOfString:@"<!ExceptionDate!>"];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v4;
      v12 = 0;
    }

    else
    {
      v13 = v9;
      v14 = v10;
      v11 = [v4 substringToIndex:v9];
      v15 = [v4 substringFromIndex:v13 + v14];
      v12 = [MEMORY[0x277CBEAA8] dateWithActiveSyncStringFromYearMonthDay:v15];
    }

    if (v5->_isOutlookCreatedUid)
    {
      v16 = [(ASEventUID *)v5 _uidStringBySettingExceptionDateInOutlookUUIDString:v11 withTimeZone:0];
    }

    else
    {
      v16 = v11;
    }

    uidWithoutExceptionDate = v5->_uidWithoutExceptionDate;
    v5->_uidWithoutExceptionDate = v16;

    exceptionDate = v5->_exceptionDate;
    v5->_exceptionDate = v12;
  }

  v19 = DALoggingwithCategory();
  v20 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v19, v20))
  {
    *buf = 138412546;
    v25 = v4;
    v26 = 2112;
    v27 = v5;
    _os_log_impl(&dword_24A0AC000, v19, v20, "in initWithCalFrameworkString: calFrameworkString is %@, self is %@", buf, 0x16u);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

- (ASEventUID)initWithGlobalObjectIdString:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ASEventUID;
  v5 = [(ASEventUID *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(ASEventUID *)v5 uidFromGlobalObjId:v4 outIsOutlookCreatedUid:&v5->_isOutlookCreatedUid];
    uidWithoutExceptionDate = v6->_uidWithoutExceptionDate;
    v6->_uidWithoutExceptionDate = v7;
  }

  return v6;
}

- (ASEventUID)initWithUidString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASEventUID;
  v5 = [(ASEventUID *)&v9 init];
  if (v5)
  {
    if ([v4 hasPrefix:@"040000008200E00074C5B7101A82E008"])
    {
      v5->_isOutlookCreatedUid = 1;
      v6 = [(ASEventUID *)v5 _uidStringBySettingExceptionDateInOutlookUUIDString:v4 withTimeZone:0];
    }

    else
    {
      v5->_isOutlookCreatedUid = 0;
      v6 = v4;
    }

    uidWithoutExceptionDate = v5->_uidWithoutExceptionDate;
    v5->_uidWithoutExceptionDate = v6;
  }

  return v5;
}

- (id)uidForCalFramework
{
  exceptionDate = self->_exceptionDate;
  uidWithoutExceptionDate = self->_uidWithoutExceptionDate;
  if (exceptionDate)
  {
    v5 = [(NSDate *)exceptionDate activeSyncStringForYearMonthDay];
    v6 = [(NSString *)uidWithoutExceptionDate stringByAppendingFormat:@"%@%@", @"<!ExceptionDate!>", v5];
  }

  else
  {
    v6 = uidWithoutExceptionDate;
  }

  return v6;
}

- (id)uidForResponseEmailWithTimeZone:(id)a3
{
  uidWithoutExceptionDate = self->_uidWithoutExceptionDate;
  if (self->_isOutlookCreatedUid)
  {
    v5 = [(ASEventUID *)self _uidStringBySettingExceptionDateInOutlookUUIDString:uidWithoutExceptionDate withTimeZone:a3];
  }

  else
  {
    v5 = uidWithoutExceptionDate;
  }

  return v5;
}

- (id)recurrenceIDForResponseEmail
{
  exceptionDate = self->_exceptionDate;
  if (exceptionDate)
  {
    exceptionDate = [exceptionDate activeSyncStringWithoutSeparators];
    v2 = vars8;
  }

  return exceptionDate;
}

- (id)uidForActiveSyncWithTimeZone:(id)a3
{
  uidWithoutExceptionDate = self->_uidWithoutExceptionDate;
  if (self->_isOutlookCreatedUid)
  {
    v5 = [(ASEventUID *)self _uidStringBySettingExceptionDateInOutlookUUIDString:uidWithoutExceptionDate withTimeZone:a3];
  }

  else
  {
    v5 = uidWithoutExceptionDate;
  }

  return v5;
}

- (void)setExceptionDate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [MEMORY[0x277CBEBB0] gmt];
    v7 = [v5 dateWithCalendarFormat:0 timeZone:v6];
    v11 = [MEMORY[0x277CCA8F8] dateWithYear:objc_msgSend(v7 month:"yearOfCommonEra") day:objc_msgSend(v7 hour:"monthOfYear") minute:objc_msgSend(v7 second:"dayOfMonth") timeZone:{objc_msgSend(v7, "hourOfDay"), objc_msgSend(v7, "minuteOfHour"), objc_msgSend(v7, "secondOfMinute"), v6}];

    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  exceptionDate = self->_exceptionDate;
  p_exceptionDate = &self->_exceptionDate;
  if (exceptionDate != v8)
  {
    objc_storeStrong(p_exceptionDate, v8);
  }

  MEMORY[0x2821F96F8]();
}

@end