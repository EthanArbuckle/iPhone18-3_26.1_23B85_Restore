@interface MetricsLogging
+ (id)instance;
- (id)_init;
- (id)debugStatus;
- (void)_postInit;
- (void)_updateABGroupKey;
- (void)recordAssetInfo:(id)info;
- (void)recordFindResultsMsec:(double)msec queryType:(unint64_t)type requestType:(unint64_t)requestType indexId:(id)id;
- (void)recordInputLength:(unint64_t)length languageTag:(id)tag languageSupported:(BOOL)supported requestType:(unint64_t)type indexId:(id)id;
- (void)recordQueryEngagementWithUserInputLength:(unint64_t)length completionLength:(unint64_t)completionLength result:(id)result rank:(unint64_t)rank indexId:(id)id requestType:(unint64_t)type logType:(unint64_t)logType;
- (void)recordQueryEventWithLuceneResultCount:(unint64_t)count error:(id)error requestType:(unint64_t)type indexId:(id)id;
- (void)recordQueryLuceneMsec:(double)msec queryType:(unint64_t)type requestType:(unint64_t)requestType indexId:(id)id;
- (void)recordResultsShownWithUserInputLength:(unint64_t)length count:(unint64_t)count couldHaveShown:(unint64_t)shown topicIds:(id)ids serverOverride:(BOOL)override indexId:(id)id requestType:(unint64_t)type logType:(unint64_t)self0;
- (void)recordSlowFindResults:(BOOL)results requestType:(unint64_t)type indexId:(id)id coldEngine:(BOOL)engine;
- (void)recordTransactionSuccessfulWithUserInputLength:(unint64_t)length completionLength:(unint64_t)completionLength indexId:(id)id requestType:(unint64_t)type logType:(unint64_t)logType;
- (void)recordURLLookupSucceeded:(unint64_t)succeeded bundleId:(BOOL)id indexId:(id)indexId requestType:(unint64_t)type;
@end

@implementation MetricsLogging

- (id)_init
{
  v4.receiver = self;
  v4.super_class = MetricsLogging;
  v2 = [(MetricsLogging *)&v4 init];
  if (v2 && qword_1005570F8 != -1)
  {
    sub_10029443C();
  }

  return v2;
}

- (void)_postInit
{
  [(MetricsLogging *)self _updateABGroupKey];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100293208;
  v3[3] = &unk_100483968;
  v3[4] = self;
  [ContextConfiguration registerUpdateHandler:v3];
}

- (void)_updateABGroupKey
{
  v3 = objc_opt_new();
  [v3 appendFormat:@"default"];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = +[ContextConfiguration sharedInstance];
  matchedABGroups = [v4 matchedABGroups];

  v6 = [matchedABGroups countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(matchedABGroups);
        }

        [v3 appendFormat:@"_%@", *(*(&v10 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [matchedABGroups countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(MetricsLogging *)self setAbGroupLoggingKey:v3];
}

+ (id)instance
{
  if (qword_100557110 != -1)
  {
    sub_100294464();
  }

  v3 = qword_100557108;

  return v3;
}

- (void)recordFindResultsMsec:(double)msec queryType:(unint64_t)type requestType:(unint64_t)requestType indexId:(id)id
{
  idCopy = id;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    abGroupLoggingKey = [(MetricsLogging *)self abGroupLoggingKey];
    v13 = 134219010;
    msecCopy = msec;
    v15 = 2112;
    v16 = idCopy;
    v17 = 2112;
    v18 = abGroupLoggingKey;
    v19 = 2048;
    typeCopy = type;
    v21 = 2048;
    requestTypeCopy = requestType;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "recordFindResultsMsec:%f indexId:%@ ab:%@ queryType:%lu requestType:%li", &v13, 0x34u);
  }

  if (requestType == 15 || requestType == 1)
  {
    v11 = 104;
    if (type - 1 < 3)
    {
      v11 = 4 * (type - 1) + 108;
    }

    atomic_fetch_add((self + v11), 1u);
  }
}

- (void)recordQueryLuceneMsec:(double)msec queryType:(unint64_t)type requestType:(unint64_t)requestType indexId:(id)id
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    abGroupLoggingKey = [(MetricsLogging *)self abGroupLoggingKey];
    v12 = 134219010;
    msecCopy = msec;
    v14 = 2112;
    idCopy = id;
    v16 = 2112;
    v17 = abGroupLoggingKey;
    v18 = 2048;
    typeCopy = type;
    v20 = 2048;
    requestTypeCopy = requestType;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "recordQueryLuceneMsec:%f indexId:%@ ab:%@ queryType:%lu requestType:%li", &v12, 0x34u);
  }
}

- (void)recordInputLength:(unint64_t)length languageTag:(id)tag languageSupported:(BOOL)supported requestType:(unint64_t)type indexId:(id)id
{
  tagCopy = tag;
  idCopy = id;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    abGroupLoggingKey = [(MetricsLogging *)self abGroupLoggingKey];
    v16 = 134218754;
    lengthCopy = length;
    v18 = 2112;
    v19 = idCopy;
    v20 = 2112;
    v21 = abGroupLoggingKey;
    v22 = 2048;
    typeCopy = type;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "recordInputLength:%lu indexId:%@ ab:%@ requestType:%li", &v16, 0x2Au);
  }

  v14 = type == 15 || type == 1;
  if (v14 && !supported)
  {
    atomic_fetch_add(&self->countSafariLanguageNotSupported, 1u);
  }
}

- (void)recordQueryEventWithLuceneResultCount:(unint64_t)count error:(id)error requestType:(unint64_t)type indexId:(id)id
{
  errorCopy = error;
  idCopy = id;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    abGroupLoggingKey = [(MetricsLogging *)self abGroupLoggingKey];
    v13 = 134219010;
    countCopy = count;
    v15 = 2112;
    v16 = errorCopy;
    v17 = 2112;
    v18 = idCopy;
    v19 = 2112;
    v20 = abGroupLoggingKey;
    v21 = 2048;
    typeCopy = type;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "recordQueryEventWithLuceneResultCount:%lu error:%@, indexId:%@ ab:%@ requestType:%li", &v13, 0x34u);
  }

  if (type == 15 || type == 1)
  {
    atomic_fetch_add(&self->countSafariQueryEvents, 1u);
  }
}

- (void)recordResultsShownWithUserInputLength:(unint64_t)length count:(unint64_t)count couldHaveShown:(unint64_t)shown topicIds:(id)ids serverOverride:(BOOL)override indexId:(id)id requestType:(unint64_t)type logType:(unint64_t)self0
{
  overrideCopy = override;
  idsCopy = ids;
  idCopy = id;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    abGroupLoggingKey = [(MetricsLogging *)self abGroupLoggingKey];
    v21 = 134219778;
    lengthCopy = length;
    v23 = 2048;
    countCopy = count;
    v25 = 2048;
    shownCopy = shown;
    v27 = 1024;
    v28 = overrideCopy;
    v29 = 2112;
    v30 = idCopy;
    v31 = 2112;
    v32 = abGroupLoggingKey;
    v33 = 2048;
    typeCopy = type;
    v35 = 2048;
    logTypeCopy = logType;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "recordResultsShownWithUserInputLength:%lu count:%lu/%lu serverOverride:%i indexId:%@ ab:%@ requestType:%lu logType:%lu", &v21, 0x4Eu);

    if (logType)
    {
      goto LABEL_3;
    }

LABEL_5:
    if (type == 15)
    {
      atomic_fetch_add(&self->countSafariLikelyUnsolicitedResultsShownCalled, 1u);
      if (count)
      {
        atomic_fetch_add(&self->countSafariLikelyUnsolicitedResultsShownSomething, 1u);
        if (!length)
        {
          goto LABEL_3;
        }

        v19 = 88;
      }

      else
      {
        if (!shown)
        {
          if (!length)
          {
            goto LABEL_3;
          }

          v19 = 84;
          goto LABEL_22;
        }

        atomic_fetch_add(&self->countSafariLikelyUnsolicitedResultsShownSuppressed, 1u);
        if (!length)
        {
          goto LABEL_3;
        }

        v19 = 92;
      }

      v20 = 84;
    }

    else
    {
      if (type != 1)
      {
        goto LABEL_3;
      }

      atomic_fetch_add(&self->countSafariResultsShownCalled, 1u);
      if (count)
      {
        atomic_fetch_add(&self->countSafariResultsShownSomething, 1u);
        if (!length)
        {
          goto LABEL_3;
        }

        v19 = 48;
      }

      else
      {
        if (!shown)
        {
          if (!length)
          {
            goto LABEL_3;
          }

          v19 = 44;
          goto LABEL_22;
        }

        atomic_fetch_add(&self->countSafariResultsShownSuppressed, 1u);
        if (!length)
        {
          goto LABEL_3;
        }

        v19 = 52;
      }

      v20 = 44;
    }

    atomic_fetch_add((self + v20), 1u);
LABEL_22:
    atomic_fetch_add((self + v19), 1u);
    goto LABEL_3;
  }

  if (!logType)
  {
    goto LABEL_5;
  }

LABEL_3:
}

- (void)recordQueryEngagementWithUserInputLength:(unint64_t)length completionLength:(unint64_t)completionLength result:(id)result rank:(unint64_t)rank indexId:(id)id requestType:(unint64_t)type logType:(unint64_t)logType
{
  resultCopy = result;
  idCopy = id;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    abGroupLoggingKey = [(MetricsLogging *)self abGroupLoggingKey];
    v19 = 134219522;
    lengthCopy = length;
    v21 = 2048;
    completionLengthCopy = completionLength;
    v23 = 2048;
    rankCopy = rank;
    v25 = 2112;
    v26 = idCopy;
    v27 = 2112;
    v28 = abGroupLoggingKey;
    v29 = 2048;
    typeCopy = type;
    v31 = 2048;
    logTypeCopy = logType;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "recordQueryEngagementWithUserInputLength:%lu completionLength:%lu, rank:%lu, indexId:%@ ab:%@ requestType:%lu logType:%lu", &v19, 0x48u);
  }

  if (type == 15)
  {
    atomic_fetch_add(&self->countSafariLikelyUnsolicitedEngagements, 1u);
    if (length)
    {
      v17 = 96;
      goto LABEL_9;
    }
  }

  else if (type == 1)
  {
    atomic_fetch_add(&self->countSafariEngagements, 1u);
    if (length)
    {
      v17 = 56;
LABEL_9:
      atomic_fetch_add((self + v17), 1u);
    }
  }
}

- (void)recordTransactionSuccessfulWithUserInputLength:(unint64_t)length completionLength:(unint64_t)completionLength indexId:(id)id requestType:(unint64_t)type logType:(unint64_t)logType
{
  idCopy = id;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    abGroupLoggingKey = [(MetricsLogging *)self abGroupLoggingKey];
    v15 = 134219266;
    lengthCopy = length;
    v17 = 2048;
    completionLengthCopy = completionLength;
    v19 = 2112;
    v20 = idCopy;
    v21 = 2112;
    v22 = abGroupLoggingKey;
    v23 = 2048;
    typeCopy = type;
    v25 = 2048;
    logTypeCopy = logType;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "recordTransactionSuccessfulWithUserInputLength:%lu completionLength:%lu indexId:%@ ab:%@ requestType:%lu logType:%lu", &v15, 0x3Eu);
  }

  if (type == 15)
  {
    atomic_fetch_add(&self->countSafariLikelyUnsolicitedTransactionSuccessful, 1u);
    if (length)
    {
      v13 = 100;
      goto LABEL_9;
    }
  }

  else if (type == 1)
  {
    atomic_fetch_add(&self->countSafariTransactionSuccessful, 1u);
    if (length)
    {
      v13 = 60;
LABEL_9:
      atomic_fetch_add((self + v13), 1u);
    }
  }
}

- (void)recordAssetInfo:(id)info
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    abGroupLoggingKey = [(MetricsLogging *)self abGroupLoggingKey];
    v6 = 138412546;
    infoCopy = info;
    v8 = 2112;
    v9 = abGroupLoggingKey;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "recordAssetInfo: %@ ab:%@", &v6, 0x16u);
  }
}

- (void)recordSlowFindResults:(BOOL)results requestType:(unint64_t)type indexId:(id)id coldEngine:(BOOL)engine
{
  engineCopy = engine;
  resultsCopy = results;
  idCopy = id;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    abGroupLoggingKey = [(MetricsLogging *)self abGroupLoggingKey];
    v13[0] = 67110146;
    v13[1] = resultsCopy;
    v14 = 2112;
    v15 = idCopy;
    v16 = 2112;
    v17 = abGroupLoggingKey;
    v18 = 2048;
    typeCopy = type;
    v20 = 1024;
    v21 = engineCopy;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "recordSlowFindResults: hard timeout reached?=%i indexId:%@ ab:%@ requestType:%li cold:%i", v13, 0x2Cu);
  }

  if (type == 15 || type == 1)
  {
    v11 = 16;
    if (resultsCopy)
    {
      v11 = 20;
    }

    atomic_fetch_add((self + v11), 1u);
  }
}

- (void)recordURLLookupSucceeded:(unint64_t)succeeded bundleId:(BOOL)id indexId:(id)indexId requestType:(unint64_t)type
{
  idCopy = id;
  indexIdCopy = indexId;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    abGroupLoggingKey = [(MetricsLogging *)self abGroupLoggingKey];
    v13 = 134219010;
    succeededCopy = succeeded;
    v15 = 1024;
    v16 = idCopy;
    v17 = 2112;
    v18 = indexIdCopy;
    v19 = 2112;
    v20 = abGroupLoggingKey;
    v21 = 2048;
    typeCopy = type;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "recordURLLookupSucceeded: success=%lu bundleId:%i indexId:%@ ab:%@ requestType:%li", &v13, 0x30u);
  }

  if (type == 15)
  {
LABEL_6:
    atomic_fetch_add(&self->countSafariURLLookupTotal, 1u);
    if (succeeded)
    {
      atomic_fetch_add(&self->countSafariURLLookupSuccess, 1u);
      if (succeeded == 2)
      {
        v11 = 128;
LABEL_9:
        atomic_fetch_add((self + v11), 1u);
        goto LABEL_10;
      }
    }

    goto LABEL_10;
  }

  if (type != 6)
  {
    if (type != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  if (idCopy)
  {
    atomic_fetch_add(&self->countDHURLLookupBundleTotal, 1u);
    if (succeeded)
    {
      atomic_fetch_add(&self->countDHURLLookupBundleSuccess, 1u);
      if (succeeded == 2)
      {
        v11 = 140;
        goto LABEL_9;
      }
    }
  }

  else
  {
    atomic_fetch_add(&self->countDHURLLookupWebTotal, 1u);
    if (succeeded)
    {
      atomic_fetch_add(&self->countDHURLLookupWebSuccess, 1u);
      if (succeeded == 2)
      {
        v11 = 152;
        goto LABEL_9;
      }
    }
  }

LABEL_10:
}

- (id)debugStatus
{
  v3 = atomic_load(&self->countSafariQueryEvents);
  v48 = v3;
  v49 = NSString;
  v4 = atomic_load(&self->countSafariLanguageNotSupported);
  v47 = v4;
  v5 = atomic_load(&self->countSafariSlowSoft);
  v46 = v5;
  v6 = atomic_load(&self->countSafariSlowTimeout);
  v45 = v6;
  v7 = atomic_load(&self->countSafariResultsShownCalled);
  v44 = v7;
  v8 = atomic_load(&self->countSafariResultsShownSomething);
  v43 = v8;
  v9 = atomic_load(&self->countSafariResultsShownSuppressed);
  v42 = v9;
  v10 = atomic_load(&self->countSafariEngagements);
  v41 = v10;
  v11 = atomic_load(&self->countSafariTransactionSuccessful);
  v12 = atomic_load(&self->countSafariResultsShownCalledCompletion);
  v13 = atomic_load(&self->countSafariResultsShownSomethingCompletion);
  v14 = atomic_load(&self->countSafariResultsShownSuppressedCompletion);
  v15 = atomic_load(&self->countSafariEngagementsCompletion);
  v16 = atomic_load(&self->countSafariTransactionSuccessfulCompletion);
  v17 = atomic_load(&self->countSafariLikelyUnsolicitedResultsShownCalled);
  v18 = atomic_load(&self->countSafariLikelyUnsolicitedResultsShownSomething);
  v19 = atomic_load(&self->countSafariLikelyUnsolicitedResultsShownSuppressed);
  v20 = atomic_load(&self->countSafariLikelyUnsolicitedEngagements);
  v21 = atomic_load(&self->countSafariLikelyUnsolicitedTransactionSuccessful);
  v22 = atomic_load(&self->countSafariLikelyUnsolicitedResultsShownCalledCompletion);
  v23 = atomic_load(&self->countSafariLikelyUnsolicitedResultsShownSomethingCompletion);
  v24 = atomic_load(&self->countSafariLikelyUnsolicitedResultsShownSuppressedCompletion);
  v25 = atomic_load(&self->countSafariLikelyUnsolicitedEngagementsCompletion);
  v26 = atomic_load(&self->countSafariLikelyUnsolicitedTransactionSuccessfulCompletion);
  v27 = atomic_load(&self->countSafariQueryEventsUnknown);
  v28 = atomic_load(&self->countSafariQueryEventsURLOnly);
  v29 = atomic_load(&self->countSafariQueryEventsMainText);
  v30 = atomic_load(&self->countSafariQueryEventsRawText);
  v31 = atomic_load(&self->countSafariURLLookupSuccess);
  v32 = atomic_load(&self->countSafariURLLookupSuccessStrong);
  v33 = atomic_load(&self->countSafariURLLookupTotal);
  v34 = atomic_load(&self->countDHURLLookupWebSuccess);
  v35 = atomic_load(&self->countDHURLLookupWebSuccessStrong);
  v36 = atomic_load(&self->countDHURLLookupWebTotal);
  v37 = atomic_load(&self->countDHURLLookupBundleSuccess);
  v38 = atomic_load(&self->countDHURLLookupBundleSuccessStrong);
  v39 = atomic_load(&self->countDHURLLookupBundleTotal);
  return [v49 stringWithFormat:@"countSafariQueryEvents: %i\ncountSafariLanguageNotSupported: %i\ncountSafariSlowSoft: %i\ncountSafariSlowTimeout: %i\ncountSafariResultsShownCalled: %i\ncountSafariResultsShownSomething: %i\ncountSafariResultsShownSuppressed: %i\ncountSafariEngagements: %i\ncountSafariTransactionSuccessful: %i\ncountSafariResultsShownCalledCompletion: %i\ncountSafariResultsShownSomethingCompletion: %i\ncountSafariResultsShownSuppressedCompletion: %i\ncountSafariEngagementsCompletion: %i\ncountSafariTransactionSuccessfulCompletion: %i\ncountSafariLikelyUnsolicitedResultsShownCalled: %i\ncountSafariLikelyUnsolicitedResultsShownSomething: %i\ncountSafariLikelyUnsolicitedResultsShownSuppressed: %i\ncountSafariLikelyUnsolicitedEngagements: %i\ncountSafariLikelyUnsolicitedTransactionSuccessful: %i\ncountSafariLikelyUnsolicitedResultsShownCalledCompletion: %i\ncountSafariLikelyUnsolicitedResultsShownSomethingCompletion: %i\ncountSafariLikelyUnsolicitedResultsShownSuppressedCompletion: %i\ncountSafariLikelyUnsolicitedEngagementsCompletion: %i\ncountSafariLikelyUnsolicitedTransactionSuccessfulCompletion: %i\ncountSafariQueryEventsUnknown: %i\ncountSafariQueryEventsURLOnly: %i\ncountSafariQueryEventsMainText: %i\ncountSafariQueryEventsRawText: %i\ncountSafariURLLookupSuccess: %i\ncountSafariURLLookupSuccessStrong: %i\ncountSafariURLLookupTotal: %i\ncountDHURLLookupWebSuccess: %i\ncountDHURLLookupWebSuccessStrong: %i\ncountDHURLLookupWebTotal: %i\ncountDHURLLookupBundleSuccess: %i\ncountDHURLLookupBundleSuccessStrong: %i\ncountDHURLLookupBundleTotal: %i\n", v48, v47, v46, v45, v44, v43, v42, v41, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39];
}

@end