@interface GSPermanentAdditionEnumerator
- (GSPermanentAdditionEnumerator)initWithStorage:(id)a3 nameSpace:(id)a4 withOptions:(unint64_t)a5 withoutOptions:(unint64_t)a6 ordering:(int)a7;
- (id)nextObject;
- (void)_fetchNextBatch;
- (void)dealloc;
@end

@implementation GSPermanentAdditionEnumerator

- (GSPermanentAdditionEnumerator)initWithStorage:(id)a3 nameSpace:(id)a4 withOptions:(unint64_t)a5 withoutOptions:(unint64_t)a6 ordering:(int)a7
{
  v13 = a3;
  v14 = a4;
  v22.receiver = self;
  v22.super_class = GSPermanentAdditionEnumerator;
  v15 = [(GSPermanentAdditionEnumerator *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_storage, a3);
    objc_storeStrong(&v16->_nameSpace, a4);
    v16->_withOptions = a5;
    v16->_withoutOptions = a6;
    v17 = +[GSDaemonProxySync proxy];
    proxy = v16->_proxy;
    v16->_proxy = v17;

    token = v16->_token;
    v20 = &unk_28627AC30;
    if (a7 == -1)
    {
      v20 = &unk_28627AC18;
    }

    v16->_token = v20;

    [(GSPermanentAdditionEnumerator *)v16 _fetchNextBatch];
  }

  return v16;
}

- (void)dealloc
{
  v3 = [(GSDaemonProxySync *)self->_proxy result];
  v4.receiver = self;
  v4.super_class = GSPermanentAdditionEnumerator;
  [(GSPermanentAdditionEnumerator *)&v4 dealloc];
}

- (void)_fetchNextBatch
{
  proxy = self->_proxy;
  v4 = [(GSPermanentStorage *)self->_storage remoteID];
  nameSpace = self->_nameSpace;
  withOptions = self->_withOptions;
  withoutOptions = self->_withoutOptions;
  token = self->_token;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__GSPermanentAdditionEnumerator__fetchNextBatch__block_invoke;
  v9[3] = &unk_2796976B0;
  v9[4] = self;
  [(GSDaemonProxySync *)proxy listAdditionsOfStorage:v4 nameSpace:nameSpace withOptions:withOptions withoutOptions:withoutOptions andEnumerationState:token completionHandler:v9];
}

void __48__GSPermanentAdditionEnumerator__fetchNextBatch__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v33 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v12)
  {
    [*(*(a1 + 32) + 8) setPubExtension:v12];
  }

  if (v13)
  {
    [*(*(a1 + 32) + 8) setPrivExtension:v13];
  }

  v16 = *(a1 + 32);
  if (v11)
  {
    v25 = v15;
    v26 = v14;
    v27 = v13;
    objc_storeStrong((v16 + 72), a5);
    v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v11, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = v11;
    v19 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v29;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [[GSAddition alloc] _initWithStorage:*(*(a1 + 32) + 8) andDictionary:*(*(&v28 + 1) + 8 * i)];
          [v17 addObject:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v20);
    }

    v15 = v25;
    [*(*(a1 + 32) + 56) handleObjResult:v17 error:v25];

    v13 = v27;
    v14 = v26;
  }

  else
  {
    [*(v16 + 56) handleObjResult:0 error:v15];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)nextObject
{
  if (self->_error)
  {
    goto LABEL_2;
  }

  if (self->_proxy)
  {
    pos = self->_pos;
    if (pos >= [(NSArray *)self->_array count])
    {
      v8 = [(GSDaemonProxySync *)self->_proxy result];
      array = self->_array;
      self->_array = v8;

      v10 = [(GSDaemonProxySync *)self->_proxy error];
      self->_pos = 0;
      if (v10)
      {
        error = self->_error;
        self->_error = v10;

        goto LABEL_2;
      }

      if (self->_token)
      {
        [(GSPermanentAdditionEnumerator *)self _fetchNextBatch];
      }

      else
      {
        proxy = self->_proxy;
        self->_proxy = 0;
      }
    }
  }

  v6 = self->_pos;
  if (v6 >= [(NSArray *)self->_array count])
  {
LABEL_2:
    v2 = 0;
    goto LABEL_3;
  }

  v7 = self->_array;
  ++self->_pos;
  v2 = [(NSArray *)v7 objectAtIndex:?];
LABEL_3:

  return v2;
}

@end