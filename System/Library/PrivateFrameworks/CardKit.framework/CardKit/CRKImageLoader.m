@interface CRKImageLoader
@end

@implementation CRKImageLoader

uint64_t __53___CRKImageLoader_sharedInstanceWithInitialDelegate___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(_CRKImageLoader);
  v3 = sharedInstanceWithInitialDelegate__sImageLoader;
  sharedInstanceWithInitialDelegate__sImageLoader = v2;

  v4 = sharedInstanceWithInitialDelegate__sImageLoader;
  v5 = *(a1 + 32);

  return [v4 setDelegate:v5];
}

void __51___CRKImageLoader_loadImage_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277D4C3B0];
  v6 = a3;
  v8 = [a2 _imageData];
  v7 = [v5 imageWithData:v8];
  (*(v4 + 16))(v4, v7, v6);
}

void __49___CRKImageLoader__loadSFImageForURL_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v8 statusCode];
  if (v7)
  {
    v11 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      *buf = 134218242;
      v19 = v10;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_243247000, v11, OS_LOG_TYPE_INFO, "Image fetch success statusCode:%ld URL:%@", buf, 0x16u);
    }

    v13 = *(a1 + 40);
    v14 = [MEMORY[0x277D4C3B0] imageWithData:v7];
    (*(v13 + 16))(v13, v14, 0);
  }

  else
  {
    if (v8)
    {
      v22 = @"NSURLResponse";
      v23[0] = v8;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    }

    else
    {
      v14 = 0;
    }

    v15 = MEMORY[0x277CF9430];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Image fetch failed statusCode:%zd URL:%@", v10, *(a1 + 32)];
    v17 = [v15 errorWithCode:204 description:v16 underlyingError:v9 userInfo:v14];

    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      [_CRKImageLoader loadImage:withCompletionHandler:];
    }

    (*(*(a1 + 40) + 16))();
  }
}

@end