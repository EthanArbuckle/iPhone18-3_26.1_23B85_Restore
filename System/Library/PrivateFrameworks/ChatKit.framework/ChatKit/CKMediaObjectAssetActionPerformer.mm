@interface CKMediaObjectAssetActionPerformer
+ (BOOL)canPerformWithActionManager:(id)manager;
+ (id)createBarButtonItemWithTarget:(id)target action:(SEL)action actionManager:(id)manager;
+ (id)createPreviewActionWithActionManager:(id)manager handler:(id)handler;
- (CKMediaObjectAssetActionHelper)chatActionHelper;
@end

@implementation CKMediaObjectAssetActionPerformer

+ (BOOL)canPerformWithActionManager:(id)manager
{
  managerCopy = manager;
  v5 = [managerCopy _selectionSnapshotForPerformerClass:self];
  if (v5)
  {
    v6 = [self canPerformWithActionManager:managerCopy selectionSnapshot:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)createBarButtonItemWithTarget:(id)target action:(SEL)action actionManager:(id)manager
{
  targetCopy = target;
  v9 = [self systemImageNameForActionManager:manager];
  if ([v9 length])
  {
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:v9];
    v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:v10 style:0 target:targetCopy action:action];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)createPreviewActionWithActionManager:(id)manager handler:(id)handler
{
  managerCopy = manager;
  handlerCopy = handler;
  v8 = [self localizedTitleForUseCase:0 actionManager:managerCopy];
  if ([v8 length])
  {
    v9 = [self systemImageNameForActionManager:managerCopy];
    if ([v9 length])
    {
      v10 = MEMORY[0x1E69DCAB8];
      v11 = [self systemImageNameForActionManager:managerCopy];
      v12 = [v10 systemImageNamed:v11];
    }

    else
    {
      v12 = 0;
    }

    v13 = [MEMORY[0x1E69DC628] actionWithTitle:v8 image:v12 identifier:0 handler:handlerCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (CKMediaObjectAssetActionHelper)chatActionHelper
{
  WeakRetained = objc_loadWeakRetained(&self->_chatActionHelper);

  return WeakRetained;
}

@end