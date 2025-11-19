@interface UIDragItem(MobileSafariExtras)
+ (id)_sf_itemWithTabGroup:()MobileSafariExtras;
+ (id)safari_itemWithBookmark:()MobileSafariExtras;
+ (void)_sf_loadObjectsFromDragItems:()MobileSafariExtras usingLocalObjectLoader:objectLoader:completionHandler:;
- (id)_sf_localBookmark;
- (id)_sf_localTabGroup;
- (id)_sf_localURL;
- (id)safari_itemWithCustomBackgroundForPreviewView:()MobileSafariExtras;
- (uint64_t)_sf_initWithSiriSuggestion:()MobileSafariExtras;
- (void)_sf_initWithBookmark:()MobileSafariExtras;
@end

@implementation UIDragItem(MobileSafariExtras)

+ (void)_sf_loadObjectsFromDragItems:()MobileSafariExtras usingLocalObjectLoader:objectLoader:completionHandler:
{
  v9 = a3;
  v10 = a6;
  v11 = dispatch_group_create();
  v12 = [MEMORY[0x1E695DF90] dictionary];
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3812000000;
  v38[3] = __Block_byref_object_copy__5;
  v38[4] = __Block_byref_object_dispose__5;
  v38[5] = "";
  v39 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __117__UIDragItem_MobileSafariExtras___sf_loadObjectsFromDragItems_usingLocalObjectLoader_objectLoader_completionHandler___block_invoke;
  aBlock[3] = &unk_1E721DE88;
  v37 = v38;
  v13 = v12;
  v36 = v13;
  v14 = _Block_copy(aBlock);
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __117__UIDragItem_MobileSafariExtras___sf_loadObjectsFromDragItems_usingLocalObjectLoader_objectLoader_completionHandler___block_invoke_2;
  v25[3] = &unk_1E721DED8;
  v29 = a4;
  v15 = v14;
  v27 = v15;
  v28 = &v31;
  v16 = v11;
  v26 = v16;
  v30 = a5;
  [v9 enumerateObjectsUsingBlock:v25];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __117__UIDragItem_MobileSafariExtras___sf_loadObjectsFromDragItems_usingLocalObjectLoader_objectLoader_completionHandler___block_invoke_4;
  v21[3] = &unk_1E721DF00;
  v24 = v38;
  v17 = v13;
  v22 = v17;
  v18 = v10;
  v23 = v18;
  v19 = _Block_copy(v21);
  v20 = v19;
  if (*(v32 + 24) == 1)
  {
    v19[2](v19);
  }

  else
  {
    dispatch_group_notify(v16, MEMORY[0x1E69E96A0], v19);
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(v38, 8);
}

+ (id)_sf_itemWithTabGroup:()MobileSafariExtras
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E696ACA0]);
  v5 = [v3 richTextForPasteboard];
  v6 = [v4 initWithObject:v5];

  if ([v3 isSyncable])
  {
    v7 = MEMORY[0x1E69636A8];
    v8 = objc_alloc(MEMORY[0x1E696AFB0]);
    v9 = [v3 lastSelectedTabUUID];
    v10 = [v8 initWithUUIDString:v9];
    v11 = objc_alloc(MEMORY[0x1E696AFB0]);
    v12 = [v3 uuid];
    v13 = [v11 initWithUUIDString:v12];
    v14 = [v7 _sf_windowCreationActivityWithTabUUID:v10 tabGroupUUID:v13 browserControllerUUID:0];

    [v6 registerObject:v14 visibility:0];
  }

  v15 = [objc_alloc(MEMORY[0x1E69DC990]) initWithItemProvider:v6];
  [v15 setLocalObject:v3];

  return v15;
}

- (void)_sf_initWithBookmark:()MobileSafariExtras
{
  v4 = a3;
  if (([v4 isFolder] & 1) == 0)
  {
    v10 = [v4 address];
    v6 = [v10 safari_bestURLForUserTypedString];

    v11 = MEMORY[0x1E696ACA0];
    v8 = [v4 title];
    v9 = [v11 itemProviderWithURL:v6 title:v8];
    goto LABEL_5;
  }

  v5 = [_SFNavigationIntentBuilder builderWithModifierFlags:0];
  v6 = [v5 navigationIntentWithBookmark:v4];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E696ACA0]);
    v8 = [MEMORY[0x1E69636A8] _sf_windowCreationActivityWithNavigationIntent:v6];
    v9 = [v7 initWithObject:v8];
LABEL_5:
    v12 = v9;

    goto LABEL_6;
  }

  v12 = objc_alloc_init(MEMORY[0x1E696ACA0]);
LABEL_6:

  v13 = [a1 initWithItemProvider:v12];
  v14 = v13;
  if (v13)
  {
    [v13 setLocalObject:v4];
    v15 = v14;
  }

  return v14;
}

+ (id)safari_itemWithBookmark:()MobileSafariExtras
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) _sf_initWithBookmark:v3];

  return v4;
}

- (uint64_t)_sf_initWithSiriSuggestion:()MobileSafariExtras
{
  v4 = a3;
  v5 = MEMORY[0x1E696ACA0];
  v6 = [v4 pageURL];
  v7 = [v4 title];
  v8 = [v5 itemProviderWithURL:v6 title:v7];

  v9 = [a1 initWithItemProvider:v8];
  return v9;
}

- (id)_sf_localBookmark
{
  v1 = [a1 localObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1;
  }

  if ((isKindOfClass & 1) == 0)
  {
    v1 = 0;
  }

  return v1;
}

- (id)_sf_localURL
{
  v1 = [a1 localObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1;
  }

  if ((isKindOfClass & 1) == 0)
  {
    v1 = 0;
  }

  return v1;
}

- (id)_sf_localTabGroup
{
  v1 = [a1 localObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1;
  }

  if ((isKindOfClass & 1) == 0)
  {
    v1 = 0;
  }

  return v1;
}

- (id)safari_itemWithCustomBackgroundForPreviewView:()MobileSafariExtras
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __80__UIDragItem_MobileSafariExtras__safari_itemWithCustomBackgroundForPreviewView___block_invoke;
    v9[3] = &unk_1E721DF28;
    v10 = v4;
    [a1 setPreviewProvider:v9];
    v6 = a1;
  }

  else
  {
    v7 = a1;
  }

  return a1;
}

@end