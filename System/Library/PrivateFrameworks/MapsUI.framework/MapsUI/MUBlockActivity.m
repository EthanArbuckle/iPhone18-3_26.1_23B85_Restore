@interface MUBlockActivity
+ (id)createBlockActivitiesFromPlaceActionItems:(id)a3 usingActionManager:(id)a4 presentationOptions:(id)a5 analyticsModuleMetadata:(id)a6;
- (MUBlockActivity)initWithTitle:(id)a3 systemImageName:(id)a4 activityType:(id)a5 block:(id)a6;
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
  v3 = [(MUBlockActivity *)self type];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [(MUBlockActivity *)self title];
    v5 = [v6 stringWithFormat:@"%@.%@", v7, v8];
  }

  return v5;
}

- (MUBlockActivity)initWithTitle:(id)a3 systemImageName:(id)a4 activityType:(id)a5 block:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = MUBlockActivity;
  v15 = [(UIActivity *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_title, a3);
    v17 = _Block_copy(v14);
    block = v16->_block;
    v16->_block = v17;

    objc_storeStrong(&v16->_type, a5);
    objc_storeStrong(&v16->_systemImageName, a4);
  }

  return v16;
}

+ (id)createBlockActivitiesFromPlaceActionItems:(id)a3 usingActionManager:(id)a4 presentationOptions:(id)a5 analyticsModuleMetadata:(id)a6
{
  v43 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v33 = a4;
  v10 = a5;
  v11 = a6;
  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v9;
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

        v15 = [*(*(&v38 + 1) + 8 * i) resolvedActionItem];
        v16 = [v15 titleForDisplayStyle:0];
        v17 = [v15 symbolForDisplayStyle:0];
        v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v19 = [v10 sourceView];

        if (v19)
        {
          v20 = [v10 sourceView];
          [v18 setObject:v20 forKeyedSubscript:v30];
        }

        if (v11)
        {
          [v18 setObject:v11 forKeyedSubscript:v29];
        }

        v21 = [MUBlockActivity alloc];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __152__MUBlockActivity_MKPlaceActionManagerExtras__createBlockActivitiesFromPlaceActionItems_usingActionManager_presentationOptions_analyticsModuleMetadata___block_invoke;
        v34[3] = &unk_1E8218E68;
        v35 = v33;
        v36 = v15;
        v37 = v18;
        v22 = v18;
        v23 = v15;
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