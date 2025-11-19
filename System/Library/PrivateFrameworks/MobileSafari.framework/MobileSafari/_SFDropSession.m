@interface _SFDropSession
+ (BOOL)dropSession:(id)a3 containsItemsMatching:(void *)a4 allowedTypeIdentifiers:(id)a5 allowedClasses:(id)a6;
+ (void)dropSession:(id)a3 loadObjectsUsingLocalObjectLoader:(void *)a4 objectLoader:(void *)a5 completionHandler:(id)a6;
@end

@implementation _SFDropSession

+ (BOOL)dropSession:(id)a3 containsItemsMatching:(void *)a4 allowedTypeIdentifiers:(id)a5 allowedClasses:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [v9 localDragSession];

  if (a4 && v12 && ([v9 items], v13 = objc_claimAutoreleasedReturnValue(), v22[0] = MEMORY[0x1E69E9820], v22[1] = 3221225472, v22[2] = __90___SFDropSession_dropSession_containsItemsMatching_allowedTypeIdentifiers_allowedClasses___block_invoke, v22[3] = &__block_descriptor_40_e20_B16__0__UIDragItem_8l, v22[4] = a4, v14 = objc_msgSend(v13, "safari_containsObjectPassingTest:", v22), v13, (v14 & 1) != 0))
  {
    v15 = 1;
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __90___SFDropSession_dropSession_containsItemsMatching_allowedTypeIdentifiers_allowedClasses___block_invoke_2;
    aBlock[3] = &unk_1E721C5A8;
    v20 = v11;
    v16 = v9;
    v21 = v16;
    v17 = _Block_copy(aBlock);
    if ([v10 count] && (objc_msgSend(v16, "hasItemsConformingToTypeIdentifiers:", v10) & 1) != 0)
    {
      v15 = 1;
    }

    else
    {
      v15 = v17[2](v17);
    }
  }

  return v15;
}

+ (void)dropSession:(id)a3 loadObjectsUsingLocalObjectLoader:(void *)a4 objectLoader:(void *)a5 completionHandler:(id)a6
{
  v9 = MEMORY[0x1E69DC990];
  v10 = a6;
  v11 = [a3 items];
  [v9 _sf_loadObjectsFromDragItems:v11 usingLocalObjectLoader:a4 objectLoader:a5 completionHandler:v10];
}

@end