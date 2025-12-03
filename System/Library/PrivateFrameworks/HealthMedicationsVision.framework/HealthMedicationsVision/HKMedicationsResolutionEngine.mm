@interface HKMedicationsResolutionEngine
+ (BOOL)isVisionAssetAvailable;
+ (__CFString)_homeMobileDirectoryPath;
+ (id)_databasePath;
+ (id)_visionDirectoryPath;
- (HKMedicationsResolutionEngine)init;
- (HKMedicationsResolutionEngine)initWithAssetUrl:(id)url;
- (id)hkctl_resolveMedicationsUsing:(id)using resultLimit:(int64_t)limit error:(id *)error;
- (void)filter:(id)filter transcripts:(id)transcripts criterion:(float)criterion limit:(int64_t)limit completionHandler:(id)handler;
- (void)resetResolverWithCompletionHandler:(id)handler;
- (void)resolveMedicationsUsing:(id)using resultLimit:(int64_t)limit completionHandler:(id)handler;
@end

@implementation HKMedicationsResolutionEngine

+ (BOOL)isVisionAssetAvailable
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = +[HKMedicationsResolutionEngine _databasePath];
  v4 = [defaultManager fileExistsAtPath:v3];

  return v4;
}

+ (id)_databasePath
{
  objc_opt_self();
  v0 = +[HKMedicationsResolutionEngine _visionDirectoryPath];
  v1 = [v0 stringByAppendingPathComponent:@"pbs_assets.db"];

  return v1;
}

+ (__CFString)_homeMobileDirectoryPath
{
  objc_opt_self();
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  environment = [processInfo environment];
  v2 = [environment objectForKeyedSubscript:@"SIMULATOR_SHARED_RESOURCES_DIRECTORY"];

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = @"/private/var/mobile/";
  }

  return v3;
}

+ (id)_visionDirectoryPath
{
  objc_opt_self();
  v0 = +[HKMedicationsResolutionEngine _homeMobileDirectoryPath];
  v1 = [v0 stringByAppendingPathComponent:@"Library/Health/vision"];

  return v1;
}

- (HKMedicationsResolutionEngine)init
{
  v10.receiver = self;
  v10.super_class = HKMedicationsResolutionEngine;
  v2 = [(HKMedicationsResolutionEngine *)&v10 init];
  if (v2)
  {
    v3 = [HKMedicationsResolver alloc];
    v4 = MEMORY[0x277CBEBC0];
    v5 = +[HKMedicationsResolutionEngine _databasePath];
    v6 = [v4 fileURLWithPath:v5];
    v7 = [(HKMedicationsResolver *)v3 initWithAssetUrl:v6];
    [(HKMedicationsResolutionEngine *)v2 setResolver:v7];

    v8 = HKCreateSerialDispatchQueue();
    [(HKMedicationsResolutionEngine *)v2 setQueue:v8];
  }

  return v2;
}

- (HKMedicationsResolutionEngine)initWithAssetUrl:(id)url
{
  urlCopy = url;
  v9.receiver = self;
  v9.super_class = HKMedicationsResolutionEngine;
  v5 = [(HKMedicationsResolutionEngine *)&v9 init];
  if (v5)
  {
    v6 = [[HKMedicationsResolver alloc] initWithAssetUrl:urlCopy];
    [(HKMedicationsResolutionEngine *)v5 setResolver:v6];

    v7 = HKCreateSerialDispatchQueue();
    [(HKMedicationsResolutionEngine *)v5 setQueue:v7];
  }

  return v5;
}

- (void)resetResolverWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(HKMedicationsResolutionEngine *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HKMedicationsResolutionEngine_resetResolverWithCompletionHandler___block_invoke;
  v7[3] = &unk_2796D2A08;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __68__HKMedicationsResolutionEngine_resetResolverWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) resolver];
  v4 = 0;
  [v2 resetResolverWithError:&v4];
  v3 = v4;

  (*(*(a1 + 40) + 16))();
}

- (void)resolveMedicationsUsing:(id)using resultLimit:(int64_t)limit completionHandler:(id)handler
{
  usingCopy = using;
  handlerCopy = handler;
  queue = [(HKMedicationsResolutionEngine *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__HKMedicationsResolutionEngine_resolveMedicationsUsing_resultLimit_completionHandler___block_invoke;
  block[3] = &unk_2796D2A30;
  block[4] = self;
  v13 = usingCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = usingCopy;
  dispatch_async(queue, block);
}

void __87__HKMedicationsResolutionEngine_resolveMedicationsUsing_resultLimit_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) resolver];
  v3 = *(a1 + 40);
  v6 = 0;
  v4 = [v2 resolveText:v3 error:&v6];
  v5 = v6;

  (*(*(a1 + 48) + 16))();
}

- (id)hkctl_resolveMedicationsUsing:(id)using resultLimit:(int64_t)limit error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  usingCopy = using;
  resolver = [(HKMedicationsResolutionEngine *)self resolver];
  v10 = [resolver resolveText:usingCopy error:error];

  if (v10)
  {
    v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
    resolvedIds = [v10 resolvedIds];
    v32 = v10;
    v33 = usingCopy;
    if ([resolvedIds count] > limit)
    {
      v12 = [resolvedIds subarrayWithRange:{0, limit}];

      resolvedIds = v12;
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = resolvedIds;
    v37 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
    if (v37)
    {
      v35 = *v45;
      do
      {
        v13 = 0;
        do
        {
          if (*v45 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v39 = v13;
          v14 = *(*(&v44 + 1) + 8 * v13);
          v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "primaryHgId")}];
          [v15 setObject:v16 forKeyedSubscript:@"primary_hg_id"];

          v17 = MEMORY[0x277CCABB0];
          [v14 maxJaccardSimilarity];
          v18 = [v17 numberWithFloat:?];
          v38 = v15;
          [v15 setObject:v18 forKeyedSubscript:@"max_jaccard_similarity"];

          v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          subHgIds = [v14 subHgIds];
          v21 = [subHgIds countByEnumeratingWithState:&v40 objects:v50 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v41;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v41 != v23)
                {
                  objc_enumerationMutation(subHgIds);
                }

                v25 = *(*(&v40 + 1) + 8 * i);
                v48[0] = @"hg_id";
                v26 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v25, "hgId", v32, v33)}];
                v48[1] = @"jaccard_similarity";
                v49[0] = v26;
                v27 = MEMORY[0x277CCABB0];
                [v25 jaccardSimilarity];
                v28 = [v27 numberWithFloat:?];
                v49[1] = v28;
                v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
                [v19 addObject:v29];
              }

              v22 = [subHgIds countByEnumeratingWithState:&v40 objects:v50 count:16];
            }

            while (v22);
          }

          [v38 setObject:v19 forKeyedSubscript:@"sub_hg_ids"];
          [v36 addObject:v38];

          v13 = v39 + 1;
        }

        while (v39 + 1 != v37);
        v37 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
      }

      while (v37);
    }

    v10 = v32;
    usingCopy = v33;
  }

  else
  {
    v36 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v36;
}

- (void)filter:(id)filter transcripts:(id)transcripts criterion:(float)criterion limit:(int64_t)limit completionHandler:(id)handler
{
  filterCopy = filter;
  transcriptsCopy = transcripts;
  handlerCopy = handler;
  queue = [(HKMedicationsResolutionEngine *)self queue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __86__HKMedicationsResolutionEngine_filter_transcripts_criterion_limit_completionHandler___block_invoke;
  v19[3] = &unk_2796D2A58;
  v19[4] = self;
  v20 = filterCopy;
  criterionCopy = criterion;
  v22 = handlerCopy;
  limitCopy = limit;
  v21 = transcriptsCopy;
  v16 = handlerCopy;
  v17 = transcriptsCopy;
  v18 = filterCopy;
  dispatch_async(queue, v19);
}

void __86__HKMedicationsResolutionEngine_filter_transcripts_criterion_limit_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) resolver];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  LODWORD(v5) = *(a1 + 72);
  v6 = *(a1 + 64);
  v9 = 0;
  v7 = [v2 filterAndAddGenerics:v3 transcripts:v4 criterion:v6 limit:&v9 error:v5];
  v8 = v9;

  (*(*(a1 + 56) + 16))();
}

@end