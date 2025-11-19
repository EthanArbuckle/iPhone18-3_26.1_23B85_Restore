@interface MetricsLogging
+ (id)instance;
- (id)_init;
- (id)debugStatus;
- (void)_postInit;
- (void)_updateABGroupKey;
- (void)recordAssetInfo:(id)a3;
- (void)recordFindResultsMsec:(double)a3 queryType:(unint64_t)a4 requestType:(unint64_t)a5 indexId:(id)a6;
- (void)recordInputLength:(unint64_t)a3 languageTag:(id)a4 languageSupported:(BOOL)a5 requestType:(unint64_t)a6 indexId:(id)a7;
- (void)recordQueryEngagementWithUserInputLength:(unint64_t)a3 completionLength:(unint64_t)a4 result:(id)a5 rank:(unint64_t)a6 indexId:(id)a7 requestType:(unint64_t)a8 logType:(unint64_t)a9;
- (void)recordQueryEventWithLuceneResultCount:(unint64_t)a3 error:(id)a4 requestType:(unint64_t)a5 indexId:(id)a6;
- (void)recordQueryLuceneMsec:(double)a3 queryType:(unint64_t)a4 requestType:(unint64_t)a5 indexId:(id)a6;
- (void)recordResultsShownWithUserInputLength:(unint64_t)a3 count:(unint64_t)a4 couldHaveShown:(unint64_t)a5 topicIds:(id)a6 serverOverride:(BOOL)a7 indexId:(id)a8 requestType:(unint64_t)a9 logType:(unint64_t)a10;
- (void)recordSlowFindResults:(BOOL)a3 requestType:(unint64_t)a4 indexId:(id)a5 coldEngine:(BOOL)a6;
- (void)recordTransactionSuccessfulWithUserInputLength:(unint64_t)a3 completionLength:(unint64_t)a4 indexId:(id)a5 requestType:(unint64_t)a6 logType:(unint64_t)a7;
- (void)recordURLLookupSucceeded:(unint64_t)a3 bundleId:(BOOL)a4 indexId:(id)a5 requestType:(unint64_t)a6;
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
  v5 = [v4 matchedABGroups];

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [v3 appendFormat:@"_%@", *(*(&v10 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)recordFindResultsMsec:(double)a3 queryType:(unint64_t)a4 requestType:(unint64_t)a5 indexId:(id)a6
{
  v10 = a6;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v12 = [(MetricsLogging *)self abGroupLoggingKey];
    v13 = 134219010;
    v14 = a3;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v12;
    v19 = 2048;
    v20 = a4;
    v21 = 2048;
    v22 = a5;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "recordFindResultsMsec:%f indexId:%@ ab:%@ queryType:%lu requestType:%li", &v13, 0x34u);
  }

  if (a5 == 15 || a5 == 1)
  {
    v11 = 104;
    if (a4 - 1 < 3)
    {
      v11 = 4 * (a4 - 1) + 108;
    }

    atomic_fetch_add((self + v11), 1u);
  }
}

- (void)recordQueryLuceneMsec:(double)a3 queryType:(unint64_t)a4 requestType:(unint64_t)a5 indexId:(id)a6
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v11 = [(MetricsLogging *)self abGroupLoggingKey];
    v12 = 134219010;
    v13 = a3;
    v14 = 2112;
    v15 = a6;
    v16 = 2112;
    v17 = v11;
    v18 = 2048;
    v19 = a4;
    v20 = 2048;
    v21 = a5;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "recordQueryLuceneMsec:%f indexId:%@ ab:%@ queryType:%lu requestType:%li", &v12, 0x34u);
  }
}

- (void)recordInputLength:(unint64_t)a3 languageTag:(id)a4 languageSupported:(BOOL)a5 requestType:(unint64_t)a6 indexId:(id)a7
{
  v12 = a4;
  v13 = a7;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v15 = [(MetricsLogging *)self abGroupLoggingKey];
    v16 = 134218754;
    v17 = a3;
    v18 = 2112;
    v19 = v13;
    v20 = 2112;
    v21 = v15;
    v22 = 2048;
    v23 = a6;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "recordInputLength:%lu indexId:%@ ab:%@ requestType:%li", &v16, 0x2Au);
  }

  v14 = a6 == 15 || a6 == 1;
  if (v14 && !a5)
  {
    atomic_fetch_add(&self->countSafariLanguageNotSupported, 1u);
  }
}

- (void)recordQueryEventWithLuceneResultCount:(unint64_t)a3 error:(id)a4 requestType:(unint64_t)a5 indexId:(id)a6
{
  v10 = a4;
  v11 = a6;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v12 = [(MetricsLogging *)self abGroupLoggingKey];
    v13 = 134219010;
    v14 = a3;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    v21 = 2048;
    v22 = a5;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "recordQueryEventWithLuceneResultCount:%lu error:%@, indexId:%@ ab:%@ requestType:%li", &v13, 0x34u);
  }

  if (a5 == 15 || a5 == 1)
  {
    atomic_fetch_add(&self->countSafariQueryEvents, 1u);
  }
}

- (void)recordResultsShownWithUserInputLength:(unint64_t)a3 count:(unint64_t)a4 couldHaveShown:(unint64_t)a5 topicIds:(id)a6 serverOverride:(BOOL)a7 indexId:(id)a8 requestType:(unint64_t)a9 logType:(unint64_t)a10
{
  v11 = a7;
  v16 = a6;
  v17 = a8;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v18 = [(MetricsLogging *)self abGroupLoggingKey];
    v21 = 134219778;
    v22 = a3;
    v23 = 2048;
    v24 = a4;
    v25 = 2048;
    v26 = a5;
    v27 = 1024;
    v28 = v11;
    v29 = 2112;
    v30 = v17;
    v31 = 2112;
    v32 = v18;
    v33 = 2048;
    v34 = a9;
    v35 = 2048;
    v36 = a10;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "recordResultsShownWithUserInputLength:%lu count:%lu/%lu serverOverride:%i indexId:%@ ab:%@ requestType:%lu logType:%lu", &v21, 0x4Eu);

    if (a10)
    {
      goto LABEL_3;
    }

LABEL_5:
    if (a9 == 15)
    {
      atomic_fetch_add(&self->countSafariLikelyUnsolicitedResultsShownCalled, 1u);
      if (a4)
      {
        atomic_fetch_add(&self->countSafariLikelyUnsolicitedResultsShownSomething, 1u);
        if (!a3)
        {
          goto LABEL_3;
        }

        v19 = 88;
      }

      else
      {
        if (!a5)
        {
          if (!a3)
          {
            goto LABEL_3;
          }

          v19 = 84;
          goto LABEL_22;
        }

        atomic_fetch_add(&self->countSafariLikelyUnsolicitedResultsShownSuppressed, 1u);
        if (!a3)
        {
          goto LABEL_3;
        }

        v19 = 92;
      }

      v20 = 84;
    }

    else
    {
      if (a9 != 1)
      {
        goto LABEL_3;
      }

      atomic_fetch_add(&self->countSafariResultsShownCalled, 1u);
      if (a4)
      {
        atomic_fetch_add(&self->countSafariResultsShownSomething, 1u);
        if (!a3)
        {
          goto LABEL_3;
        }

        v19 = 48;
      }

      else
      {
        if (!a5)
        {
          if (!a3)
          {
            goto LABEL_3;
          }

          v19 = 44;
          goto LABEL_22;
        }

        atomic_fetch_add(&self->countSafariResultsShownSuppressed, 1u);
        if (!a3)
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

  if (!a10)
  {
    goto LABEL_5;
  }

LABEL_3:
}

- (void)recordQueryEngagementWithUserInputLength:(unint64_t)a3 completionLength:(unint64_t)a4 result:(id)a5 rank:(unint64_t)a6 indexId:(id)a7 requestType:(unint64_t)a8 logType:(unint64_t)a9
{
  v15 = a5;
  v16 = a7;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v18 = [(MetricsLogging *)self abGroupLoggingKey];
    v19 = 134219522;
    v20 = a3;
    v21 = 2048;
    v22 = a4;
    v23 = 2048;
    v24 = a6;
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = v18;
    v29 = 2048;
    v30 = a8;
    v31 = 2048;
    v32 = a9;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "recordQueryEngagementWithUserInputLength:%lu completionLength:%lu, rank:%lu, indexId:%@ ab:%@ requestType:%lu logType:%lu", &v19, 0x48u);
  }

  if (a8 == 15)
  {
    atomic_fetch_add(&self->countSafariLikelyUnsolicitedEngagements, 1u);
    if (a3)
    {
      v17 = 96;
      goto LABEL_9;
    }
  }

  else if (a8 == 1)
  {
    atomic_fetch_add(&self->countSafariEngagements, 1u);
    if (a3)
    {
      v17 = 56;
LABEL_9:
      atomic_fetch_add((self + v17), 1u);
    }
  }
}

- (void)recordTransactionSuccessfulWithUserInputLength:(unint64_t)a3 completionLength:(unint64_t)a4 indexId:(id)a5 requestType:(unint64_t)a6 logType:(unint64_t)a7
{
  v12 = a5;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v14 = [(MetricsLogging *)self abGroupLoggingKey];
    v15 = 134219266;
    v16 = a3;
    v17 = 2048;
    v18 = a4;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v14;
    v23 = 2048;
    v24 = a6;
    v25 = 2048;
    v26 = a7;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "recordTransactionSuccessfulWithUserInputLength:%lu completionLength:%lu indexId:%@ ab:%@ requestType:%lu logType:%lu", &v15, 0x3Eu);
  }

  if (a6 == 15)
  {
    atomic_fetch_add(&self->countSafariLikelyUnsolicitedTransactionSuccessful, 1u);
    if (a3)
    {
      v13 = 100;
      goto LABEL_9;
    }
  }

  else if (a6 == 1)
  {
    atomic_fetch_add(&self->countSafariTransactionSuccessful, 1u);
    if (a3)
    {
      v13 = 60;
LABEL_9:
      atomic_fetch_add((self + v13), 1u);
    }
  }
}

- (void)recordAssetInfo:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(MetricsLogging *)self abGroupLoggingKey];
    v6 = 138412546;
    v7 = a3;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "recordAssetInfo: %@ ab:%@", &v6, 0x16u);
  }
}

- (void)recordSlowFindResults:(BOOL)a3 requestType:(unint64_t)a4 indexId:(id)a5 coldEngine:(BOOL)a6
{
  v6 = a6;
  v8 = a3;
  v10 = a5;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v12 = [(MetricsLogging *)self abGroupLoggingKey];
    v13[0] = 67110146;
    v13[1] = v8;
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v12;
    v18 = 2048;
    v19 = a4;
    v20 = 1024;
    v21 = v6;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "recordSlowFindResults: hard timeout reached?=%i indexId:%@ ab:%@ requestType:%li cold:%i", v13, 0x2Cu);
  }

  if (a4 == 15 || a4 == 1)
  {
    v11 = 16;
    if (v8)
    {
      v11 = 20;
    }

    atomic_fetch_add((self + v11), 1u);
  }
}

- (void)recordURLLookupSucceeded:(unint64_t)a3 bundleId:(BOOL)a4 indexId:(id)a5 requestType:(unint64_t)a6
{
  v7 = a4;
  v10 = a5;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v12 = [(MetricsLogging *)self abGroupLoggingKey];
    v13 = 134219010;
    v14 = a3;
    v15 = 1024;
    v16 = v7;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v12;
    v21 = 2048;
    v22 = a6;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "recordURLLookupSucceeded: success=%lu bundleId:%i indexId:%@ ab:%@ requestType:%li", &v13, 0x30u);
  }

  if (a6 == 15)
  {
LABEL_6:
    atomic_fetch_add(&self->countSafariURLLookupTotal, 1u);
    if (a3)
    {
      atomic_fetch_add(&self->countSafariURLLookupSuccess, 1u);
      if (a3 == 2)
      {
        v11 = 128;
LABEL_9:
        atomic_fetch_add((self + v11), 1u);
        goto LABEL_10;
      }
    }

    goto LABEL_10;
  }

  if (a6 != 6)
  {
    if (a6 != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  if (v7)
  {
    atomic_fetch_add(&self->countDHURLLookupBundleTotal, 1u);
    if (a3)
    {
      atomic_fetch_add(&self->countDHURLLookupBundleSuccess, 1u);
      if (a3 == 2)
      {
        v11 = 140;
        goto LABEL_9;
      }
    }
  }

  else
  {
    atomic_fetch_add(&self->countDHURLLookupWebTotal, 1u);
    if (a3)
    {
      atomic_fetch_add(&self->countDHURLLookupWebSuccess, 1u);
      if (a3 == 2)
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