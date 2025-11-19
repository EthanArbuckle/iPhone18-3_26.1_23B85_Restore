@interface DKApplicationStateStore
- (id)focalApplication;
- (void)updateElements:(id)a3 displayType:(unint64_t)a4;
@end

@implementation DKApplicationStateStore

- (id)focalApplication
{
  v3 = self->_mainApplication;
  v4 = self->_continuityApplication;
  v5 = v4;
  v6 = v3;
  if (v4)
  {
    v6 = v4;
    if (v3)
    {
      if ([(DKApplicationState *)v3 compare:v4]== 1)
      {
        v6 = v5;
      }

      else
      {
        v6 = v3;
      }
    }
  }

  v7 = v6;

  v8 = self->_externalApplication;
  v9 = v8;
  v10 = v7;
  if (v8)
  {
    v10 = v8;
    if (v7)
    {
      if ([(DKApplicationState *)v7 compare:v8]== 1)
      {
        v10 = v9;
      }

      else
      {
        v10 = v7;
      }
    }
  }

  v11 = v10;

  return v10;
}

- (void)updateElements:(id)a3 displayType:(unint64_t)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        v14 = [DKApplicationState alloc];
        v15 = [(DKApplicationState *)v14 initWithDisplayType:a4 element:v13, v20];
        [v7 addObject:v15];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  [v7 sortUsingSelector:sel_compare_];
  if (a4 <= 2)
  {
    v16 = [v7 firstObject];
    v17 = &self->super.isa + a4;
    v18 = v17[1];
    v17[1] = v16;
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end