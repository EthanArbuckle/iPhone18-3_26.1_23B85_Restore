@interface UIImage
@end

@implementation UIImage

void __72__UIImage_HUAdditions__hu_homeAppIconWithSize_scale_userInterfaceStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D1B1A8] applicationIcon];
  v5 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:*(a1 + 32) scale:{*(a1 + 40), *(a1 + 48)}];
  v6 = v5;
  v7 = *(a1 + 56);
  if (v7 == 1)
  {
    v8 = 0;
    goto LABEL_5;
  }

  if (v7 == 2)
  {
    v8 = 1;
LABEL_5:
    [v5 setAppearance:v8];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__UIImage_HUAdditions__hu_homeAppIconWithSize_scale_userInterfaceStyle___block_invoke_2;
  v10[3] = &unk_277DB8540;
  v11 = v3;
  v9 = v3;
  [v4 getImageForImageDescriptor:v6 completion:v10];
}

void __72__UIImage_HUAdditions__hu_homeAppIconWithSize_scale_userInterfaceStyle___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__UIImage_HUAdditions__hu_homeAppIconWithSize_scale_userInterfaceStyle___block_invoke_3;
  v5[3] = &unk_277DB7558;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __72__UIImage_HUAdditions__hu_homeAppIconWithSize_scale_userInterfaceStyle___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    [v3 finishWithError:v4];

    v2 = *(a1 + 32);
  }

  v5 = *(a1 + 40);
  v6 = [MEMORY[0x277D755B8] imageWithCGImage:{objc_msgSend(v2, "CGImage")}];
  [v5 finishWithResult:v6];
}

@end