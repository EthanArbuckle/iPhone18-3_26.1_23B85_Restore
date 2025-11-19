@interface CLSPublicEventCacheCreator
- (CLSPublicEventCacheCreator)initWithCache:(id)a3 queryRadius:(double)a4 analytics:(id)a5;
- (id)_queryEventsForTimeLocationTuples:(id)a3 invalidationTokens:(id *)a4 queryContext:(id)a5 analyticsPayload:(id)a6 progressBlock:(id)a7 error:(id *)a8;
- (id)createCacheForTimeLocationTuples:(id)a3 cachingOptions:(id)a4 progressBlock:(id)a5 error:(id *)a6;
@end

@implementation CLSPublicEventCacheCreator

- (id)_queryEventsForTimeLocationTuples:(id)a3 invalidationTokens:(id *)a4 queryContext:(id)a5 analyticsPayload:(id)a6 progressBlock:(id)a7 error:(id *)a8
{
  v101 = *MEMORY[0x277D85DE8];
  v52 = a3;
  v51 = a5;
  v11 = a6;
  v49 = a7;
  v12 = _Block_copy(v49);
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  [v11 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"batchSucceeded"];
  [v11 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"didRequestTimeout"];
  v53 = v11;
  if (!v12 || (LOBYTE(v81) = 0, (*(v12 + 2))(v12, &v81, 0.0), v13 = *(v88 + 24) | v81, *(v88 + 24) = v13, (v13 & 1) == 0))
  {
    buf = 0;
    p_buf = &buf;
    v97 = 0x3032000000;
    v98 = __Block_byref_object_copy_;
    v99 = __Block_byref_object_dispose_;
    v100 = 0;
    v81 = 0;
    v82 = &v81;
    v83 = 0x3032000000;
    v84 = __Block_byref_object_copy_;
    v85 = __Block_byref_object_dispose_;
    v86 = 0;
    v77 = 0;
    v78 = &v77;
    v79 = 0x2020000000;
    v80 = 0;
    v71 = 0;
    v72 = &v71;
    v73 = 0x3032000000;
    v74 = __Block_byref_object_copy_;
    v75 = __Block_byref_object_dispose_;
    v76 = 0;
    v65 = 0;
    v66 = &v65;
    v67 = 0x3032000000;
    v68 = __Block_byref_object_copy_;
    v69 = __Block_byref_object_dispose_;
    v70 = [MEMORY[0x277CBEAC0] dictionary];
    v50 = [(CLSPublicEventServiceClientProtocol *)self->_serviceClient publicEventQueryHelperWithTimeLocationTuples:v52 queryRadius:v51 queryContext:self->_simulatesTimeout simulatesTimeout:self->_queryRadius];
    if (v50)
    {
      v15 = dispatch_block_create(0, &__block_literal_global_112);
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __133__CLSPublicEventCacheCreator__queryEventsForTimeLocationTuples_invalidationTokens_queryContext_analyticsPayload_progressBlock_error___block_invoke_2;
      v62[3] = &unk_2788A7ED0;
      v16 = v12;
      v63 = v16;
      v64 = &v87;
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __133__CLSPublicEventCacheCreator__queryEventsForTimeLocationTuples_invalidationTokens_queryContext_analyticsPayload_progressBlock_error___block_invoke_3;
      v55[3] = &unk_2788A6B98;
      v57 = &v77;
      v58 = &buf;
      v59 = &v71;
      v60 = &v65;
      v61 = &v81;
      v17 = v15;
      v56 = v17;
      [v50 launchPublicEventQueryWithCancellerBlock:v62 completionBlock:v55];
      [v50 timeoutInterval];
      v19 = v18;
      v20 = [v50 numberOfRetries];
      Current = CFAbsoluteTimeGetCurrent();
      if (v20)
      {
        v22 = 0;
        while (1)
        {
          v23 = dispatch_time(0, (v19 * 1000000000.0));
          v24 = dispatch_block_wait(v17, v23);
          v25 = v24 != 0;
          if (!v24)
          {
            break;
          }

          v26 = +[CLSLogging sharedLogging];
          v27 = [v26 loggingConnection];

          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v29 = [v52 count];
            v91 = 134218240;
            v92 = v22;
            v93 = 2048;
            v94 = v29;
            _os_log_error_impl(&dword_22F907000, v27, OS_LOG_TYPE_ERROR, "PublicEventCacheCreator -_queryEventsForTimeLocationTuples: timed out at retry iteration %lu, waiting for batch with %lu time location tuples to complete", &v91, 0x16u);
          }

          if (v12)
          {
            LOBYTE(v91) = 0;
            (*(v16 + 2))(v16, &v91, 0.5);
            v28 = *(v88 + 24) | v91;
            *(v88 + 24) = v28;
            v25 = 1;
            if (v28)
            {
              break;
            }

            if (++v22 >= v20)
            {
              break;
            }
          }

          else if (++v22 >= v20)
          {
            v25 = 1;
            break;
          }
        }
      }

      else
      {
        v25 = 0;
      }

      v30 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent() - Current];
      [v53 setObject:v30 forKeyedSubscript:@"requestDuration"];

      v31 = (v20 * (v19 * 1000000000.0)) / 1000000000;
      v32 = [MEMORY[0x277CCABB0] numberWithLongLong:v31];
      [v53 setObject:v32 forKeyedSubscript:@"requestTimeoutValue"];

      v33 = [MEMORY[0x277CCABB0] numberWithBool:v25];
      [v53 setObject:v33 forKeyedSubscript:@"didRequestTimeout"];

      [v53 addEntriesFromDictionary:v66[5]];
      if (v25)
      {
        v34 = +[CLSLogging sharedLogging];
        v35 = [v34 loggingConnection];

        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v45 = [v52 count];
          v91 = 134218240;
          v92 = v20;
          v93 = 2048;
          v94 = v45;
          _os_log_error_impl(&dword_22F907000, v35, OS_LOG_TYPE_ERROR, "PublicEventCacheCreator -_queryEventsForTimeLocationTuples: timed out after all %lu retries, waiting for batch with %lu time location tuples to complete", &v91, 0x16u);
        }

        [v50 cancel];
        v36 = MEMORY[0x277CCA9B8];
        v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"Timeout waiting for queryHelper after %lld seconds", v31];
        v38 = [v36 errorWithDomain:@"CLSErrorDomain" code:-1 localizedDescription:v37];
        v39 = p_buf[5];
        p_buf[5] = v38;

        v14 = 0;
      }

      else
      {
        v14 = MEMORY[0x277CBEC10];
      }

      if (v25)
      {
        goto LABEL_44;
      }
    }

    if (v12 && (v54 = 0, (*(v12 + 2))(v12, &v54, 0.8), v40 = *(v88 + 24) | v54, *(v88 + 24) = v40, (v40 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v91 = 67109120;
        LODWORD(v92) = 349;
        v41 = MEMORY[0x277D86220];
LABEL_41:
        _os_log_impl(&dword_22F907000, v41, OS_LOG_TYPE_INFO, "Cancelled at line %d", &v91, 8u);
      }
    }

    else
    {
      if (*(v78 + 24) == 1)
      {
        if (a4)
        {
          *a4 = [v72[5] invalidationTokens];
        }

        v42 = [(CLSPublicEventCacheCreator *)self cache];
        [v42 insertBatchesOfPublicEventsByTimeLocationIdentifier:v82[5] forTimeLocationTuples:v52];
      }

      else if (a4)
      {
        *a4 = 0;
      }

      if (a8)
      {
        *a8 = p_buf[5];
      }

      if (!v12 || (v54 = 0, (*(v12 + 2))(v12, &v54, 1.0), v43 = *(v88 + 24) | v54, *(v88 + 24) = v43, (v43 & 1) == 0))
      {
        v14 = v82[5];
        goto LABEL_44;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v91 = 67109120;
        LODWORD(v92) = 372;
        v41 = MEMORY[0x277D86220];
        goto LABEL_41;
      }
    }

    v14 = MEMORY[0x277CBEC10];
LABEL_44:

    _Block_object_dispose(&v65, 8);
    _Block_object_dispose(&v71, 8);

    _Block_object_dispose(&v77, 8);
    _Block_object_dispose(&v81, 8);

    _Block_object_dispose(&buf, 8);
    goto LABEL_45;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    buf = 0x11704000100;
    _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", &buf, 8u);
  }

  v14 = MEMORY[0x277CBEC10];
LABEL_45:
  _Block_object_dispose(&v87, 8);

  return v14;
}

uint64_t __133__CLSPublicEventCacheCreator__queryEventsForTimeLocationTuples_invalidationTokens_queryContext_analyticsPayload_progressBlock_error___block_invoke_2(uint64_t a1, _BYTE *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    v5 = 0;
    result = (*(result + 16))(result, &v5, 0.5);
    *(*(*(a1 + 40) + 8) + 24) |= v5;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a2 = 1;
    }
  }

  return result;
}

void __133__CLSPublicEventCacheCreator__queryEventsForTimeLocationTuples_invalidationTokens_queryContext_analyticsPayload_progressBlock_error___block_invoke_3(void *a1, int a2, void *a3, void *a4, void *a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  *(*(a1[5] + 8) + 24) = a2;
  objc_storeStrong((*(a1[6] + 8) + 40), a3);
  objc_storeStrong((*(a1[7] + 8) + 40), a4);
  objc_storeStrong((*(a1[8] + 8) + 40), a5);
  if (a2)
  {
    v13 = [v11 resolvedPublicEventsByTimeLocationTupleIdentifier];
    v14 = *(a1[9] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  else
  {
    v16 = +[CLSLogging sharedLogging];
    v17 = [v16 loggingConnection];

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = v10;
      _os_log_error_impl(&dword_22F907000, v17, OS_LOG_TYPE_ERROR, "PublicEventCacheCreator - completionBlock processing query failure: %@", &v18, 0xCu);
    }
  }

  (*(a1[4] + 16))();
}

- (id)createCacheForTimeLocationTuples:(id)a3 cachingOptions:(id)a4 progressBlock:(id)a5 error:(id *)a6
{
  v110 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v59 = a4;
  v11 = a5;
  maximumBatchSize = self->_maximumBatchSize;
  v13 = objc_alloc_init(CLSPublicEventCacheCreatorResult);
  v58 = v11;
  if (maximumBatchSize && [v10 count])
  {
    v14 = _Block_copy(v11);
    v51 = v13;
    v96 = 0;
    v97 = &v96;
    v98 = 0x2020000000;
    v99 = 0;
    v57 = v14;
    if (v14 && (LOBYTE(v92) = 0, (*(v14 + 2))(v14, &v92, 0.0), v15 = *(v97 + 24) | v92, *(v97 + 24) = v15, (v15 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *&buf = 0x8104000100;
        _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", &buf, 8u);
      }
    }

    else
    {
      v56 = v10;
      v54 = [MEMORY[0x277CBEB38] dictionary];
      v49 = [MEMORY[0x277CBEB38] dictionary];
      v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:maximumBatchSize];
      v52 = a6;
      v18 = [v10 allObjects];
      v19 = [v18 sortedArrayUsingComparator:&__block_literal_global];

      v20 = v19;
      v21 = [v59 fetchLimit];
      v22 = v20;
      if (v21)
      {
        v23 = [v20 count];
        v22 = v20;
        if (v21 < v23)
        {
          v24 = [v20 subarrayWithRange:{0, v21}];

          v22 = v24;
        }
      }

      v92 = 0;
      v93 = &v92;
      v94 = 0x2020000000;
      v95 = 0;
      v53 = v22;
      v25 = [v22 count];
      v48 = v20;
      v26 = +[CLSLogging sharedLogging];
      v27 = [v26 loggingConnection];

      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v25;
        _os_log_impl(&dword_22F907000, v27, OS_LOG_TYPE_DEFAULT, "PublicEventCacheCreator - populating cache with events for %lu time location tuples", &buf, 0xCu);
      }

      v91[0] = 0;
      v91[1] = v91;
      v91[2] = 0x2020000000;
      v91[3] = 0;
      v87 = 0;
      v88 = &v87;
      v89 = 0x2020000000;
      v90 = 0;
      v83 = 0;
      v84 = &v83;
      v85 = 0x2020000000;
      v86 = 0;
      *&buf = 0;
      *(&buf + 1) = &buf;
      v106 = 0x3032000000;
      v107 = __Block_byref_object_copy_;
      v108 = __Block_byref_object_dispose_;
      v109 = 0;
      v28 = [(CLSPublicEventServiceClientProtocol *)self->_serviceClient queryContext];
      v29 = self->_analytics;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __98__CLSPublicEventCacheCreator_createCacheForTimeLocationTuples_cachingOptions_progressBlock_error___block_invoke_101;
      aBlock[3] = &unk_2788A6B70;
      v76 = &v92;
      v30 = v17;
      v66 = v30;
      v10 = v56;
      v67 = v56;
      v68 = v59;
      v69 = self;
      v47 = v28;
      v70 = v47;
      v74 = v58;
      v31 = v54;
      v71 = v31;
      v55 = v49;
      v72 = v55;
      v77 = &v83;
      p_buf = &buf;
      v50 = v29;
      v73 = v50;
      v79 = v91;
      v82 = maximumBatchSize / v25;
      v46 = v57;
      v75 = v46;
      v80 = &v96;
      v81 = &v87;
      v32 = _Block_copy(aBlock);
      if (v25)
      {
        v33 = +[CLSLogging sharedLogging];
        v34 = [v33 loggingConnection];

        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v100 = 134217984;
          v101 = v25;
          _os_log_impl(&dword_22F907000, v34, OS_LOG_TYPE_INFO, "PublicEventCacheCreator - number of tuples to fetch: %lu", &v100, 0xCu);
        }

        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v35 = v53;
        v36 = [v35 countByEnumeratingWithState:&v61 objects:v104 count:16];
        if (v36)
        {
          v37 = *v62;
          v45 = v31;
          while (2)
          {
            for (i = 0; i != v36; ++i)
            {
              if (*v62 != v37)
              {
                objc_enumerationMutation(v35);
              }

              [v30 addObject:{*(*(&v61 + 1) + 8 * i), v45}];
              if ([v30 count] >= maximumBatchSize)
              {
                v32[2](v32);
              }

              if ((v88[3] & 1) != 0 || *(v84 + 24) == 1)
              {
                v39 = +[CLSLogging sharedLogging];
                v40 = [v39 loggingConnection];

                v31 = v45;
                if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                {
                  v43 = @"NO";
                  if (*(v84 + 24))
                  {
                    v44 = @"YES";
                  }

                  else
                  {
                    v44 = @"NO";
                  }

                  if (*(v88 + 24))
                  {
                    v43 = @"YES";
                  }

                  v100 = 138412546;
                  v101 = v44;
                  v102 = 2112;
                  v103 = v43;
                  _os_log_error_impl(&dword_22F907000, v40, OS_LOG_TYPE_ERROR, "PublicEventCacheCreator - received service error (%@) or batchCancelled (%@), terminating loop over batches", &v100, 0x16u);
                }

                goto LABEL_30;
              }
            }

            v36 = [v35 countByEnumeratingWithState:&v61 objects:v104 count:16];
            v31 = v45;
            if (v36)
            {
              continue;
            }

            break;
          }
        }

LABEL_30:

        v10 = v56;
        if ([v30 count] && (v88[3] & 1) == 0 && (v84[3] & 1) == 0)
        {
          v32[2](v32);
        }
      }

      if (v52 && (v84[3] & 1) != 0)
      {
        *v52 = *(*(&buf + 1) + 40);
      }

      if (v57 && (v60 = 0, (*(v46 + 2))(v46, &v60, 1.0), v41 = *(v97 + 24) | v60, *(v97 + 24) = v41, (v41 & 1) != 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v100 = 67109120;
          LODWORD(v101) = 252;
          _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", &v100, 8u);
        }
      }

      else
      {
        [(CLSPublicEventCacheCreatorResult *)v51 setResolvedPublicEventsByTimeLocationIdentifier:v31];
        [(CLSPublicEventCacheCreatorResult *)v51 setInvalidationTokenByTimeLocationIdentifier:v55];
        [(CLSPublicEventCacheCreatorResult *)v51 setNumberOfRequests:v93[3]];
      }

      _Block_object_dispose(&buf, 8);
      _Block_object_dispose(&v83, 8);
      _Block_object_dispose(&v87, 8);
      _Block_object_dispose(v91, 8);
      _Block_object_dispose(&v92, 8);
    }

    _Block_object_dispose(&v96, 8);
  }

  else
  {
    v16 = v13;
  }

  return v13;
}

uint64_t __98__CLSPublicEventCacheCreator_createCacheForTimeLocationTuples_cachingOptions_progressBlock_error___block_invoke_101(uint64_t a1)
{
  v27[3] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  ++*(*(*(a1 + 112) + 8) + 24);
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  v26[0] = @"batchSize";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
  v27[0] = v4;
  v26[1] = @"numberOfTuples";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "count")}];
  v27[1] = v5;
  v26[2] = @"requestContext";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 48), "jobContext")}];
  v27[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
  v8 = [v3 initWithDictionary:v7];

  v9 = *(a1 + 32);
  v20 = 0;
  v21 = 0;
  v10 = [*(a1 + 56) _queryEventsForTimeLocationTuples:v9 invalidationTokens:&v21 queryContext:*(a1 + 64) analyticsPayload:v8 progressBlock:*(a1 + 96) error:&v20];
  v11 = v21;
  v12 = v20;
  v13 = v20;
  if (v10)
  {
    [*(a1 + 72) addEntriesFromDictionary:v10];
    if (v11)
    {
      [*(a1 + 80) addEntriesFromDictionary:v11];
    }
  }

  if (v13)
  {
    *(*(*(a1 + 120) + 8) + 24) = 1;
    objc_storeStrong((*(*(a1 + 128) + 8) + 40), v12);
    v14 = +[CLSLogging sharedLogging];
    v15 = [v14 loggingConnection];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v13;
      _os_log_error_impl(&dword_22F907000, v15, OS_LOG_TYPE_ERROR, "PublicEventCacheCreator - failed to query batch with service error: (%@)", buf, 0xCu);
    }
  }

  [*(a1 + 88) sendEvent:@"com.apple.photos.publicEvents.fetching" withPayload:v8];
  v16 = +[CLSLogging sharedLogging];
  v17 = [v16 loggingConnection];

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = @"com.apple.photos.publicEvents.fetching";
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&dword_22F907000, v17, OS_LOG_TYPE_DEFAULT, "Sent %@ with payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  *(*(*(a1 + 136) + 8) + 24) = *(a1 + 160) + *(*(*(a1 + 136) + 8) + 24);
  v18 = *(a1 + 104);
  if (!v18)
  {
    return [*(a1 + 32) removeAllObjects];
  }

  buf[0] = 0;
  result = (*(v18 + 16))(v18, buf, *(*(*(a1 + 136) + 8) + 24));
  *(*(*(a1 + 144) + 8) + 24) |= buf[0];
  if ((*(*(*(a1 + 144) + 8) + 24) & 1) == 0)
  {
    return [*(a1 + 32) removeAllObjects];
  }

  *(*(*(a1 + 152) + 8) + 24) = 1;
  return result;
}

uint64_t __98__CLSPublicEventCacheCreator_createCacheForTimeLocationTuples_cachingOptions_progressBlock_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v6 compare:v5];
  return v7;
}

- (CLSPublicEventCacheCreator)initWithCache:(id)a3 queryRadius:(double)a4 analytics:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = CLSPublicEventCacheCreator;
  v11 = [(CLSPublicEventCacheCreator *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_cache, a3);
    v12->_queryRadius = a4;
    v13 = +[CLSPublicEventServiceFactory publicEventServiceClient];
    serviceClient = v12->_serviceClient;
    v12->_serviceClient = v13;

    v12->_maximumBatchSize = [(CLSPublicEventServiceClientProtocol *)v12->_serviceClient maximumBatchSize];
    objc_storeStrong(&v12->_analytics, a5);
  }

  return v12;
}

@end