@interface MSUUpdateBrainLoader
- (MSUUpdateBrainLoader)initWithDictionary:(id)a3;
- (void)adjustOptions:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)loadUpdateBrainWithOptions:(id)a3 progressHandler:(id)a4;
@end

@implementation MSUUpdateBrainLoader

- (MSUUpdateBrainLoader)initWithDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = MSUUpdateBrainLoader;
  v4 = [(MSUUpdateBrainLoader *)&v6 init];
  if (v4)
  {
    v4->_attributesDict = a3;
  }

  return v4;
}

- (void)loadUpdateBrainWithOptions:(id)a3 progressHandler:(id)a4
{
  global_queue = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__MSUUpdateBrainLoader_loadUpdateBrainWithOptions_progressHandler___block_invoke;
  block[3] = &unk_2798EDF00;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(global_queue, block);
}

uint64_t __67__MSUUpdateBrainLoader_loadUpdateBrainWithOptions_progressHandler___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  if ([*(a1 + 32) attributesDict])
  {
    [v2 setObject:objc_msgSend(*(a1 + 32) forKey:{"attributesDict"), @"AssetProperties"}];
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    [v2 setObject:v3 forKey:@"ClientOptions"];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__MSUUpdateBrainLoader_loadUpdateBrainWithOptions_progressHandler___block_invoke_2;
  v8[3] = &unk_2798EDED8;
  v8[4] = *(a1 + 48);
  v4 = perform_command_with_progress("LoadBrain", v2, 0, 0, &v9, v8);
  v5 = *(a1 + 48);
  if (v4)
  {
    v10 = @"MSUAssetOperation";
    v11[0] = @"MSUAssetOperationCompleted";
    result = (*(v5 + 16))(v5, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1], 0);
  }

  else
  {
    result = (*(v5 + 16))(v5, 0, v9);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)adjustOptions:(id)a3 completion:(id)a4
{
  if (a3)
  {
    v5 = 0;
    v6 = *(a4 + 2);

    v6(a4, v5);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MSUUpdateBrainLoader;
  [(MSUUpdateBrainLoader *)&v3 dealloc];
}

@end