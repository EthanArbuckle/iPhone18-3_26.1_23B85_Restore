@interface CKMediaObjectCopyAssetActionPerformer
+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4;
- (void)performUserInteractionTask;
@end

@implementation CKMediaObjectCopyAssetActionPerformer

- (void)performUserInteractionTask
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(CKMediaObjectAssetActionPerformer *)self chatItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(CKMediaObjectAssetActionPerformer *)self chatItem];
    v6 = [v5 mediaObject];

    if (v6)
    {
      v7 = [MEMORY[0x1E69DCD50] generalPasteboard];
      v8 = [v5 mediaObject];
      v9 = [v8 pasteboardItemProvider];
      v11[0] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      [v7 setItemProviders:v10];
    }
  }

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
}

+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4
{
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"COPY" value:&stru_1F04268F8 table:@"ChatKit"];

  return v5;
}

@end