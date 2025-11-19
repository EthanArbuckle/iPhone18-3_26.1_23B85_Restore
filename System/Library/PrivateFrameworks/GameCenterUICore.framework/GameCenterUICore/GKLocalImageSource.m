@interface GKLocalImageSource
- (id)imageForImageSize:(CGSize)a3;
- (id)keyForImageSize:(CGSize)a3;
- (void)cacheImageUsingGamed:(id)a3 cacheSubdirectory:(id)a4 withHandler:(id)a5;
- (void)cachedImageFromGamedWithSubdirectory:(id)a3 handler:(id)a4;
- (void)deleteImageUsingGamedWithSubdirectory:(id)a3 withHandler:(id)a4;
@end

@implementation GKLocalImageSource

- (id)keyForImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (!self->_keysForSizes)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:256 valueOptions:0 capacity:4];
    keysForSizes = self->_keysForSizes;
    self->_keysForSizes = v6;
  }

  v8 = (width | (height << 32));
  v9 = [(NSMapTable *)self->_keysForSizes objectForKey:v8];
  if (!v9)
  {
    v13.width = width;
    v13.height = height;
    v10 = NSStringFromCGSize(v13);
    v9 = [GKImageKey keyForImageIdentifier:v10 withImageSource:self];
    [v9 setSize:{width, height}];
    [(NSMapTable *)self->_keysForSizes setObject:v9 forKey:v8];
  }

  return v9;
}

- (id)imageForImageSize:(CGSize)a3
{
  v4 = [(GKLocalImageSource *)self keyForImageSize:a3.width, a3.height];
  v5 = [(GKImageSource *)self cachedImageForKey:v4];
  if (!v5)
  {
    v5 = [(GKImageSource *)self processAndCacheImage:0 forKey:v4];
  }

  return v5;
}

- (void)cachedImageFromGamedWithSubdirectory:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D0C020];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKImageSource.m", 921, "-[GKLocalImageSource cachedImageFromGamedWithSubdirectory:handler:]"];
  v10 = [v8 dispatchGroupWithName:v9];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__GKLocalImageSource_cachedImageFromGamedWithSubdirectory_handler___block_invoke;
  v16[3] = &unk_27967ED48;
  v16[4] = self;
  v11 = v6;
  v17 = v11;
  v12 = v10;
  v18 = v12;
  [v12 perform:v16];
  if (v7)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __67__GKLocalImageSource_cachedImageFromGamedWithSubdirectory_handler___block_invoke_281;
    v13[3] = &unk_27967F1D8;
    v15 = v7;
    v14 = v12;
    [v14 notifyOnMainQueueWithBlock:v13];
  }
}

void __67__GKLocalImageSource_cachedImageFromGamedWithSubdirectory_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) keyForImageIdentifier:*(a1 + 40)];
  v5 = [v4 cacheKey];
  v6 = [*(a1 + 32) cache];
  v7 = [v6 objectForKey:v5];

  if (v7)
  {
    [*(a1 + 48) setResult:v7];
    v3[2](v3);
    v8 = MEMORY[0x277D0C2A0];
    v9 = *MEMORY[0x277D0C2A0];
    if (!*MEMORY[0x277D0C2A0])
    {
      v10 = GKOSLoggers();
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __67__GKLocalImageSource_cachedImageFromGamedWithSubdirectory_handler___block_invoke_cold_1(v9);
    }
  }

  else
  {
    v11 = [*(a1 + 32) utilityService];
    v12 = *(a1 + 40);
    v13 = [v4 basename];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __67__GKLocalImageSource_cachedImageFromGamedWithSubdirectory_handler___block_invoke_280;
    v16[3] = &unk_27967F6E8;
    v14 = *(a1 + 48);
    v15 = *(a1 + 32);
    v17 = v14;
    v18 = v15;
    v19 = v5;
    v20 = v4;
    v21 = v3;
    [v11 loadCachedImageDataFromSubdirectory:v12 withFileName:v13 handler:v16];
  }
}

void __67__GKLocalImageSource_cachedImageFromGamedWithSubdirectory_handler___block_invoke_280(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    v4 = [MEMORY[0x277D755B8] _gkImageWithCheckedData:v3];
    if (v4)
    {
      [*(a1 + 32) setResult:v4];
      v5 = [*(a1 + 40) cache];
      [v5 setObject:v4 forKey:*(a1 + 48)];

      v6 = MEMORY[0x277D0C2A0];
      v7 = *MEMORY[0x277D0C2A0];
      if (!*MEMORY[0x277D0C2A0])
      {
        v8 = GKOSLoggers();
        v7 = *v6;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __67__GKLocalImageSource_cachedImageFromGamedWithSubdirectory_handler___block_invoke_280_cold_1(a1, v7);
      }
    }

    else
    {
      if (!*MEMORY[0x277D0C2A0])
      {
        v11 = GKOSLoggers();
      }

      v12 = *MEMORY[0x277D0C290];
      if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
      {
        __67__GKLocalImageSource_cachedImageFromGamedWithSubdirectory_handler___block_invoke_280_cold_2(a1, v12);
      }
    }
  }

  else
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v9 = GKOSLoggers();
    }

    v10 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __67__GKLocalImageSource_cachedImageFromGamedWithSubdirectory_handler___block_invoke_280_cold_3(a1, v10);
    }
  }

  (*(*(a1 + 64) + 16))();
}

void __67__GKLocalImageSource_cachedImageFromGamedWithSubdirectory_handler___block_invoke_281(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) result];
  (*(v1 + 16))(v1, v2);
}

- (void)cacheImageUsingGamed:(id)a3 cacheSubdirectory:(id)a4 withHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277D0C020];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKImageSource.m", 966, "-[GKLocalImageSource cacheImageUsingGamed:cacheSubdirectory:withHandler:]"];
  v13 = [v11 dispatchGroupWithName:v12];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __73__GKLocalImageSource_cacheImageUsingGamed_cacheSubdirectory_withHandler___block_invoke;
  v18[3] = &unk_27967ED48;
  v18[4] = self;
  v14 = v9;
  v19 = v14;
  v15 = v8;
  v20 = v15;
  [v13 perform:v18];
  if (v10)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __73__GKLocalImageSource_cacheImageUsingGamed_cacheSubdirectory_withHandler___block_invoke_3;
    v16[3] = &unk_27967EEC0;
    v17 = v10;
    [v13 notifyOnMainQueueWithBlock:v16];
  }
}

void __73__GKLocalImageSource_cacheImageUsingGamed_cacheSubdirectory_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) keyForImageIdentifier:*(a1 + 40)];
  v5 = [*(a1 + 32) cache];
  v6 = *(a1 + 48);
  v7 = [v4 cacheKey];
  [v5 setObject:v6 forKey:v7];

  v8 = UIImagePNGRepresentation(*(a1 + 48));
  v9 = [*(a1 + 32) utilityService];
  v10 = *(a1 + 40);
  v11 = [v4 basename];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__GKLocalImageSource_cacheImageUsingGamed_cacheSubdirectory_withHandler___block_invoke_2;
  v13[3] = &unk_27967EEC0;
  v14 = v3;
  v12 = v3;
  [v9 cacheImageData:v8 inSubdirectory:v10 withFileName:v11 handler:v13];
}

- (void)deleteImageUsingGamedWithSubdirectory:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D0C020];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKImageSource.m", 987, "-[GKLocalImageSource deleteImageUsingGamedWithSubdirectory:withHandler:]"];
  v10 = [v8 dispatchGroupWithName:v9];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__GKLocalImageSource_deleteImageUsingGamedWithSubdirectory_withHandler___block_invoke;
  v14[3] = &unk_27967EFB0;
  v14[4] = self;
  v11 = v6;
  v15 = v11;
  [v10 perform:v14];
  if (v7)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__GKLocalImageSource_deleteImageUsingGamedWithSubdirectory_withHandler___block_invoke_3;
    v12[3] = &unk_27967EEC0;
    v13 = v7;
    [v10 notifyOnMainQueueWithBlock:v12];
  }
}

void __72__GKLocalImageSource_deleteImageUsingGamedWithSubdirectory_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) keyForImageIdentifier:*(a1 + 40)];
  v5 = [*(a1 + 32) cache];
  v6 = [v4 cacheKey];
  [v5 removeObjectForKey:v6];

  v7 = [*(a1 + 32) utilityService];
  v8 = *(a1 + 40);
  v9 = [v4 basename];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__GKLocalImageSource_deleteImageUsingGamedWithSubdirectory_withHandler___block_invoke_2;
  v11[3] = &unk_27967EEC0;
  v12 = v3;
  v10 = v3;
  [v7 deleteCachedImageDataFromSubdirectory:v8 withFileName:v9 handler:v11];
}

void __67__GKLocalImageSource_cachedImageFromGamedWithSubdirectory_handler___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_5() basename];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_24E4A8000, v4, v5, "Image found in in-memory cache: %@", v6, v7, v8, v9, v10);
}

void __67__GKLocalImageSource_cachedImageFromGamedWithSubdirectory_handler___block_invoke_280_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_5() basename];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_24E4A8000, v5, v6, "Loaded cached image from gamed %@", v7, v8, v9, v10, v11);
}

void __67__GKLocalImageSource_cachedImageFromGamedWithSubdirectory_handler___block_invoke_280_cold_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_5() basename];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_24E4A8000, v2, OS_LOG_TYPE_ERROR, "Failed to create cached image from gamed %@", v5, 0xCu);
}

void __67__GKLocalImageSource_cachedImageFromGamedWithSubdirectory_handler___block_invoke_280_cold_3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = a2;
  v4 = [v2 basename];
  OUTLINED_FUNCTION_2();
  v7 = 2112;
  v8 = v5;
  _os_log_error_impl(&dword_24E4A8000, v3, OS_LOG_TYPE_ERROR, "Failed to load cached image from gamed: %@\ncache key: %@", v6, 0x16u);
}

@end