@interface UIDragItem
@end

@implementation UIDragItem

void __117__UIDragItem_MobileSafariExtras___sf_loadObjectsFromDragItems_usingLocalObjectLoader_objectLoader_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  os_unfair_lock_lock((*(*(a1 + 40) + 8) + 48));
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v7 forKeyedSubscript:v6];

  os_unfair_lock_unlock((*(*(a1 + 40) + 8) + 48));
}

void __117__UIDragItem_MobileSafariExtras___sf_loadObjectsFromDragItems_usingLocalObjectLoader_objectLoader_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (*(a1 + 56) && ([v5 localObject], v7 = objc_claimAutoreleasedReturnValue(), v7, v7) && ((*(a1 + 56))(v6), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    dispatch_group_enter(*(a1 + 32));
    v9 = *(a1 + 64);
    v10 = [v6 itemProvider];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __117__UIDragItem_MobileSafariExtras___sf_loadObjectsFromDragItems_usingLocalObjectLoader_objectLoader_completionHandler___block_invoke_3;
    v11[3] = &unk_1E721DEB0;
    v13 = *(a1 + 40);
    v14 = a3;
    v12 = *(a1 + 32);
    v9(v10, v11);
  }
}

void __117__UIDragItem_MobileSafariExtras___sf_loadObjectsFromDragItems_usingLocalObjectLoader_objectLoader_completionHandler___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void __117__UIDragItem_MobileSafariExtras___sf_loadObjectsFromDragItems_usingLocalObjectLoader_objectLoader_completionHandler___block_invoke_4(void *a1)
{
  os_unfair_lock_lock((*(a1[6] + 8) + 48));
  v2 = [MEMORY[0x1E695DEC8] safari_arrayFromDictionaryOfObjectsByIndex:a1[4]];
  os_unfair_lock_unlock((*(a1[6] + 8) + 48));
  (*(a1[5] + 16))();
}

id __80__UIDragItem_MobileSafariExtras__safari_itemWithCustomBackgroundForPreviewView___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
  v3 = MEMORY[0x1E69DC728];
  [*(a1 + 32) bounds];
  v4 = [v3 bezierPathWithRoundedRect:? cornerRadius:?];
  [v2 setVisiblePath:v4];

  v5 = [objc_alloc(MEMORY[0x1E69DC998]) initWithView:*(a1 + 32) parameters:v2];

  return v5;
}

@end