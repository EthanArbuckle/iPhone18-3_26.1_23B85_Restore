@interface CPSImageDownloader
- (CPSImageDownloader)init;
- (void)_downloadImageWithURL:(id)l completionHandler:(id)handler;
- (void)downloadImageWithURL:(id)l completionHandler:(id)handler;
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
    uTF8String = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v6 = dispatch_queue_create(uTF8String, v5);
    queue = v2->_queue;
    v2->_queue = v6;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    requests = v2->_requests;
    v2->_requests = dictionary;

    v10 = v2;
  }

  return v2;
}

- (void)downloadImageWithURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__CPSImageDownloader_downloadImageWithURL_completionHandler___block_invoke;
  block[3] = &unk_278DCDCF8;
  block[4] = self;
  v12 = lCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = lCopy;
  dispatch_async(queue, block);
}

- (void)_downloadImageWithURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (handlerCopy)
  {
    if (lCopy)
    {
      v9 = [(NSMutableDictionary *)self->_requests objectForKeyedSubscript:lCopy];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __62__CPSImageDownloader__downloadImageWithURL_completionHandler___block_invoke;
      v24[3] = &unk_278DCE188;
      v25 = v8;
      v10 = v9;
      v26 = v10;
      v11 = MEMORY[0x245D3D5F0](v24);
      v12 = MEMORY[0x245D3D5F0]();
      [(NSMutableDictionary *)self->_requests setObject:v12 forKeyedSubscript:lCopy];

      if (!v10)
      {
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __62__CPSImageDownloader__downloadImageWithURL_completionHandler___block_invoke_2;
        v22[3] = &unk_278DCE1D8;
        v22[4] = self;
        v13 = lCopy;
        v23 = v13;
        v14 = MEMORY[0x245D3D5F0](v22);
        v15 = MEMORY[0x277CCAD30];
        defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
        v17 = [v15 sessionWithConfiguration:defaultSessionConfiguration];

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
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
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