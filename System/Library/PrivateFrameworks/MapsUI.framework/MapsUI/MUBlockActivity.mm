@interface MUBlockActivity
+ (id)createBlockActivitiesFromPlaceActionItems:(id)items usingActionManager:(id)manager presentationOptions:(id)options analyticsModuleMetadata:(id)metadata;
- (MUBlockActivity)initWithTitle:(id)title systemImageName:(id)name activityType:(id)type block:(id)block;
- (id)activityType;
- (void)performActivity;
@end

@implementation MUBlockActivity

- (void)performActivity
{
  block = self->_block;
  if (block)
  {
    block[2](block, a2);
  }

  [(UIActivity *)self activityDidFinish:1];
}

- (id)activityType
{
  type = [(MUBlockActivity *)self type];
  v4 = type;
  if (type)
  {
    v5 = type;
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    title = [(MUBlockActivity *)self title];
    v5 = [v6 stringWithFormat:@"%@.%@", v7, title];
  }

  return v5;
}

- (MUBlockActivity)initWithTitle:(id)title systemImageName:(id)name activityType:(id)type block:(id)block
{
  titleCopy = title;
  nameCopy = name;
  typeCopy = type;
  blockCopy = block;
  v20.receiver = self;
  v20.super_class = MUBlockActivity;
  v15 = [(UIActivity *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_title, title);
    v17 = _Block_copy(blockCopy);
    block = v16->_block;
    v16->_block = v17;

    objc_storeStrong(&v16->_type, type);
    objc_storeStrong(&v16->_systemImageName, name);
  }

  return v16;
}

+ (id)createBlockActivitiesFromPlaceActionItems:(id)items usingActionManager:(id)manager presentationOptions:(id)options analyticsModuleMetadata:(id)metadata
{
  v43 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  managerCopy = manager;
  optionsCopy = options;
  metadataCopy = metadata;
  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = itemsCopy;
  v12 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v12)
  {
    v13 = v12;
    v31 = *v39;
    v30 = *MEMORY[0x1E696F118];
    v29 = *MEMORY[0x1E696F108];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v39 != v31)
        {
          objc_enumerationMutation(obj);
        }

        resolvedActionItem = [*(*(&v38 + 1) + 8 * i) resolvedActionItem];
        v16 = [resolvedActionItem titleForDisplayStyle:0];
        v17 = [resolvedActionItem symbolForDisplayStyle:0];
        v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
        sourceView = [optionsCopy sourceView];

        if (sourceView)
        {
          sourceView2 = [optionsCopy sourceView];
          [v18 setObject:sourceView2 forKeyedSubscript:v30];
        }

        if (metadataCopy)
        {
          [v18 setObject:metadataCopy forKeyedSubscript:v29];
        }

        v21 = [MUBlockActivity alloc];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __152__MUBlockActivity_MKPlaceActionManagerExtras__createBlockActivitiesFromPlaceActionItems_usingActionManager_presentationOptions_analyticsModuleMetadata___block_invoke;
        v34[3] = &unk_1E8218E68;
        v35 = managerCopy;
        v36 = resolvedActionItem;
        v37 = v18;
        v22 = v18;
        v23 = resolvedActionItem;
        v24 = [(MUBlockActivity *)v21 initWithTitle:v16 systemImageName:v17 activityType:0 block:v34];
        [v32 addObject:v24];
      }

      v13 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v13);
  }

  v25 = [v32 copy];
  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

void __152__MUBlockActivity_MKPlaceActionManagerExtras__createBlockActivitiesFromPlaceActionItems_usingActionManager_presentationOptions_analyticsModuleMetadata___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) copy];
  [v1 performAction:v2 options:v3 completion:0];
}

@end