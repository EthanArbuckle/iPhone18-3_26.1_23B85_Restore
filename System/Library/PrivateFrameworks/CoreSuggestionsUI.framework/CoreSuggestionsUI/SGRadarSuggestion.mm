@interface SGRadarSuggestion
+ (id)tapToRadarImage;
- (id)suggestionCategoryImage;
- (id)suggestionImage;
- (id)suggestionPrimaryAction;
- (id)writeEMLtoDiskForMessageWithIdentifier:(id)identifier;
- (void)_dismissViewController:(id)controller andSignalCompletionWithResult:(BOOL)result;
@end

@implementation SGRadarSuggestion

+ (id)tapToRadarImage
{
  v2 = tapToRadarImage_image;
  if (!tapToRadarImage_image)
  {
    v3 = [SGUIIconSupport spotlightIconImageWithBundleIdentifier:@"com.apple.TapToRadar"];
    v4 = tapToRadarImage_image;
    tapToRadarImage_image = v3;

    v2 = tapToRadarImage_image;
  }

  return v2;
}

- (id)writeEMLtoDiskForMessageWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v4 = getSGMailClientUtilClass_softClass;
  v18 = getSGMailClientUtilClass_softClass;
  if (!getSGMailClientUtilClass_softClass)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __getSGMailClientUtilClass_block_invoke;
    v14[3] = &unk_1E7CD9710;
    v14[4] = &v15;
    __getSGMailClientUtilClass_block_invoke(v14);
    v4 = v16[3];
  }

  v5 = v4;
  _Block_object_dispose(&v15, 8);
  sharedInstance = [v4 sharedInstance];
  v7 = [sharedInstance dataForMessageWithIdentifier:identifierCopy error:0];
  if (v7)
  {
    v8 = NSTemporaryDirectory();
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v11 = [v8 stringByAppendingPathComponent:uUIDString];
    v12 = [v11 stringByAppendingPathExtension:@"eml"];

    if ([v7 writeToFile:v12 atomically:1])
    {
      goto LABEL_7;
    }
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (id)suggestionCategoryImage
{
  v2 = objc_opt_class();

  return [v2 tapToRadarImage];
}

- (id)suggestionImage
{
  v2 = objc_opt_class();

  return [v2 tapToRadarImage];
}

- (void)_dismissViewController:(id)controller andSignalCompletionWithResult:(BOOL)result
{
  resultCopy = result;
  controllerCopy = controller;
  suggestionDelegate = [(SGRadarSuggestionBase *)self suggestionDelegate];
  [suggestionDelegate dismissViewController:controllerCopy];

  suggestionDelegate2 = [(SGRadarSuggestionBase *)self suggestionDelegate];
  [suggestionDelegate2 suggestion:self actionFinished:resultCopy];
}

- (id)suggestionPrimaryAction
{
  primaryActionTitle = [(SGRadarSuggestionBase *)self primaryActionTitle];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__SGRadarSuggestion_suggestionPrimaryAction__block_invoke;
  v6[3] = &unk_1E7CD9340;
  v6[4] = self;
  v4 = [SGSuggestionAction actionWithTitle:primaryActionTitle handler:v6];

  return v4;
}

void __44__SGRadarSuggestion_suggestionPrimaryAction__block_invoke(uint64_t a1)
{
  v23 = [MEMORY[0x1E696AF20] componentsWithString:@"tap-to-radar://new"];
  v1 = MEMORY[0x1E695DF70];
  v2 = [MEMORY[0x1E696AF60] queryItemWithName:@"ComponentName" value:@"Found in Apps"];
  v3 = [MEMORY[0x1E696AF60] queryItemWithName:@"ComponentVersion" value:@"Structured Events"];
  v4 = [MEMORY[0x1E696AF60] queryItemWithName:@"ComponentID" value:@"580699"];
  v5 = [MEMORY[0x1E696AF60] queryItemWithName:@"Title" value:@"[TTR] Extraction Exception"];
  v6 = [MEMORY[0x1E696AF60] queryItemWithName:@"Description" value:@"** The original email will be attached to this radar. Please make sure you are OK sharing this email. **"];
  v7 = [MEMORY[0x1E696AF60] queryItemWithName:@"Classification" value:@"Other Bug"];
  v8 = [MEMORY[0x1E696AF60] queryItemWithName:@"Reproducibility" value:@"Not Applicable"];
  v9 = [MEMORY[0x1E696AF60] queryItemWithName:@"AutoDiagnostics" value:@"phone"];
  v10 = [MEMORY[0x1E696AF60] queryItemWithName:@"DeleteOnAttach" value:@"1"];
  v11 = [v1 arrayWithObjects:{v2, v3, v4, v5, v6, v7, v8, v9, v10, 0}];

  v12 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:@"Would you like to attach the EML file to the radar?" preferredStyle:0];
  v13 = MEMORY[0x1E69DC648];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __44__SGRadarSuggestion_suggestionPrimaryAction__block_invoke_2;
  v27[3] = &unk_1E7CD9130;
  v27[4] = *(a1 + 32);
  v14 = v11;
  v28 = v14;
  v15 = v23;
  v29 = v15;
  v16 = [v13 actionWithTitle:@"Yes style:attach the EML file" handler:{0, v27}];
  [v12 addAction:v16];

  v17 = MEMORY[0x1E69DC648];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __44__SGRadarSuggestion_suggestionPrimaryAction__block_invoke_3;
  v24[3] = &unk_1E7CD9210;
  v25 = v15;
  v26 = v14;
  v18 = v14;
  v19 = v15;
  v20 = [v17 actionWithTitle:@"No style:don't attach" handler:{2, v24}];
  [v12 addAction:v20];

  [v12 setModalPresentationStyle:7];
  v21 = [*(a1 + 32) suggestionDelegate];
  [v21 presentViewController:v12];
}

void __44__SGRadarSuggestion_suggestionPrimaryAction__block_invoke_2(uint64_t a1)
{
  v6 = [*(a1 + 32) writeEMLtoDiskForMessageWithIdentifier:*(*(a1 + 32) + 8)];
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696AF60] queryItemWithName:@"Attachments" value:v6];
  [v2 addObject:v3];

  [*(a1 + 48) setQueryItems:*(a1 + 40)];
  v4 = [MEMORY[0x1E6963608] defaultWorkspace];
  v5 = [*(a1 + 48) URL];
  [v4 openURL:v5 configuration:0 completionHandler:0];
}

void __44__SGRadarSuggestion_suggestionPrimaryAction__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setQueryItems:*(a1 + 40)];
  v3 = [MEMORY[0x1E6963608] defaultWorkspace];
  v2 = [*(a1 + 32) URL];
  [v3 openURL:v2 configuration:0 completionHandler:0];
}

@end