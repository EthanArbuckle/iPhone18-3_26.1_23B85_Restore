@interface BCSChatSuggestController
- (BOOL)chatSuggestVisibilityForBusinessItem:(id)item;
- (id)initWithUserDefaults:(void *)defaults identityService:(void *)service localeHelper:;
@end

@implementation BCSChatSuggestController

- (id)initWithUserDefaults:(void *)defaults identityService:(void *)service localeHelper:
{
  v8 = a2;
  defaultsCopy = defaults;
  serviceCopy = service;
  if (self)
  {
    v13.receiver = self;
    v13.super_class = BCSChatSuggestController;
    v11 = objc_msgSendSuper2(&v13, sel_init);
    self = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      objc_storeStrong(self + 2, defaults);
      objc_storeStrong(self + 3, service);
    }
  }

  return self;
}

- (BOOL)chatSuggestVisibilityForBusinessItem:(id)item
{
  v65 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (self)
  {
    localeHelper = self->_localeHelper;
  }

  else
  {
    localeHelper = 0;
  }

  v6 = localeHelper;
  currentLocale = [(BCSLocaleHelperProtocol *)v6 currentLocale];
  language = [(NSLocale *)currentLocale language];
  if (self)
  {
    v9 = self->_localeHelper;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  currentLocale2 = [(BCSLocaleHelperProtocol *)v10 currentLocale];
  country = [(NSLocale *)currentLocale2 country];
  v13 = [itemCopy _selectedVisibilityItemForLanguage:language country:country];

  if (self)
  {
    userDefaults = self->_userDefaults;
  }

  else
  {
    userDefaults = 0;
  }

  v15 = [(BCSUserDefaultsProviding *)userDefaults stringForKey:@"BCSCustomMessagesIdentifier"];
  if ([v15 length])
  {
    v16 = ABSLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v58 = "[BCSChatSuggestController chatSuggestVisibilityForBusinessItem:]";
      v59 = 2114;
      v60 = v13;
      _os_log_impl(&dword_242072000, v16, OS_LOG_TYPE_DEFAULT, "%s Using custom messages identifier for Chat Suggest with visibilityItem:%{public}@", buf, 0x16u);
    }

    v17 = v15;
    goto LABEL_37;
  }

  if (!self || (identityService = self->_identityService) == 0)
  {
    businessChatAccount5 = ABSLogCommon();
    if (os_log_type_enabled(businessChatAccount5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v58 = "[BCSChatSuggestController chatSuggestVisibilityForBusinessItem:]";
      v24 = "%s Identity Service is nil";
LABEL_48:
      _os_log_error_impl(&dword_242072000, businessChatAccount5, OS_LOG_TYPE_ERROR, v24, buf, 0xCu);
    }

LABEL_19:
    v17 = 0;
    goto LABEL_30;
  }

  businessChatAccount = [(BCSIdentityServiceProtocol *)identityService businessChatAccount];

  if (!businessChatAccount)
  {
    businessChatAccount5 = ABSLogCommon();
    if (os_log_type_enabled(businessChatAccount5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v58 = "[BCSChatSuggestController chatSuggestVisibilityForBusinessItem:]";
      v24 = "%s BusinessChat account is nil";
      goto LABEL_48;
    }

    goto LABEL_19;
  }

  v20 = self->_identityService;
  businessChatAccount2 = [(BCSIdentityServiceProtocol *)v20 businessChatAccount];
  profileID = [businessChatAccount2 profileID];
  if (![profileID length])
  {
    businessChatAccount3 = [(BCSIdentityServiceProtocol *)self->_identityService businessChatAccount];
    loginID = [businessChatAccount3 loginID];
    v27 = [loginID length];

    if (v27)
    {
      goto LABEL_21;
    }

    businessChatAccount5 = ABSLogCommon();
    if (os_log_type_enabled(businessChatAccount5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v58 = "[BCSChatSuggestController chatSuggestVisibilityForBusinessItem:]";
      v24 = "%s Both profileID and loginID have 0 length";
      goto LABEL_48;
    }

    goto LABEL_19;
  }

LABEL_21:
  businessChatAccount4 = [(BCSIdentityServiceProtocol *)self->_identityService businessChatAccount];
  profileID2 = [businessChatAccount4 profileID];
  v30 = [profileID2 length];

  if (v30)
  {
    v31 = ABSLogCommon();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v58 = "[BCSChatSuggestController chatSuggestVisibilityForBusinessItem:]";
      v59 = 2114;
      v60 = v13;
      _os_log_impl(&dword_242072000, v31, OS_LOG_TYPE_DEFAULT, "%s Using iCloud DSID identifier for Chat Suggest with visibilityItem:%{public}@", buf, 0x16u);
    }

    businessChatAccount5 = [(BCSIdentityServiceProtocol *)self->_identityService businessChatAccount];
    profileID3 = [businessChatAccount5 profileID];
  }

  else
  {
    businessChatAccount6 = [(BCSIdentityServiceProtocol *)self->_identityService businessChatAccount];
    loginID2 = [businessChatAccount6 loginID];
    v35 = [loginID2 length];

    if (!v35)
    {
      v17 = 0;
      goto LABEL_31;
    }

    v36 = ABSLogCommon();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v58 = "[BCSChatSuggestController chatSuggestVisibilityForBusinessItem:]";
      v59 = 2114;
      v60 = v13;
      _os_log_impl(&dword_242072000, v36, OS_LOG_TYPE_DEFAULT, "%s Using SIM phone number identifier for Chat Suggest with visibilityItem:%{public}@", buf, 0x16u);
    }

    businessChatAccount5 = [(BCSIdentityServiceProtocol *)self->_identityService businessChatAccount];
    profileID3 = [businessChatAccount5 loginID];
  }

  v17 = profileID3;
LABEL_30:

LABEL_31:
  v37 = [v17 length];
  v38 = ABSLogCommon();
  v39 = v38;
  if (v37)
  {
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v58 = "[BCSChatSuggestController chatSuggestVisibilityForBusinessItem:]";
      v59 = 2114;
      v60 = v13;
      _os_log_impl(&dword_242072000, v39, OS_LOG_TYPE_DEFAULT, "%s Messages Identifier is valid -- visibilityItem:%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v58 = "[BCSChatSuggestController chatSuggestVisibilityForBusinessItem:]";
    _os_log_error_impl(&dword_242072000, v39, OS_LOG_TYPE_ERROR, "%s Messsages identifier has 0 length", buf, 0xCu);
  }

LABEL_37:
  bizID = [itemCopy bizID];
  v41 = [itemCopy _isChatSuggestVisibleForVisibilityItem:v13 messagesIdentifier:v17 bizID:bizID];

  v42 = ABSLogCommon();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = NSStringFromBOOL();
    v55 = v13;
    if (self)
    {
      v44 = self->_localeHelper;
    }

    else
    {
      v44 = 0;
    }

    v45 = v44;
    currentLocale3 = [(BCSLocaleHelperProtocol *)v45 currentLocale];
    language2 = [(NSLocale *)currentLocale3 language];
    v56 = itemCopy;
    v54 = v15;
    if (self)
    {
      v48 = self->_localeHelper;
    }

    else
    {
      v48 = 0;
    }

    v49 = v48;
    currentLocale4 = [(BCSLocaleHelperProtocol *)v49 currentLocale];
    country2 = [(NSLocale *)currentLocale4 country];
    *buf = 136315906;
    v58 = "[BCSChatSuggestController chatSuggestVisibilityForBusinessItem:]";
    v59 = 2114;
    v60 = v43;
    v61 = 2114;
    v62 = language2;
    v63 = 2114;
    v64 = country2;
    _os_log_impl(&dword_242072000, v42, OS_LOG_TYPE_DEFAULT, "%s isChatSuggestVisible: %{public}@ device language:%{public}@ device country:%{public}@", buf, 0x2Au);

    v13 = v55;
    itemCopy = v56;
    v15 = v54;
  }

  v52 = *MEMORY[0x277D85DE8];
  return v41;
}

@end