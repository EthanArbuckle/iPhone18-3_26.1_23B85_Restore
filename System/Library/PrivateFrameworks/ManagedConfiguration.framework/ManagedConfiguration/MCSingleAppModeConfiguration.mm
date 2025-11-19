@interface MCSingleAppModeConfiguration
- (id)serializedConfiguration;
@end

@implementation MCSingleAppModeConfiguration

- (id)serializedConfiguration
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCSingleAppModeConfiguration allowSpellCheck](self, "allowSpellCheck")}];
  [v3 setObject:v4 forKeyedSubscript:@"allowSpellCheck"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCSingleAppModeConfiguration allowDefinitionLookup](self, "allowDefinitionLookup")}];
  [v3 setObject:v5 forKeyedSubscript:@"allowDefinitionLookup"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCSingleAppModeConfiguration allowSelectedTextSharing](self, "allowSelectedTextSharing")}];
  [v3 setObject:v6 forKeyedSubscript:@"allowSelectedTextSharing"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCSingleAppModeConfiguration allowAutoCorrection](self, "allowAutoCorrection")}];
  [v3 setObject:v7 forKeyedSubscript:@"allowAutoCorrection"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCSingleAppModeConfiguration allowPredictiveKeyboard](self, "allowPredictiveKeyboard")}];
  [v3 setObject:v8 forKeyedSubscript:@"allowPredictiveKeyboard"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCSingleAppModeConfiguration allowKeyboardShortcuts](self, "allowKeyboardShortcuts")}];
  [v3 setObject:v9 forKeyedSubscript:@"allowKeyboardShortcuts"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCSingleAppModeConfiguration allowActivityContinuation](self, "allowActivityContinuation")}];
  [v3 setObject:v10 forKeyedSubscript:@"allowActivityContinuation"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCSingleAppModeConfiguration allowDictation](self, "allowDictation")}];
  [v3 setObject:v11 forKeyedSubscript:@"allowDictation"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCSingleAppModeConfiguration allowScreenShot](self, "allowScreenShot")}];
  [v3 setObject:v12 forKeyedSubscript:@"allowScreenShot"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCSingleAppModeConfiguration allowSmartPunctuation](self, "allowSmartPunctuation")}];
  [v3 setObject:v13 forKeyedSubscript:@"allowSmartPunctuation"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCSingleAppModeConfiguration allowAccessibilityReader](self, "allowAccessibilityReader")}];
  [v3 setObject:v14 forKeyedSubscript:@"allowAccessibilityReader"];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCSingleAppModeConfiguration allowAccessibilityReaderSuggestions](self, "allowAccessibilityReaderSuggestions")}];
  [v3 setObject:v15 forKeyedSubscript:@"allowAccessibilityReaderSuggestions"];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCSingleAppModeConfiguration allowAccessibilitySpeech](self, "allowAccessibilitySpeech")}];
  [v3 setObject:v16 forKeyedSubscript:@"allowAccessibilitySpeech"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCSingleAppModeConfiguration allowAccessibilityTypingFeedback](self, "allowAccessibilityTypingFeedback")}];
  [v3 setObject:v17 forKeyedSubscript:@"allowAccessibilityTypingFeedback"];

  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCSingleAppModeConfiguration allowAccessibilityLiveCaptions](self, "allowAccessibilityLiveCaptions")}];
  [v3 setObject:v18 forKeyedSubscript:@"allowAccessibilityLiveCaptions"];

  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCSingleAppModeConfiguration allowAccessibilityVoiceOver](self, "allowAccessibilityVoiceOver")}];
  [v3 setObject:v19 forKeyedSubscript:@"allowAccessibilityVoiceOver"];

  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCSingleAppModeConfiguration allowPasswordAutoFill](self, "allowPasswordAutoFill")}];
  [v3 setObject:v20 forKeyedSubscript:@"allowPasswordAutoFill"];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCSingleAppModeConfiguration allowContinuousPathKeyboard](self, "allowContinuousPathKeyboard")}];
  [v3 setObject:v21 forKeyedSubscript:@"allowContinuousPathKeyboard"];

  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCSingleAppModeConfiguration allowTranslationLookup](self, "allowTranslationLookup")}];
  [v3 setObject:v22 forKeyedSubscript:@"allowTranslationLookup"];

  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCSingleAppModeConfiguration allowQuickNote](self, "allowQuickNote")}];
  [v3 setObject:v23 forKeyedSubscript:@"allowQuickNote"];

  return v3;
}

@end