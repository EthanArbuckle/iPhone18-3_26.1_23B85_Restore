@interface CKMediaObjectCopyAssetActionPerformer
+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager;
- (void)performUserInteractionTask;
@end

@implementation CKMediaObjectCopyAssetActionPerformer

- (void)performUserInteractionTask
{
  v11[1] = *MEMORY[0x1E69E9840];
  chatItem = [(CKMediaObjectAssetActionPerformer *)self chatItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    chatItem2 = [(CKMediaObjectAssetActionPerformer *)self chatItem];
    mediaObject = [chatItem2 mediaObject];

    if (mediaObject)
    {
      generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
      mediaObject2 = [chatItem2 mediaObject];
      pasteboardItemProvider = [mediaObject2 pasteboardItemProvider];
      v11[0] = pasteboardItemProvider;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      [generalPasteboard setItemProviders:v10];
    }
  }

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
}

+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager
{
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"COPY" value:&stru_1F04268F8 table:@"ChatKit"];

  return v5;
}

@end