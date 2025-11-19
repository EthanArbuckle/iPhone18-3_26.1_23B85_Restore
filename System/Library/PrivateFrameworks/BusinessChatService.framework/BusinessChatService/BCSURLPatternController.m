@interface BCSURLPatternController
- (BCSURLPatternController)initWithCacheManager:(id)a3 metricFactory:(id)a4;
- (id)mostExplicitMatchingResultFromResults:(id)a3;
- (void)matchPatternForURL:(id)a3 forClientBundleID:(id)a4 completion:(id)a5;
@end

@implementation BCSURLPatternController

- (BCSURLPatternController)initWithCacheManager:(id)a3 metricFactory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BCSURLPatternController;
  v9 = [(BCSURLPatternController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cacheManager, a3);
    objc_storeStrong(&v10->_metricFactory, a4);
  }

  return v10;
}

- (void)matchPatternForURL:(id)a3 forClientBundleID:(id)a4 completion:(id)a5
{
  v75 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = ABSLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v74 = "[BCSURLPatternController matchPatternForURL:forClientBundleID:completion:]";
    _os_log_impl(&dword_242072000, v9, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (v8)
  {
    v10 = [(BCSURLPatternController *)self cachedPatternMatchingResult];
    if ([v10 isExpired])
    {

      goto LABEL_12;
    }

    v12 = [(BCSURLPatternController *)self cachedPatternMatchingResult];
    v13 = [v12 originalURL];
    v14 = [v7 isEqual:v13];

    if (!v14)
    {
LABEL_12:
      v23 = [v7 host];
      v11 = [BCSDomainItemIdentifier identifierWithType:3 domain:v23];

      v24 = [(BCSURLPatternController *)self cacheManager];
      v25 = [v24 domainItemMatching:v11];

      if (!v25)
      {
        (*(v8 + 2))(v8, 0, 0, 0, 0, 0);
LABEL_42:

        goto LABEL_43;
      }

      v51 = self;
      v26 = [v25 domainBundleIDPatterns];
      v57 = objc_alloc_init(BCSURLPatternMatcher);
      if (![(BCSURLPatternMatcher *)v57 isValidDomainForURL:v7 domainBundleIDPatterns:v26])
      {
        (*(v8 + 2))(v8, 0, 0, 0, 0, 0);
LABEL_41:

        goto LABEL_42;
      }

      v49 = v11;
      v50 = v8;
      v27 = v7;
      v56 = [MEMORY[0x277CBEB18] array];
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v48 = v26;
      obj = [v26 bundleIdPatterns];
      v54 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
      if (v54)
      {
        v53 = *v64;
        do
        {
          v28 = 0;
          do
          {
            if (*v64 != v53)
            {
              objc_enumerationMutation(obj);
            }

            v55 = v28;
            v29 = *(*(&v63 + 1) + 8 * v28);
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v30 = [v29 urlPatterns];
            v31 = [v30 countByEnumeratingWithState:&v59 objects:v69 count:16];
            if (v31)
            {
              v32 = v31;
              v33 = *v60;
              do
              {
                for (i = 0; i != v32; ++i)
                {
                  if (*v60 != v33)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v35 = *(*(&v59 + 1) + 8 * i);
                  v36 = [v29 bundleId];
                  v37 = v25;
                  v38 = [v25 expirationDate];
                  v58 = 0;
                  v39 = [(BCSURLPatternMatcher *)v57 matchPattern:v35 withURL:v27 forBundleID:v36 expirationDate:v38 error:&v58];

                  v40 = [v39 extractedURL];

                  if (v40)
                  {
                    [v56 addObject:v39];
                  }

                  v25 = v37;
                }

                v32 = [v30 countByEnumeratingWithState:&v59 objects:v69 count:16];
              }

              while (v32);
            }

            v28 = v55 + 1;
          }

          while (v55 + 1 != v54);
          v54 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
        }

        while (v54);
      }

      if (![v56 count])
      {
        v8 = v50;
        (*(v50 + 2))(v50, 0, 0, 0, 0, 0);
        v7 = v27;
LABEL_40:
        v26 = v48;

        v11 = v49;
        goto LABEL_41;
      }

      v41 = [(BCSURLPatternController *)v51 mostExplicitMatchingResultFromResults:v56];
      v7 = v27;
      v8 = v50;
      if (v41)
      {
        [(BCSURLPatternController *)v51 setCachedPatternMatchingResult:v41];
        if (MEMORY[0x245D06CC0]("[BCSURLPatternController matchPatternForURL:forClientBundleID:completion:]"))
        {
          v67 = @"BCSBusinessQueryServicePatternMatchingResult";
          v42 = [v41 debugDescription];
          v68 = v42;
          v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];

          v44 = [v41 bundleID];
          v45 = [(BCSURLPatternController *)v51 cachedPatternMatchingResult];
          v46 = [v45 extractedURL];
          (*(v50 + 2))(v50, 1, v44, v46, v43, 0);

LABEL_39:
          goto LABEL_40;
        }
      }

      else
      {
        MEMORY[0x245D06CC0]("[BCSURLPatternController matchPatternForURL:forClientBundleID:completion:]");
      }

      v43 = [v41 bundleID];
      v44 = [(BCSURLPatternController *)v51 cachedPatternMatchingResult];
      v45 = [v44 extractedURL];
      (*(v50 + 2))(v50, 1, v43, v45, 0, 0);
      goto LABEL_39;
    }

    v15 = ABSLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v74 = "[BCSURLPatternController matchPatternForURL:forClientBundleID:completion:]";
      _os_log_impl(&dword_242072000, v15, OS_LOG_TYPE_DEFAULT, "%s Found matched pattern result in memory cache", buf, 0xCu);
    }

    v71 = @"BCSBusinessQueryServicePatternMatchingResult";
    v16 = [(BCSURLPatternController *)self cachedPatternMatchingResult];
    v17 = [v16 debugDescription];
    v18 = [v17 stringByAppendingString:@"\nFrom Memory Cache: YES"];
    v72 = v18;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];

    v19 = [(BCSURLPatternController *)self cachedPatternMatchingResult];
    v20 = [v19 bundleID];
    v21 = [(BCSURLPatternController *)self cachedPatternMatchingResult];
    v22 = [v21 extractedURL];
    (*(v8 + 2))(v8, 1, v20, v22, v11, 0);
  }

  else
  {
    v11 = ABSLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v74 = "[BCSURLPatternController matchPatternForURL:forClientBundleID:completion:]";
      _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, "%s Nil completion passed. Do nothing.", buf, 0xCu);
    }
  }

LABEL_43:

  v47 = *MEMORY[0x277D85DE8];
}

- (id)mostExplicitMatchingResultFromResults:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = v3;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = 0;
      v9 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v4);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = 1000000 * [v11 totalConsecutivePrefixMatches];
          v13 = v12 + 1000 * [v11 totalExactMatches];
          v14 = v13 + [v11 totalAnyMatches];
          if (v14 >= v7)
          {
            v15 = v11;

            v7 = v14;
            v8 = v15;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 0;
    }

    v3 = v18;
  }

  else
  {
    v8 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

@end