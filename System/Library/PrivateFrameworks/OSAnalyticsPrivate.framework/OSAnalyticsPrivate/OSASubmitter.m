@interface OSASubmitter
+ (BOOL)submitToUAT;
+ (id)endpointToString:(int)a3;
+ (id)extractAuthenticatedBlob:(id)a3 error:(id *)a4;
+ (id)submissionPathsWithHomeDirectory:(id)a3 withProxies:(BOOL)a4;
+ (id)taskingKeyForRouting:(id)a3 withConfig:(id)a4;
- (BOOL)taskingNeedsRefreshForRouting:(id)a3 at:(double)a4;
- (OSASubmitter)init;
- (id)applyTasking:(id)a3 taskId:(id)a4 usingConfig:(id)a5 fromBlob:(id)a6;
- (id)getAdditionalRequestHeaders;
- (id)locateLog:(id)a3 forRouting:(id)a4 usingConfig:(id)a5 options:(id)a6 error:(id *)a7;
- (id)primarySubmissionPaths;
- (id)processJob:(id)a3 forRouting:(id)a4 including:(id)a5 usingConfig:(id)a6 taskings:(id)a7 summarize:(id)a8 additionalRequestHeaders:(id)a9;
- (id)processSubmissionJobs:(id)a3 usingConfig:(id)a4 summarize:(id)a5;
- (id)taskingLastSuccessfulRequest;
- (void)cheaterTaskingWithSets:(id)a3 usingConfig:(id)a4 resultsCallback:(id)a5;
- (void)getAdditionalRequestHeaders;
- (void)prefaceSubmission:(id)a3 withData:(id)a4 usingArchive:(id)a5 andHeaders:(id)a6;
- (void)submitLogsUsingPolicy:(id)a3 resultsCallback:(id)a4;
- (void)updateTaskingLastSuccessfulRequest:(id)a3 at:(double)a4;
@end

@implementation OSASubmitter

- (OSASubmitter)init
{
  v6.receiver = self;
  v6.super_class = OSASubmitter;
  v2 = [(OSASubmitter *)&v6 init];
  v3 = v2;
  if (v2)
  {
    connectionType = v2->_connectionType;
    v2->_connectionType = @"proxied";
  }

  return v3;
}

- (void)prefaceSubmission:(id)a3 withData:(id)a4 usingArchive:(id)a5 andHeaders:(id)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v10 objectForKeyedSubscript:@"content"];
  if ([v13 length])
  {
    v14 = [OSAEphemeralLog alloc];
    v15 = [v10 objectForKeyedSubscript:@"metadata"];
    v16 = [(OSAEphemeralLog *)v14 initWithData:v13 andMetadata:v15];

    if (v16)
    {
      v17 = [v11 copyDeflatedDataFromStream:-[OSAEphemeralLog stream](v16 withCap:{"stream"), 4096}];
      if (v17)
      {
        v18 = v17;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v19 = [v18 length];
          v20 = [(OSAEphemeralLog *)v16 metaData];
          *buf = 134218242;
          v28 = v19;
          v29 = 2112;
          v30 = v20;
          _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "preface payload %ld, metadata: %@", buf, 0x16u);
        }

        v21 = [v12 mutableCopy];
        v22 = [(OSAEphemeralLog *)v16 metaData];
        [v21 addEntriesFromDictionary:v22];

        v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v18, "length")}];
        [v21 setValue:v23 forKey:@"length"];

        [v21 setValue:@"deflate" forKey:@"compression"];
        v26 = 0;
        v24 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v21 options:0 error:&v26];
        [v9 appendData:v24];
        [v9 appendBytes:"\n" length:1];
        [v9 appendData:v18];
        [v9 appendBytes:"\n" length:1];
        [(OSAEphemeralLog *)v16 closeFileStream];
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v28) = 4096;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Submission archive too big (> %u) for submission with preface", buf, 8u);
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)getAdditionalRequestHeaders
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277D36B80] fastLane];
  if (v3 >= 1)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v3];
    [v2 setObject:v4 forKeyedSubscript:@"x-fast-lane"];
  }

  if ([v2 count] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [(OSASubmitter *)v2 getAdditionalRequestHeaders];
  }

  return v2;
}

- (id)processSubmissionJobs:(id)a3 usingConfig:(id)a4 summarize:(id)a5
{
  v118 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v91 = a5;
  Current = CFAbsoluteTimeGetCurrent();
  self->_jobCount = 0;
  v11 = [MEMORY[0x277CBEB38] dictionary];
  v97 = v9;
  v12 = [v9 identifier];
  v78 = v11;
  [v11 setObject:v12 forKeyedSubscript:@"name"];

  v86 = [MEMORY[0x277CBEB18] array];
  v84 = [MEMORY[0x277CBEB38] dictionary];
  v100 = self;
  v83 = [(OSASubmitter *)self getAdditionalRequestHeaders];
  v13 = objc_alloc_init(OSAStreamDeflater);
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v14 = v8;
  v15 = [v14 countByEnumeratingWithState:&v108 objects:v117 count:16];
  if (!v15)
  {

    v71 = @"success";
    goto LABEL_74;
  }

  v16 = v15;
  v87 = 0;
  v17 = *v109;
  v79 = *v109;
  v80 = v14;
  v89 = v13;
  do
  {
    v18 = 0;
    v81 = v16;
    do
    {
      if (*v109 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v82 = v18;
      v19 = *(*(&v108 + 1) + 8 * v18);
      v20 = [v19 objectForKey:@"routing"];
      v21 = [v19 objectForKeyedSubscript:@"<inactive>"];

      if (v21)
      {
        v112[0] = @"<inactive>";
        v22 = [v19 objectForKeyedSubscript:@"<inactive>"];
        v112[1] = @"routing";
        v113[0] = v22;
        v113[1] = v20;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:2];
        [v86 addObject:v23];
        goto LABEL_64;
      }

      v85 = v19;
      v24 = [v19 objectForKey:@"logs"];
      v101 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:0x80000];
      v92 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v24, "count")}];
      v96 = v20;
      LODWORD(v25) = ([v20 isEqualToString:@"anon"] & 1) != 0 || (objc_msgSend(v20, "isEqualToString:", @"beta") & 1) != 0 || (objc_msgSend(v20, "isEqualToString:", @"session") & 1) != 0 || (objc_msgSend(v20, "isEqualToString:", @"ca1") & 1) != 0 || objc_msgSend(v20, "isEqualToString:", @"ca1-ohttp");
      if ([v20 isEqualToString:@"anon"])
      {
        v25 = v25 | 2;
      }

      else
      {
        v25 = v25;
      }

      if (([v20 isEqualToString:@"ca1"] & 1) != 0 || objc_msgSend(v20, "isEqualToString:", @"ca1-ohttp"))
      {
        v25 = v25 | 4;
      }

      v26 = [v97 assembleMetadataAt:v25 withOptions:Current];
      v27 = [v85 objectForKey:@"submission_info"];
      v90 = v26;
      [v26 setValue:v27 forKey:@"submission_info"];

      v28 = [MEMORY[0x277CBEB38] dictionary];
      v29 = [v85 objectForKeyedSubscript:@"<metadata>"];

      if (v29)
      {
        v30 = MEMORY[0x277CCABB0];
        v31 = [v85 objectForKeyedSubscript:@"<metadata>"];
        v32 = [v30 numberWithBool:{objc_msgSend(v31, "BOOLValue")}];
        [v28 setObject:v32 forKeyedSubscript:@"<metadata>"];
      }

      if ([(NSArray *)v100->_internalWhitelist count])
      {
        [v28 setObject:v100->_internalWhitelist forKeyedSubscript:@"<whitelist>"];
      }

      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v22 = v24;
      v33 = v101;
      v95 = [v22 countByEnumeratingWithState:&v104 objects:v116 count:16];
      if (!v95)
      {
        goto LABEL_55;
      }

      v94 = *v105;
      v88 = v22;
      do
      {
        v34 = 0;
        do
        {
          if (*v105 != v94)
          {
            objc_enumerationMutation(v22);
          }

          v35 = *(*(&v104 + 1) + 8 * v34);
          v36 = objc_autoreleasePoolPush();
          v103 = 0;
          v37 = [(OSASubmitter *)v100 locateLog:v35 forRouting:v20 usingConfig:v97 options:v28 error:&v103];
          v38 = v103;
          v39 = v38;
          if (!v37)
          {
            if ([v38 code] == 2)
            {
              v55 = [v39 userInfo];
              v56 = [v55 objectForKeyedSubscript:@"bug_type"];
              v57 = [v39 localizedDescription];
              [v91 _recordRetirement:v56 reason:v57];

              v20 = v96;
            }

            objc_autoreleasePoolPop(v36);
            v33 = v101;
            goto LABEL_51;
          }

          v40 = -[OSAStreamDeflater copyDeflatedDataFromStream:withCap:](v13, "copyDeflatedDataFromStream:withCap:", [v37 stream], 10477568);
          context = v36;
          v99 = v39;
          if (v40)
          {
            v41 = v40;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              v60 = [v41 length];
              v61 = [v37 metaData];
              *buf = 138412802;
              *v115 = v35;
              *&v115[8] = 2048;
              *&v115[10] = v60;
              *&v115[18] = 2112;
              *&v115[20] = v61;
              _os_log_debug_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "'%@' payload %ld, metadata: %@", buf, 0x20u);
            }

            v42 = [v90 mutableCopy];
            v43 = [v37 metaData];
            [v42 addEntriesFromDictionary:v43];

            v44 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v41, "length")}];
            [v42 setValue:v44 forKey:@"length"];

            [v42 setValue:@"deflate" forKey:@"compression"];
            v102 = 0;
            v45 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v42 options:0 error:&v102];
            v93 = v102;
            v46 = v45;
            v47 = [v45 length];
            v48 = [v41 length];
            v49 = v101;
            if ([v101 length])
            {
              v50 = v47 + v48 + [v101 length] + 2;
              v20 = v96;
              if (v50 > 0x80000 || [v96 isEqualToString:@"ca1-ohttp"])
              {
                v51 = [(OSASubmitter *)v100 processJob:v101 forRouting:v96 including:v92 usingConfig:v97 taskings:v84 summarize:v91 additionalRequestHeaders:v83];
                [v86 addObject:v51];
                v52 = [v51 objectForKeyedSubscript:@"complete"];
                v53 = [v52 BOOLValue];

                v54 = v53 ^ 1;
                HIDWORD(v87) += v53 ^ 1;
                LODWORD(v87) = v87 + v53;
                v49 = v101;

                goto LABEL_46;
              }

              v54 = 0;
            }

            else
            {
              v54 = 0;
LABEL_46:
              v20 = v96;
            }

            if (![v49 length])
            {
              v59 = [v85 objectForKeyedSubscript:@"<preface>"];
              [(OSASubmitter *)v100 prefaceSubmission:v49 withData:v59 usingArchive:v89 andHeaders:v90];

              v20 = v96;
            }

            [v49 appendData:v46];
            [v49 appendBytes:"\n" length:1];
            [v49 appendData:v41];
            [v49 appendBytes:"\n" length:1];
            [v37 closeFileStream];
            [v92 addObject:v37];

            v22 = v88;
            v13 = v89;
            goto LABEL_50;
          }

          if ([(OSAStreamDeflater *)v13 capViolation])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109378;
              *v115 = 10485760;
              *&v115[4] = 2112;
              *&v115[6] = v35;
              _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Submission archive too big (> %u) for submission with file %@", buf, 0x12u);
            }

            AnalyticsSendEvent();
          }

          v58 = [v37 bugType];
          [v91 _recordRetirement:v58 reason:@"rejected-capviolation"];

          [v37 retire:"rejected-capviolation"];
          v54 = 0;
LABEL_50:

          objc_autoreleasePoolPop(context);
          v33 = v101;
          if (v54)
          {
            v63 = v22;
            goto LABEL_63;
          }

LABEL_51:
          ++v34;
        }

        while (v95 != v34);
        v62 = [v22 countByEnumeratingWithState:&v104 objects:v116 count:16];
        v95 = v62;
      }

      while (v62);
LABEL_55:

      v63 = [(OSASubmitter *)v100 processJob:v33 forRouting:v20 including:v92 usingConfig:v97 taskings:v84 summarize:v91 additionalRequestHeaders:v83];
      [v86 addObject:v63];
      v64 = [v63 objectForKeyedSubscript:@"contentLength"];

      if (v64)
      {
        v65 = [v63 objectForKeyedSubscript:@"complete"];
        v66 = [v65 BOOLValue];

        if (v66)
        {
          v67 = HIDWORD(v87);
        }

        else
        {
          v67 = HIDWORD(v87) + 1;
        }

        v68 = v87;
        if (v66)
        {
          v68 = v87 + 1;
        }

        v87 = __PAIR64__(v67, v68);
      }

LABEL_63:
      v14 = v80;
      v16 = v81;
      v17 = v79;

      v20 = v96;
      v23 = v101;
LABEL_64:

      v18 = v82 + 1;
    }

    while (v82 + 1 != v16);
    v69 = [v14 countByEnumeratingWithState:&v108 objects:v117 count:16];
    v16 = v69;
  }

  while (v69);

  v70 = @"partial success";
  if (!v87)
  {
    v70 = @"failed";
  }

  if (HIDWORD(v87))
  {
    v71 = v70;
  }

  else
  {
    v71 = @"success";
  }

LABEL_74:
  v72 = [MEMORY[0x277D36B80] sharedInstance];
  v73 = [v72 logDomain];

  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    jobCount = v100->_jobCount;
    v75 = CFAbsoluteTimeGetCurrent();
    *buf = 138543874;
    *v115 = v71;
    *&v115[8] = 1024;
    *&v115[10] = jobCount;
    *&v115[14] = 2048;
    *&v115[16] = v75 - Current;
    _os_log_impl(&dword_25D12D000, v73, OS_LOG_TYPE_DEFAULT, "Submission Result: %{public}@ after %u job(s), elapsed time %.2f s", buf, 0x1Cu);
  }

  [v78 setObject:v71 forKeyedSubscript:@"result"];
  [v78 setObject:v86 forKeyedSubscript:@"jobs"];
  [v78 setObject:v84 forKeyedSubscript:@"taskings"];

  v76 = *MEMORY[0x277D85DE8];

  return v78;
}

- (id)locateLog:(id)a3 forRouting:(id)a4 usingConfig:(id)a5 options:(id)a6 error:(id *)a7
{
  v11 = MEMORY[0x277D36B68];
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[v11 alloc] initWithPath:v15 forRouting:v14 usingConfig:v13 options:v12 error:a7];

  return v16;
}

- (id)applyTasking:(id)a3 taskId:(id)a4 usingConfig:(id)a5 fromBlob:(id)a6
{
  v20[4] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v11 isProxy])
  {
    [MEMORY[0x277D36B88] proxyTasking:v9 taskId:v10 usingConfig:v11 fromBlob:v12];
  }

  else
  {
    [MEMORY[0x277D36B88] applyTasking:v9 taskId:v10 fromBlob:v12];
  }
  v13 = ;
  if (([v10 isEqualToString:@"-1"] & 1) == 0)
  {
    v19[0] = @"action";
    v19[1] = @"routing";
    v20[0] = @"received";
    v20[1] = v9;
    v20[2] = v10;
    v19[2] = @"taskId";
    v19[3] = @"blob";
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "length")}];
    v20[3] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];
    v16 = [v15 mutableCopy];

    if ([v11 isProxy])
    {
      [v16 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"proxied"];
    }

    AnalyticsSendEvent();
  }

  v17 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)processJob:(id)a3 forRouting:(id)a4 including:(id)a5 usingConfig:(id)a6 taskings:(id)a7 summarize:(id)a8 additionalRequestHeaders:(id)a9
{
  v245 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v193 = a8;
  v184 = a9;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v21 = v20;
  v183 = v19;
  v22 = [v19 objectForKeyedSubscript:v16];

  if (v22)
  {
    v187 = 0;
  }

  else
  {
    v187 = [OSASubmitter taskingKeyForRouting:v16 withConfig:v18];
  }

  v185 = v15;
  v196 = v16;
  v190 = v17;
  v188 = v18;
  if (([v16 isEqualToString:@"ca1"] & 1) != 0 || objc_msgSend(v16, "isEqualToString:", @"ca1-ohttp"))
  {
    v23 = objc_opt_new();
    v214 = 0u;
    v215 = 0u;
    v216 = 0u;
    v217 = 0u;
    v24 = v17;
    v25 = [v24 countByEnumeratingWithState:&v214 objects:v244 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v215;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v215 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v214 + 1) + 8 * i) filepath];
          [v23 addObject:v29];
        }

        v26 = [v24 countByEnumeratingWithState:&v214 objects:v244 count:16];
      }

      while (v26);
    }

    v30 = MEMORY[0x277D36B78];
    v31 = *MEMORY[0x277D36BF8];
    v242 = *MEMORY[0x277D36C00];
    v243 = v23;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v243 forKeys:&v242 count:1];
    [v30 recordEvent:v31 with:v32];

    v16 = v196;
    v17 = v190;
    v18 = v188;
  }

  self->_responseCode = 0;
  if (![v15 length] && (!v187 || !-[OSASubmitter taskingNeedsRefreshForRouting:at:](self, "taskingNeedsRefreshForRouting:at:", v16, v21)))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v52 = [v18 identifier];
      *buf = 138412546;
      v237 = v52;
      v238 = 2112;
      *v239 = v16;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "nothing to do for %@-%@", buf, 0x16u);
    }

    v219[0] = MEMORY[0x277CBEC38];
    v218[0] = @"complete";
    v218[1] = @"logCount";
    v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "count")}];
    v218[2] = @"routing";
    v186 = v53;
    v219[1] = v53;
    v219[2] = v16;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v219 forKeys:v218 count:3];
    v55 = v54 = v16;
    goto LABEL_129;
  }

  ++self->_jobCount;
  v33 = v18;
  v34 = MEMORY[0x277CCACA8];
  v35 = [v18 identifier];
  v186 = [v34 stringWithFormat:@"job_%@-%u-%@", v35, self->_jobCount, v16];

  v36 = MEMORY[0x277CCACA8];
  v37 = [v18 productVersion];
  v38 = [v18 releaseType];
  v39 = [v36 stringWithFormat:@"%@-%@", v37, v38];

  v241[0] = @"application/vnd.apple.ips";
  v240[0] = @"Content-Type";
  v240[1] = @"x-hardware-model";
  v40 = [v33 modelCode];
  v241[1] = v40;
  v240[2] = @"x-os-version";
  v41 = [v33 buildVersion];
  v241[2] = v41;
  v240[3] = @"x-os-train";
  v42 = [v33 osTrain];
  v241[3] = v42;
  v240[4] = @"x-target-audience";
  v43 = [v33 targetAudience];
  v241[4] = v43;
  v180 = v39;
  v241[5] = v39;
  v240[5] = @"x-product-release";
  v240[6] = @"x-routing";
  v241[6] = v16;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v241 forKeys:v240 count:7];
  v189 = [v44 mutableCopy];

  v45 = v196;
  if ([v196 isEqualToString:@"ca1-ohttp"])
  {
    [v189 setObject:@"ca1" forKeyedSubscript:@"x-routing"];
  }

  v46 = v188;
  v47 = [v188 currentTaskingIDByRouting];
  v48 = [v47 objectForKeyedSubscript:v196];

  v182 = v48;
  if (v187)
  {
    v49 = v48 == 0;
  }

  else
  {
    v49 = 1;
  }

  v50 = !v49;
  v176 = v50;
  if (v49)
  {
    [v189 setObject:@"NO" forKeyedSubscript:@"x-tasking-requested"];
    v51 = v190;
  }

  else
  {
    [v189 setObject:@"YES" forKeyedSubscript:@"x-tasking-requested"];
    [v189 setObject:v187 forKeyedSubscript:@"x-crashreporter-key"];
    v51 = v190;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v237 = v196;
      v238 = 2114;
      *v239 = v187;
      *&v239[8] = 2114;
      *&v239[10] = v48;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Requesting tasking for routing %{public}@ using key %{public}@ with task_id %{public}@", buf, 0x20u);
    }

    [v189 setObject:v48 forKeyedSubscript:@"x-task-id"];
  }

  if ([v188 isInDeviceRecoveryEnvironment])
  {
    v56 = [v188 recoveryModeReason];
    [v189 setObject:v56 forKeyedSubscript:@"x-dre-submission"];
  }

  if (([v196 isEqualToString:@"ca1"] & 1) != 0 || objc_msgSend(v196, "isEqualToString:", @"ca1-ohttp"))
  {
    v57 = [v51 firstObject];
    v58 = v57;
    if (v57)
    {
      v59 = [v57 metaData];
      v60 = [v59 objectForKeyedSubscript:*MEMORY[0x277D36C08]];
      [v189 setObject:v60 forKeyedSubscript:@"x-incident-id"];

      v46 = v188;
    }
  }

  [v189 addEntriesFromDictionary:v184];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v61 = [v15 length];
    v62 = [v51 count];
    *buf = 138412802;
    v237 = v186;
    v238 = 2048;
    *v239 = v61;
    *&v239[8] = 2048;
    *&v239[10] = v62;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "'%@' posting content of %lu bytes from %lu logs", buf, 0x20u);
  }

  if (([v196 isEqualToString:@"ca1"] & 1) != 0 || objc_msgSend(v196, "isEqualToString:", @"ca1-ohttp"))
  {
    v63 = objc_opt_new();
    v210 = 0u;
    v211 = 0u;
    v212 = 0u;
    v213 = 0u;
    v64 = v51;
    v65 = [v64 countByEnumeratingWithState:&v210 objects:v235 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = *v211;
      do
      {
        for (j = 0; j != v66; ++j)
        {
          if (*v211 != v67)
          {
            objc_enumerationMutation(v64);
          }

          v69 = [*(*(&v210 + 1) + 8 * j) filepath];
          [v63 addObject:v69];
        }

        v66 = [v64 countByEnumeratingWithState:&v210 objects:v235 count:16];
      }

      while (v66);
    }

    v70 = MEMORY[0x277D36B78];
    v71 = *MEMORY[0x277D36BE0];
    v72 = *MEMORY[0x277D36BF0];
    v234[0] = v63;
    v73 = *MEMORY[0x277D36BE8];
    v233[0] = v72;
    v233[1] = v73;
    v74 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "length")}];
    v234[1] = v74;
    v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v234 forKeys:v233 count:2];
    [v70 recordEvent:v71 with:v75];

    v45 = v196;
    v51 = v190;
    v46 = v188;
  }

  if ([v45 isEqualToString:@"ca1-ohttp"])
  {
    v76 = 2;
  }

  else
  {
    v76 = +[OSASubmitter submitToUAT];
  }

  Current = CFAbsoluteTimeGetCurrent();
  v78 = v15;
  v178 = v76;
  [(OSASubmitter *)self postContent:v15 withHeaders:v189 toEndpoint:v76];
  v79 = CFAbsoluteTimeGetCurrent() - Current;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    responseCode = self->_responseCode;
    v81 = [(NSData *)self->_responseData length];
    *buf = 138412802;
    v237 = v186;
    v238 = 1024;
    *v239 = responseCode;
    *&v239[4] = 2048;
    *&v239[6] = v81;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "'%@' server responded %d with %lu-byte payload", buf, 0x1Cu);
  }

  v82 = [v46 modelCode];
  v83 = [MEMORY[0x277D36B80] sharedInstance];
  v84 = [v83 modelCode];
  v85 = [v82 isEqualToString:v84];

  v231[0] = @"response";
  v86 = [MEMORY[0x277CCABB0] numberWithInteger:self->_responseCode];
  connectionType = self->_connectionType;
  v232[0] = v86;
  v232[1] = connectionType;
  v231[1] = @"connection";
  v231[2] = @"routing";
  v232[2] = v45;
  v231[3] = @"bytes";
  v88 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v78, "length")}];
  v232[3] = v88;
  v231[4] = @"logs";
  v89 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v51, "count")}];
  v232[4] = v89;
  v231[5] = @"seconds";
  v90 = [MEMORY[0x277CCABB0] numberWithDouble:v79];
  v232[5] = v90;
  v231[6] = @"proxied";
  v91 = v85;
  v92 = [MEMORY[0x277CCABB0] numberWithBool:v85 ^ 1u];
  v232[6] = v92;
  v93 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v232 forKeys:v231 count:7];
  AnalyticsSendEvent();

  v181 = objc_opt_new();
  v94 = self->_responseCode;
  v95 = v94 == 200;
  if (v94 == 304)
  {
    v95 = 1;
  }

  v177 = v95;
  v194 = self;
  if (v94 != 304 && v94 != 200)
  {
    v118 = MEMORY[0x277D36B78];
    v119 = *MEMORY[0x277D36BC8];
    v225 = *MEMORY[0x277D36BC0];
    v120 = [MEMORY[0x277CCABB0] numberWithInteger:v94];
    v226 = v120;
    v121 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v226 forKeys:&v225 count:1];
    [v118 recordEvent:v119 with:v121];

    v108 = 0x277D36000;
    goto LABEL_106;
  }

  v175 = self->_responseCode;
  v208 = 0u;
  v209 = 0u;
  v206 = 0u;
  v207 = 0u;
  obj = v190;
  v96 = [obj countByEnumeratingWithState:&v206 objects:v230 count:16];
  if (v96)
  {
    v97 = v96;
    v98 = *v207;
    do
    {
      for (k = 0; k != v97; ++k)
      {
        if (*v207 != v98)
        {
          objc_enumerationMutation(obj);
        }

        v100 = *(*(&v206 + 1) + 8 * k);
        v228[0] = @"bugType";
        v101 = [v100 bugType];
        v102 = v101;
        v103 = v196;
        if (v101)
        {
          v103 = v101;
        }

        v229[0] = v103;
        v228[1] = @"proxied";
        v104 = [MEMORY[0x277CCABB0] numberWithBool:v91 ^ 1u];
        v228[2] = @"logCount";
        v229[1] = v104;
        v229[2] = &unk_286EB2208;
        v105 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v229 forKeys:v228 count:3];
        AnalyticsSendEvent();
      }

      v97 = [obj countByEnumeratingWithState:&v206 objects:v230 count:16];
    }

    while (v97);
  }

  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  v106 = v194->_responseHeaders;
  v107 = [(NSDictionary *)v106 countByEnumeratingWithState:&v202 objects:v227 count:16];
  v108 = 0x277D36000uLL;
  v94 = v175;
  if (!v107)
  {
    goto LABEL_104;
  }

  v109 = v107;
  v110 = *v203;
  while (2)
  {
    for (m = 0; m != v109; ++m)
    {
      if (*v203 != v110)
      {
        objc_enumerationMutation(v106);
      }

      v112 = *(*(&v202 + 1) + 8 * m);
      if (![v112 compare:@"x-task-id" options:1])
      {
        if (v182)
        {
          [v181 setObject:v182 forKeyedSubscript:@"lastId"];
        }

        v113 = v194->_responseCode;
        if (v113 == 304)
        {
          [v181 setObject:@"affirmed" forKeyedSubscript:@"action"];
          [v181 setObject:v182 forKeyedSubscript:@"taskId"];
          [v181 removeObjectForKey:@"lastId"];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v237 = v196;
            v115 = MEMORY[0x277D86220];
            v116 = "device is already in the correct %@ investigation";
            v117 = OS_LOG_TYPE_DEFAULT;
            goto LABEL_89;
          }

LABEL_103:
          [v183 setObject:v181 forKeyedSubscript:v196];
          goto LABEL_104;
        }

        if (v113 != 200)
        {
          goto LABEL_103;
        }

        v114 = [v183 objectForKeyedSubscript:v196];

        if (v114)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v237 = v196;
            v115 = MEMORY[0x277D86220];
            v116 = "Unexpected response data; already installed tasking blob of type %@ this session";
            v117 = OS_LOG_TYPE_INFO;
LABEL_89:
            _os_log_impl(&dword_25D12D000, v115, v117, v116, buf, 0xCu);
            goto LABEL_103;
          }

          goto LABEL_103;
        }

        v123 = [(NSDictionary *)v194->_responseHeaders objectForKeyedSubscript:v112];
        if (![v123 length])
        {
          [v181 setObject:@"unchanged" forKeyedSubscript:@"action"];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v237 = v196;
            _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "no tasking id returned for %@", buf, 0xCu);
          }

          goto LABEL_102;
        }

        v124 = [MEMORY[0x277D36B80] sharedInstance];
        if ([v124 appleInternal])
        {
          v125 = v194;
          allowUnsignedBlobs = v194->_allowUnsignedBlobs;

          if (allowUnsignedBlobs)
          {
            v127 = v194->_responseData;
            v128 = 0;
LABEL_101:
            v132 = [(OSASubmitter *)v194 applyTasking:v196 taskId:v123 usingConfig:v188 fromBlob:v127];
            [v181 addEntriesFromDictionary:v132];

LABEL_102:
            goto LABEL_103;
          }
        }

        else
        {

          v125 = v194;
        }

        if ([(NSData *)v125->_responseData length])
        {
          responseData = v125->_responseData;
          v201 = 0;
          v127 = [OSASubmitter extractAuthenticatedBlob:responseData error:&v201];
          v130 = v201;
          v128 = v130;
          if (v130)
          {
            v131 = [v130 localizedDescription];
            [v181 setObject:v131 forKeyedSubscript:@"authenticationError"];
          }
        }

        else
        {
          v128 = 0;
          v127 = 0;
        }

        goto LABEL_101;
      }
    }

    v109 = [(NSDictionary *)v106 countByEnumeratingWithState:&v202 objects:v227 count:16];
    if (v109)
    {
      continue;
    }

    break;
  }

LABEL_104:

  self = v194;
  v122 = v196;
  if (v176)
  {
    [(OSASubmitter *)v194 updateTaskingLastSuccessfulRequest:v196 at:v21];
  }

LABEL_106:
  v133 = [(NSError *)self->_responseError localizedDescription];
  v134 = v133;
  v135 = &stru_286EAD908;
  if (v133)
  {
    v135 = v133;
  }

  obja = v135;

  v136 = [*(v108 + 2944) sharedInstance];
  v137 = [v136 appleInternal];

  v138 = v190;
  if (v137)
  {
    v139 = [*(v108 + 2944) sharedInstance];
    v140 = [v139 pathDiagnostics];
    v141 = [v140 stringByAppendingPathComponent:v186];
    v142 = [v141 stringByAppendingPathExtension:@"ips"];

    [v185 writeToFile:v142 atomically:0];
    v223[0] = @"logs";
    v143 = [v190 valueForKey:@"getFilenames"];
    v224[0] = v143;
    v224[1] = v189;
    v223[1] = @"postHeaders";
    v223[2] = @"response";
    v144 = [MEMORY[0x277CCABB0] numberWithInteger:self->_responseCode];
    responseHeaders = MEMORY[0x277CBEC10];
    v146 = self->_responseData;
    if (self->_responseHeaders)
    {
      responseHeaders = self->_responseHeaders;
    }

    v224[2] = v144;
    v224[3] = responseHeaders;
    v223[3] = @"responseHeaders";
    v223[4] = @"responseError";
    v224[4] = obja;
    v223[5] = @"payloadLength";
    v147 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSData length](v146, "length")}];
    v224[5] = v147;
    v148 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v224 forKeys:v223 count:6];

    v149 = [*(v108 + 2944) sharedInstance];
    v150 = [v149 pathDiagnostics];
    v151 = [v150 stringByAppendingPathComponent:v186];
    v152 = [v151 stringByAppendingPathExtension:@"diagnostics"];
    [v148 writeToFile:v152 atomically:1];

    v138 = v190;
  }

  if (v94 == 304 || v94 == 200)
  {
    v199 = 0u;
    v200 = 0u;
    v197 = 0u;
    v198 = 0u;
    v153 = v138;
    v154 = [v153 countByEnumeratingWithState:&v197 objects:v222 count:16];
    if (v154)
    {
      v155 = v154;
      LODWORD(v156) = 0;
      v157 = *v198;
      do
      {
        for (n = 0; n != v155; ++n)
        {
          if (*v198 != v157)
          {
            objc_enumerationMutation(v153);
          }

          v159 = *(*(&v197 + 1) + 8 * n);
          v160 = [v159 bugType];
          v161 = [v160 isEqualToString:@"193"];

          dryRun = self->_dryRun;
          v163 = [v159 bugType];
          if (dryRun)
          {
            [v193 _recordRetirement:v163 reason:@"pending"];
          }

          else
          {
            [v193 _recordRetirement:v163 reason:@"submitted"];

            [v159 retire:"submitted"];
          }

          v156 = (v156 + v161);
          self = v194;
        }

        v155 = [v153 countByEnumeratingWithState:&v197 objects:v222 count:16];
      }

      while (v155);
    }

    else
    {
      v156 = 0;
    }

    v138 = v190;
  }

  else
  {
    v156 = 0;
  }

  v220[0] = @"complete";
  v195 = [MEMORY[0x277CCABB0] numberWithBool:v177];
  v221[0] = v195;
  v221[1] = v196;
  v220[1] = @"routing";
  v220[2] = @"endpoint";
  v179 = [OSASubmitter endpointToString:v178];
  requestURL = self->_requestURL;
  v221[2] = v179;
  v221[3] = requestURL;
  v220[3] = @"url";
  v220[4] = @"logCount";
  v165 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v138, "count")}];
  v221[4] = v165;
  v220[5] = @"aggdCount";
  v166 = [MEMORY[0x277CCABB0] numberWithInt:v156];
  v221[5] = v166;
  v220[6] = @"contentLength";
  v167 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v185, "length")}];
  v221[6] = v167;
  v220[7] = @"response";
  v168 = [MEMORY[0x277CCABB0] numberWithInteger:self->_responseCode];
  v169 = self;
  v170 = v168;
  v221[7] = v168;
  v221[8] = obja;
  v220[8] = @"error";
  v220[9] = @"payloadLength";
  v171 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSData length](v169->_responseData, "length")}];
  v221[9] = v171;
  v221[10] = v181;
  v220[10] = @"tasking";
  v220[11] = @"seconds";
  v172 = [MEMORY[0x277CCABB0] numberWithDouble:v79];
  v221[11] = v172;
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v221 forKeys:v220 count:12];

  v17 = v190;
  v15 = v185;
  [v190 removeAllObjects];
  [v185 setLength:0];

  v54 = v196;
  v18 = v188;
LABEL_129:

  v173 = *MEMORY[0x277D85DE8];

  return v55;
}

- (void)cheaterTaskingWithSets:(id)a3 usingConfig:(id)a4 resultsCallback:(id)a5
{
  v12 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  v11 = [(OSASubmitter *)self processSubmissionJobs:v9 usingConfig:v8 summarize:v10];

  if (v12)
  {
    v12[2](v12, v11);
  }
}

- (void)submitLogsUsingPolicy:(id)a3 resultsCallback:(id)a4
{
  v191[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v129 = a4;
  v7 = 0x277D36000uLL;
  v8 = [MEMORY[0x277D36B80] sharedInstance];
  v9 = [v8 submissionsDisabled];

  if (v9)
  {
    v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v10)
    {
      [(OSASubmitter *)v10 submitLogsUsingPolicy:v11 resultsCallback:v12, v13, v14, v15, v16, v17];
    }

    v18 = v129;
    if (v129)
    {
      (*(v129 + 2))(v129, &unk_286EB22D8);
    }

    goto LABEL_128;
  }

  v134 = objc_opt_new();
  v130 = objc_opt_new();
  v19 = [MEMORY[0x277D36B80] sharedInstance];
  v20 = [v19 appleInternal];

  if (v20)
  {
    v21 = [MEMORY[0x277D36B80] sharedInstance];
    v22 = [v21 pathDiagnostics];

    if (v22)
    {
      v23 = MEMORY[0x277D36B68];
      v190 = *MEMORY[0x277D36C48];
      v191[0] = v22;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v191 forKeys:&v190 count:1];
      [v23 iterateLogsWithOptions:v24 usingBlock:&__block_literal_global];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Not clearing past submission artifacts because path is not available.", buf, 2u);
    }
  }

  v25 = MEMORY[0x277D36B68];
  v26 = [MEMORY[0x277D36B80] sharedInstance];
  v27 = [v26 pathSubmission];
  v128 = [v25 scanProxies:v27];

  if ([MEMORY[0x277D36B68] isDataVaultEnabled])
  {
    v28 = [MEMORY[0x277D36B80] sharedInstance];
    v29 = [v28 pathSubmissionDataVault];

    if (v29)
    {
      v30 = [MEMORY[0x277D36B68] scanProxies:v29];
      v31 = [v128 arrayByAddingObjectsFromArray:v30];

      v128 = v31;
    }

    else
    {
      v32 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v32)
      {
        [(OSASubmitter *)v32 submitLogsUsingPolicy:v33 resultsCallback:v34, v35, v36, v37, v38, v39];
      }
    }
  }

  [MEMORY[0x277D36B68] createRetiredDirectoriesForUser:0];
  if ([v6 ignoreProxies])
  {
    v40 = &unk_286EB23C8;
  }

  else
  {
    v40 = [&unk_286EB23E0 arrayByAddingObjectsFromArray:v128];
  }

  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  obj = v40;
  v143 = v6;
  v135 = [obj countByEnumeratingWithState:&v167 objects:v189 count:16];
  if (v135)
  {
    v133 = *v168;
    v144 = *MEMORY[0x277D36BD8];
    v145 = *MEMORY[0x277D36BD0];
    v41 = @"routing";
    do
    {
      for (i = 0; i != v135; i = v58 + 1)
      {
        if (*v168 != v133)
        {
          objc_enumerationMutation(obj);
        }

        v43 = *(*(&v167 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v139 = i;
        if ([v43 length])
        {
          v140 = [v43 lastPathComponent];
          v188 = v43;
          v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v188 count:1];
        }

        else
        {
          v44 = [(OSASubmitter *)self primarySubmissionPaths];
          v140 = @"Primary";
        }

        v165 = 0u;
        v166 = 0u;
        v163 = 0u;
        v164 = 0u;
        v146 = v44;
        v45 = [v146 countByEnumeratingWithState:&v163 objects:v187 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = *v164;
          do
          {
            for (j = 0; j != v46; ++j)
            {
              if (*v164 != v47)
              {
                objc_enumerationMutation(v146);
              }

              [(OSASubmitter *)self prepConfig:*(*(&v163 + 1) + 8 * j)];
            }

            v46 = [v146 countByEnumeratingWithState:&v163 objects:v187 count:16];
          }

          while (v46);
        }

        if ([v43 length])
        {
          v49 = [objc_alloc(MEMORY[0x277D36B70]) initFromPath:v43];
        }

        else
        {
          v49 = [*(v7 + 2944) sharedInstance];
        }

        v50 = v49;
        v51 = MEMORY[0x277D86220];
        v52 = v140;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v184 = v140;
          _os_log_impl(&dword_25D12D000, v51, OS_LOG_TYPE_DEFAULT, "----- '%{public}@' -----", buf, 0xCu);
        }

        if (v50)
        {
          v53 = [v6 buildSubmissionTemplateForConfig:v50];
          v54 = [v53 copy];

          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v184 = v50;
            v185 = 2112;
            v186 = v54;
            _os_log_debug_impl(&dword_25D12D000, v51, OS_LOG_TYPE_DEBUG, "config: %@\npolicy: %@", buf, 0x16u);
          }

          v136 = v50;
          v55 = MEMORY[0x277D36B68];
          v56 = [v6 scanOptions];
          v137 = v54;
          if ([v55 scanLogs:v54 from:v146 options:v56])
          {

            goto LABEL_50;
          }

          v59 = [v6 hasTasking];

          if (v59)
          {
LABEL_50:
            v60 = [*(v7 + 2944) sharedInstance];
            v61 = [v60 logDomain];

            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              v62 = [*(v7 + 2944) sharedInstance];
              v63 = [v62 optInApple];
              *buf = 138543618;
              v64 = @"OUT";
              if (v63)
              {
                v64 = @"IN";
              }

              v184 = v140;
              v185 = 2112;
              v186 = v64;
              _os_log_impl(&dword_25D12D000, v61, OS_LOG_TYPE_DEFAULT, "Initiating submission for '%{public}@' optIn: %@", buf, 0x16u);
            }

            v161 = 0u;
            v162 = 0u;
            v159 = 0u;
            v160 = 0u;
            v65 = v54;
            v66 = [(__CFString *)v65 countByEnumeratingWithState:&v159 objects:v182 count:16];
            if (v66)
            {
              v67 = v66;
              v68 = *v160;
              do
              {
                for (k = 0; k != v67; ++k)
                {
                  if (*v160 != v68)
                  {
                    objc_enumerationMutation(v65);
                  }

                  v70 = *(*(&v159 + 1) + 8 * k);
                  v71 = [v70 objectForKeyedSubscript:v41];
                  if ([v71 isEqualToString:@"ca1"])
                  {
                  }

                  else
                  {
                    v72 = [v70 objectForKeyedSubscript:v41];
                    v73 = [v72 isEqualToString:@"ca1-ohttp"];

                    if (!v73)
                    {
                      goto LABEL_65;
                    }
                  }

                  v74 = MEMORY[0x277D36B78];
                  v180 = v144;
                  v75 = [v70 objectForKeyedSubscript:@"logs"];
                  v76 = v75;
                  v77 = MEMORY[0x277CBEBF8];
                  if (v75)
                  {
                    v77 = v75;
                  }

                  v181 = v77;
                  v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v181 forKeys:&v180 count:1];
                  [v74 recordEvent:v145 with:v78];

LABEL_65:
                  v41 = @"routing";
                }

                v67 = [(__CFString *)v65 countByEnumeratingWithState:&v159 objects:v182 count:16];
              }

              while (v67);
            }

            v50 = v136;
            v79 = [(OSASubmitter *)self processSubmissionJobs:v65 usingConfig:v136 summarize:v130];
            v57 = v79;
            if (self->_dryRun)
            {
              v6 = v143;
              v7 = 0x277D36000;
              v58 = v139;
              v80 = v137;
LABEL_97:

              v52 = v140;
              goto LABEL_98;
            }

            v157 = 0u;
            v158 = 0u;
            v155 = 0u;
            v156 = 0u;
            v132 = v79;
            v81 = [v79 objectForKeyedSubscript:@"jobs"];
            v82 = [v81 countByEnumeratingWithState:&v155 objects:v179 count:16];
            if (v82)
            {
              v83 = v82;
              v84 = *v156;
              do
              {
                for (m = 0; m != v83; ++m)
                {
                  if (*v156 != v84)
                  {
                    objc_enumerationMutation(v81);
                  }

                  v86 = *(*(&v155 + 1) + 8 * m);
                  v87 = [v86 objectForKeyedSubscript:@"<inactive>"];

                  if (!v87)
                  {
                    v88 = [v86 objectForKeyedSubscript:v41];
                    v89 = [v86 objectForKeyedSubscript:@"complete"];
                    v90 = [v89 BOOLValue];

                    [v143 registerRouting:v88 result:v90];
                  }
                }

                v83 = [v81 countByEnumeratingWithState:&v155 objects:v179 count:16];
              }

              while (v83);
              goto LABEL_94;
            }

            v6 = v143;
          }

          else
          {
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v184 = v140;
              _os_log_impl(&dword_25D12D000, v51, OS_LOG_TYPE_DEFAULT, "No logs/tasking found for submission from '%{public}@'", buf, 0xCu);
            }

            v91 = [MEMORY[0x277CBEB38] dictionary];
            v92 = [(__CFString *)v136 identifier];
            [v91 setObject:v92 forKeyedSubscript:@"name"];

            [v91 setObject:@"success" forKeyedSubscript:@"result"];
            v81 = objc_opt_new();
            v132 = v91;
            [v91 setObject:v81 forKeyedSubscript:@"jobs"];
            v153 = 0u;
            v154 = 0u;
            v151 = 0u;
            v152 = 0u;
            v141 = v54;
            v93 = [(__CFString *)v141 countByEnumeratingWithState:&v151 objects:v178 count:16];
            if (v93)
            {
              v94 = v93;
              v142 = *v152;
              do
              {
                for (n = 0; n != v94; ++n)
                {
                  if (*v152 != v142)
                  {
                    objc_enumerationMutation(v141);
                  }

                  v96 = *(*(&v151 + 1) + 8 * n);
                  v97 = [v96 objectForKeyedSubscript:v41];
                  [v96 objectForKeyedSubscript:@"<inactive>"];
                  v99 = v98 = v41;

                  if (v99)
                  {
                    v174[0] = @"<inactive>";
                    v100 = [v96 objectForKeyedSubscript:@"<inactive>"];
                    v174[1] = v98;
                    v175[0] = v100;
                    v175[1] = v97;
                    v101 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v175 forKeys:v174 count:2];
                    [v81 addObject:v101];

                    v41 = v98;
                  }

                  else
                  {
                    if (!self->_dryRun)
                    {
                      [v143 registerRouting:v97 result:1];
                    }

                    v176[0] = @"logCount";
                    v41 = @"routing";
                    v176[1] = @"routing";
                    v177[0] = &unk_286EB2220;
                    v177[1] = v97;
                    v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v177 forKeys:v176 count:2];
                    [v81 addObject:v100];
                  }
                }

                v94 = [(__CFString *)v141 countByEnumeratingWithState:&v151 objects:v178 count:16];
              }

              while (v94);
            }

LABEL_94:
            v6 = v143;
            v50 = v136;
          }

          v7 = 0x277D36000uLL;
          v58 = v139;
          v80 = v137;
          v57 = v132;
          goto LABEL_97;
        }

        v172[0] = @"name";
        v172[1] = @"result";
        v173[0] = v140;
        v173[1] = @"skipped - no metadata for proxy device";
        v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v173 forKeys:v172 count:2];
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v184 = v140;
          _os_log_impl(&dword_25D12D000, v51, OS_LOG_TYPE_DEFAULT, "No submission parameters found from '%{public}@'", buf, 0xCu);
        }

        v58 = v139;
LABEL_98:
        [v134 addObject:v57];

        objc_autoreleasePoolPop(context);
      }

      v135 = [obj countByEnumeratingWithState:&v167 objects:v189 count:16];
    }

    while (v135);
  }

  if (!self->_dryRun)
  {
    [v6 persist];
  }

  launchInfo = self->_launchInfo;
  if (launchInfo)
  {
    v103 = [(NSDictionary *)launchInfo mutableCopy];
  }

  else
  {
    v103 = objc_opt_new();
  }

  v104 = v103;
  v105 = [v103 objectForKeyedSubscript:@"time"];
  if (!v105)
  {
    v105 = [MEMORY[0x277CBEAA8] date];
    [v104 setObject:v105 forKeyedSubscript:@"time"];
  }

  [v104 setObject:self->_connectionType forKeyedSubscript:@"connection"];
  v106 = [*(v7 + 2944) sharedInstance];
  v107 = [v106 buildVersion];
  [v104 setObject:v107 forKeyedSubscript:@"version"];

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v108 = v134;
  v109 = [v108 countByEnumeratingWithState:&v147 objects:v171 count:16];
  if (v109)
  {
    v110 = v109;
    v111 = *v148;
    LOBYTE(v112) = 1;
    do
    {
      for (ii = 0; ii != v110; ++ii)
      {
        if (*v148 != v111)
        {
          objc_enumerationMutation(v108);
        }

        if (v112)
        {
          v114 = [*(*(&v147 + 1) + 8 * ii) objectForKeyedSubscript:@"result"];
          v112 = [v114 isEqualToString:@"success"];
        }

        else
        {
          v112 = 0;
        }
      }

      v110 = [v108 countByEnumeratingWithState:&v147 objects:v171 count:16];
    }

    while (v110);
  }

  else
  {
    v112 = 1;
  }

  v115 = [MEMORY[0x277CCABB0] numberWithBool:v112];
  [v104 setObject:v115 forKeyedSubscript:@"success"];

  v18 = v129;
  if (v129)
  {
    (*(v129 + 2))(v129, v104);
  }

  v116 = [MEMORY[0x277D36B80] sharedInstance];
  v117 = [v116 appleInternal];

  if (v117)
  {
    v118 = [MEMORY[0x277D36B80] sharedInstance];
    v119 = [v118 pathDiagnostics];
    v120 = MEMORY[0x277CCACA8];
    v121 = OSANSDateFormat();
    v122 = [v120 stringWithFormat:@"submission-%@", v121];
    v123 = [v119 stringByAppendingPathComponent:v122];
    v124 = [v123 stringByAppendingPathExtension:@"results"];

    [v104 setObject:v108 forKeyedSubscript:@"submissions"];
    [v104 setObject:v130 forKeyedSubscript:@"retirement-summary"];
    if (([v104 writeToFile:v124 atomically:1] & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "failed to write results file, saving as txt", buf, 2u);
      }

      v125 = [v124 stringByAppendingPathExtension:@"txt"];

      v126 = [v104 description];
      [v126 writeToFile:v125 atomically:1 encoding:4 error:0];

      v124 = v125;
    }

    v18 = v129;
  }

  v6 = v143;
LABEL_128:

  v127 = *MEMORY[0x277D85DE8];
}

void __54__OSASubmitter_submitLogsUsingPolicy_resultsCallback___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 pathExtension];
  if (([v3 isEqualToString:@"ips"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"diagnostics"))
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    [v4 removeItemAtURL:v2 error:0];
  }

  else
  {
    if (![v3 isEqualToString:@"results"])
    {
      goto LABEL_5;
    }

    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [v2 path];
    v11 = 0;
    v4 = [v5 attributesOfItemAtPath:v6 error:&v11];

    if (v4)
    {
      v7 = [v4 fileModificationDate];
      [v7 timeIntervalSinceNow];
      v9 = fabs(v8);

      if (v9 > 604800.0)
      {
        v10 = [MEMORY[0x277CCAA00] defaultManager];
        [v10 removeItemAtURL:v2 error:0];
      }
    }
  }

LABEL_5:
}

- (BOOL)taskingNeedsRefreshForRouting:(id)a3 at:(double)a4
{
  v6 = a3;
  if ([v6 isEqualToString:@"ca1"])
  {
    v7 = 0;
  }

  else
  {
    v8 = [(OSASubmitter *)self taskingLastSuccessfulRequest];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 objectForKeyedSubscript:v6];
      if (v10)
      {
        v11 = [v9 objectForKeyedSubscript:v6];
        [v11 doubleValue];
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }
    }

    else
    {
      v13 = 0.0;
    }

    v14 = a4 - v13;
    v7 = v14 >= 43200.0;
    if (v14 >= 43200.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [OSASubmitter taskingNeedsRefreshForRouting:v6 at:v14];
    }
  }

  return v7;
}

+ (id)taskingKeyForRouting:(id)a3 withConfig:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToString:@"da3"])
  {
    v7 = [v6 crashReporterKey];
    goto LABEL_5;
  }

  if ([v5 isEqualToString:@"awd"])
  {
    v7 = [v6 awdReporterKey];
LABEL_5:
    v8 = v7;
    if (!v7)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (([v5 isEqualToString:@"ca1"] & 1) == 0)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v8 = @"core-analytics-tasking-key";
LABEL_9:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [OSASubmitter taskingKeyForRouting:v5 withConfig:v8];
  }

LABEL_11:

  return v8;
}

+ (BOOL)submitToUAT
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277D36C58]];
  v4 = [v3 BOOLForKey:@"UATSubmissionServer"];

  return v4;
}

+ (id)submissionPathsWithHomeDirectory:(id)a3 withProxies:(BOOL)a4
{
  v4 = a4;
  v41 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  if ([MEMORY[0x277D36B68] isDataVaultEnabled])
  {
    v6 = [MEMORY[0x277D36B80] sharedInstance];
    v7 = [v6 pathSubmissionDataVault];

    if ([v7 length])
    {
      [v5 addObject:v7];
    }

    else
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v8)
      {
        [(OSASubmitter *)v8 submitLogsUsingPolicy:v9 resultsCallback:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v16 = [MEMORY[0x277D36B80] sharedInstance];
  v17 = [v16 pathSubmission];

  if ([v17 length])
  {
    [v5 addObject:v17];
    if (!v4)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v18)
    {
      [(OSASubmitter *)v18 submissionPathsWithHomeDirectory:v19 withProxies:v20, v21, v22, v23, v24, v25];
      if (!v4)
      {
        goto LABEL_20;
      }
    }

    else if (!v4)
    {
      goto LABEL_20;
    }
  }

  v26 = [MEMORY[0x277CBEB18] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v27 = v5;
  v28 = [v27 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v37;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v37 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [MEMORY[0x277D36B68] scanProxies:{*(*(&v36 + 1) + 8 * i), v36}];
        [v26 addObjectsFromArray:v32];
      }

      v29 = [v27 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v29);
  }

  [v27 addObjectsFromArray:v26];
LABEL_20:
  v33 = [MEMORY[0x277CBEA60] arrayWithArray:{v5, v36}];

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)primarySubmissionPaths
{
  v2 = [(OSASubmitter *)self launchInfo];
  v3 = [v2 objectForKeyedSubscript:@"legacy-homePath"];
  v4 = [OSASubmitter submissionPathsWithHomeDirectory:v3 withProxies:0];

  return v4;
}

+ (id)extractAuthenticatedBlob:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  ApplePinned = SecPolicyCreateApplePinned();
  if (ApplePinned)
  {
    v7 = ApplePinned;
    trust = 0;
    v22 = 0;
    v8 = SecCMSVerifyCopyDataAndAttributes();
    if (v8)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not extract signature from blob, error %d", v8];
      v10 = v9;
      if (a4)
      {
        v11 = MEMORY[0x277CCA9B8];
        v25 = *MEMORY[0x277CCA450];
        v26 = v9;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        *a4 = [v11 errorWithDomain:@"OSASubmitter" code:1 userInfo:v12];
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v10;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      v13 = 0;
    }

    else
    {
      error = 0;
      if (SecTrustEvaluateWithError(trust, &error))
      {
        v13 = v22;
      }

      else
      {
        v16 = error;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v28 = v16;
          _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Signature on blob is not trusted, %@", buf, 0xCu);
        }

        if (a4)
        {
          v17 = v16;
          *a4 = v16;
        }

        v13 = 0;
      }

      CFRelease(trust);
    }

    CFRelease(v7);
  }

  else
  {
    if (a4)
    {
      v14 = MEMORY[0x277CCA9B8];
      v23 = *MEMORY[0x277CCA450];
      v24 = @"Unable to create pinned policy";
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      *a4 = [v14 errorWithDomain:@"OSASubmitter" code:2 userInfo:v15];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = @"Unable to create pinned policy";
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v13 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)endpointToString:(int)a3
{
  if (a3 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799BFF58[a3];
  }
}

- (void)updateTaskingLastSuccessfulRequest:(id)a3 at:(double)a4
{
  v6 = a3;
  v7 = [(OSASubmitter *)self taskingLastSuccessfulRequest];
  v8 = [v7 mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v13 = v10;

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  [v13 setObject:v11 forKeyedSubscript:v6];

  v12 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v12 setObject:v13 forKey:@"taskingLastSuccessfulRequest"];
}

- (id)taskingLastSuccessfulRequest
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"taskingLastSuccessfulRequest"];

  return v3;
}

- (void)getAdditionalRequestHeaders
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Submission jobs will include additional request headers %{public}@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)taskingNeedsRefreshForRouting:(uint64_t)a1 at:(double)a2 .cold.1(uint64_t a1, double a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_debug_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%@ tasking needs refresh for routing (time elapsed: %f)", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)taskingKeyForRouting:(uint64_t)a1 withConfig:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%@ tasking key is %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end