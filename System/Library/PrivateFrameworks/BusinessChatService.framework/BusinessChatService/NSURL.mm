@interface NSURL
+ (id)bcs_templatedImageURLWithString:(void *)a3 imageSpecifier:;
- (id)URLByDeletingFragment;
@end

@implementation NSURL

+ (id)bcs_templatedImageURLWithString:(void *)a3 imageSpecifier:
{
  v21[4] = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_opt_self();
  if (v4)
  {
    v20[0] = @"{w}";
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", *a3];
    v21[0] = v5;
    v20[1] = @"{h}";
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", a3[1]];
    v21[1] = v6;
    v20[2] = @"{f}";
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3[3]];
    v21[2] = v7;
    v20[3] = @"{c}";
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3[2]];
    v21[3] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];

    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__6;
    v18 = __Block_byref_object_dispose__6;
    v19 = [v4 copy];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __77__NSURL_BusinessChatService__bcs_templatedImageURLWithString_imageSpecifier___block_invoke;
    v13[3] = &unk_278D3A370;
    v13[4] = &v14;
    [v9 enumerateKeysAndObjectsUsingBlock:v13];
    v10 = [MEMORY[0x277CBEBC0] URLWithString:v15[5]];
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __77__NSURL_BusinessChatService__bcs_templatedImageURLWithString_imageSpecifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(*(*(a1 + 32) + 8) + 40) stringByReplacingOccurrencesOfString:a2 withString:a3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8](v4, v6);
}

- (id)URLByDeletingFragment
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 absoluteString];
    v3 = [v2 rangeOfString:@"#" options:4];
    if (v3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v1 = v1;
    }

    else
    {
      v4 = [v2 substringToIndex:v3];
      v1 = [MEMORY[0x277CBEBC0] URLWithString:v4];
    }
  }

  return v1;
}

@end