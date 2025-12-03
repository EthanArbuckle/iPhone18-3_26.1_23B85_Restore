@interface HUVoiceSelectionDataManager
- (HUVoiceSelectionDataManager)initWithInputLanguageCode:(id)code listOfVoices:(id)voices;
- (id)voicesForRecognitionLanguageCode:(id)code outputLanguageCode:(id)languageCode;
@end

@implementation HUVoiceSelectionDataManager

- (HUVoiceSelectionDataManager)initWithInputLanguageCode:(id)code listOfVoices:(id)voices
{
  codeCopy = code;
  voicesCopy = voices;
  v12.receiver = self;
  v12.super_class = HUVoiceSelectionDataManager;
  v9 = [(SUICVoiceSelectionDefaultDataManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_inputLanguageCode, code);
    objc_storeStrong(&v10->_listOfVoices, voices);
  }

  return v10;
}

- (id)voicesForRecognitionLanguageCode:(id)code outputLanguageCode:(id)languageCode
{
  v26 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  languageCodeCopy = languageCode;
  v8 = objc_opt_new();
  listOfVoices = [(HUVoiceSelectionDataManager *)self listOfVoices];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __83__HUVoiceSelectionDataManager_voicesForRecognitionLanguageCode_outputLanguageCode___block_invoke;
  v19 = &unk_277DBB278;
  v20 = codeCopy;
  selfCopy = self;
  v22 = languageCodeCopy;
  v10 = v8;
  v23 = v10;
  v11 = languageCodeCopy;
  v12 = codeCopy;
  [listOfVoices na_each:&v16];

  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v10;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "Returning matchingVoices = %@", buf, 0xCu);
  }

  v14 = [v10 copy];

  return v14;
}

void __83__HUVoiceSelectionDataManager_voicesForRecognitionLanguageCode_outputLanguageCode___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) inputLanguageCode];
  if ([v3 isEqualToString:v4])
  {
    v5 = *(a1 + 48);
    v6 = [v7 languageCode];
    LODWORD(v5) = [v5 isEqualToString:v6];

    if (v5)
    {
      [*(a1 + 56) addObject:v7];
    }
  }

  else
  {
  }
}

@end