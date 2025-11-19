@interface CKMediaObjectReplyAssetActionPerformer
+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4;
- (void)performUserInteractionTask;
@end

@implementation CKMediaObjectReplyAssetActionPerformer

- (void)performUserInteractionTask
{
  v3 = [(PXAssetActionPerformer *)self selectionSnapshot];
  v4 = [v3 selectedIndexPaths];
  if ([v4 count] == 1)
  {
    v5 = [(CKMediaObjectAssetActionPerformer *)self chatItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [(PXAssetActionPerformer *)self selectionSnapshot];
      v8 = [v7 firstObject];

      v9 = [(CKMediaObjectAssetActionPerformer *)self chatItem];
      v10 = CKChatItemForMomentShareAsset(v8, v9);
      if (v10)
      {
        v11 = [(CKMediaObjectAssetActionPerformer *)self chatActionHelper];
        v14 = [v11 inlineReplyControllerForChatItem:v10];
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
  }

  v12 = [(CKMediaObjectAssetActionPerformer *)self chatActionHelper];
  v13 = [(CKMediaObjectAssetActionPerformer *)self chatItem];
  v14 = [v12 inlineReplyControllerForChatItem:v13];

  if (v14)
  {
LABEL_12:
    [(PXActionPerformer *)self presentViewController:v14];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];

    return;
  }

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
}

+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4
{
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"REPLY" value:&stru_1F04268F8 table:@"ChatKit"];

  return v5;
}

@end