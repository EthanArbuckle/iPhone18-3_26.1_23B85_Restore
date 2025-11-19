@interface ICAbstractTextAttachment(App)
- (id)newlyCreatedViewControllerForManualRendering:()App layoutManager:initialCharacterIndex:;
- (id)viewForLayoutManager:()App;
@end

@implementation ICAbstractTextAttachment(App)

- (id)viewForLayoutManager:()App
{
  v4 = a3;
  objc_opt_class();
  v5 = ICCheckedDynamicCast();

  v6 = [v5 viewForTextAttachment:a1];

  return v6;
}

- (id)newlyCreatedViewControllerForManualRendering:()App layoutManager:initialCharacterIndex:
{
  v8 = a4;
  v9 = [a1 attachmentViewControllerClass];
  if ([v9 conformsToProtocol:&unk_28278D948])
  {
    v10 = [v9 instancesRespondToSelector:sel_initWithTextAttachment_forManualRendering_layoutManager_initialCharacterIndex_];
    v11 = [v9 alloc];
    if (v10)
    {
      v12 = [v11 initWithTextAttachment:a1 forManualRendering:a3 layoutManager:v8 initialCharacterIndex:a5];
    }

    else
    {
      v12 = [v11 initWithTextAttachment:a1 forManualRendering:a3 layoutManager:v8];
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end