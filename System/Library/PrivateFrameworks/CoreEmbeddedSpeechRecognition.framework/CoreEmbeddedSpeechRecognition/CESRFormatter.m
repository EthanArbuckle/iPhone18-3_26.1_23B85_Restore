@interface CESRFormatter
- (CESRFormatter)initWithAssetConfig:(id)a3;
- (id)formatSpeechTokensWithAutoPunctuation:(id)a3;
@end

@implementation CESRFormatter

- (id)formatSpeechTokensWithAutoPunctuation:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [CESRUtilities earTokensForAFTokens:v4 appendedAutoPunctuation:0];
  formatter = self->_formatter;
  if (objc_opt_respondsToSelector())
  {
    v7 = [(_EARFormatter *)self->_formatter formatWords:v5 task:@"Dictation" autoPunctuate:1 recognizeEmoji:1];
    v8 = [CESRUtilities afTokensForEARTokens:v7 removeSpaceBefore:0];
  }

  else
  {
    v9 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[CESRFormatter formatSpeechTokensWithAutoPunctuation:]";
      _os_log_error_impl(&dword_225EEB000, v9, OS_LOG_TYPE_ERROR, "%s Method 'formatWords' not found in EARFormatter", &v12, 0xCu);
    }

    v8 = v4;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (CESRFormatter)initWithAssetConfig:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = CESRFormatter;
  v6 = [(CESRFormatter *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetConfig, a3);
    v8 = [MEMORY[0x277CDCE98] sharedInstance];
    v9 = [v8 installedAssetWithConfig:v7->_assetConfig];

    if (v9 && [v9 length])
    {
      v10 = [v9 stringByAppendingPathComponent:@"mini.json"];
      if (_os_feature_enabled_impl())
      {
        v11 = AFIsUODCapableHorsemanDevice() ^ 1;
      }

      else
      {
        v11 = 0;
      }

      v13 = objc_alloc(MEMORY[0x277D07250]);
      v14 = [(SFEntitledAssetConfig *)v7->_assetConfig language];
      v15 = [v13 initWithQuasarConfig:v10 overrideConfigFiles:0 supportEmojiRecognition:v11 language:v14];
      formatter = v7->_formatter;
      v7->_formatter = v15;

      v12 = v7;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end