@interface SUUILoadArtworkResourceOperation
- (SSVLoadURLOperation)underlyingOperation;
- (SUUILoadArtworkResourceOperation)initWithResourceRequest:(id)a3;
- (void)cancel;
- (void)main;
@end

@implementation SUUILoadArtworkResourceOperation

- (SUUILoadArtworkResourceOperation)initWithResourceRequest:(id)a3
{
  v4.receiver = self;
  v4.super_class = SUUILoadArtworkResourceOperation;
  return [(SUUILoadResourceOperation *)&v4 initWithResourceRequest:a3];
}

- (void)main
{
  v3 = [(SUUILoadResourceOperation *)self resourceRequest];
  v4 = [v3 imageName];
  v5 = [v3 URL];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D69CD8]);
    v7 = [v3 URL];
    v8 = [v6 initWithURL:v7];

    v9 = [v3 dataConsumer];
    [v8 setDataConsumer:v9];

    [v8 setITunesStoreRequest:0];
    [v8 setRecordsMetrics:0];
    v10 = [(SUUILoadResourceOperation *)self outputBlock];
    [v8 setOutputBlock:v10];

    [(SUUILoadArtworkResourceOperation *)self setUnderlyingOperation:v8];
    [v8 main];
  }

  else if (v4)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__61;
    v30 = __Block_byref_object_dispose__61;
    v31 = 0;
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v11 = MEMORY[0x277D755B8];
      v12 = SUUIBundle();
      v13 = [v11 imageNamed:v4 inBundle:v12];
      v14 = v27[5];
      v27[5] = v13;
    }

    else
    {
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __40__SUUILoadArtworkResourceOperation_main__block_invoke;
      v23 = &unk_2798F5B48;
      v25 = &v26;
      v24 = v4;
      dispatch_sync(MEMORY[0x277D85CD0], &v20);
      v12 = v24;
    }

    if (([(SUUILoadArtworkResourceOperation *)self isCancelled]& 1) == 0)
    {
      v15 = [v3 dataConsumer];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 imageForImage:v27[5]];
        v18 = v27[5];
        v27[5] = v17;
      }

      v19 = [(SUUILoadResourceOperation *)self outputBlock:v20];
      if (v19 && ([(SUUILoadArtworkResourceOperation *)self isCancelled]& 1) == 0)
      {
        v19[2](v19, v27[5], 0);
      }
    }

    _Block_object_dispose(&v26, 8);
  }
}

void __40__SUUILoadArtworkResourceOperation_main__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D755B8];
  v3 = *(a1 + 32);
  v7 = SUUIBundle();
  v4 = [v2 imageNamed:v3 inBundle:v7];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = SUUILoadArtworkResourceOperation;
  [(SUUILoadResourceOperation *)&v4 cancel];
  v3 = [(SUUILoadArtworkResourceOperation *)self underlyingOperation];
  [v3 cancel];
}

- (SSVLoadURLOperation)underlyingOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_underlyingOperation);

  return WeakRetained;
}

@end