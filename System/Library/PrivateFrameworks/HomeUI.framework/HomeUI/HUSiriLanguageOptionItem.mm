@interface HUSiriLanguageOptionItem
+ (id)selectionKeyForLanguageOption:(id)a3 withOptionStyle:(unint64_t)a4;
- (HUSiriLanguageOptionItem)initWithStyle:(unint64_t)a3 adapter:(id)a4 languageOption:(id)a5;
- (HUSiriLanguageOptionItem)initWithStyle:(unint64_t)a3 siriLanguageOptionsManager:(id)a4 languageOption:(id)a5;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUSiriLanguageOptionItem

- (HUSiriLanguageOptionItem)initWithStyle:(unint64_t)a3 adapter:(id)a4 languageOption:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HUSiriLanguageOptionItem;
  v11 = [(HUSiriLanguageOptionItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_optionStyle = a3;
    objc_storeStrong(&v11->_adapter, a4);
    objc_storeStrong(&v12->_languageOption, a5);
  }

  return v12;
}

- (HUSiriLanguageOptionItem)initWithStyle:(unint64_t)a3 siriLanguageOptionsManager:(id)a4 languageOption:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HUSiriLanguageOptionItem;
  v11 = [(HUSiriLanguageOptionItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_optionStyle = a3;
    objc_storeStrong(&v11->_siriLanguageOptionsManager, a4);
    objc_storeStrong(&v12->_languageOption, a5);
  }

  return v12;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = objc_opt_new();
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __56__HUSiriLanguageOptionItem__subclass_updateWithOptions___block_invoke;
  v25[3] = &unk_277DBA4B8;
  v25[4] = self;
  v5 = __56__HUSiriLanguageOptionItem__subclass_updateWithOptions___block_invoke(v25);
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v6 = [(HUSiriLanguageOptionItem *)self siriLanguageOptionsManager];
  v7 = [v6 selectedLanguageOption];

  if (!v7)
  {
    v7 = [(HUSiriLanguageOptionItem *)self adapter];

    if (v7)
    {
      v8 = [(HUSiriLanguageOptionItem *)self adapter];
      v7 = [v8 selectedLanguageOption];
    }
  }

  v9 = MEMORY[0x277CCABB0];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __56__HUSiriLanguageOptionItem__subclass_updateWithOptions___block_invoke_2;
  v23[3] = &unk_277DBB548;
  v23[4] = self;
  v10 = v7;
  v24 = v10;
  v11 = [v9 numberWithBool:__56__HUSiriLanguageOptionItem__subclass_updateWithOptions___block_invoke_2(v23)];
  [v4 setObject:v11 forKeyedSubscript:*MEMORY[0x277D13FE8]];

  v12 = [(HUSiriLanguageOptionItem *)self adapter];

  if (v12)
  {
    v13 = MEMORY[0x277CBEB58];
    v14 = [(HUSiriLanguageOptionItem *)self adapter];
    v15 = [v14 homeKitSettingsVendor];
    v16 = [v13 setWithObject:v15];

    v17 = [(HUSiriLanguageOptionItem *)self adapter];
    v18 = [v17 settings];
    [v16 na_safeAddObject:v18];

    [v4 setObject:v16 forKeyedSubscript:*MEMORY[0x277D13DA8]];
    v19 = [(HUSiriLanguageOptionItem *)self adapter];
    v20 = [v19 keyPaths];
    [v4 setObject:v20 forKeyedSubscript:*MEMORY[0x277D14098]];
  }

  v21 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v21;
}

__CFString *__56__HUSiriLanguageOptionItem__subclass_updateWithOptions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) optionStyle];
  switch(v2)
  {
    case 2:
      v3 = [*(a1 + 32) languageOption];
      v4 = [v3 localizedOutputVoiceColor];
      goto LABEL_7;
    case 1:
      v3 = [*(a1 + 32) languageOption];
      v4 = [v3 localizedOutputVoiceAccent];
      goto LABEL_7;
    case 0:
      v3 = [*(a1 + 32) languageOption];
      v4 = [v3 localizedRecognitionLanguage];
LABEL_7:
      v5 = v4;

      goto LABEL_9;
  }

  v5 = &stru_2823E0EE8;
LABEL_9:

  return v5;
}

uint64_t __56__HUSiriLanguageOptionItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1)
{
  v2 = [objc_opt_class() selectionKeyForLanguageOption:*(a1 + 40) withOptionStyle:{objc_msgSend(*(a1 + 32), "optionStyle")}];
  v3 = objc_opt_class();
  v4 = [*(a1 + 32) languageOption];
  v5 = [v3 selectionKeyForLanguageOption:v4 withOptionStyle:{objc_msgSend(*(a1 + 32), "optionStyle")}];

  v6 = [v2 isEqual:v5];
  return v6;
}

+ (id)selectionKeyForLanguageOption:(id)a3 withOptionStyle:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  switch(a4)
  {
    case 2uLL:
      v7 = [v5 localizedOutputVoiceColor];
      goto LABEL_7;
    case 1uLL:
      v7 = [v5 outputLanguage];
      goto LABEL_7;
    case 0uLL:
      v7 = [v5 recognitionLanguage];
LABEL_7:
      v8 = v7;
      goto LABEL_9;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

@end