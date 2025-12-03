@interface CKTranslatorUtilities
+ (BOOL)chatItemIsFromSomeoneElse:(id)else;
+ (BOOL)shouldShowTranslateMenuOption:(id)option;
@end

@implementation CKTranslatorUtilities

+ (BOOL)shouldShowTranslateMenuOption:(id)option
{
  optionCopy = option;
  if ([optionCopy isAudioMessage] && (objc_msgSend(optionCopy, "audioTranscriptionText"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v4, v5) || (objc_msgSend(optionCopy, "transcriptText"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    LOBYTE(v6) = [MEMORY[0x1E69DB4D8] isAvailable];
  }

  return v6;
}

+ (BOOL)chatItemIsFromSomeoneElse:(id)else
{
  elseCopy = else;
  if (CKIsRunningInMacCatalyst() || ([elseCopy isFromMe] & 1) != 0)
  {
    isKindOfClass = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end