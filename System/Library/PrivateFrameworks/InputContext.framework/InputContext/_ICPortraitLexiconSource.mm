@interface _ICPortraitLexiconSource
- (_ICPortraitLexiconSource)init;
- (id)_makeContactDelegate;
- (id)_makeNamedEntityDelegate;
- (id)_makePPNamedEntityStore;
- (void)provideFeedbackForString:(id)string type:(unsigned __int8)type style:(unsigned __int8)style;
- (void)startLoadingWithManager:(id)manager;
@end

@implementation _ICPortraitLexiconSource

- (_ICPortraitLexiconSource)init
{
  v8.receiver = self;
  v8.super_class = _ICPortraitLexiconSource;
  v2 = [(_ICPortraitLexiconSource *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    contactStore = v2->_contactStore;
    v2->_contactStore = v3;

    _makePPNamedEntityStore = [(_ICPortraitLexiconSource *)v2 _makePPNamedEntityStore];
    namedEntityStore = v2->_namedEntityStore;
    v2->_namedEntityStore = _makePPNamedEntityStore;
  }

  return v2;
}

- (id)_makePPNamedEntityStore
{
  if (_makePPNamedEntityStore_onceToken != -1)
  {
    [_ICPortraitLexiconSource _makePPNamedEntityStore];
  }

  v3 = _makePPNamedEntityStore_store;

  return v3;
}

- (void)startLoadingWithManager:(id)manager
{
  objc_storeWeak(&self->_manager, manager);
  v4 = _ICPersNamedEntityOSLogFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_254BD0000, v4, OS_LOG_TYPE_INFO, "_ICPortraitLexiconSource loading data", buf, 2u);
  }

  _makeContactDelegate = [(_ICPortraitLexiconSource *)self _makeContactDelegate];
  contactDelegate = self->_contactDelegate;
  self->_contactDelegate = _makeContactDelegate;

  contactStore = self->_contactStore;
  v8 = self->_contactDelegate;
  v21 = 0;
  [(PPContactStore *)contactStore loadContactNameRecordsAndMonitorChangesWithDelegate:v8 error:&v21];
  v9 = v21;
  if (v9)
  {
    v10 = _ICPersContactOSLogFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(_ICPortraitLexiconSource *)v9 startLoadingWithManager:v10];
    }
  }

  _makeNamedEntityDelegate = [(_ICPortraitLexiconSource *)self _makeNamedEntityDelegate];
  namedEntityDelegate = self->_namedEntityDelegate;
  self->_namedEntityDelegate = _makeNamedEntityDelegate;

  v13 = objc_alloc_init(MEMORY[0x277D3A430]);
  v14 = +[_ICPortraitUtilities acceptedSourceBundleIds];
  [v13 setMatchingSourceBundleIds:v14];

  v15 = +[_ICPortraitUtilities excludedAlgorithms];
  [v13 setExcludingAlgorithms:v15];

  namedEntityStore = self->_namedEntityStore;
  v17 = self->_namedEntityDelegate;
  v20 = 0;
  [(PPNamedEntityStore *)namedEntityStore loadNamedEntityRecordsAndMonitorChangesWithDelegate:v17 query:v13 error:&v20];
  v18 = v20;
  if (v18)
  {
    v19 = _ICPersNamedEntityOSLogFacility();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(_ICPortraitLexiconSource *)v18 startLoadingWithManager:v19];
    }
  }
}

- (id)_makeContactDelegate
{
  v3 = [objc_alloc(MEMORY[0x277D3A370]) initWithName:@"ICPortraitLexiconSource"];
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48___ICPortraitLexiconSource__makeContactDelegate__block_invoke;
  v15[3] = &unk_2797ADBD0;
  objc_copyWeak(&v16, &location);
  [v3 setContactNameRecordsSetup:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48___ICPortraitLexiconSource__makeContactDelegate__block_invoke_2;
  v13[3] = &unk_2797ADBF8;
  objc_copyWeak(&v14, &location);
  [v3 setContactNameRecordsHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48___ICPortraitLexiconSource__makeContactDelegate__block_invoke_3;
  v11[3] = &unk_2797ADC20;
  objc_copyWeak(&v12, &location);
  [v3 setContactNameRecordsCompletion:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48___ICPortraitLexiconSource__makeContactDelegate__block_invoke_4;
  v9[3] = &unk_2797ADBD0;
  objc_copyWeak(&v10, &location);
  [v3 setRecentContactNameRecordsSetup:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48___ICPortraitLexiconSource__makeContactDelegate__block_invoke_5;
  v7[3] = &unk_2797ADBF8;
  objc_copyWeak(&v8, &location);
  [v3 setRecentContactNameRecordsHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48___ICPortraitLexiconSource__makeContactDelegate__block_invoke_6;
  v5[3] = &unk_2797ADC20;
  objc_copyWeak(&v6, &location);
  [v3 setRecentContactNameRecordsCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v3;
}

- (id)_makeNamedEntityDelegate
{
  v3 = [objc_alloc(MEMORY[0x277D3A440]) initWithName:@"ICPortraitLexiconSource"];
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __52___ICPortraitLexiconSource__makeNamedEntityDelegate__block_invoke;
  v17[3] = &unk_2797ADBD0;
  objc_copyWeak(&v18, &location);
  [v3 setNamedEntityRecordsSetup:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52___ICPortraitLexiconSource__makeNamedEntityDelegate__block_invoke_2;
  v15[3] = &unk_2797ADC48;
  objc_copyWeak(&v16, &location);
  [v3 setNamedEntityRecordsHandler:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52___ICPortraitLexiconSource__makeNamedEntityDelegate__block_invoke_3;
  v13[3] = &unk_2797ADC20;
  objc_copyWeak(&v14, &location);
  [v3 setNamedEntityRecordsCompletion:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52___ICPortraitLexiconSource__makeNamedEntityDelegate__block_invoke_4;
  v11[3] = &unk_2797ADBD0;
  objc_copyWeak(&v12, &location);
  [v3 setRecentNamedEntityRecordsSetup:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52___ICPortraitLexiconSource__makeNamedEntityDelegate__block_invoke_5;
  v9[3] = &unk_2797ADC48;
  objc_copyWeak(&v10, &location);
  [v3 setRecentNamedEntityRecordsHandler:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52___ICPortraitLexiconSource__makeNamedEntityDelegate__block_invoke_6;
  v7[3] = &unk_2797ADC20;
  objc_copyWeak(&v8, &location);
  [v3 setRecentNamedEntityRecordsCompletion:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52___ICPortraitLexiconSource__makeNamedEntityDelegate__block_invoke_7;
  v5[3] = &unk_2797ADC20;
  objc_copyWeak(&v6, &location);
  [v3 setResetNamedEntityRecordData:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v3;
}

- (void)provideFeedbackForString:(id)string type:(unsigned __int8)type style:(unsigned __int8)style
{
  styleCopy = style;
  typeCopy = type;
  stringCopy = string;
  if (typeCopy == 3)
  {
    v9 = [objc_alloc(MEMORY[0x277D3A3B8]) initWithOfferedString:stringCopy];
LABEL_15:
    v10 = v9;
    v11 = _ICPersNamedEntityOSLogFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [_ICPortraitLexiconSource provideFeedbackForString:styleCopy type:typeCopy style:v11];
    }

    [(PPNamedEntityStore *)self->_namedEntityStore registerFeedback:v10 completion:0];
    goto LABEL_18;
  }

  if (typeCopy == 1 && styleCopy == 1)
  {
    v9 = [objc_alloc(MEMORY[0x277D3A3B8]) initWithExplicitlyEngagedString:stringCopy];
    goto LABEL_15;
  }

  if (typeCopy == 1 && styleCopy == 2)
  {
    v9 = [objc_alloc(MEMORY[0x277D3A3B8]) initWithImplicitlyEngagedString:stringCopy];
    goto LABEL_15;
  }

  if (typeCopy == 2 && styleCopy == 1)
  {
    v9 = [objc_alloc(MEMORY[0x277D3A3B8]) initWithExplicitlyRejectedString:stringCopy];
    goto LABEL_15;
  }

  if (typeCopy == 2 && styleCopy == 2)
  {
    v9 = [objc_alloc(MEMORY[0x277D3A3B8]) initWithImplicitlyRejectedString:stringCopy];
    goto LABEL_15;
  }

  v10 = _ICPersNamedEntityOSLogFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [_ICPortraitLexiconSource provideFeedbackForString:typeCopy type:styleCopy style:v10];
  }

LABEL_18:
}

- (void)startLoadingWithManager:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_254BD0000, a2, OS_LOG_TYPE_ERROR, "failed to load contact name records from Portrait: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)startLoadingWithManager:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_254BD0000, a2, OS_LOG_TYPE_ERROR, "failed to load named entity records from Portrait: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)provideFeedbackForString:(int)a1 type:(int)a2 style:(os_log_t)log .cold.1(int a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109376;
  v4[1] = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&dword_254BD0000, log, OS_LOG_TYPE_ERROR, "Error: feedback received by _ICPortraitLexiconSource with unknown type or style: %d / %d", v4, 0xEu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)provideFeedbackForString:(unsigned __int8)a1 type:(int)a2 style:(os_log_t)log .cold.2(unsigned __int8 a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109376;
  v4[1] = a2;
  v5 = 1024;
  v6 = a1;
  _os_log_debug_impl(&dword_254BD0000, log, OS_LOG_TYPE_DEBUG, "Feedback received by _ICPortraitLexiconSource with type = %d, style = %d", v4, 0xEu);
  v3 = *MEMORY[0x277D85DE8];
}

@end