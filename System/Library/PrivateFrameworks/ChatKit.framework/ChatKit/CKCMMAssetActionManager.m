@interface CKCMMAssetActionManager
+ (id)assetActionManagerWithCMMSession:(id)a3 chatItem:(id)a4 presentedFromInlineReply:(BOOL)a5 chatActionHelper:(id)a6 performerDelegate:(id)a7;
- (BOOL)canPerformActionType:(id)a3;
- (BOOL)shouldEnableActionType:(id)a3 onAsset:(id)a4;
- (BOOL)supportsActionType:(id)a3;
- (id)_destinationActionManagerForActionType:(id)a3;
- (id)actionPerformerForActionType:(id)a3;
- (id)barButtonItemForActionType:(id)a3;
- (id)previewActionForActionType:(id)a3 image:(id)a4;
- (void)_propagateObjectReference:(id)a3;
- (void)_propagatePerformerDelegate:(id)a3;
- (void)executeActionForActionType:(id)a3 withCompletionHandler:(id)a4;
- (void)setAdditionalPropertiesFromActionManager:(id)a3;
- (void)setObjectReference:(id)a3;
- (void)setPerformerDelegate:(id)a3;
@end

@implementation CKCMMAssetActionManager

+ (id)assetActionManagerWithCMMSession:(id)a3 chatItem:(id)a4 presentedFromInlineReply:(BOOL)a5 chatActionHelper:(id)a6 performerDelegate:(id)a7
{
  v8 = a5;
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = [v15 viewModel];
  v17 = [v16 selectionManager];

  v18 = [[a1 alloc] initWithSelectionManager:v17];
  [v18 setSession:v15];
  [v18 setPresentedFromInlineReply:v8];
  v19 = [MEMORY[0x1E69C3820] assetActionManagerWithCMMSession:v15];

  [v18 setPhotosAssetActionManager:v19];
  v20 = [[CKMediaObjectAssetActionManager alloc] initWithChatItem:v14 presentedFromInlineReply:v8 chatActionHelper:v13 selectionManager:v17];

  [v18 setMessagesAssetActionManager:v20];
  [v18 _propagatePerformerDelegate:v12];

  return v18;
}

- (id)barButtonItemForActionType:(id)a3
{
  v4 = a3;
  v5 = [(CKCMMAssetActionManager *)self _destinationActionManagerForActionType:v4];
  v6 = [v5 barButtonItemForActionType:v4];

  return v6;
}

- (id)actionPerformerForActionType:(id)a3
{
  v4 = a3;
  v5 = [(CKCMMAssetActionManager *)self _destinationActionManagerForActionType:v4];
  v6 = [v5 actionPerformerForActionType:v4];

  return v6;
}

- (BOOL)supportsActionType:(id)a3
{
  v4 = a3;
  v5 = [(CKCMMAssetActionManager *)self _destinationActionManagerForActionType:v4];
  v6 = [v5 supportsActionType:v4];

  return v6;
}

- (BOOL)canPerformActionType:(id)a3
{
  v4 = a3;
  v5 = [(CKCMMAssetActionManager *)self _destinationActionManagerForActionType:v4];
  v6 = [v5 canPerformActionType:v4];

  return v6;
}

- (BOOL)shouldEnableActionType:(id)a3 onAsset:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CKCMMAssetActionManager *)self _destinationActionManagerForActionType:v7];
  v9 = [v8 shouldEnableActionType:v7 onAsset:v6];

  return v9;
}

- (id)previewActionForActionType:(id)a3 image:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CKCMMAssetActionManager *)self _destinationActionManagerForActionType:v7];
  v9 = [v8 previewActionForActionType:v7 image:v6];

  return v9;
}

- (void)executeActionForActionType:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CKCMMAssetActionManager *)self _destinationActionManagerForActionType:v7];
  [v8 executeActionForActionType:v7 withCompletionHandler:v6];
}

- (void)setAdditionalPropertiesFromActionManager:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CKCMMAssetActionManager;
  [(CKCMMAssetActionManager *)&v20 setAdditionalPropertiesFromActionManager:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 messagesAssetActionManager];
    v7 = [v5 session];
    session = self->_session;
    self->_session = v7;

    v9 = [MEMORY[0x1E69C3820] assetActionManagerWithCMMSession:self->_session];
    photosAssetActionManager = self->_photosAssetActionManager;
    self->_photosAssetActionManager = v9;

    v11 = [CKMediaObjectAssetActionManager alloc];
    v12 = [v6 chatItem];
    v13 = [v5 presentedFromInlineReply];

    v14 = [v6 chatActionHelper];
    v15 = [v6 selectionManager];
    v16 = [(CKMediaObjectAssetActionManager *)v11 initWithChatItem:v12 presentedFromInlineReply:v13 chatActionHelper:v14 selectionManager:v15];
    messagesAssetActionManager = self->_messagesAssetActionManager;
    self->_messagesAssetActionManager = v16;

    v18 = [(PXActionManager *)self performerDelegate];
    [(CKCMMAssetActionManager *)self _propagatePerformerDelegate:v18];

    v19 = [(CKCMMAssetActionManager *)self objectReference];
    [(CKCMMAssetActionManager *)self _propagateObjectReference:v19];
  }
}

- (void)setPerformerDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = CKCMMAssetActionManager;
  v4 = a3;
  [(PXActionManager *)&v5 setPerformerDelegate:v4];
  [(CKCMMAssetActionManager *)self _propagatePerformerDelegate:v4, v5.receiver, v5.super_class];
}

- (void)setObjectReference:(id)a3
{
  v5.receiver = self;
  v5.super_class = CKCMMAssetActionManager;
  v4 = a3;
  [(CKCMMAssetActionManager *)&v5 setObjectReference:v4];
  [(CKCMMAssetActionManager *)self _propagateObjectReference:v4, v5.receiver, v5.super_class];
}

- (id)_destinationActionManagerForActionType:(id)a3
{
  if ([a3 isEqualToString:*MEMORY[0x1E69C4630]])
  {
    [(CKCMMAssetActionManager *)self photosAssetActionManager];
  }

  else
  {
    [(CKCMMAssetActionManager *)self messagesAssetActionManager];
  }
  v4 = ;

  return v4;
}

- (void)_propagatePerformerDelegate:(id)a3
{
  v8 = a3;
  v4 = [(CKCMMAssetActionManager *)self photosAssetActionManager];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKCMMAssetActionManager *)self photosAssetActionManager];
    [v6 setPerformerDelegate:v8];
  }

  v7 = [(CKCMMAssetActionManager *)self messagesAssetActionManager];
  [v7 setPerformerDelegate:v8];
}

- (void)_propagateObjectReference:(id)a3
{
  v8 = a3;
  v4 = [(CKCMMAssetActionManager *)self photosAssetActionManager];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKCMMAssetActionManager *)self photosAssetActionManager];
    [v6 setObjectReference:v8];
  }

  v7 = [(CKCMMAssetActionManager *)self messagesAssetActionManager];
  [v7 setObjectReference:v8];
}

@end