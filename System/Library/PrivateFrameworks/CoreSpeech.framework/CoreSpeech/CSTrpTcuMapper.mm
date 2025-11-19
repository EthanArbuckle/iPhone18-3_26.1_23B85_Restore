@interface CSTrpTcuMapper
- (CSEagerResultAnalyzer)eagerResultAnalyzer;
- (CSTrpTcuMapper)initWithQueue:(id)a3;
- (id)getMatchingRelaxedEPMetricsForTrp:(id)a3;
- (id)getSelectedTrpIdForEndpointEvent:(double)a3 withMetrics:(id)a4 OfType:(int64_t)a5;
- (id)processTRPWithId:(id)a3 withSpeechPackage:(id)a4 enforceTrpSelection:(BOOL)a5;
- (void)_cacheHardEndPointerMetric:(double)a3 withMetrics:(id)a4;
- (void)_cacheRelaxedEndPointerMetric:(double)a3 withMetrics:(id)a4;
- (void)_resetEndpointCaches;
- (void)processTCUFinalizedForTrpId:(id)a3 withCompletion:(id)a4;
@end

@implementation CSTrpTcuMapper

- (CSEagerResultAnalyzer)eagerResultAnalyzer
{
  WeakRetained = objc_loadWeakRetained(&self->_eagerResultAnalyzer);

  return WeakRetained;
}

- (void)_resetEndpointCaches
{
  v3 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[CSTrpTcuMapper _resetEndpointCaches]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  relaxedEndpointerCache = self->_relaxedEndpointerCache;
  self->_relaxedEndpointerCache = 0;

  [(NSMutableArray *)self->_hardEndpointerCache removeAllObjects];
  [(NSMutableDictionary *)self->_trpIdToRCMap removeAllObjects];
}

- (void)_cacheRelaxedEndPointerMetric:(double)a3 withMetrics:(id)a4
{
  v6 = a4;
  v7 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "[CSTrpTcuMapper _cacheRelaxedEndPointerMetric:withMetrics:]";
    v12 = 2048;
    v13 = a3;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Caching Relaxed EndpointInfo at time:%f relaxedendpointerMetrics:%@", &v10, 0x20u);
  }

  v8 = objc_alloc_init(CSAttSiriCachedEndpointInfo);
  [(CSAttSiriCachedEndpointInfo *)v8 setEndpointTime:a3];
  [(CSAttSiriCachedEndpointInfo *)v8 setEndpointerMetrics:v6];
  relaxedEndpointerCache = self->_relaxedEndpointerCache;
  self->_relaxedEndpointerCache = v8;
}

- (void)_cacheHardEndPointerMetric:(double)a3 withMetrics:(id)a4
{
  v6 = a4;
  v7 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[CSTrpTcuMapper _cacheHardEndPointerMetric:withMetrics:]";
    v11 = 2048;
    v12 = a3;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Caching Hard EndpointInfo at time:%f hardendpointerMetrics:%@", &v9, 0x20u);
  }

  v8 = objc_alloc_init(CSAttSiriCachedEndpointInfo);
  [(CSAttSiriCachedEndpointInfo *)v8 setEndpointTime:a3];
  [(CSAttSiriCachedEndpointInfo *)v8 setEndpointerMetrics:v6];
  [(NSMutableArray *)self->_hardEndpointerCache addObject:v8];
}

- (id)processTRPWithId:(id)a3 withSpeechPackage:(id)a4 enforceTrpSelection:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  [CSAttSiriSpeechPackageHelper getLastTokenEndTimeFromSpeechPackage:v9];
  v11 = v10;
  v50 = v8;
  [(NSMutableDictionary *)self->_trpIdToRCMap setObject:v9 forKey:v8];
  v12 = &CSLogCategoryRequest;
  if (([v9 isFinal] & 1) == 0 && !v5)
  {
    if ([(NSMutableArray *)self->_hardEndpointerCache count]== 1)
    {
      WeakRetained = objc_loadWeakRetained(&self->_eagerResultAnalyzer);

      if (WeakRetained)
      {
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        obj = self->_hardEndpointerCache;
        v14 = [(NSMutableArray *)obj countByEnumeratingWithState:&v51 objects:v61 count:16];
        if (v14)
        {
          v15 = v14;
          v46 = v9;
          v49 = 0;
          v16 = 0;
          v17 = v11 * 1000.0;
          v48 = *v52;
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v52 != v48)
              {
                objc_enumerationMutation(obj);
              }

              v19 = *(*(&v51 + 1) + 8 * i);
              v20 = v12;
              v21 = *v12;
              if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
              {
                trpIdToRCMap = self->_trpIdToRCMap;
                v23 = v21;
                v24 = objc_loadWeakRetained(&self->_eagerResultAnalyzer);
                *buf = 136315906;
                v56 = "[CSTrpTcuMapper processTRPWithId:withSpeechPackage:enforceTrpSelection:]";
                v57 = 2112;
                *v58 = v50;
                *&v58[8] = 2112;
                *&v58[10] = trpIdToRCMap;
                v59 = 2112;
                v60 = *&v24;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s Trying RC acceptance for trpId %@ map %@ with _eagerResultAnalyzer:%@", buf, 0x2Au);
              }

              v25 = objc_loadWeakRetained(&self->_eagerResultAnalyzer);
              v26 = [v19 endpointerMetrics];
              v27 = [v25 shouldAcceptEagerResultForDurationSync:v26 withEndpointerMetrics:v17];

              if (v27)
              {
                v28 = [(NSMutableArray *)self->_hardEndpointerCache lastObject];
                [v19 setTrpID:v50];
                v12 = v20;
                v29 = *v20;
                if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
                {
                  v30 = v29;
                  [v28 endpointTime];
                  *buf = 136315906;
                  v56 = "[CSTrpTcuMapper processTRPWithId:withSpeechPackage:enforceTrpSelection:]";
                  v57 = 2048;
                  *v58 = v31;
                  *&v58[8] = 2112;
                  *&v58[10] = v50;
                  v59 = 2048;
                  v60 = v17;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%s Associating EP at time: %f with trpId: %@ with RCTime: %f", buf, 0x2Au);
                }

                v32 = [v19 endpointerMetrics];

                v16 = 1;
                v49 = v32;
              }

              else
              {
                v12 = v20;
                v33 = *v20;
                if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v56 = "[CSTrpTcuMapper processTRPWithId:withSpeechPackage:enforceTrpSelection:]";
                  v57 = 2112;
                  *v58 = v50;
                  *&v58[8] = 2048;
                  *&v58[10] = v17;
                  _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s TRPId %@ with duration %f not accepted !", buf, 0x20u);
                }
              }

              v34 = *v12;
              if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v56 = "[CSTrpTcuMapper processTRPWithId:withSpeechPackage:enforceTrpSelection:]";
                v57 = 1024;
                *v58 = v16 & 1;
                *&v58[4] = 2048;
                *&v58[6] = v17;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%s EP found: %d for RC at time: %f", buf, 0x1Cu);
              }
            }

            v15 = [(NSMutableArray *)obj countByEnumeratingWithState:&v51 objects:v61 count:16];
          }

          while (v15);
          v35 = v16 & 1;
          v9 = v46;
          v36 = v49;
        }

        else
        {
          v36 = 0;
          v35 = 0;
        }

        goto LABEL_34;
      }
    }

    v39 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      hardEndpointerCache = self->_hardEndpointerCache;
      v41 = v39;
      v42 = [(NSMutableArray *)hardEndpointerCache count];
      v43 = objc_loadWeakRetained(&self->_eagerResultAnalyzer);
      *buf = 136315650;
      v56 = "[CSTrpTcuMapper processTRPWithId:withSpeechPackage:enforceTrpSelection:]";
      v57 = 2048;
      *v58 = v42;
      *&v58[8] = 2112;
      *&v58[10] = v43;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%s Not running EP selection logic, num EPs: %lu _endpointAnalyzer %@", buf, 0x20u);
    }

LABEL_31:
    v36 = 0;
    v35 = 0;
    goto LABEL_34;
  }

  relaxedEndpointerCache = self->_relaxedEndpointerCache;
  v38 = CSLogCategoryRequest;
  if (!relaxedEndpointerCache)
  {
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v56 = "[CSTrpTcuMapper processTRPWithId:withSpeechPackage:enforceTrpSelection:]";
      _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%s Got final TCU package before relaxEP fire !", buf, 0xCu);
    }

    goto LABEL_31;
  }

  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v56 = "[CSTrpTcuMapper processTRPWithId:withSpeechPackage:enforceTrpSelection:]";
    v57 = 2112;
    *v58 = v8;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%s Associating RelaxEP with trpId: %@", buf, 0x16u);
    relaxedEndpointerCache = self->_relaxedEndpointerCache;
  }

  [(CSAttSiriCachedEndpointInfo *)relaxedEndpointerCache setTrpID:v8];
  v36 = [(CSAttSiriCachedEndpointInfo *)self->_relaxedEndpointerCache endpointerMetrics];
  v35 = 1;
LABEL_34:
  v44 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v56 = "[CSTrpTcuMapper processTRPWithId:withSpeechPackage:enforceTrpSelection:]";
    v57 = 1024;
    *v58 = v35;
    *&v58[4] = 2112;
    *&v58[6] = v36;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%s foundEndpoint:%u, matchingEndpointerMetrics:%@", buf, 0x1Cu);
  }

  return v36;
}

- (id)getMatchingRelaxedEPMetricsForTrp:(id)a3
{
  v4 = a3;
  relaxedEndpointerCache = self->_relaxedEndpointerCache;
  v6 = CSLogCategoryRequest;
  if (relaxedEndpointerCache)
  {
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[CSTrpTcuMapper getMatchingRelaxedEPMetricsForTrp:]";
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Associating RelaxEP with trpId: %@", &v10, 0x16u);
      relaxedEndpointerCache = self->_relaxedEndpointerCache;
    }

    [(CSAttSiriCachedEndpointInfo *)relaxedEndpointerCache setTrpID:v4];
    v7 = [(CSAttSiriCachedEndpointInfo *)self->_relaxedEndpointerCache endpointerMetrics];
  }

  else
  {
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[CSTrpTcuMapper getMatchingRelaxedEPMetricsForTrp:]";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Got final TCU package before relaxEP fire !", &v10, 0xCu);
    }

    v7 = 0;
  }

  v8 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[CSTrpTcuMapper getMatchingRelaxedEPMetricsForTrp:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s matchingEndpointerMetrics:%@", &v10, 0x16u);
  }

  return v7;
}

- (void)processTCUFinalizedForTrpId:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSAttSiriCachedEndpointInfo *)self->_relaxedEndpointerCache trpID];
  v9 = [v8 isEqualToString:v6];

  if (v9)
  {
    [(CSAttSiriCachedEndpointInfo *)self->_relaxedEndpointerCache endpointTime];
    v11 = v10;
    v12 = [(CSAttSiriCachedEndpointInfo *)self->_relaxedEndpointerCache endpointerMetrics];
    v13 = 1;
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = self->_hardEndpointerCache;
    v12 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    v11 = 0.0;
    if (v12)
    {
      v15 = *v24;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v14);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          v18 = [v17 trpID];
          v19 = [v18 isEqualToString:v6];

          if (v19)
          {
            [v17 endpointTime];
            v11 = v20;
            v12 = [v17 endpointerMetrics];
            v13 = 1;
            goto LABEL_13;
          }
        }

        v12 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_13:
  }

  [(CSTrpTcuMapper *)self _resetEndpointCaches];
  v21 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v28 = "[CSTrpTcuMapper processTCUFinalizedForTrpId:withCompletion:]";
    v29 = 2112;
    v30 = v6;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s Clear EP caches for finalized TRPId: %@", buf, 0x16u);
  }

  if ((v13 & 1) == 0)
  {
    v22 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[CSTrpTcuMapper processTCUFinalizedForTrpId:withCompletion:]";
      v29 = 2112;
      v30 = v6;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s Unable to find EP for finalized TRPId: %@", buf, 0x16u);
      if (!v7)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  if (v7)
  {
LABEL_19:
    v7[2](v7, v13, v12, v11);
  }

LABEL_20:
}

- (id)getSelectedTrpIdForEndpointEvent:(double)a3 withMetrics:(id)a4 OfType:(int64_t)a5
{
  v8 = a4;
  v9 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    WeakRetained = objc_loadWeakRetained(&self->_eagerResultAnalyzer);
    v31 = 136315906;
    v32 = "[CSTrpTcuMapper getSelectedTrpIdForEndpointEvent:withMetrics:OfType:]";
    v33 = 2048;
    v34 = a5;
    v35 = 2048;
    v36 = a3;
    v37 = 2112;
    v38 = *&WeakRetained;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Received EP of type %ld at time %f _eagerResultAnalyzer:%@", &v31, 0x2Au);
  }

  if (a5 != 1)
  {
    if (a5 == 2)
    {
      [(CSTrpTcuMapper *)self _cacheRelaxedEndPointerMetric:v8 withMetrics:a3];
    }

LABEL_6:
    v12 = 0;
    goto LABEL_20;
  }

  [(CSTrpTcuMapper *)self _cacheHardEndPointerMetric:v8 withMetrics:a3];
  if (![(NSMutableDictionary *)self->_trpIdToRCMap count])
  {
    v28 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136315138;
      v32 = "[CSTrpTcuMapper getSelectedTrpIdForEndpointEvent:withMetrics:OfType:]";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s No TCUs yet", &v31, 0xCu);
    }

    goto LABEL_6;
  }

  v13 = [(NSMutableDictionary *)self->_trpIdToRCMap keysSortedByValueUsingComparator:&stru_100250400];
  [v13 firstObject];
  v14 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  v15 = [(NSMutableDictionary *)self->_trpIdToRCMap objectForKeyedSubscript:*&v14];
  [CSAttSiriSpeechPackageHelper getLastTokenEndTimeFromSpeechPackage:v15];
  v17 = v16 * 1000.0;

  v18 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    trpIdToRCMap = self->_trpIdToRCMap;
    v20 = v18;
    v21 = objc_loadWeakRetained(&self->_eagerResultAnalyzer);
    v31 = 136315906;
    v32 = "[CSTrpTcuMapper getSelectedTrpIdForEndpointEvent:withMetrics:OfType:]";
    v33 = 2112;
    v34 = *&v14;
    v35 = 2112;
    v36 = *&trpIdToRCMap;
    v37 = 2112;
    v38 = *&v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s Trying RC acceptance for trpId %@ map %@ with _eagerResultAnalyzer:%@", &v31, 0x2Au);
  }

  v22 = objc_loadWeakRetained(&self->_eagerResultAnalyzer);
  v23 = [v22 shouldAcceptEagerResultForDurationSync:v8 withEndpointerMetrics:v17];

  if (v23)
  {
    v24 = [(NSMutableArray *)self->_hardEndpointerCache lastObject];
    [v24 setTrpID:*&v14];
    v25 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
      [v24 endpointTime];
      v31 = 136315906;
      v32 = "[CSTrpTcuMapper getSelectedTrpIdForEndpointEvent:withMetrics:OfType:]";
      v33 = 2048;
      v34 = v27;
      v35 = 2112;
      v36 = v14;
      v37 = 2048;
      v38 = v17;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s Associating EP at time: %f with trpId: %@ with RCTime: %f", &v31, 0x2Au);
    }

    v12 = *&v14;
  }

  else
  {
    v29 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136315650;
      v32 = "[CSTrpTcuMapper getSelectedTrpIdForEndpointEvent:withMetrics:OfType:]";
      v33 = 2112;
      v34 = *&v14;
      v35 = 2048;
      v36 = v17;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s TRPId %@ with duration %f not accepted !", &v31, 0x20u);
    }

    v12 = 0;
  }

LABEL_20:

  return v12;
}

- (CSTrpTcuMapper)initWithQueue:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = CSTrpTcuMapper;
  v6 = [(CSTrpTcuMapper *)&v14 init];
  if (v6)
  {
    v7 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v16 = "[CSTrpTcuMapper initWithQueue:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
    }

    v8 = +[NSMutableDictionary dictionary];
    trpIdToRCMap = v6->_trpIdToRCMap;
    v6->_trpIdToRCMap = v8;

    v10 = +[NSMutableArray array];
    hardEndpointerCache = v6->_hardEndpointerCache;
    v6->_hardEndpointerCache = v10;

    relaxedEndpointerCache = v6->_relaxedEndpointerCache;
    v6->_relaxedEndpointerCache = 0;

    objc_storeStrong(&v6->_queue, a3);
  }

  return v6;
}

@end