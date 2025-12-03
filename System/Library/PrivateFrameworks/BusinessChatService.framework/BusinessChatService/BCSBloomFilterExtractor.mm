@interface BCSBloomFilterExtractor
- (void)extractShardsURLsFromBloomFilterURL:(id)l completion:(id)completion;
- (void)extractShardsURLsFromFilterShardURL:(id)l domainShardURL:(id)rL completion:(id)completion;
@end

@implementation BCSBloomFilterExtractor

- (void)extractShardsURLsFromBloomFilterURL:(id)l completion:(id)completion
{
  v36[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  completionCopy = completion;
  v7 = ABSLogCommon();
  v8 = os_signpost_id_generate(v7);

  v9 = ABSLogCommon();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_242072000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "Unzip Megashard", "", buf, 2u);
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __74__BCSBloomFilterExtractor_extractShardsURLsFromBloomFilterURL_completion___block_invoke;
  v30[3] = &unk_278D38A90;
  v32 = v8;
  v11 = completionCopy;
  v31 = v11;
  v12 = MEMORY[0x245D07100](v30);
  v13 = +[BCSPathProvider sharedInstance];
  tempURL = [v13 tempURL];

  if (tempURL)
  {
    v15 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v18 = [v15 stringWithFormat:@"%@_%@", @"bloom_filter", uUIDString];

    v19 = [tempURL URLByAppendingPathComponent:v18];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __74__BCSBloomFilterExtractor_extractShardsURLsFromBloomFilterURL_completion___block_invoke_12;
    v27[3] = &unk_278D38AE0;
    v29 = v12;
    v20 = v19;
    v28 = v20;
    v21 = MEMORY[0x245D07100](v27);
    v22 = ABSLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v34 = v20;
      _os_log_debug_impl(&dword_242072000, v22, OS_LOG_TYPE_DEBUG, "Unzipping megashard to %@", buf, 0xCu);
    }

    v23 = objc_alloc(MEMORY[0x277D19248]);
    v24 = [v23 initWithInputURL:lCopy outputURL:v20 identifier:0 operation:1 completionBlock:v21 queue:MEMORY[0x277D85CD0]];
    [v24 start];
  }

  else
  {
    v35 = *MEMORY[0x277CCA450];
    v36[0] = @"Failed get temp directory";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v18 = [BCSError errorWithDomain:@"com.apple.businessservices" code:100 userInfo:v25];

    (v12)[2](v12, 0, v18);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __74__BCSBloomFilterExtractor_extractShardsURLsFromBloomFilterURL_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = ABSLogCommon();
  v8 = v7;
  v9 = *(a1 + 40);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_242072000, v8, OS_SIGNPOST_INTERVAL_END, v9, "Unzip Megashard", "", v10, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __74__BCSBloomFilterExtractor_extractShardsURLsFromBloomFilterURL_completion___block_invoke_12(uint64_t a1, void *a2)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 cleanup];
  if ([v3 didErrorOccur])
  {
    v35 = *MEMORY[0x277CCA450];
    v36[0] = @"Failed to unzip the megashard";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v5 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 userInfo:v4];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__1;
    v30 = __Block_byref_object_dispose__1;
    v31 = 0;
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CBEA60] arrayWithObject:*MEMORY[0x277CBE868]];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __74__BCSBloomFilterExtractor_extractShardsURLsFromBloomFilterURL_completion___block_invoke_18;
    v25[3] = &unk_278D38AB8;
    v25[4] = &v26;
    v9 = [v6 enumeratorAtURL:v7 includingPropertiesForKeys:v8 options:0 errorHandler:v25];

    if (v27[5])
    {
      v10 = ABSLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_242072000, v10, OS_LOG_TYPE_ERROR, "Error enumerating the unzipped shards on disk", buf, 2u);
      }

      v11 = v27[5];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v12 = [MEMORY[0x277CBEB18] array];
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v13 = v9;
      v14 = [v13 countByEnumeratingWithState:&v20 objects:v34 count:16];
      if (v14)
      {
        v15 = *v21;
        do
        {
          v16 = 0;
          do
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(v13);
            }

            [v12 addObject:{*(*(&v20 + 1) + 8 * v16++), v20}];
          }

          while (v14 != v16);
          v14 = [v13 countByEnumeratingWithState:&v20 objects:v34 count:16];
        }

        while (v14);
      }

      if ([v12 count])
      {
        (*(*(a1 + 40) + 16))();
      }

      else
      {
        v32 = *MEMORY[0x277CCA450];
        v33 = @"No shards in the unzipped megashard";
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        v18 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 userInfo:v17];

        (*(*(a1 + 40) + 16))();
      }
    }

    _Block_object_dispose(&v26, 8);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)extractShardsURLsFromFilterShardURL:(id)l domainShardURL:(id)rL completion:(id)completion
{
  lCopy = l;
  rLCopy = rL;
  completionCopy = completion;
  if (completionCopy)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __89__BCSBloomFilterExtractor_extractShardsURLsFromFilterShardURL_domainShardURL_completion___block_invoke;
    v11[3] = &unk_278D38B30;
    v12 = lCopy;
    v15 = completionCopy;
    v13 = rLCopy;
    selfCopy = self;
    [(BCSBloomFilterExtractor *)self extractShardsURLsFromBloomFilterURL:v12 completion:v11];
  }
}

void __89__BCSBloomFilterExtractor_extractShardsURLsFromFilterShardURL_domainShardURL_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 && *(a1 + 32))
  {
    v7 = *(*(a1 + 56) + 16);
LABEL_7:
    v7();
    goto LABEL_8;
  }

  v8 = *(a1 + 40);
  if (!v8)
  {
    v7 = *(*(a1 + 56) + 16);
    goto LABEL_7;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __89__BCSBloomFilterExtractor_extractShardsURLsFromFilterShardURL_domainShardURL_completion___block_invoke_2;
  v10[3] = &unk_278D38B08;
  v9 = *(a1 + 48);
  v12 = *(a1 + 56);
  v11 = v5;
  [v9 extractShardsURLsFromBloomFilterURL:v8 completion:v10];

LABEL_8:
}

@end