@interface CPSImageDownloader
- (CPSImageDownloader)init;
- (void)_downloadImageWithURL:(id)a3 completionHandler:(id)a4;
- (void)downloadImageWithURL:(id)a3 completionHandler:(id)a4;
@end

@implementation CPSImageDownloader

- (CPSImageDownloader)init
{
  v12.receiver = self;
  v12.super_class = CPSImageDownloader;
  v2 = [(CPSImageDownloader *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.ClipServices.%@.%p", objc_opt_class(), v2];
    v4 = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v6 = dispatch_queue_create(v4, v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = [MEMORY[0x277CBEB38] dictionary];
    requests = v2->_requests;
    v2->_requests = v8;

    v10 = v2;
  }

  return v2;
}

- (void)downloadImageWithURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__CPSImageDownloader_downloadImageWithURL_completionHandler___block_invoke;
  block[3] = &unk_278DCDCF8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)_downloadImageWithURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    if (v6)
    {
      v9 = [(NSMutableDictionary *)self->_requests objectForKeyedSubscript:v6];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __62__CPSImageDownloader__downloadImageWithURL_completionHandler___block_invoke;
      v24[3] = &unk_278DCE188;
      v25 = v8;
      v10 = v9;
      v26 = v10;
      v11 = MEMORY[0x245D3D5F0](v24);
      v12 = MEMORY[0x245D3D5F0]();
      [(NSMutableDictionary *)self->_requests setObject:v12 forKeyedSubscript:v6];

      if (!v10)
      {
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __62__CPSImageDownloader__downloadImageWithURL_completionHandler___block_invoke_2;
        v22[3] = &unk_278DCE1D8;
        v22[4] = self;
        v13 = v6;
        v23 = v13;
        v14 = MEMORY[0x245D3D5F0](v22);
        v15 = MEMORY[0x277CCAD30];
        v16 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
        v17 = [v15 sessionWithConfiguration:v16];

        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __62__CPSImageDownloader__downloadImageWithURL_completionHandler___block_invoke_4;
        v20[3] = &unk_278DCE200;
        v21 = v14;
        v18 = v14;
        v19 = [v17 dataTaskWithURL:v13 completionHandler:v20];
        [v19 resume];
      }
    }

    else
    {
      (*(v7 + 2))(v7, 0, 0);
    }
  }
}

void __62__CPSImageDownloader__downloadImageWithURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  (*(*(a1 + 32) + 16))();
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

void __62__CPSImageDownloader__downloadImageWithURL_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__CPSImageDownloader__downloadImageWithURL_completionHandler___block_invoke_3;
  v12[3] = &unk_278DCE1B0;
  v12[4] = v8;
  v13 = v7;
  v14 = v5;
  v15 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, v12);
}

void __62__CPSImageDownloader__downloadImageWithURL_completionHandler___block_invoke_3(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  if (v2)
  {
    (*(v2 + 2))(v2, a1[6], a1[7]);
  }

  [*(a1[4] + 16) removeObjectForKey:a1[5]];
}

@end