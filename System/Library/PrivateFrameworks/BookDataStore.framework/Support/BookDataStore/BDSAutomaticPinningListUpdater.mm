@interface BDSAutomaticPinningListUpdater
- (BDSAutomaticPinningListUpdater)init;
- (BOOL)_updateCloudDataWithManager:(id)manager;
- (BOOL)startUpdateWithManager:(id)manager jaliscoUpdateSuccessful:(BOOL)successful;
- (void)_l_cancelWithManagers:(id)managers;
- (void)_l_finishWithError:(id)error;
- (void)_l_finishedFetchingCollectionsWithManager:(BOOL)manager;
- (void)_updateAttachmentCompletedFromObserver:(unint64_t)observer attached:(BOOL)attached;
- (void)cancelWithManager:(id)manager;
@end

@implementation BDSAutomaticPinningListUpdater

- (BDSAutomaticPinningListUpdater)init
{
  v7.receiver = self;
  v7.super_class = BDSAutomaticPinningListUpdater;
  v2 = [(BDSAutomaticPinningListUpdater *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_stateLock._os_unfair_lock_opaque = 0;
    v4 = +[NSHashTable weakObjectsHashTable];
    managers = v3->_managers;
    v3->_managers = v4;
  }

  return v3;
}

- (BOOL)startUpdateWithManager:(id)manager jaliscoUpdateSuccessful:(BOOL)successful
{
  managerCopy = manager;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  if (managerCopy)
  {
    v7 = sub_10000DC90();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AutomaticPinningList startUpdate", buf, 2u);
    }

    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1000436CC;
    v13 = &unk_10023FAC0;
    selfCopy = self;
    successfulCopy = successful;
    os_unfair_lock_lock(&self->_stateLock);
    sub_1000436CC(&v10);
    os_unfair_lock_unlock(&self->_stateLock);
    v8 = [(BDSAutomaticPinningListUpdater *)self _updateCloudDataWithManager:managerCopy, v10, v11];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)cancelWithManager:(id)manager
{
  managerCopy = manager;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  if (managerCopy)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100043794;
    v5[3] = &unk_10023F938;
    v5[4] = self;
    v6 = managerCopy;
    os_unfair_lock_lock(&self->_stateLock);
    sub_100043794(v5);
    os_unfair_lock_unlock(&self->_stateLock);
  }
}

- (void)_l_cancelWithManagers:(id)managers
{
  managersCopy = managers;
  os_unfair_lock_assert_owner(&self->_stateLock);
  if ([managersCopy count])
  {
    v5 = +[NSMutableArray array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v6 = managersCopy;
    v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v32;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v31 + 1) + 8 * i);
          managers = [(BDSAutomaticPinningListUpdater *)self managers];
          v13 = [managers containsObject:v11];

          if (v13)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      managers2 = [(BDSAutomaticPinningListUpdater *)self managers];
      allObjects = [managers2 allObjects];
      v16 = [allObjects count];
      v17 = [v5 count];

      if (v16 == v17)
      {
        currentProgress = [(BDSAutomaticPinningListUpdater *)self currentProgress];
        [currentProgress cancel];

        observer = [(BDSAutomaticPinningListUpdater *)self observer];

        if (observer)
        {
          [(BDSAutomaticPinningListUpdater *)self setObserver:0];
        }
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v20 = v5;
      v21 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v28;
        do
        {
          for (j = 0; j != v22; j = j + 1)
          {
            if (*v28 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v27 + 1) + 8 * j);
            [v25 listUpdater:self updateDidCompleteWithError:0 wasCancelled:{1, v27}];
            managers3 = [(BDSAutomaticPinningListUpdater *)self managers];
            [managers3 removeObject:v25];
          }

          v22 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v22);
      }
    }
  }
}

- (BOOL)_updateCloudDataWithManager:(id)manager
{
  managerCopy = manager;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  if (managerCopy)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v9 = sub_100043BD0;
    v10 = &unk_100240860;
    selfCopy = self;
    v13 = &v14;
    v12 = managerCopy;
    v5 = v8;
    os_unfair_lock_lock(&self->_stateLock);
    v9(v5);
    os_unfair_lock_unlock(&self->_stateLock);

    v6 = *(v15 + 24);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (void)_updateAttachmentCompletedFromObserver:(unint64_t)observer attached:(BOOL)attached
{
  attachedCopy = attached;
  v7 = sub_10000DC90();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    observerCopy = observer;
    v12 = 2048;
    v13 = attachedCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BDSAutomaticPinningListUpdater updateAttachmentCompleted %lu, attached %lu", buf, 0x16u);
  }

  os_unfair_lock_assert_not_owner(&self->_stateLock);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100044238;
  v8[3] = &unk_100240F20;
  v8[4] = self;
  v8[5] = observer;
  v9 = attachedCopy;
  os_unfair_lock_lock(&self->_stateLock);
  sub_100044238(v8);
  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)_l_finishedFetchingCollectionsWithManager:(BOOL)manager
{
  managerCopy = manager;
  os_unfair_lock_assert_owner(&self->_stateLock);
  v5 = +[BCCloudCollectionsManager sharedManager];
  [v5 setEnableCloudSync:0];

  objc_initWeak(&location, self);
  if (managerCopy)
  {
    v6 = sub_10000DC90();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "At least one manager wanted to continue, so updating the pinning lists.", buf, 2u);
    }

    v7 = +[BDSNBPinningManager sharedManager];
    jaliscoUpdateSuccessful = [(BDSAutomaticPinningListUpdater *)self jaliscoUpdateSuccessful];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10004456C;
    v11[3] = &unk_100240F48;
    objc_copyWeak(&v12, &location);
    v9 = [v7 updateWantToReadAndReadingNowWithJaliscoUpdateSuccessful:jaliscoUpdateSuccessful completion:v11];
    [(BDSAutomaticPinningListUpdater *)self setCurrentProgress:v9];

    objc_destroyWeak(&v12);
  }

  else
  {
    v10 = [NSError bu_errorWithDomain:@"BDSErrorDomain" code:1003 description:@"Did not attach CloudKit" underlyingError:0];
    [(BDSAutomaticPinningListUpdater *)self _l_finishWithError:v10];
  }

  objc_destroyWeak(&location);
}

- (void)_l_finishWithError:(id)error
{
  errorCopy = error;
  currentProgress = [(BDSAutomaticPinningListUpdater *)self currentProgress];
  isCancelled = [currentProgress isCancelled];

  v7 = sub_10000DC90();
  managers2 = v7;
  if (isCancelled)
  {
    if (errorCopy)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1001C0598(errorCopy, managers2);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, managers2, OS_LOG_TYPE_DEFAULT, "Updating wantToReadAndReadingNow completed but we were already cancelled.", buf, 2u);
    }
  }

  else
  {
    if (errorCopy)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1001C0520(errorCopy, managers2);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, managers2, OS_LOG_TYPE_DEFAULT, "Updating wantToReadAndReadingNow completed and we were not cancelled.", buf, 2u);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    managers = [(BDSAutomaticPinningListUpdater *)self managers];
    v10 = [managers countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(managers);
          }

          [*(*(&v14 + 1) + 8 * v13) listUpdater:self updateDidCompleteWithError:errorCopy wasCancelled:0];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [managers countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v11);
    }

    managers2 = [(BDSAutomaticPinningListUpdater *)self managers];
    [managers2 removeAllObjects];
  }

  [(BDSAutomaticPinningListUpdater *)self setCurrentProgress:0];
}

@end