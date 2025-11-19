@interface HUContactManager
+ (id)sharedManager;
- (CNMonogrammer)monogrammer;
- (HUContactManager)init;
- (id)contactForEmailAddress:(id)a3 keysToFetch:(id)a4;
- (id)userDataFromEmail:(id)a3 monogramDiameter:(double)a4;
- (void)contactStoreDidChange:(id)a3;
- (void)dealloc;
- (void)setMonogramDiameter:(double)a3;
@end

@implementation HUContactManager

+ (id)sharedManager
{
  if (qword_281122218 != -1)
  {
    dispatch_once(&qword_281122218, &__block_literal_global_291);
  }

  v3 = _MergedGlobals_640;

  return v3;
}

void __33__HUContactManager_sharedManager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _MergedGlobals_640;
  _MergedGlobals_640 = v0;
}

- (HUContactManager)init
{
  v9.receiver = self;
  v9.super_class = HUContactManager;
  v2 = [(HUContactManager *)&v9 init];
  v3 = v2;
  if (v2)
  {
    cachedContactByEmails = v2->_cachedContactByEmails;
    v2->_cachedContactByEmails = MEMORY[0x277CBEC10];

    v5 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    contactStore = v3->_contactStore;
    v3->_contactStore = v5;

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v3 selector:sel_contactStoreDidChange_ name:*MEMORY[0x277CBD140] object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HUContactManager;
  [(HUContactManager *)&v4 dealloc];
}

- (void)contactStoreDidChange:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HUContactManager_contactStoreDidChange___block_invoke;
  block[3] = &unk_277DB8488;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)contactForEmailAddress:(id)a3 keysToFetch:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(HUContactManager *)self cachedContactByEmails];
    v9 = [v8 objectForKeyedSubscript:v6];

    if (v9 && [v9 areKeysAvailable:v7])
    {
      v10 = v9;
    }

    else
    {
      v11 = [v7 arrayByAddingObject:*MEMORY[0x277CBCFC0]];
      v12 = [(HUContactManager *)self contactStore];
      v13 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:v6];
      v25 = 0;
      v14 = [v12 unifiedContactsMatchingPredicate:v13 keysToFetch:v11 error:&v25];
      v15 = v25;

      if (v14)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v27 = __Block_byref_object_copy__32;
        v28 = __Block_byref_object_dispose__32;
        v29 = 0;
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __55__HUContactManager_contactForEmailAddress_keysToFetch___block_invoke;
        v22[3] = &unk_277DC4860;
        v16 = v6;
        v23 = v16;
        v24 = buf;
        [v14 enumerateObjectsUsingBlock:v22];
        v17 = *(*&buf[8] + 40);
        if (v17)
        {
          v18 = [(HUContactManager *)self cachedContactByEmails];
          v19 = [v18 mutableCopy];

          [v19 setObject:*(*&buf[8] + 40) forKey:v16];
          [(HUContactManager *)self setCachedContactByEmails:v19];

          v17 = *(*&buf[8] + 40);
        }

        v10 = v17;

        _Block_object_dispose(buf, 8);
      }

      else
      {
        v20 = HFLogForCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = v6;
          *&buf[12] = 2112;
          *&buf[14] = v15;
          _os_log_error_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_ERROR, "unifiedContactsMatching email %@ error: %@", buf, 0x16u);
        }

        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __55__HUContactManager_contactForEmailAddress_keysToFetch___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 emailAddresses];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HUContactManager_contactForEmailAddress_keysToFetch___block_invoke_2;
  v7[3] = &unk_277DC4838;
  v8 = *(a1 + 32);
  v6 = [v5 indexOfObjectPassingTest:v7];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

uint64_t __55__HUContactManager_contactForEmailAddress_keysToFetch___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)userDataFromEmail:(id)a3 monogramDiameter:(double)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(HUContactManager *)self setMonogramDiameter:a4];
  if (!v6)
  {
    v6 = _HULocalizedStringWithDefaultValue(@"HUUnknownUser", @"HUUnknownUser", 1);
    v12 = 0;
    v14 = 0;
    v9 = 0;
    goto LABEL_7;
  }

  v7 = [MEMORY[0x277CBDC70] descriptorForRequiredKeysIncludingImage:1];
  v26[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v9 = [(HUContactManager *)self contactForEmailAddress:v6 keysToFetch:v8];

  v10 = [(HUContactManager *)self monogrammer];
  v11 = [v10 monogramForContact:v9];

  v12 = [v9 givenName];
  v13 = [v9 familyName];
  v14 = v13;
  if (!v11)
  {
    if (v12 && v13)
    {
      v15 = [(HUContactManager *)self monogrammer];
      v16 = [v15 monogramForPersonWithFirstName:v12 lastName:v14];
LABEL_8:
      v11 = v16;

      goto LABEL_9;
    }

LABEL_7:
    v15 = [(HUContactManager *)self monogrammer];
    v16 = [v15 silhouetteMonogram];
    goto LABEL_8;
  }

LABEL_9:
  v24[0] = @"kHUUserDataEmailNameKey";
  v24[1] = @"kHUUserDataImageKey";
  v25[0] = v6;
  v25[1] = v11;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v18 = [v17 mutableCopy];

  v19 = v6;
  v20 = v19;
  if (v12 && v14)
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v12, v14];
  }

  else if (v12)
  {
    v21 = v12;
  }

  else
  {
    v22 = v19;
    if (!v14)
    {
      goto LABEL_17;
    }

    v21 = v14;
  }

  v22 = v21;

LABEL_17:
  [v18 setObject:v22 forKeyedSubscript:@"kHUUserDisplayableNameKey"];
  if (v9)
  {
    [v18 setObject:v9 forKeyedSubscript:@"kHUUserDataContactKey"];
  }

  return v18;
}

- (CNMonogrammer)monogrammer
{
  monogrammer = self->_monogrammer;
  if (!monogrammer)
  {
    v4 = [objc_alloc(MEMORY[0x277CBDC70]) initWithStyle:0 diameter:40.0];
    v5 = self->_monogrammer;
    self->_monogrammer = v4;

    monogrammer = self->_monogrammer;
  }

  return monogrammer;
}

- (void)setMonogramDiameter:(double)a3
{
  if (self->_monogramDiameter != a3 || !self->_monogrammer)
  {
    v5 = [objc_alloc(MEMORY[0x277CBDC70]) initWithStyle:0 diameter:a3];
    monogrammer = self->_monogrammer;
    self->_monogrammer = v5;

    self->_monogramDiameter = a3;
  }
}

@end