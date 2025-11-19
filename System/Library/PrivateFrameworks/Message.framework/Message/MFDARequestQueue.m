@interface MFDARequestQueue
- (BOOL)processRequests:(id)a3;
- (MFDARequestQueue)initWithAccount:(id)a3 folderID:(id)a4;
- (id)filterRequests:(id)a3;
@end

@implementation MFDARequestQueue

- (MFDARequestQueue)initWithAccount:(id)a3 folderID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MFDARequestQueue;
  v9 = [(MFRequestQueue *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    objc_storeStrong(&v10->_folderID, a4);
  }

  return v10;
}

- (id)filterRequests:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__MFDARequestQueue_filterRequests___block_invoke;
  v7[3] = &unk_1E7AA2638;
  v5 = v4;
  v8 = v5;
  [v3 enumerateObjectsUsingBlock:v7];

  return v5;
}

void __35__MFDARequestQueue_filterRequests___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 first];

  if (v3)
  {
    v4 = [v5 first];
    if ([v4 shouldSend] && (objc_msgSend(*(a1 + 32), "containsObject:", v5) & 1) == 0)
    {
      [*(a1 + 32) addObject:v5];
    }
  }
}

- (BOOL)processRequests:(id)a3
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v4 = [(MFDARequestQueue *)self filterRequests:a3];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = -1;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __36__MFDARequestQueue_processRequests___block_invoke;
  v14 = &unk_1E7AA2660;
  v17 = v19;
  v6 = v5;
  v15 = v6;
  v16 = self;
  v18 = &v21;
  [v4 enumerateObjectsUsingBlock:&v11];
  if ([v6 count])
  {
    v7 = [(DAMailAccount *)self->_account processRequests:v6 mailbox:self->_folderID];
    v8 = v22;
    if (!v7)
    {
      *(v22 + 24) = 0;
    }
  }

  else
  {
    v8 = v22;
  }

  v9 = *(v8 + 24);

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(&v21, 8);
  return v9;
}

void __36__MFDARequestQueue_processRequests___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 first];
  v4 = [v3 bodyFormat];
  v5 = v4;
  if (v4 != -1 && v4 != *(*(*(a1 + 48) + 8) + 24) && [*(a1 + 32) count])
  {
    if (([*(*(a1 + 40) + 24) processRequests:*(a1 + 32) mailbox:*(*(a1 + 40) + 32)] & 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }

    [*(a1 + 32) removeAllObjects];
    *(*(*(a1 + 48) + 8) + 24) = -1;
  }

  [*(a1 + 32) addObject:v6];
  if (v5 != -1)
  {
    *(*(*(a1 + 48) + 8) + 24) = v5;
  }
}

@end