@interface IMPromise
+ (id)all:(id)a3;
- (IMPromise)initWithError:(id)a3;
- (IMPromise)initWithValue:(id)a3;
- (id)then:(id)a3;
- (void)failWithError:(id)a3;
- (void)fullfillWithValue:(id)a3;
- (void)registerCompletionBlock:(id)a3;
@end

@implementation IMPromise

- (IMPromise)initWithValue:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IMPromise;
  v5 = [(IMPromise *)&v9 init];
  if (v5)
  {
    v6 = [[IMResult alloc] initWithSuccess:v4];
    v7 = v5->_result;
    v5->_result = v6;
  }

  return v5;
}

- (IMPromise)initWithError:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IMPromise;
  v5 = [(IMPromise *)&v9 init];
  if (v5)
  {
    v6 = [[IMResult alloc] initWithError:v4];
    v7 = v5->_result;
    v5->_result = v6;
  }

  return v5;
}

- (void)fullfillWithValue:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[IMResult alloc] initWithSuccess:v4];
  result = self->_result;
  self->_result = v5;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_completionBlocks;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = self->_result;
        (*(*(*(&v15 + 1) + 8 * v11) + 16))(*(*(&v15 + 1) + 8 * v11));
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  completionBlocks = self->_completionBlocks;
  self->_completionBlocks = 0;

  v14 = *MEMORY[0x277D85DE8];
}

- (void)failWithError:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[IMResult alloc] initWithError:v4];
  result = self->_result;
  self->_result = v5;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_completionBlocks;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = self->_result;
        (*(*(*(&v15 + 1) + 8 * v11) + 16))(*(*(&v15 + 1) + 8 * v11));
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  completionBlocks = self->_completionBlocks;
  self->_completionBlocks = 0;

  v14 = *MEMORY[0x277D85DE8];
}

- (void)registerCompletionBlock:(id)a3
{
  v10 = a3;
  if ([(IMPromise *)self completed])
  {
    v10[2](v10, self->_result);
  }

  else
  {
    completionBlocks = self->_completionBlocks;
    if (completionBlocks)
    {
      v5 = MEMORY[0x259C198A0](v10);
      [(NSMutableArray *)completionBlocks addObject:v5];
    }

    else
    {
      v6 = objc_alloc(MEMORY[0x277CBEB18]);
      v7 = MEMORY[0x259C198A0](v10);
      v8 = [v6 initWithObjects:{v7, 0}];
      v9 = self->_completionBlocks;
      self->_completionBlocks = v8;
    }
  }
}

+ (id)all:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(IMPromise);
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  if ([v3 count])
  {
    v6 = 0;
    do
    {
      v7 = [MEMORY[0x277CBEB68] null];
      [v5 addObject:v7];

      ++v6;
    }

    while ([v3 count] > v6);
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  if (![v3 count])
  {
    [(IMPromise *)v4 fullfillWithValue:v5];
    *(v21 + 24) = 1;
  }

  for (i = 0; [v3 count] > i; ++i)
  {
    v9 = [v3 objectAtIndexedSubscript:i];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2547E0198;
    v12[3] = &unk_2797884F8;
    v15 = &v20;
    v13 = v4;
    v10 = v5;
    v17 = i;
    v14 = v10;
    v16 = v18;
    [v9 registerCompletionBlock:v12];
  }

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v20, 8);

  return v4;
}

- (id)then:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(IMPromise);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2547E036C;
  v11[3] = &unk_279788548;
  v6 = v5;
  v12 = v6;
  v13 = v4;
  v7 = v4;
  [(IMPromise *)self registerCompletionBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

@end