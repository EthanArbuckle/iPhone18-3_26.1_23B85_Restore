@interface CKSettingsCriticalMessagesDetailViewController
- (CKSettingsCriticalMessagesAppManager)appManager;
- (CKSettingsCriticalMessagesDetailViewController)init;
- (CKSettingsCriticalMessagesDetailViewController)initWithAppManager:(id)manager;
- (id)_titleFromSpecifier;
- (id)numberActive:(id)active;
- (id)specifiers;
- (void)criticalAppsDidChange:(id)change;
- (void)setNumberActive:(id)active specifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation CKSettingsCriticalMessagesDetailViewController

- (CKSettingsCriticalMessagesDetailViewController)init
{
  v3 = objc_alloc_init(CKSettingsCriticalMessagesAppManager);
  v4 = [(CKSettingsCriticalMessagesDetailViewController *)self initWithAppManager:v3];

  return v4;
}

- (CKSettingsCriticalMessagesDetailViewController)initWithAppManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = CKSettingsCriticalMessagesDetailViewController;
  v5 = [(CKSettingsCriticalMessagesDetailViewController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_appManager, managerCopy);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_criticalAppsDidChange_ name:@"CKSettingsCriticalMessagesAppsChangedNotification" object:0];
  }

  return v6;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CKSettingsCriticalMessagesDetailViewController;
  [(CKSettingsCriticalMessagesDetailViewController *)&v4 viewDidLoad];
  _titleFromSpecifier = [(CKSettingsCriticalMessagesDetailViewController *)self _titleFromSpecifier];
  [(CKSettingsCriticalMessagesDetailViewController *)self setTitle:_titleFromSpecifier];
}

- (id)_titleFromSpecifier
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"CRITICAL_MESSAGES" value:&stru_286A13F00 table:@"CriticalMessagesSettings"];

  name = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) name];
  v6 = name;
  if (name)
  {
    v7 = name;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v7;
}

- (id)specifiers
{
  selfCopy = self;
  v55 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = MEMORY[0x277D3FAD8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"CRITICAL_MESSAGES_DETAIL_HEADER" value:&stru_286A13F00 table:@"CriticalMessagesSettings"];
    v9 = [v6 groupSpecifierWithID:@"numbers" name:v8];

    WeakRetained = objc_loadWeakRetained(&selfCopy->_appManager);
    identifier = [*(&selfCopy->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) identifier];
    v12 = [WeakRetained criticalMessagesAppForBundleID:identifier];

    objc_storeStrong(&selfCopy->_currentApp, v12);
    if (v12)
    {
      v43 = v3;
      v40 = v12;
      recipients = [v12 recipients];
      v14 = [recipients count];
      v15 = MEMORY[0x277CCACA8];
      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = v16;
      if (v14 == 1)
      {
        v18 = @"CRITICAL_MESSAGES_DETAIL_SINGULAR";
      }

      else
      {
        v18 = @"CRITICAL_MESSAGES_DETAIL_PLURAL";
      }

      v19 = [v16 localizedStringForKey:v18 value:&stru_286A13F00 table:@"CriticalMessagesSettings"];
      v48 = selfCopy;
      _titleFromSpecifier = [(CKSettingsCriticalMessagesDetailViewController *)selfCopy _titleFromSpecifier];
      v21 = [v15 stringWithFormat:v19, _titleFromSpecifier];

      v39 = v21;
      [v9 setProperty:v21 forKey:*MEMORY[0x277D3FF88]];
      v41 = v9;
      v42 = v5;
      [v5 addObject:v9];
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      obj = recipients;
      v22 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (v22)
      {
        v23 = v22;
        v47 = *v51;
        v24 = *MEMORY[0x277D3FE58];
        v45 = *MEMORY[0x277D40160];
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v51 != v47)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v50 + 1) + 8 * i);
            formattedPhoneNumber = [v26 formattedPhoneNumber];
            getIMRecipient = [v26 getIMRecipient];
            displayName = [getIMRecipient displayName];
            v30 = [displayName isEqualToString:&stru_286A13F00];

            if (v30)
            {
              displayName2 = formattedPhoneNumber;
              formattedPhoneNumber = 0;
            }

            else
            {
              displayName2 = [getIMRecipient displayName];
            }

            v32 = [objc_alloc(MEMORY[0x277D3FAD8]) initWithName:displayName2 target:v48 set:sel_setNumberActive_specifier_ get:sel_numberActive_ detail:0 cell:6 edit:0];
            [v32 setProperty:objc_opt_class() forKey:v24];
            number = [v26 number];
            [v32 setProperty:number forKey:@"unformattedNumber"];

            v34 = v49;
            if (formattedPhoneNumber)
            {
              [v32 setProperty:formattedPhoneNumber forKey:v45];
              v34 = v46;
            }

            [v34 addObject:v32];
          }

          v23 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
        }

        while (v23);
      }

      selfCopy = v48;
      v5 = v42;
      v3 = v43;
      v12 = v40;
      v9 = v41;
    }

    [v5 addObjectsFromArray:v46];
    [v5 addObjectsFromArray:v49];
    v35 = [v5 copy];
    v36 = *(&selfCopy->super.super.super.super.super.isa + v3);
    *(&selfCopy->super.super.super.super.super.isa + v3) = v35;

    v4 = *(&selfCopy->super.super.super.super.super.isa + v3);
  }

  v37 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)setNumberActive:(id)active specifier:(id)specifier
{
  activeCopy = active;
  v6 = [specifier propertyForKey:@"unformattedNumber"];
  v7 = v6;
  if (self->_currentApp)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_appManager);
    bOOLValue = [activeCopy BOOLValue];
    bundleID = [(CKSettingsCriticalMessagesApp *)self->_currentApp bundleID];
    [WeakRetained setActive:bOOLValue forPhoneNumber:v7 inAppForBundle:bundleID];
  }
}

- (id)numberActive:(id)active
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [active propertyForKey:@"unformattedNumber"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    recipients = [(CKSettingsCriticalMessagesApp *)self->_currentApp recipients];
    v6 = [recipients countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      v9 = MEMORY[0x277CBEC28];
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(recipients);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          number = [v11 number];
          v13 = [number isEqual:v4];

          if (v13)
          {
            v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "isActive")}];
            goto LABEL_15;
          }
        }

        v7 = [recipients countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v9 = MEMORY[0x277CBEC28];
    }

LABEL_15:
  }

  else
  {
    v9 = MEMORY[0x277CBEC28];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)criticalAppsDidChange:(id)change
{
  [(CKSettingsCriticalMessagesDetailViewController *)self reloadSpecifiers];
  if (!self->_currentApp)
  {
    navigationController = [(CKSettingsCriticalMessagesDetailViewController *)self navigationController];
    v4 = [navigationController popViewControllerAnimated:1];
  }
}

- (CKSettingsCriticalMessagesAppManager)appManager
{
  WeakRetained = objc_loadWeakRetained(&self->_appManager);

  return WeakRetained;
}

@end