@interface NULinkedContentManager
- (NULinkedContentManager)initWithLinkedContentProviders:(id)a3;
- (id)loadLinkedContentForHeadline:(id)a3 withContext:(id)a4 priority:(int64_t)a5 completion:(id)a6;
@end

@implementation NULinkedContentManager

- (NULinkedContentManager)initWithLinkedContentProviders:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NULinkedContentManager;
  v6 = [(NULinkedContentManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_linkedContentProviders, a3);
  }

  return v7;
}

- (id)loadLinkedContentForHeadline:(id)a3 withContext:(id)a4 priority:(int64_t)a5 completion:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [MEMORY[0x277CBEB18] array];
  v13 = dispatch_group_create();
  if (v9 && v10)
  {
    v24 = v11;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = [(NSArray *)self->_linkedContentProviders copy];
    v14 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v31 + 1) + 8 * i);
          dispatch_group_enter(v13);
          if (objc_opt_respondsToSelector())
          {
            v29[0] = MEMORY[0x277D85DD0];
            v29[1] = 3221225472;
            v29[2] = __87__NULinkedContentManager_loadLinkedContentForHeadline_withContext_priority_completion___block_invoke;
            v29[3] = &unk_2799A3498;
            v30 = v13;
            v19 = [v18 loadLinkedContentForHeadline:v9 withContext:v10 priority:a5 completion:v29];
            v20 = &v30;
          }

          else
          {
            v27[0] = MEMORY[0x277D85DD0];
            v27[1] = 3221225472;
            v27[2] = __87__NULinkedContentManager_loadLinkedContentForHeadline_withContext_priority_completion___block_invoke_2;
            v27[3] = &unk_2799A3498;
            v28 = v13;
            v19 = [v18 loadLinkedContentForHeadline:v9 withContext:v10 completion:v27];
            v20 = &v28;
          }

          [v12 addObject:v19];
        }

        v15 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v15);
    }

    v11 = v24;
  }

  dispatch_group_notify(v13, MEMORY[0x277D85CD0], v11);
  v21 = [MEMORY[0x277D31088] groupCancelHandlerWithCancelHandlers:v12];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

@end