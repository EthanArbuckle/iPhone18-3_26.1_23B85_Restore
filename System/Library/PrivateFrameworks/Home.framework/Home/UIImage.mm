@interface UIImage
@end

@implementation UIImage

void __45__UIImage_HFAdditions__hf_fetchImageFromURL___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEA90];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v3 dataWithContentsOfURL:v4];
  v7 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:v6];
  v8 = HFLogForCategory(0);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = *(a1 + 32);
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Successfully loaded image for URL : %@", &v14, 0xCu);
    }

    [v5 finishWithResult:v7];
  }

  else
  {
    if (v9)
    {
      v11 = *(a1 + 32);
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Failed to load image for URL : %@", &v14, 0xCu);
    }

    v12 = [MEMORY[0x277CCA9B8] na_genericError];
    [v5 finishWithError:v12];

    v5 = v12;
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end