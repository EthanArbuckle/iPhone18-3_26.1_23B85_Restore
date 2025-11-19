@interface RAPSubmissionStatusDownloader
- (RAPSubmissionStatusDownloader)initWithQuerySource:(int)a3;
- (void)_checkForStatusChangeNotificationsNeededForRapInfos:(id)a3;
- (void)_fetchAndUpdateRAPStatusWithOffset:(int64_t)a3 batchSize:(unint64_t)a4 completion:(id)a5;
- (void)_sendStatusChangeNotificationIfNeeded:(id)a3;
- (void)_updateAllSubmissionStatusWithOffset:(int64_t)a3 batchSize:(unint64_t)a4 completion:(id)a5;
- (void)_updateSubmissionStatusWithIdentifier:(id)a3 completion:(id)a4;
- (void)setNotificationCenter:(id)a3;
- (void)updateSubmissionStatusesWithCompletion:(id)a3;
@end

@implementation RAPSubmissionStatusDownloader

- (RAPSubmissionStatusDownloader)initWithQuerySource:(int)a3
{
  v12.receiver = self;
  v12.super_class = RAPSubmissionStatusDownloader;
  v4 = [(RAPSubmissionStatusDownloader *)&v12 init];
  if (v4)
  {
    v5 = sub_10000B8FC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Initializing submission status downloader from mapspushd", v11, 2u);
    }

    v6 = objc_alloc_init(RAPBatchSubmissionStatusTicket);
    submissionStatusTicket = v4->_submissionStatusTicket;
    v4->_submissionStatusTicket = v6;

    v8 = objc_alloc_init(RAPSubmissionStatusSyncHandler);
    syncHandler = v4->_syncHandler;
    v4->_syncHandler = v8;

    v4->_querySource = a3;
  }

  return v4;
}

- (void)setNotificationCenter:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_notificationCenter);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_notificationCenter, obj);
    v5 = obj;
  }
}

- (void)updateSubmissionStatusesWithCompletion:(id)a3
{
  v4 = a3;
  self->_isExpired = 0;
  UInteger = GEOConfigGetUInteger();
  v6 = sub_10000B8FC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v11 = UInteger;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Start to update submission status with batchSize: %lu", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000BAE8;
  v8[3] = &unk_10003CD38;
  v9 = v4;
  v7 = v4;
  [(RAPSubmissionStatusDownloader *)self _updateAllSubmissionStatusWithOffset:0 batchSize:UInteger completion:v8];
}

- (void)_updateAllSubmissionStatusWithOffset:(int64_t)a3 batchSize:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  UInteger = GEOConfigGetUInteger();
  v10 = sub_10000B8FC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v15 = a3;
    v16 = 2048;
    v17 = UInteger;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Updating submission status with offset: %lu, totalLimit: %lu", buf, 0x16u);
  }

  if (UInteger < a3 || self->_isExpired)
  {
    v8[2](v8, 0);
  }

  else
  {
    objc_initWeak(buf, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000BDC8;
    v11[3] = &unk_10003CD60;
    objc_copyWeak(v13, buf);
    v12 = v8;
    v13[1] = a3;
    v13[2] = a4;
    [(RAPSubmissionStatusDownloader *)self _fetchAndUpdateRAPStatusWithOffset:a3 batchSize:a4 completion:v11];

    objc_destroyWeak(v13);
    objc_destroyWeak(buf);
  }
}

- (void)_fetchAndUpdateRAPStatusWithOffset:(int64_t)a3 batchSize:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = +[NSDate date];
  v10 = [v9 dateByAddingTimeInterval:-7776000.0];

  objc_initWeak(&location, self);
  syncHandler = self->_syncHandler;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000BFBC;
  v13[3] = &unk_10003CDB0;
  objc_copyWeak(&v15, &location);
  v12 = v8;
  v14 = v12;
  [(RAPSubmissionStatusSyncHandler *)syncHandler fetchUnresolvedRAPIdentifiersWithBatchSize:a4 offset:a3 oldestDate:v10 completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)_updateSubmissionStatusWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  submissionStatusTicket = self->_submissionStatusTicket;
  querySource = self->_querySource;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000C348;
  v11[3] = &unk_10003CE28;
  objc_copyWeak(&v13, &location);
  v10 = v7;
  v12 = v10;
  [(RAPBatchSubmissionStatusTicket *)submissionStatusTicket fetchStatusesForIdentifiers:v6 querySource:querySource completion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_checkForStatusChangeNotificationsNeededForRapInfos:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (([v9 rapDisplayMenu] & 0xFFFFFFFE) == 2)
        {
          [(RAPSubmissionStatusDownloader *)self _sendStatusChangeNotificationIfNeeded:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_sendStatusChangeNotificationIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [v4 rapResponse];
  v6 = [v5 hasNotification];

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_notificationCenter);

    if (WeakRetained)
    {
      v8 = objc_loadWeakRetained(&self->_notificationCenter);
      v9 = [v8 addRAPNotificationForProblemStatusChangeWithRapInfo:v4];

      v10 = +[MapsPushManager defaultManager];
      v11 = [v4 data];
      [v10 propagateIDSMessageOfType:1 message:v11];

      v12 = [v4 rapResponse];
      v13 = +[GEORPRapResponse RapStateIconAsString:](GEORPRapResponse, "RapStateIconAsString:", [v12 rapStateIcon]);

      v14 = [v4 rapId];
      v15 = [v4 rapResponse];
      v16 = [v15 responseId];
      [RAPNotificationLogEvent reportNotificationWasShownWithRapId:v14 responseId:v16 notificationType:v13 completion:&stru_10003CE48];
    }

    else
    {
      v13 = sub_10000B8FC();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Empty notificationCenter, cannot send a notification", v17, 2u);
      }
    }
  }
}

@end