@interface CKTranslatorUtilities
+ (BOOL)chatItemIsFromSomeoneElse:(id)a3;
+ (BOOL)shouldShowTranslateMenuOption:(id)a3;
@end

@implementation CKTranslatorUtilities

+ (BOOL)shouldShowTranslateMenuOption:(id)a3
{
  v3 = a3;
  if ([v3 isAudioMessage] && (objc_msgSend(v3, "audioTranscriptionText"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v4, v5) || (objc_msgSend(v3, "transcriptText"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    LOBYTE(v6) = [MEMORY[0x1E69DB4D8] isAvailable];
  }

  return v6;
}

+ (BOOL)chatItemIsFromSomeoneElse:(id)a3
{
  v3 = a3;
  if (CKIsRunningInMacCatalyst() || ([v3 isFromMe] & 1) != 0)
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