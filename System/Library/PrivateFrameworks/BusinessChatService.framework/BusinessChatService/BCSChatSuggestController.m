@interface BCSChatSuggestController
- (BOOL)chatSuggestVisibilityForBusinessItem:(id)a3;
- (id)initWithUserDefaults:(void *)a3 identityService:(void *)a4 localeHelper:;
@end

@implementation BCSChatSuggestController

- (id)initWithUserDefaults:(void *)a3 identityService:(void *)a4 localeHelper:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = BCSChatSuggestController;
    v11 = objc_msgSendSuper2(&v13, sel_init);
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      objc_storeStrong(a1 + 3, a4);
    }
  }

  return a1;
}

- (BOOL)chatSuggestVisibilityForBusinessItem:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self)
  {
    localeHelper = self->_localeHelper;
  }

  else
  {
    localeHelper = 0;
  }

  v6 = localeHelper;
  v7 = [(BCSLocaleHelperProtocol *)v6 currentLocale];
  v8 = [(NSLocale *)v7 language];
  if (self)
  {
    v9 = self->_localeHelper;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = [(BCSLocaleHelperProtocol *)v10 currentLocale];
  v12 = [(NSLocale *)v11 country];
  v13 = [v4 _selectedVisibilityItemForLanguage:v8 country:v12];

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
    v23 = ABSLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v58 = "[BCSChatSuggestController chatSuggestVisibilityForBusinessItem:]";
      v24 = "%s Identity Service is nil";
LABEL_48:
      _os_log_error_impl(&dword_242072000, v23, OS_LOG_TYPE_ERROR, v24, buf, 0xCu);
    }

LABEL_19:
    v17 = 0;
    goto LABEL_30;
  }

  v19 = [(BCSIdentityServiceProtocol *)identityService businessChatAccount];

  if (!v19)
  {
    v23 = ABSLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v58 = "[BCSChatSuggestController chatSuggestVisibilityForBusinessItem:]";
      v24 = "%s BusinessChat account is nil";
      goto LABEL_48;
    }

    goto LABEL_19;
  }

  v20 = self->_identityService;
  v21 = [(BCSIdentityServiceProtocol *)v20 businessChatAccount];
  v22 = [v21 profileID];
  if (![v22 length])
  {
    v25 = [(BCSIdentityServiceProtocol *)self->_identityService businessChatAccount];
    v26 = [v25 loginID];
    v27 = [v26 length];

    if (v27)
    {
      goto LABEL_21;
    }

    v23 = ABSLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v58 = "[BCSChatSuggestController chatSuggestVisibilityForBusinessItem:]";
      v24 = "%s Both profileID and loginID have 0 length";
      goto LABEL_48;
    }

    goto LABEL_19;
  }

LABEL_21:
  v28 = [(BCSIdentityServiceProtocol *)self->_identityService businessChatAccount];
  v29 = [v28 profileID];
  v30 = [v29 length];

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

    v23 = [(BCSIdentityServiceProtocol *)self->_identityService businessChatAccount];
    v32 = [v23 profileID];
  }

  else
  {
    v33 = [(BCSIdentityServiceProtocol *)self->_identityService businessChatAccount];
    v34 = [v33 loginID];
    v35 = [v34 length];

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

    v23 = [(BCSIdentityServiceProtocol *)self->_identityService businessChatAccount];
    v32 = [v23 loginID];
  }

  v17 = v32;
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
  v40 = [v4 bizID];
  v41 = [v4 _isChatSuggestVisibleForVisibilityItem:v13 messagesIdentifier:v17 bizID:v40];

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
    v46 = [(BCSLocaleHelperProtocol *)v45 currentLocale];
    v47 = [(NSLocale *)v46 language];
    v56 = v4;
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
    v50 = [(BCSLocaleHelperProtocol *)v49 currentLocale];
    v51 = [(NSLocale *)v50 country];
    *buf = 136315906;
    v58 = "[BCSChatSuggestController chatSuggestVisibilityForBusinessItem:]";
    v59 = 2114;
    v60 = v43;
    v61 = 2114;
    v62 = v47;
    v63 = 2114;
    v64 = v51;
    _os_log_impl(&dword_242072000, v42, OS_LOG_TYPE_DEFAULT, "%s isChatSuggestVisible: %{public}@ device language:%{public}@ device country:%{public}@", buf, 0x2Au);

    v13 = v55;
    v4 = v56;
    v15 = v54;
  }

  v52 = *MEMORY[0x277D85DE8];
  return v41;
}

@end