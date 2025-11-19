@interface BUCellularSettings
+ (BOOL)shouldShowCellularAutomaticDownloadsSwitch;
+ (id)_copyValueForCarrierBundleKey:(id)a3;
+ (id)settingsForIdentity:(id)a3;
- (BUCellularSettings)initWithDefaultsKey:(id)a3;
- (id)_cellularSettings;
- (int64_t)cellularDataPrompt;
- (void)setAllowAutomaticDownloads:(BOOL)a3;
- (void)setCellularDataPrompt:(int64_t)a3;
@end

@implementation BUCellularSettings

+ (id)settingsForIdentity:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v8 = objc_msgSend_defaultsKey(v4, v6, v7);

  v10 = objc_msgSend_initWithDefaultsKey_(v5, v9, v8);

  return v10;
}

- (BUCellularSettings)initWithDefaultsKey:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BUCellularSettings;
  v6 = [(BUCellularSettings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_defaultsKey, a3);
  }

  return v7;
}

- (void)setAllowAutomaticDownloads:(BOOL)a3
{
  v3 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], a2, a3);
  CFPreferencesSetAppValue(@"AllowAutoDownloadOnCellular", v3, @"com.apple.iBooks");
}

- (int64_t)cellularDataPrompt
{
  v4 = objc_msgSend__cellularSettings(self, a2, v2);
  v6 = objc_msgSend_objectForKey_(v4, v5, self->_defaultsKey);
  v8 = objc_msgSend_objectForKey_(v6, v7, @"CellularDataPrompt");
  if (objc_msgSend_isEqualToString_(v8, v9, @"Always"))
  {
    v11 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v8, v10, @"OverLimit"))
  {
    v11 = 0;
  }

  else if (objc_msgSend_isEqualToString_(v8, v12, @"Never"))
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setCellularDataPrompt:(int64_t)a3
{
  v15 = objc_msgSend__cellularSettings(self, a2, a3);
  v6 = objc_msgSend_objectForKey_(v15, v5, self->_defaultsKey);
  v7 = objc_alloc(MEMORY[0x277CBEB38]);
  v9 = objc_msgSend_initWithDictionary_(v7, v8, v15);
  v10 = objc_alloc(MEMORY[0x277CBEB38]);
  v12 = objc_msgSend_initWithDictionary_(v10, v11, v6);
  objc_msgSend_setObject_forKey_(v9, v13, v12, self->_defaultsKey);
  if (a3 <= 2)
  {
    objc_msgSend_setObject_forKey_(v12, v14, off_278D1D200[a3], @"CellularDataPrompt");
  }

  CFPreferencesSetAppValue(@"CellularSettings", v9, @"com.apple.iBooks");
}

+ (BOOL)shouldShowCellularAutomaticDownloadsSwitch
{
  v2 = objc_opt_class();
  v4 = objc_msgSend__copyValueForCarrierBundleKey_(v2, v3, @"ShowiTunesStoreAutoDownloadOverCellularSwitch");
  if (v4)
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = objc_msgSend_BOOLValue(v4, v5, v6);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)_cellularSettings
{
  v2 = CFPreferencesCopyValue(@"CellularSettings", @"com.apple.iBooks", @"mobile", *MEMORY[0x277CBF010]);

  return v2;
}

+ (id)_copyValueForCarrierBundleKey:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CC37B0]);
  v6 = objc_msgSend_initWithQueue_(v4, v5, 0);
  v20 = 0;
  v8 = objc_msgSend_getCurrentDataSubscriptionContextSync_(v6, v7, &v20);
  v9 = v20;
  if (v8)
  {
    v10 = objc_alloc(MEMORY[0x277CC3620]);
    v12 = objc_msgSend_initWithBundleType_(v10, v11, 1);
    v19 = v9;
    v14 = objc_msgSend_copyCarrierBundleValue_key_bundleType_error_(v6, v13, v8, v3, v12, &v19);
    v15 = v19;

    v9 = v15;
  }

  else
  {
    v12 = BookUtilityLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_241DCF934(v9, v12);
    }

    v14 = 0;
  }

  if (v9)
  {
    v16 = BookUtilityLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_241DCF9AC(v9, v16, v17);
    }
  }

  return v14;
}

@end