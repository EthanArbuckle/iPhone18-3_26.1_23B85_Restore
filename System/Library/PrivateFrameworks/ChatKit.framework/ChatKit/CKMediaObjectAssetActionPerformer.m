@interface CKMediaObjectAssetActionPerformer
+ (BOOL)canPerformWithActionManager:(id)a3;
+ (id)createBarButtonItemWithTarget:(id)a3 action:(SEL)a4 actionManager:(id)a5;
+ (id)createPreviewActionWithActionManager:(id)a3 handler:(id)a4;
- (CKMediaObjectAssetActionHelper)chatActionHelper;
@end

@implementation CKMediaObjectAssetActionPerformer

+ (BOOL)canPerformWithActionManager:(id)a3
{
  v4 = a3;
  v5 = [v4 _selectionSnapshotForPerformerClass:a1];
  if (v5)
  {
    v6 = [a1 canPerformWithActionManager:v4 selectionSnapshot:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)createBarButtonItemWithTarget:(id)a3 action:(SEL)a4 actionManager:(id)a5
{
  v8 = a3;
  v9 = [a1 systemImageNameForActionManager:a5];
  if ([v9 length])
  {
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:v9];
    v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:v10 style:0 target:v8 action:a4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)createPreviewActionWithActionManager:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 localizedTitleForUseCase:0 actionManager:v6];
  if ([v8 length])
  {
    v9 = [a1 systemImageNameForActionManager:v6];
    if ([v9 length])
    {
      v10 = MEMORY[0x1E69DCAB8];
      v11 = [a1 systemImageNameForActionManager:v6];
      v12 = [v10 systemImageNamed:v11];
    }

    else
    {
      v12 = 0;
    }

    v13 = [MEMORY[0x1E69DC628] actionWithTitle:v8 image:v12 identifier:0 handler:v7];
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