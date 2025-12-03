@interface LuceneContextEngine
+ (unint64_t)queryTypeForRequest:(id)request;
+ (void)initialize;
- (BOOL)disabled;
- (BOOL)fallbackModeEnabled;
- (LuceneContextEngine)initWithAssets:(id)assets;
- (id)ancestorsForTopics:(id)topics;
- (id)debugStatus;
- (id)groupResponses:(id)responses;
- (id)indexId;
- (id)warmUpDatPath;
- (void)dealloc;
- (void)findResultsForRequest:(id)request withReply:(id)reply;
- (void)updateConfigurationWithConfig:(id)config;
@end

@implementation LuceneContextEngine

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = os_log_create("com.apple.siri.context.service", "LuceneEngine");
    v3 = qword_100557168;
    qword_100557168 = v2;

    v4 = +[TokenInfo ignoreUnknownTokenSentinel];
    v5 = qword_100557170;
    qword_100557170 = v4;

    v6 = +[TokenInfo ignoreStopwordTokenSentinel];
    v7 = qword_100557178;
    qword_100557178 = v6;

    v8 = ContextKitErrorDomain;
    v9 = [NSDictionary dictionaryWithObject:@"Constellation unavailable" forKey:NSLocalizedFailureReasonErrorKey];
    v10 = [NSError errorWithDomain:v8 code:7 userInfo:v9];
    v11 = qword_100557180;
    qword_100557180 = v10;

    v12 = [NSDictionary dictionaryWithObject:@"groupResponses called with empty responses object" forKey:NSLocalizedFailureReasonErrorKey];
    v13 = [NSError errorWithDomain:v8 code:10 userInfo:v12];
    v14 = qword_100557188;
    qword_100557188 = v13;

    v17 = [NSDictionary dictionaryWithObject:@"groupResponses called with grouping requests unavailable" forKey:NSLocalizedFailureReasonErrorKey];
    v15 = [NSError errorWithDomain:v8 code:7 userInfo:v17];
    v16 = qword_100557190;
    qword_100557190 = v15;
  }
}

- (LuceneContextEngine)initWithAssets:(id)assets
{
  assetsCopy = assets;
  v18.receiver = self;
  v18.super_class = LuceneContextEngine;
  v6 = [(LuceneContextEngine *)&v18 init];
  v7 = v6;
  if (v6)
  {
    pthread_mutex_init(&v6->_indexLock, 0);
    v8 = +[OrgApacheLuceneUtilStringHelper randomId];
    objc_storeStrong(&v7->_assets, assets);
    v9 = qword_100557168;
    if (os_log_type_enabled(qword_100557168, OS_LOG_TYPE_DEBUG))
    {
      sub_10029F58C(v9, v7);
    }

    [(ContextEngine *)v7 updateConfiguration];
    objc_initWeak(&location, v7);
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_10029C604;
    v15 = &unk_100483BE0;
    objc_copyWeak(&v16, &location);
    v10 = objc_retainBlock(&v12);
    [(CTKAssetsProtocol *)v7->_assets registerIndexChangeHandler:v10, v12, v13, v14, v15];
    [ContextConfiguration registerUpdateHandler:v10];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)dealloc
{
  sub_1002BD4F4(self);
  sub_1002BD554(self);
  pthread_mutex_destroy(&self->_indexLock);
  v3.receiver = self;
  v3.super_class = LuceneContextEngine;
  [(LuceneContextEngine *)&v3 dealloc];
}

- (void)updateConfigurationWithConfig:(id)config
{
  configCopy = config;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v29.receiver = selfCopy;
  v29.super_class = LuceneContextEngine;
  [(ContextEngine *)&v29 updateConfigurationWithConfig:configCopy];
  luceneIndexPath = [configCopy luceneIndexPath];
  v7 = [luceneIndexPath length];
  if (v7)
  {
    luceneIndexPath2 = [configCopy luceneIndexPath];
  }

  else
  {
    luceneIndexPath2 = 0;
  }

  objc_storeStrong(&selfCopy->_overrideIndexPath, luceneIndexPath2);
  if (v7)
  {
  }

  selfCopy->_minFileSizeForNSDataMMap = [configCopy luceneMinFileSizeForNSDataMMap];
  selfCopy->_nsDataBufferSize = [configCopy debugNSDataBufferSize];
  nGramBreakingSeparators = [configCopy nGramBreakingSeparators];

  if (nGramBreakingSeparators)
  {
    nGramBreakingSeparators2 = [configCopy nGramBreakingSeparators];
    trim = [nGramBreakingSeparators2 trim];
    v12 = [NSCharacterSet characterSetWithCharactersInString:trim];
    nGramBreakingSeparators = selfCopy->_nGramBreakingSeparators;
    selfCopy->_nGramBreakingSeparators = v12;
  }

  allowedNGramSeparators = [configCopy allowedNGramSeparators];

  if (allowedNGramSeparators)
  {
    allowedNGramSeparators2 = [configCopy allowedNGramSeparators];
    trim2 = [allowedNGramSeparators2 trim];

    if ([trim2 isEmpty])
    {
      v17 = 0;
    }

    else
    {
      v17 = [NSCharacterSet characterSetWithCharactersInString:trim2];
    }

    allowedNGramSeparators = selfCopy->_allowedNGramSeparators;
    selfCopy->_allowedNGramSeparators = v17;
  }

  quotedTokenCharacterSet = [configCopy quotedTokenCharacterSet];

  if (quotedTokenCharacterSet)
  {
    quotedTokenCharacterSet2 = [configCopy quotedTokenCharacterSet];
    trim3 = [quotedTokenCharacterSet2 trim];
    v22 = [NSCharacterSet characterSetWithCharactersInString:trim3];
    quotedTokenCharacterSet = selfCopy->_quotedTokenCharacterSet;
    selfCopy->_quotedTokenCharacterSet = v22;
  }

  partialNGramCharacterSet = [configCopy partialNGramCharacterSet];

  if (partialNGramCharacterSet)
  {
    partialNGramCharacterSet2 = [configCopy partialNGramCharacterSet];
    trim4 = [partialNGramCharacterSet2 trim];
    v27 = [NSCharacterSet characterSetWithCharactersInString:trim4];
    partialNGramCharacterSet = selfCopy->_partialNGramCharacterSet;
    selfCopy->_partialNGramCharacterSet = v27;
  }

  sub_10029CA0C(selfCopy);
  objc_sync_exit(selfCopy);
}

- (void)findResultsForRequest:(id)request withReply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  reader = [(LuceneContextEngine *)self reader];

  if (reader)
  {
    ++self->_requestCount;
    text = [requestCopy text];
    if (text)
    {
      v10 = text;
      text2 = [requestCopy text];
      v12 = [text2 length];

      if (!v12)
      {
        [requestCopy setText:0];
      }
    }

    text3 = [requestCopy text];
    if (text3)
    {
    }

    else if ([requestCopy textIsRaw])
    {
      [requestCopy setTextIsRaw:0];
    }

    v19 = mach_absolute_time();
    desiredLanguageTags = [requestCopy desiredLanguageTags];

    if (!desiredLanguageTags)
    {
      config = [(ContextEngine *)self config];
      desiredLanguageTags2 = [config desiredLanguageTags];
      [requestCopy setDesiredLanguageTags:desiredLanguageTags2];
    }

    v23 = objc_autoreleasePoolPush();
    pthread_mutex_lock(&self->_indexLock);
    v24 = [[LuceneContextRequest alloc] initWithEngine:self forRequest:requestCopy];
    pthread_mutex_unlock(&self->_indexLock);
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_10029DDC0;
    v28 = &unk_100483C48;
    v32 = v19;
    v31 = replyCopy;
    v29 = requestCopy;
    selfCopy = self;
    [(LuceneContextRequest *)v24 findResultsWithReply:&v25];
    [(LuceneContextRequest *)v24 discard:v25];

    objc_autoreleasePoolPop(v23);
  }

  else
  {
    v14 = [CKContextResponse alloc];
    v15 = ContextKitErrorDomain;
    v16 = [NSDictionary dictionaryWithObject:@"Index is unavailable" forKey:NSLocalizedFailureReasonErrorKey];
    v17 = [NSError errorWithDomain:v15 code:1 userInfo:v16];
    v18 = [v14 initWithError:v17 requestType:{objc_msgSend(requestCopy, "type")}];
    (*(replyCopy + 2))(replyCopy, v18);
  }
}

+ (unint64_t)queryTypeForRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy textIsRaw])
  {
    v4 = 3;
  }

  else
  {
    text = [requestCopy text];

    if (text)
    {
      v4 = 2;
    }

    else
    {
      v6 = [requestCopy url];

      v4 = v6 != 0;
    }
  }

  return v4;
}

- (id)debugStatus
{
  effectiveIndexPath = self->_effectiveIndexPath;
  indexId = [(LuceneContextEngine *)self indexId];
  v4 = [NSString stringWithFormat:@"effectiveIndexPath: %@\neffectiveIndexId: %@\n", effectiveIndexPath, indexId];

  return v4;
}

- (id)indexId
{
  effectiveIndexId = self->_effectiveIndexId;
  if (effectiveIndexId)
  {
    v4 = effectiveIndexId;
  }

  else
  {
    if (self->_reader)
    {
      v4 = @"unknown";
    }

    else
    {
      v4 = @"unsupported";
    }
  }

  return v4;
}

- (BOOL)disabled
{
  pthread_mutex_lock(&self->_indexLock);
  v3 = !self->_effectiveIndexId && !self->_reader || self->_effectiveIndexPath == 0;
  pthread_mutex_unlock(&self->_indexLock);
  return v3;
}

- (BOOL)fallbackModeEnabled
{
  indexId = [(LuceneContextEngine *)self indexId];
  v3 = [@"fallback" isEqualToString:indexId];

  return v3;
}

- (id)warmUpDatPath
{
  effectiveIndexPath = self->_effectiveIndexPath;
  if (effectiveIndexPath)
  {
    effectiveIndexPath = [effectiveIndexPath stringByAppendingPathComponent:@"warmup.dat"];
    v2 = vars8;
  }

  return effectiveIndexPath;
}

- (id)ancestorsForTopics:(id)topics
{
  topicsCopy = topics;
  if (self->_constellation)
  {
    v5 = -[JavaUtilArrayList initWithInt:]([JavaUtilArrayList alloc], "initWithInt:", [topicsCopy count]);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v30 = topicsCopy;
    v6 = topicsCopy;
    v7 = [v6 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v46;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v46 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if (*(*(&v45 + 1) + 8 * i))
          {
            [(JavaUtilArrayList *)v5 addWithId:?];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v8);
    }

    constellation = self->_constellation;
    newQIDMapper = [(ComAppleContextkitCategoriesConstellation *)constellation newQIDMapper];
    v29 = v5;
    v13 = [(ComAppleContextkitCategoriesConstellation *)constellation ancestorCategoriesForQIDs:v5 usingMapper:newQIDMapper];

    v33 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v13, "size")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v28 = v13;
    obj = [v13 entrySet];
    v34 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v34)
    {
      v32 = *v42;
      do
      {
        for (j = 0; j != v34; j = j + 1)
        {
          if (*v42 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v41 + 1) + 8 * j);
          getKey = [v15 getKey];
          getValue = [v15 getValue];
          v17 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(getValue, "size")}];
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v35 = getValue;
          entrySet = [getValue entrySet];
          v19 = [entrySet countByEnumeratingWithState:&v37 objects:v49 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v38;
            do
            {
              for (k = 0; k != v20; k = k + 1)
              {
                if (*v38 != v21)
                {
                  objc_enumerationMutation(entrySet);
                }

                v23 = *(*(&v37 + 1) + 8 * k);
                getKey2 = [v23 getKey];
                getValue2 = [v23 getValue];
                v26 = +[CKContextCountedString string:withCount:](CKContextCountedString, "string:withCount:", getKey2, [getValue2 intValue]);

                [v17 addObject:v26];
              }

              v20 = [entrySet countByEnumeratingWithState:&v37 objects:v49 count:16];
            }

            while (v20);
          }

          [v33 setObject:v17 forKey:getKey];
        }

        v34 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v34);
    }

    topicsCopy = v30;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (id)groupResponses:(id)responses
{
  responsesCopy = responses;
  if (![responsesCopy count])
  {
    v63 = +[MetricsLogging instance];
    v64 = qword_100557188;
LABEL_68:
    indexId = [(LuceneContextEngine *)self indexId];
    [v63 recordQueryEventWithLuceneResultCount:0 error:v64 requestType:17 indexId:indexId];

    v66 = 0;
    goto LABEL_76;
  }

  constellation = self->_constellation;
  if (!constellation)
  {
    v63 = +[MetricsLogging instance];
    v64 = qword_100557180;
    goto LABEL_68;
  }

  newGroupingRequest = [(ComAppleContextkitCategoriesConstellation *)constellation newGroupingRequest];
  config = [(ContextEngine *)self config];
  [newGroupingRequest setMaxTopicDistance:{objc_msgSend(config, "constellationMaxTopicDistance")}];

  config2 = [(ContextEngine *)self config];
  [newGroupingRequest setMaxOverallTopics:{objc_msgSend(config2, "constellationMaxOverallTopics")}];

  v102 = newGroupingRequest;
  if (newGroupingRequest)
  {
    selfCopy = self;
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v90 = responsesCopy;
    obj = responsesCopy;
    v9 = [obj countByEnumeratingWithState:&v131 objects:v141 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v132;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v132 != v11)
          {
            objc_enumerationMutation(obj);
          }

          results = [*(*(&v131 + 1) + 8 * i) results];
          v14 = -[JavaUtilArrayList initWithInt:]([JavaUtilArrayList alloc], "initWithInt:", [obj count]);
          v127 = 0u;
          v128 = 0u;
          v129 = 0u;
          v130 = 0u;
          v15 = results;
          v16 = [v15 countByEnumeratingWithState:&v127 objects:v140 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v128;
            do
            {
              for (j = 0; j != v17; j = j + 1)
              {
                if (*v128 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                topicId = [*(*(&v127 + 1) + 8 * j) topicId];
                [(JavaUtilArrayList *)v14 addWithId:topicId];
              }

              v17 = [v15 countByEnumeratingWithState:&v127 objects:v140 count:16];
            }

            while (v17);
          }

          [v102 addTopicGroup:v14];
        }

        v10 = [obj countByEnumeratingWithState:&v131 objects:v141 count:16];
      }

      while (v10);
    }

    v21 = objc_alloc_init(NSMutableArray);
    overallCategories = [v102 overallCategories];
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v23 = [overallCategories countByEnumeratingWithState:&v123 objects:v139 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v124;
      do
      {
        for (k = 0; k != v24; k = k + 1)
        {
          if (*v124 != v25)
          {
            objc_enumerationMutation(overallCategories);
          }

          v27 = *(*(&v123 + 1) + 8 * k);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = v27;
            v29 = [[CKContextResult alloc] initWithTitle:v28[2] query:0 url:0 category:0];
            [v29 setTopicId:v28[1]];

            [v21 addObject:v29];
          }
        }

        v24 = [overallCategories countByEnumeratingWithState:&v123 objects:v139 count:16];
      }

      while (v24);
    }

    v30 = selfCopy;
    config3 = [(ContextEngine *)selfCopy config];
    desiredLanguageTags = [config3 desiredLanguageTags];
    v33 = [desiredLanguageTags containsObject:@"en"];

    v91 = overallCategories;
    v92 = v21;
    if (v33)
    {
      v34 = objc_alloc_init(NSMutableDictionary);
      v119 = 0u;
      v120 = 0u;
      v121 = 0u;
      v122 = 0u;
      v94 = obj;
      v98 = [v94 countByEnumeratingWithState:&v119 objects:v138 count:16];
      if (v98)
      {
        v96 = *v120;
        do
        {
          v35 = 0;
          do
          {
            if (*v120 != v96)
            {
              objc_enumerationMutation(v94);
            }

            v100 = v35;
            v36 = *(*(&v119 + 1) + 8 * v35);
            v115 = 0u;
            v116 = 0u;
            v117 = 0u;
            v118 = 0u;
            level1Topics = [v36 level1Topics];
            v38 = [level1Topics countByEnumeratingWithState:&v115 objects:v137 count:16];
            if (v38)
            {
              v39 = v38;
              v40 = *v116;
              do
              {
                for (m = 0; m != v39; m = m + 1)
                {
                  if (*v116 != v40)
                  {
                    objc_enumerationMutation(level1Topics);
                  }

                  v42 = *(*(&v115 + 1) + 8 * m);
                  topicId2 = [v42 topicId];
                  v44 = [topicId2 isEqualToString:@"DH1009"];

                  if ((v44 & 1) == 0)
                  {
                    v45 = [v34 objectForKeyedSubscript:v42];
                    v46 = v45;
                    if (v45)
                    {
                      v47 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v45 intValue] + 1);
                      [v34 setObject:v47 forKey:v42];
                    }

                    else
                    {
                      [v34 setObject:&off_1004A9ED8 forKey:v42];
                    }
                  }
                }

                v39 = [level1Topics countByEnumeratingWithState:&v115 objects:v137 count:16];
              }

              while (v39);
            }

            v35 = v100 + 1;
          }

          while ((v100 + 1) != v98);
          v98 = [v94 countByEnumeratingWithState:&v119 objects:v138 count:16];
        }

        while (v98);
      }

      v48 = [v34 keysSortedByValueUsingSelector:"compare:"];
      v21 = v92;
      [v92 addObjectsFromArray:v48];

      v30 = selfCopy;
      overallCategories = v91;
    }

    v49 = objc_alloc_init(NSMutableArray);
    groupingResults = [v102 groupingResults];
    if (groupingResults)
    {
      v89 = v49;
      v99 = objc_alloc_init(NSMutableDictionary);
      v111 = 0u;
      v112 = 0u;
      v113 = 0u;
      v114 = 0u;
      v88 = groupingResults;
      entrySet = [groupingResults entrySet];
      v101 = [entrySet countByEnumeratingWithState:&v111 objects:v136 count:16];
      if (v101)
      {
        v97 = *v112;
        do
        {
          for (n = 0; n != v101; n = n + 1)
          {
            if (*v112 != v97)
            {
              objc_enumerationMutation(entrySet);
            }

            v52 = *(*(&v111 + 1) + 8 * n);
            getKey = [v52 getKey];
            v54 = objc_alloc_init(CKContextItem);
            [v54 setTitle:getKey[2]];
            [v54 setTopicId:getKey[1]];
            getValue = [v52 getValue];
            v56 = objc_alloc_init(NSMutableArray);
            v107 = 0u;
            v108 = 0u;
            v109 = 0u;
            v110 = 0u;
            v57 = getValue;
            v58 = [v57 countByEnumeratingWithState:&v107 objects:v135 count:16];
            if (v58)
            {
              v59 = v58;
              v60 = *v108;
              do
              {
                for (ii = 0; ii != v59; ii = ii + 1)
                {
                  if (*v108 != v60)
                  {
                    objc_enumerationMutation(v57);
                  }

                  v62 = *(*(&v107 + 1) + 8 * ii);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v56 addObject:v62];
                  }
                }

                v59 = [v57 countByEnumeratingWithState:&v107 objects:v135 count:16];
              }

              while (v59);
            }

            [v99 setObject:v56 forKey:v54];
          }

          v101 = [entrySet countByEnumeratingWithState:&v111 objects:v136 count:16];
        }

        while (v101);
      }

      v104[0] = _NSConcreteStackBlock;
      v104[1] = 3221225472;
      v104[2] = sub_10029EFB0;
      v104[3] = &unk_100483C70;
      v105 = obj;
      v49 = v89;
      v106 = v89;
      [v99 enumerateKeysAndObjectsUsingBlock:v104];

      v21 = v92;
      v30 = selfCopy;
      overallCategories = v91;
      groupingResults = v88;
    }

    else
    {
      v76 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
      if (v76)
      {
        sub_10029F968(v76, v77, v78, v79, v80, v81, v82, v83);
      }
    }

    v66 = [[CKContextResponse alloc] initWithResults:v21 requestType:17];
    [v66 setLevel2Topics:v49];
    v84 = +[MetricsLogging instance];
    v85 = [v21 count];
    indexId2 = [(LuceneContextEngine *)v30 indexId];
    [v84 recordQueryEventWithLuceneResultCount:v85 error:0 requestType:17 indexId:indexId2];

    responsesCopy = v90;
  }

  else
  {
    v67 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
    if (v67)
    {
      sub_10029F9A4(v67, v68, v69, v70, v71, v72, v73, v74);
    }

    v21 = +[MetricsLogging instance];
    v75 = qword_100557190;
    overallCategories = [(LuceneContextEngine *)self indexId];
    [v21 recordQueryEventWithLuceneResultCount:0 error:v75 requestType:17 indexId:overallCategories];
    v66 = 0;
  }

LABEL_76:

  return v66;
}

@end