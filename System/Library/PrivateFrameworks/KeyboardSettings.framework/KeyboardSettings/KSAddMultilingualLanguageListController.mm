@interface KSAddMultilingualLanguageListController
- (NSArray)multilingualSet;
- (id)newSpecifiers;
- (id)specifiers;
- (void)addLanguage:(id)language;
- (void)reloadKeyboardSpecifiers;
- (void)viewDidLoad;
@end

@implementation KSAddMultilingualLanguageListController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = KSAddMultilingualLanguageListController;
  [(KSAddMultilingualLanguageListController *)&v4 viewDidLoad];
  v3 = *MEMORY[0x277D3FC60];
  [*(&self->super.super.super.super.super.isa + v3) setEstimatedSectionHeaderHeight:0.0];
  [*(&self->super.super.super.super.super.isa + v3) setEstimatedSectionFooterHeight:0.0];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    newSpecifiers = [(KSAddMultilingualLanguageListController *)self newSpecifiers];
    v6 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = newSpecifiers;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)newSpecifiers
{
  v25 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  mEMORY[0x277D75688] = [MEMORY[0x277D75688] sharedInputModeController];
  enabledInputModeIdentifiers = [mEMORY[0x277D75688] enabledInputModeIdentifiers];

  multilingualSet = [(KSAddMultilingualLanguageListController *)self multilingualSet];
  v6 = TIUIGetAddableInputModesForMultilingualSet(multilingualSet);

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    v10 = *MEMORY[0x277D3FFB8];
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        v13 = TIInputModeGetLanguageWithRegion();
        v14 = [KSKeyboardListController keyboardDisplayNameForIdentifier:v13];

        v15 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:3 edit:0];
        [v15 setProperty:v12 forKey:v10];
        [v15 setButtonAction:sel_addLanguage_];
        [array addObject:v15];

        ++v11;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  [array sortUsingComparator:&__block_literal_global_3];
  v16 = *MEMORY[0x277D85DE8];
  return array;
}

uint64_t __56__KSAddMultilingualLanguageListController_newSpecifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

- (NSArray)multilingualSet
{
  multilingualSet = self->_multilingualSet;
  if (!multilingualSet)
  {
    parentController = [(KSAddMultilingualLanguageListController *)self parentController];
    multilingualSet = [parentController multilingualSet];
    v6 = self->_multilingualSet;
    self->_multilingualSet = multilingualSet;

    multilingualSet = self->_multilingualSet;
  }

  return multilingualSet;
}

- (void)addLanguage:(id)language
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = [language propertyForKey:*MEMORY[0x277D3FFB8]];
  multilingualSet = [(KSAddMultilingualLanguageListController *)self multilingualSet];
  v6 = TIUICanAddInputModeToMultilingualSet(v4, multilingualSet);

  if (v6)
  {
    mEMORY[0x277D75688] = [MEMORY[0x277D75688] sharedInputModeController];
    enabledInputModeIdentifiers = [mEMORY[0x277D75688] enabledInputModeIdentifiers];

    TIUIGetProposedMultilingualSetsForAddingInputMode(v4, enabledInputModeIdentifiers);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = v28 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v26;
      v24 = enabledInputModeIdentifiers;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          v16 = TIUIProposedInputModeGetCurrent(v15, v11);
          multilingualSet2 = [(KSAddMultilingualLanguageListController *)self multilingualSet];
          v18 = [v16 isEqualToArray:multilingualSet2];

          if (v18)
          {
            enabledInputModeIdentifiers = v24;
            v19 = TIUIGetInputModesByAddingProposedInputMode(v15, v24);
            [KSKeyboardListController setInputModes:v19];
            v20 = TIUIProposedInputModeGetMultilingualSet(v15);
            [(KSAddMultilingualLanguageListController *)self setMultilingualSet:v20];

            goto LABEL_12;
          }
        }

        v12 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
        enabledInputModeIdentifiers = v24;
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  [(KSAddMultilingualLanguageListController *)self reloadKeyboardSpecifiers];
  navigationController = [(KSAddMultilingualLanguageListController *)self navigationController];
  v22 = [navigationController popViewControllerAnimated:1];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)reloadKeyboardSpecifiers
{
  parentController = [(KSAddMultilingualLanguageListController *)self parentController];
  multilingualSet = [(KSAddMultilingualLanguageListController *)self multilingualSet];
  [parentController reloadSoftwareLayoutSpecifiersWithMultilingualSet:multilingualSet];
}

@end