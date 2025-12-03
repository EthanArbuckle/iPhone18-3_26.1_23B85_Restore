@interface CKMediaObjectReplyAssetActionPerformer
+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager;
- (void)performUserInteractionTask;
@end

@implementation CKMediaObjectReplyAssetActionPerformer

- (void)performUserInteractionTask
{
  selectionSnapshot = [(PXAssetActionPerformer *)self selectionSnapshot];
  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
  if ([selectedIndexPaths count] == 1)
  {
    chatItem = [(CKMediaObjectAssetActionPerformer *)self chatItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      selectionSnapshot2 = [(PXAssetActionPerformer *)self selectionSnapshot];
      firstObject = [selectionSnapshot2 firstObject];

      chatItem2 = [(CKMediaObjectAssetActionPerformer *)self chatItem];
      v10 = CKChatItemForMomentShareAsset(firstObject, chatItem2);
      if (v10)
      {
        chatActionHelper = [(CKMediaObjectAssetActionPerformer *)self chatActionHelper];
        v14 = [chatActionHelper inlineReplyControllerForChatItem:v10];
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

  chatActionHelper2 = [(CKMediaObjectAssetActionPerformer *)self chatActionHelper];
  chatItem3 = [(CKMediaObjectAssetActionPerformer *)self chatItem];
  v14 = [chatActionHelper2 inlineReplyControllerForChatItem:chatItem3];

  if (v14)
  {
LABEL_12:
    [(PXActionPerformer *)self presentViewController:v14];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];

    return;
  }

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
}

+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager
{
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"REPLY" value:&stru_1F04268F8 table:@"ChatKit"];

  return v5;
}

@end