@interface SGOrderExtractionRadarSuggestion
- (SGOrderExtractionRadarSuggestion)initWithSourceMessageId:(id)id localizedDescription:(id)description;
- (id)suggestionPrimaryAction;
@end

@implementation SGOrderExtractionRadarSuggestion

- (id)suggestionPrimaryAction
{
  primaryActionTitle = [(SGRadarSuggestionBase *)self primaryActionTitle];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__SGOrderExtractionRadarSuggestion_suggestionPrimaryAction__block_invoke;
  v6[3] = &unk_1E7CD9340;
  v6[4] = self;
  v4 = [SGSuggestionAction actionWithTitle:primaryActionTitle handler:v6];

  return v4;
}

void __59__SGOrderExtractionRadarSuggestion_suggestionPrimaryAction__block_invoke(uint64_t a1)
{
  v22 = [MEMORY[0x1E696AF20] componentsWithString:@"tap-to-radar://new"];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) localizedDescription];
  v20 = [v2 initWithFormat:@"** The original email will be attached to this radar. If you prefer not to share it, you can delete the email from Attachments. **\n** We will only use this email to diagnose the issue but not use it as training data. **\n\nException details:\n%@\n\n[Optional] Additional Details:\n1. Issue Category:\n  - Incorrect Extraction\n  - Missing Extraction\n  - Extra/Duplicate Extraction\n  - UI Issue\n  - Other (please specify)\n\n2. Where does the issue appear?\n  - Mail Banner\n  - Wallet apps\n  - Others (please specify)\n\n3. If the extraction is incorrect, which field is affected?\n  - Title\n  - Order Number\n  - Tracking Number\n  - Date\n  - Others (please specify)\n\n4. Is you device enabled with Apple Intelligence?\n  - Yes\n  - No\n  - Unsure\n\n5. What are your device’s locale and preferred language settings?\n   (e.g., en_US, US English)\n\n6. Please provide additional details of the reported issue?\n", v3];

  v17 = MEMORY[0x1E695DF70];
  v16 = [MEMORY[0x1E696AF60] queryItemWithName:@"ComponentName" value:@"Found in Apps"];
  v21 = [MEMORY[0x1E696AF60] queryItemWithName:@"ComponentVersion" value:@"(New Bugs) Orders"];
  v4 = [MEMORY[0x1E696AF60] queryItemWithName:@"ComponentID" value:@"1811446"];
  v5 = [MEMORY[0x1E696AF60] queryItemWithName:@"Title" value:@"[TTR]Wallet Order Extraction Feedback"];
  v6 = [MEMORY[0x1E696AF60] queryItemWithName:@"Description" value:v20];
  v7 = [MEMORY[0x1E696AF60] queryItemWithName:@"Keywords" value:@"2047998"];
  v8 = [MEMORY[0x1E696AF60] queryItemWithName:@"Classification" value:@"Other Bug"];
  v9 = [MEMORY[0x1E696AF60] queryItemWithName:@"Reproducibility" value:@"Not Applicable"];
  v10 = [MEMORY[0x1E696AF60] queryItemWithName:@"AutoDiagnostics" value:@"phone"];
  v11 = [MEMORY[0x1E696AF60] queryItemWithName:@"DeleteOnAttach" value:@"1"];
  v18 = [v17 arrayWithObjects:{v16, v21, v4, v5, v6, v7, v8, v9, v10, v11, 0}];

  v12 = [*(a1 + 32) writeEMLtoDiskForMessageWithIdentifier:*(*(a1 + 32) + 8)];
  v13 = [MEMORY[0x1E696AF60] queryItemWithName:@"Attachments" value:v12];
  [v18 addObject:v13];

  [v22 setQueryItems:v18];
  v14 = [MEMORY[0x1E6963608] defaultWorkspace];
  v15 = [v22 URL];
  [v14 openURL:v15 configuration:0 completionHandler:0];
}

- (SGOrderExtractionRadarSuggestion)initWithSourceMessageId:(id)id localizedDescription:(id)description
{
  descriptionCopy = description;
  v10.receiver = self;
  v10.super_class = SGOrderExtractionRadarSuggestion;
  v7 = [(SGRadarSuggestionBase *)&v10 initWithSourceMessageId:id];
  v8 = v7;
  if (v7)
  {
    [(SGOrderExtractionRadarSuggestion *)v7 setLocalizedDescription:descriptionCopy];
  }

  return v8;
}

@end