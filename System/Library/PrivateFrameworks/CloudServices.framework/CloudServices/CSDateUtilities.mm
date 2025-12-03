@interface CSDateUtilities
+ (id)legacyDateFormatter;
+ (id)localStringFromDate:(id)date;
+ (id)posixDateFormatter;
+ (id)secureBackupDateFromString:(id)string;
@end

@implementation CSDateUtilities

+ (id)posixDateFormatter
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v3 = objc_alloc(MEMORY[0x277CBEAF8]);
  v5 = objc_msgSend_initWithLocaleIdentifier_(v3, v4, @"en_US_POSIX");
  objc_msgSend_setLocale_(v2, v6, v5);

  v8 = objc_msgSend_timeZoneForSecondsFromGMT_(MEMORY[0x277CBEBB0], v7, 0);
  objc_msgSend_setTimeZone_(v2, v9, v8);

  objc_msgSend_setDateFormat_(v2, v10, @"yyyy-MM-dd HH:mm:ss");

  return v2;
}

+ (id)legacyDateFormatter
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v3 = objc_alloc(MEMORY[0x277CBEAF8]);
  v5 = objc_msgSend_initWithLocaleIdentifier_(v3, v4, @"en_US_POSIX");
  objc_msgSend_setLocale_(v2, v6, v5);

  objc_msgSend_setDateFormat_(v2, v7, @"dd-MM-yyyy HH:mm:ss");

  return v2;
}

+ (id)secureBackupDateFromString:(id)string
{
  stringCopy = string;
  v7 = objc_msgSend_posixDateFormatter(self, v5, v6);
  v9 = objc_msgSend_dateFromString_(v7, v8, stringCopy);
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v13 = objc_msgSend_legacyDateFormatter(self, v10, v11);

    v12 = objc_msgSend_dateFromString_(v13, v14, stringCopy);
    v7 = v13;
  }

  return v12;
}

+ (id)localStringFromDate:(id)date
{
  v3 = MEMORY[0x277CCA968];
  dateCopy = date;
  v5 = objc_alloc_init(v3);
  v6 = objc_alloc(MEMORY[0x277CBEAF8]);
  v8 = objc_msgSend_initWithLocaleIdentifier_(v6, v7, @"en_US_POSIX");
  objc_msgSend_setLocale_(v5, v9, v8);

  objc_msgSend_setDateFormat_(v5, v10, @"yyyy-MM-dd HH:mm:ssZZZZZ");
  v13 = objc_msgSend_localTimeZone(MEMORY[0x277CBEBB0], v11, v12);
  objc_msgSend_setTimeZone_(v5, v14, v13);

  v16 = objc_msgSend_stringFromDate_(v5, v15, dateCopy);

  return v16;
}

@end