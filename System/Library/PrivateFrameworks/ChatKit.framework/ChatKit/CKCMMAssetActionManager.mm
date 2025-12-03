@interface CKCMMAssetActionManager
+ (id)assetActionManagerWithCMMSession:(id)session chatItem:(id)item presentedFromInlineReply:(BOOL)reply chatActionHelper:(id)helper performerDelegate:(id)delegate;
- (BOOL)canPerformActionType:(id)type;
- (BOOL)shouldEnableActionType:(id)type onAsset:(id)asset;
- (BOOL)supportsActionType:(id)type;
- (id)_destinationActionManagerForActionType:(id)type;
- (id)actionPerformerForActionType:(id)type;
- (id)barButtonItemForActionType:(id)type;
- (id)previewActionForActionType:(id)type image:(id)image;
- (void)_propagateObjectReference:(id)reference;
- (void)_propagatePerformerDelegate:(id)delegate;
- (void)executeActionForActionType:(id)type withCompletionHandler:(id)handler;
- (void)setAdditionalPropertiesFromActionManager:(id)manager;
- (void)setObjectReference:(id)reference;
- (void)setPerformerDelegate:(id)delegate;
@end

@implementation CKCMMAssetActionManager

+ (id)assetActionManagerWithCMMSession:(id)session chatItem:(id)item presentedFromInlineReply:(BOOL)reply chatActionHelper:(id)helper performerDelegate:(id)delegate
{
  replyCopy = reply;
  delegateCopy = delegate;
  helperCopy = helper;
  itemCopy = item;
  sessionCopy = session;
  viewModel = [sessionCopy viewModel];
  selectionManager = [viewModel selectionManager];

  v18 = [[self alloc] initWithSelectionManager:selectionManager];
  [v18 setSession:sessionCopy];
  [v18 setPresentedFromInlineReply:replyCopy];
  v19 = [MEMORY[0x1E69C3820] assetActionManagerWithCMMSession:sessionCopy];

  [v18 setPhotosAssetActionManager:v19];
  v20 = [[CKMediaObjectAssetActionManager alloc] initWithChatItem:itemCopy presentedFromInlineReply:replyCopy chatActionHelper:helperCopy selectionManager:selectionManager];

  [v18 setMessagesAssetActionManager:v20];
  [v18 _propagatePerformerDelegate:delegateCopy];

  return v18;
}

- (id)barButtonItemForActionType:(id)type
{
  typeCopy = type;
  v5 = [(CKCMMAssetActionManager *)self _destinationActionManagerForActionType:typeCopy];
  v6 = [v5 barButtonItemForActionType:typeCopy];

  return v6;
}

- (id)actionPerformerForActionType:(id)type
{
  typeCopy = type;
  v5 = [(CKCMMAssetActionManager *)self _destinationActionManagerForActionType:typeCopy];
  v6 = [v5 actionPerformerForActionType:typeCopy];

  return v6;
}

- (BOOL)supportsActionType:(id)type
{
  typeCopy = type;
  v5 = [(CKCMMAssetActionManager *)self _destinationActionManagerForActionType:typeCopy];
  v6 = [v5 supportsActionType:typeCopy];

  return v6;
}

- (BOOL)canPerformActionType:(id)type
{
  typeCopy = type;
  v5 = [(CKCMMAssetActionManager *)self _destinationActionManagerForActionType:typeCopy];
  v6 = [v5 canPerformActionType:typeCopy];

  return v6;
}

- (BOOL)shouldEnableActionType:(id)type onAsset:(id)asset
{
  assetCopy = asset;
  typeCopy = type;
  v8 = [(CKCMMAssetActionManager *)self _destinationActionManagerForActionType:typeCopy];
  v9 = [v8 shouldEnableActionType:typeCopy onAsset:assetCopy];

  return v9;
}

- (id)previewActionForActionType:(id)type image:(id)image
{
  imageCopy = image;
  typeCopy = type;
  v8 = [(CKCMMAssetActionManager *)self _destinationActionManagerForActionType:typeCopy];
  v9 = [v8 previewActionForActionType:typeCopy image:imageCopy];

  return v9;
}

- (void)executeActionForActionType:(id)type withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  typeCopy = type;
  v8 = [(CKCMMAssetActionManager *)self _destinationActionManagerForActionType:typeCopy];
  [v8 executeActionForActionType:typeCopy withCompletionHandler:handlerCopy];
}

- (void)setAdditionalPropertiesFromActionManager:(id)manager
{
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = CKCMMAssetActionManager;
  [(CKCMMAssetActionManager *)&v20 setAdditionalPropertiesFromActionManager:managerCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = managerCopy;
    messagesAssetActionManager = [v5 messagesAssetActionManager];
    session = [v5 session];
    session = self->_session;
    self->_session = session;

    v9 = [MEMORY[0x1E69C3820] assetActionManagerWithCMMSession:self->_session];
    photosAssetActionManager = self->_photosAssetActionManager;
    self->_photosAssetActionManager = v9;

    v11 = [CKMediaObjectAssetActionManager alloc];
    chatItem = [messagesAssetActionManager chatItem];
    presentedFromInlineReply = [v5 presentedFromInlineReply];

    chatActionHelper = [messagesAssetActionManager chatActionHelper];
    selectionManager = [messagesAssetActionManager selectionManager];
    v16 = [(CKMediaObjectAssetActionManager *)v11 initWithChatItem:chatItem presentedFromInlineReply:presentedFromInlineReply chatActionHelper:chatActionHelper selectionManager:selectionManager];
    messagesAssetActionManager = self->_messagesAssetActionManager;
    self->_messagesAssetActionManager = v16;

    performerDelegate = [(PXActionManager *)self performerDelegate];
    [(CKCMMAssetActionManager *)self _propagatePerformerDelegate:performerDelegate];

    objectReference = [(CKCMMAssetActionManager *)self objectReference];
    [(CKCMMAssetActionManager *)self _propagateObjectReference:objectReference];
  }
}

- (void)setPerformerDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = CKCMMAssetActionManager;
  delegateCopy = delegate;
  [(PXActionManager *)&v5 setPerformerDelegate:delegateCopy];
  [(CKCMMAssetActionManager *)self _propagatePerformerDelegate:delegateCopy, v5.receiver, v5.super_class];
}

- (void)setObjectReference:(id)reference
{
  v5.receiver = self;
  v5.super_class = CKCMMAssetActionManager;
  referenceCopy = reference;
  [(CKCMMAssetActionManager *)&v5 setObjectReference:referenceCopy];
  [(CKCMMAssetActionManager *)self _propagateObjectReference:referenceCopy, v5.receiver, v5.super_class];
}

- (id)_destinationActionManagerForActionType:(id)type
{
  if ([type isEqualToString:*MEMORY[0x1E69C4630]])
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

- (void)_propagatePerformerDelegate:(id)delegate
{
  delegateCopy = delegate;
  photosAssetActionManager = [(CKCMMAssetActionManager *)self photosAssetActionManager];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    photosAssetActionManager2 = [(CKCMMAssetActionManager *)self photosAssetActionManager];
    [photosAssetActionManager2 setPerformerDelegate:delegateCopy];
  }

  messagesAssetActionManager = [(CKCMMAssetActionManager *)self messagesAssetActionManager];
  [messagesAssetActionManager setPerformerDelegate:delegateCopy];
}

- (void)_propagateObjectReference:(id)reference
{
  referenceCopy = reference;
  photosAssetActionManager = [(CKCMMAssetActionManager *)self photosAssetActionManager];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    photosAssetActionManager2 = [(CKCMMAssetActionManager *)self photosAssetActionManager];
    [photosAssetActionManager2 setObjectReference:referenceCopy];
  }

  messagesAssetActionManager = [(CKCMMAssetActionManager *)self messagesAssetActionManager];
  [messagesAssetActionManager setObjectReference:referenceCopy];
}

@end