@interface BUAppGroup
+ (BOOL)isUnitTesting;
+ (BUAppGroup)books;
- (BUAppGroup)initWithIdentifier:(id)identifier;
- (NSURL)containerURL;
@end

@implementation BUAppGroup

+ (BUAppGroup)books
{
  if (qword_280BC5E30 != -1)
  {
    sub_241DA8C80();
  }

  v3 = qword_280BC5E28;

  return v3;
}

- (NSURL)containerURL
{
  containerURL = self->_containerURL;
  if (containerURL)
  {
    goto LABEL_8;
  }

  v4 = objc_opt_class();
  if (objc_msgSend_isUnitTesting(v4, v5, v6))
  {
    if (qword_27EC729D8 != -1)
    {
      sub_241DCFD7C();
    }

    v9 = qword_27EC729E0;
    v10 = self->_containerURL;
    self->_containerURL = v9;
  }

  else
  {
    v10 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v7, v8);
    v13 = objc_msgSend_identifier(self, v11, v12);
    v15 = objc_msgSend_containerURLForSecurityApplicationGroupIdentifier_(v10, v14, v13);
    v16 = self->_containerURL;
    self->_containerURL = v15;
  }

  containerURL = self->_containerURL;
  if (containerURL)
  {
LABEL_8:
    v17 = containerURL;
  }

  else
  {
    v19 = BookUtilityLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_241DCFD90(self, v19, v20);
    }

    v21 = MEMORY[0x277CBEBC0];
    v22 = NSTemporaryDirectory();
    v17 = objc_msgSend_fileURLWithPath_isDirectory_(v21, v23, v22, 1);
  }

  return v17;
}

+ (BOOL)isUnitTesting
{
  if (qword_280BC5DB8 != -1)
  {
    sub_241DA9104();
  }

  return byte_280BC5DC0;
}

- (BUAppGroup)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = BUAppGroup;
  v6 = [(BUAppGroup *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    v8 = objc_alloc(MEMORY[0x277CBEBD0]);
    v10 = objc_msgSend_initWithSuiteName_(v8, v9, identifierCopy);
    userDefaults = v7->_userDefaults;
    v7->_userDefaults = v10;
  }

  return v7;
}

@end