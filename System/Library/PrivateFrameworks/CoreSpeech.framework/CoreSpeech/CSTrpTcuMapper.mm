@interface CSTrpTcuMapper
- (CSEagerResultAnalyzer)eagerResultAnalyzer;
- (CSTrpTcuMapper)initWithQueue:(id)queue;
- (id)getMatchingRelaxedEPMetricsForTrp:(id)trp;
- (id)getSelectedTrpIdForEndpointEvent:(double)event withMetrics:(id)metrics OfType:(int64_t)type;
- (id)processTRPWithId:(id)id withSpeechPackage:(id)package enforceTrpSelection:(BOOL)selection;
- (void)_cacheHardEndPointerMetric:(double)metric withMetrics:(id)metrics;
- (void)_cacheRelaxedEndPointerMetric:(double)metric withMetrics:(id)metrics;
- (void)_resetEndpointCaches;
- (void)processTCUFinalizedForTrpId:(id)id withCompletion:(id)completion;
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

- (void)_cacheRelaxedEndPointerMetric:(double)metric withMetrics:(id)metrics
{
  metricsCopy = metrics;
  v7 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "[CSTrpTcuMapper _cacheRelaxedEndPointerMetric:withMetrics:]";
    v12 = 2048;
    metricCopy = metric;
    v14 = 2112;
    v15 = metricsCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Caching Relaxed EndpointInfo at time:%f relaxedendpointerMetrics:%@", &v10, 0x20u);
  }

  v8 = objc_alloc_init(CSAttSiriCachedEndpointInfo);
  [(CSAttSiriCachedEndpointInfo *)v8 setEndpointTime:metric];
  [(CSAttSiriCachedEndpointInfo *)v8 setEndpointerMetrics:metricsCopy];
  relaxedEndpointerCache = self->_relaxedEndpointerCache;
  self->_relaxedEndpointerCache = v8;
}

- (void)_cacheHardEndPointerMetric:(double)metric withMetrics:(id)metrics
{
  metricsCopy = metrics;
  v7 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[CSTrpTcuMapper _cacheHardEndPointerMetric:withMetrics:]";
    v11 = 2048;
    metricCopy = metric;
    v13 = 2112;
    v14 = metricsCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Caching Hard EndpointInfo at time:%f hardendpointerMetrics:%@", &v9, 0x20u);
  }

  v8 = objc_alloc_init(CSAttSiriCachedEndpointInfo);
  [(CSAttSiriCachedEndpointInfo *)v8 setEndpointTime:metric];
  [(CSAttSiriCachedEndpointInfo *)v8 setEndpointerMetrics:metricsCopy];
  [(NSMutableArray *)self->_hardEndpointerCache addObject:v8];
}

- (id)processTRPWithId:(id)id withSpeechPackage:(id)package enforceTrpSelection:(BOOL)selection
{
  selectionCopy = selection;
  idCopy = id;
  packageCopy = package;
  [CSAttSiriSpeechPackageHelper getLastTokenEndTimeFromSpeechPackage:packageCopy];
  v11 = v10;
  v50 = idCopy;
  [(NSMutableDictionary *)self->_trpIdToRCMap setObject:packageCopy forKey:idCopy];
  v12 = &CSLogCategoryRequest;
  if (([packageCopy isFinal] & 1) == 0 && !selectionCopy)
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
          v46 = packageCopy;
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
              endpointerMetrics = [v19 endpointerMetrics];
              v27 = [v25 shouldAcceptEagerResultForDurationSync:endpointerMetrics withEndpointerMetrics:v17];

              if (v27)
              {
                lastObject = [(NSMutableArray *)self->_hardEndpointerCache lastObject];
                [v19 setTrpID:v50];
                v12 = v20;
                v29 = *v20;
                if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
                {
                  v30 = v29;
                  [lastObject endpointTime];
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

                endpointerMetrics2 = [v19 endpointerMetrics];

                v16 = 1;
                v49 = endpointerMetrics2;
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
          packageCopy = v46;
          endpointerMetrics3 = v49;
        }

        else
        {
          endpointerMetrics3 = 0;
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
    endpointerMetrics3 = 0;
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
    *v58 = idCopy;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%s Associating RelaxEP with trpId: %@", buf, 0x16u);
    relaxedEndpointerCache = self->_relaxedEndpointerCache;
  }

  [(CSAttSiriCachedEndpointInfo *)relaxedEndpointerCache setTrpID:idCopy];
  endpointerMetrics3 = [(CSAttSiriCachedEndpointInfo *)self->_relaxedEndpointerCache endpointerMetrics];
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
    *&v58[6] = endpointerMetrics3;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%s foundEndpoint:%u, matchingEndpointerMetrics:%@", buf, 0x1Cu);
  }

  return endpointerMetrics3;
}

- (id)getMatchingRelaxedEPMetricsForTrp:(id)trp
{
  trpCopy = trp;
  relaxedEndpointerCache = self->_relaxedEndpointerCache;
  v6 = CSLogCategoryRequest;
  if (relaxedEndpointerCache)
  {
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[CSTrpTcuMapper getMatchingRelaxedEPMetricsForTrp:]";
      v12 = 2112;
      v13 = trpCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Associating RelaxEP with trpId: %@", &v10, 0x16u);
      relaxedEndpointerCache = self->_relaxedEndpointerCache;
    }

    [(CSAttSiriCachedEndpointInfo *)relaxedEndpointerCache setTrpID:trpCopy];
    endpointerMetrics = [(CSAttSiriCachedEndpointInfo *)self->_relaxedEndpointerCache endpointerMetrics];
  }

  else
  {
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[CSTrpTcuMapper getMatchingRelaxedEPMetricsForTrp:]";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Got final TCU package before relaxEP fire !", &v10, 0xCu);
    }

    endpointerMetrics = 0;
  }

  v8 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[CSTrpTcuMapper getMatchingRelaxedEPMetricsForTrp:]";
    v12 = 2112;
    v13 = endpointerMetrics;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s matchingEndpointerMetrics:%@", &v10, 0x16u);
  }

  return endpointerMetrics;
}

- (void)processTCUFinalizedForTrpId:(id)id withCompletion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  trpID = [(CSAttSiriCachedEndpointInfo *)self->_relaxedEndpointerCache trpID];
  v9 = [trpID isEqualToString:idCopy];

  if (v9)
  {
    [(CSAttSiriCachedEndpointInfo *)self->_relaxedEndpointerCache endpointTime];
    v11 = v10;
    endpointerMetrics = [(CSAttSiriCachedEndpointInfo *)self->_relaxedEndpointerCache endpointerMetrics];
    v13 = 1;
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = self->_hardEndpointerCache;
    endpointerMetrics = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    v11 = 0.0;
    if (endpointerMetrics)
    {
      v15 = *v24;
      while (2)
      {
        for (i = 0; i != endpointerMetrics; i = i + 1)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v14);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          trpID2 = [v17 trpID];
          v19 = [trpID2 isEqualToString:idCopy];

          if (v19)
          {
            [v17 endpointTime];
            v11 = v20;
            endpointerMetrics = [v17 endpointerMetrics];
            v13 = 1;
            goto LABEL_13;
          }
        }

        endpointerMetrics = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (endpointerMetrics)
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
    v30 = idCopy;
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
      v30 = idCopy;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s Unable to find EP for finalized TRPId: %@", buf, 0x16u);
      if (!completionCopy)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  if (completionCopy)
  {
LABEL_19:
    completionCopy[2](completionCopy, v13, endpointerMetrics, v11);
  }

LABEL_20:
}

- (id)getSelectedTrpIdForEndpointEvent:(double)event withMetrics:(id)metrics OfType:(int64_t)type
{
  metricsCopy = metrics;
  v9 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    WeakRetained = objc_loadWeakRetained(&self->_eagerResultAnalyzer);
    v31 = 136315906;
    v32 = "[CSTrpTcuMapper getSelectedTrpIdForEndpointEvent:withMetrics:OfType:]";
    v33 = 2048;
    typeCopy = type;
    v35 = 2048;
    eventCopy = event;
    v37 = 2112;
    v38 = *&WeakRetained;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Received EP of type %ld at time %f _eagerResultAnalyzer:%@", &v31, 0x2Au);
  }

  if (type != 1)
  {
    if (type == 2)
    {
      [(CSTrpTcuMapper *)self _cacheRelaxedEndPointerMetric:metricsCopy withMetrics:event];
    }

LABEL_6:
    v12 = 0;
    goto LABEL_20;
  }

  [(CSTrpTcuMapper *)self _cacheHardEndPointerMetric:metricsCopy withMetrics:event];
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
    typeCopy = *&v14;
    v35 = 2112;
    eventCopy = *&trpIdToRCMap;
    v37 = 2112;
    v38 = *&v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s Trying RC acceptance for trpId %@ map %@ with _eagerResultAnalyzer:%@", &v31, 0x2Au);
  }

  v22 = objc_loadWeakRetained(&self->_eagerResultAnalyzer);
  v23 = [v22 shouldAcceptEagerResultForDurationSync:metricsCopy withEndpointerMetrics:v17];

  if (v23)
  {
    lastObject = [(NSMutableArray *)self->_hardEndpointerCache lastObject];
    [lastObject setTrpID:*&v14];
    v25 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
      [lastObject endpointTime];
      v31 = 136315906;
      v32 = "[CSTrpTcuMapper getSelectedTrpIdForEndpointEvent:withMetrics:OfType:]";
      v33 = 2048;
      typeCopy = v27;
      v35 = 2112;
      eventCopy = v14;
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
      typeCopy = *&v14;
      v35 = 2048;
      eventCopy = v17;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s TRPId %@ with duration %f not accepted !", &v31, 0x20u);
    }

    v12 = 0;
  }

LABEL_20:

  return v12;
}

- (CSTrpTcuMapper)initWithQueue:(id)queue
{
  queueCopy = queue;
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

    objc_storeStrong(&v6->_queue, queue);
  }

  return v6;
}

@end