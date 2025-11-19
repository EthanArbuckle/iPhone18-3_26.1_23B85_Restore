@interface ICAppGroupDefaults
+ (NSUserDefaults)sharedAppGroupDefaults;
@end

@implementation ICAppGroupDefaults

+ (NSUserDefaults)sharedAppGroupDefaults
{
  if (sharedAppGroupDefaults_once != -1)
  {
    +[ICAppGroupDefaults sharedAppGroupDefaults];
  }

  v3 = sharedAppGroupDefaults_s_sharedUserDefaults;

  return v3;
}

void __44__ICAppGroupDefaults_sharedAppGroupDefaults__block_invoke()
{
  v7[10] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695E000]);
  v1 = ICGroupContainerIdentifier();
  v2 = [v0 initWithSuiteName:v1];
  v3 = sharedAppGroupDefaults_s_sharedUserDefaults;
  sharedAppGroupDefaults_s_sharedUserDefaults = v2;

  v4 = sharedAppGroupDefaults_s_sharedUserDefaults;
  v6[0] = @"EnableLinkPresentation";
  v6[1] = @"EnableXPCPreviewGeneration";
  v7[0] = MEMORY[0x1E695E118];
  v7[1] = MEMORY[0x1E695E118];
  v6[2] = @"EnableSmartTags";
  v6[3] = @"DefaultToPaperKitAttachments";
  v7[2] = MEMORY[0x1E695E118];
  v7[3] = MEMORY[0x1E695E118];
  v6[4] = @"DefaultToPaperKitPDFsAndScans";
  v6[5] = @"EnableBlockQuote";
  v7[4] = MEMORY[0x1E695E118];
  v7[5] = MEMORY[0x1E695E118];
  v6[6] = @"EnableNewNoteAccelerator";
  v6[7] = @"EnableSpotlightInstantAnswers";
  v7[6] = MEMORY[0x1E695E118];
  v7[7] = MEMORY[0x1E695E118];
  v6[8] = @"SpotlightSearchSuggestions";
  v6[9] = @"EnableEmphasis";
  v7[8] = MEMORY[0x1E695E118];
  v7[9] = MEMORY[0x1E695E118];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:10];
  [v4 registerDefaults:v5];
}

@end