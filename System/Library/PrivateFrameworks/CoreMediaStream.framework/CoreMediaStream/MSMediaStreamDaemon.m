@interface MSMediaStreamDaemon
- (BOOL)dequeueAssetCollectionWithGUIDs:(id)a3 personID:(id)a4 outError:(id *)a5;
- (BOOL)enqueueAssetCollection:(id)a3 personID:(id)a4 outError:(id *)a5;
- (BOOL)hasOutstandingActivity;
- (BOOL)isInRetryState;
- (BOOL)personIDHasOutstandingPublications:(id)a3;
- (MSMediaStreamDaemon)init;
- (id)_boundDeleterForPersonID:(id)a3;
- (id)_boundPublisherForPersonID:(id)a3;
- (id)_boundServerSideConfigManagerForPersonID:(id)a3;
- (id)_boundSubscriberForPersonID:(id)a3;
- (id)nextActivityDate;
- (id)ownSubscribedStreamForPersonID:(id)a3;
- (id)serverSideConfigurationForPersonID:(id)a3;
- (id)subscribedStreamsForPersonID:(id)a3;
- (void)abortAllActivityForPersonID:(id)a3;
- (void)computeHashForAsset:(id)a3 personID:(id)a4;
- (void)deleteAssetCollections:(id)a3 forPersonID:(id)a4;
- (void)didExceedPublishQuotaForPersonID:(id)a3 retryDate:(id)a4;
- (void)didIdle;
- (void)didReceiveAuthenticationFailureForPersonID:(id)a3;
- (void)didReceiveAuthenticationSuccessForPersonID:(id)a3;
- (void)didReceiveNewServerSideConfigurationForPersonID:(id)a3;
- (void)didReceiveServerSideConfigurationVersion:(id)a3 forPersonID:(id)a4;
- (void)didUnidle;
- (void)forgetPersonID:(id)a3;
- (void)pollForSubscriptionUpdatesForPersonID:(id)a3;
- (void)pollForSubscriptionUpdatesTriggeredByPushNotificationForPersonID:(id)a3;
- (void)reenqueueQuarantinedActivitiesWithReason:(id)a3;
- (void)refreshServerSideConfigurationForPersonID:(id)a3;
- (void)resetSubscriberSyncForPersonID:(id)a3;
- (void)retryOutstandingActivities;
- (void)start;
- (void)stop;
- (void)stopAllActivities;
@end

@implementation MSMediaStreamDaemon

- (void)didExceedPublishQuotaForPersonID:(id)a3 retryDate:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = a3;
    v9 = 2114;
    v10 = a4;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Received quota excess failure for person ID %@. Next retry date: %{public}@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveAuthenticationSuccessForPersonID:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = a3;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Successfully authenticated person ID %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveAuthenticationFailureForPersonID:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = a3;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Received authentication failure for person ID %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v30 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Media stream daemon stopping.", buf, 2u);
  }

  [(MSMediaStreamDaemon *)self stopAllActivities];
  context = objc_autoreleasePoolPush();
  v3 = +[MSPublisher _clearInstantiatedPublishersByPersonID];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      v7 = 0;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [v3 objectForKey:*(*(&v23 + 1) + 8 * v7)];
        v9 = [v8 delegate];
        if (v9)
        {
          if (objc_opt_respondsToSelector())
          {
            [v9 publisherWillDeassignPluginAsDelegateOfPublisher:v8];
          }

          [v8 setDelegate:0];
          [(NSCountedSet *)self->_retainedObjects removeObject:v9];
        }

        [v8 deactivate];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v5);
  }

  v10 = +[MSSubscriber _clearInstantiatedSubscribersByPersonID];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [v10 objectForKey:*(*(&v19 + 1) + 8 * v14)];
        v16 = [v15 delegate];
        if (v16)
        {
          if (objc_opt_respondsToSelector())
          {
            [v16 subscriberWillDeassignPluginAsDelegateOfSubscriber:v15];
          }

          [v15 setDelegate:0];
          [(NSCountedSet *)self->_retainedObjects removeObject:v16];
        }

        [v15 deactivate];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v28 count:16];
    }

    while (v12);
  }

  objc_autoreleasePoolPop(context);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Media stream daemon starting...", buf, 2u);
  }

  v3 = dispatch_time(0, 10000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__MSMediaStreamDaemon_start__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

void __28__MSMediaStreamDaemon_start__block_invoke(uint64_t a1)
{
  v2 = MSPlatform();
  v3 = [v2 subscriberPluginClass];

  v5 = [v3 personIDForPollingTriggeredByPushNotification];
  if ([v5 length])
  {
    [*(a1 + 32) retainBusy];
    v4 = [*(a1 + 32) _boundSubscriberForPersonID:v5];
    [v4 checkForNewAssetCollectionsIfMissingCtag];
    [*(a1 + 32) releaseBusy];
    [*(a1 + 32) retryOutstandingActivities];
  }
}

- (void)deleteAssetCollections:(id)a3 forPersonID:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MSDaemon *)self retainBusy];
  v8 = [(MSMediaStreamDaemon *)self _boundDeleterForPersonID:v6];

  [v8 deleteAssetCollections:v7];
  [(MSDaemon *)self releaseBusy];
}

- (void)didReceiveNewServerSideConfigurationForPersonID:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Sending local notification about new server-side configuration for %@", buf, 0xCu);
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v4, @"personID", 0}];
  [v5 postNotificationName:@"MSMSDServerSideConfigurationDidChangeNotification" object:self userInfo:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)refreshServerSideConfigurationForPersonID:(id)a3
{
  v3 = [(MSMediaStreamDaemon *)self _boundServerSideConfigManagerForPersonID:a3];
  [v3 refreshConfiguration];
}

- (void)didReceiveServerSideConfigurationVersion:(id)a3 forPersonID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSMediaStreamDaemon *)self serverSideConfigurationForPersonID:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKey:@"mme.streams.application.configVersion"];
    v11 = v10;
    if (v6)
    {
      v12 = [v6 isEqualToString:v10];

      if (v12)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Not refreshing server-side configuration.", buf, 2u);
        }

        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Server-side configuration has changed. Refreshing configuration.", buf, 2u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__MSMediaStreamDaemon_didReceiveServerSideConfigurationVersion_forPersonID___block_invoke;
  v13[3] = &unk_278E927C8;
  v13[4] = self;
  v14 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v13);

LABEL_10:
}

- (id)serverSideConfigurationForPersonID:(id)a3
{
  v3 = [(MSMediaStreamDaemon *)self _boundServerSideConfigManagerForPersonID:a3];
  v4 = [v3 config];

  return v4;
}

- (id)ownSubscribedStreamForPersonID:(id)a3
{
  v3 = [(MSMediaStreamDaemon *)self _boundSubscriberForPersonID:a3];
  v4 = [v3 ownSubscribedStream];

  return v4;
}

- (id)subscribedStreamsForPersonID:(id)a3
{
  v3 = [(MSMediaStreamDaemon *)self _boundSubscriberForPersonID:a3];
  v4 = [v3 subscribedStreams];

  return v4;
}

- (void)computeHashForAsset:(id)a3 personID:(id)a4
{
  v6 = a3;
  v7 = [(MSMediaStreamDaemon *)self _boundPublisherForPersonID:a4];
  [v7 computeHashForAsset:v6];
}

- (void)resetSubscriberSyncForPersonID:(id)a3
{
  v3 = [(MSMediaStreamDaemon *)self _boundSubscriberForPersonID:a3];
  [v3 resetSync];
}

- (void)pollForSubscriptionUpdatesTriggeredByPushNotificationForPersonID:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(MSDaemon *)self retainBusy];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = self;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Push notification received for My Photo Stream with targetPersonID %@.", &v10, 0x16u);
  }

  v5 = MSPlatform();
  v6 = [v5 subscriberPluginClass];

  v7 = [v6 personIDForPollingTriggeredByPushNotification];
  if ([v7 length])
  {
    v8 = [v7 isEqualToString:v4];
    if (!v4 || v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v10 = 138543362;
        v11 = self;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Serving push notification", &v10, 0xCu);
      }

      [(MSMediaStreamDaemon *)self didReceivePushNotificationForPersonID:v7];
      [(MSMediaStreamDaemon *)self pollForSubscriptionUpdatesForPersonID:v7];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "The subscription plugin class does not support push notification refreshing.", &v10, 2u);
  }

  [(MSDaemon *)self releaseBusy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)pollForSubscriptionUpdatesForPersonID:(id)a3
{
  v4 = a3;
  [(MSDaemon *)self retainBusy];
  v5 = [(MSMediaStreamDaemon *)self _boundSubscriberForPersonID:v4];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__MSMediaStreamDaemon_pollForSubscriptionUpdatesForPersonID___block_invoke;
  block[3] = &unk_278E926D8;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
  [(MSDaemon *)self releaseBusy];
}

- (BOOL)dequeueAssetCollectionWithGUIDs:(id)a3 personID:(id)a4 outError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  [(MSDaemon *)self retainBusy];
  v10 = [(MSMediaStreamDaemon *)self _boundPublisherForPersonID:v9];

  if (v10)
  {
    LOBYTE(a5) = [v10 dequeueAssetCollectionWithGUIDs:v8 outError:a5];
  }

  else if (a5)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = MSCFCopyLocalizedString(@"ERROR_PUBLISHER_MISSING");
    *a5 = [v11 MSErrorWithDomain:@"MSPublisherErrorDomain" code:9 description:v12];

    LOBYTE(a5) = 0;
  }

  [(MSDaemon *)self releaseBusy];

  return a5;
}

- (BOOL)enqueueAssetCollection:(id)a3 personID:(id)a4 outError:(id *)a5
{
  v8 = a4;
  v9 = a3;
  [(MSDaemon *)self retainBusy];
  v10 = [(MSMediaStreamDaemon *)self _boundPublisherForPersonID:v8];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__MSMediaStreamDaemon_enqueueAssetCollection_personID_outError___block_invoke;
  block[3] = &unk_278E926D8;
  v14 = v10;
  v11 = v10;
  dispatch_async(MEMORY[0x277D85CD0], block);
  LOBYTE(a5) = [v11 enqueueAssetCollections:v9 outError:a5];

  [(MSDaemon *)self releaseBusy];
  return a5;
}

- (void)forgetPersonID:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Forgetting everything about person ID %@...", &v13, 0xCu);
  }

  [MSPublisher forgetPersonID:v3];
  [MSSubscriber forgetPersonID:v3];
  [MSDeleter forgetPersonID:v3];
  [MSServerSideConfigManager forgetPersonID:v3];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = MSPathPublishDirForPersonID(v3);
  [v4 removeItemAtPath:v5 error:0];

  v6 = MSPathPublishMMCSLibraryForPersonID(v3);
  [v4 removeItemAtPath:v6 error:0];

  v7 = MSPathSubscribeDirForPersonID(v3);
  [v4 removeItemAtPath:v7 error:0];

  v8 = MSPathSubscribeMMCSLibraryForPersonID(v3);
  [v4 removeItemAtPath:v8 error:0];

  v9 = MSPathShareDirForPersonID(v3);
  [v4 removeItemAtPath:v9 error:0];

  v10 = MSPathDeleteDirForPersonID(v3);
  [v4 removeItemAtPath:v10 error:0];

  v11 = MSPathConfigDirForPersonID(v3);
  [v4 removeItemAtPath:v11 error:0];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Person ID %@ forgotten.", &v13, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)stopAllActivities
{
  +[MSPublisher stopAllActivities];
  +[MSSubscriber stopAllActivities];
  +[MSDeleter stopAllActivities];

  +[MSServerSideConfigManager abortAllActivities];
}

- (void)abortAllActivityForPersonID:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Aborting all activities for person ID %@.", &v9, 0xCu);
  }

  v4 = [MSPublisher existingPublisherForPersonID:v3];
  [v4 abort];

  v5 = [MSSubscriber existingSubscriberForPersonID:v3];
  [v5 abort];

  v6 = [MSDeleter existingDeleterForPersonID:v3];
  [v6 abort];

  v7 = [MSServerSideConfigManager existingConfigManagerForPersonID:v3];
  [v7 abort];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)reenqueueQuarantinedActivitiesWithReason:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(MSDaemon *)self retainBusy];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v18 = self;
    v19 = 2114;
    v20 = v4;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Reenqueuing quarantined activities. Reason: %{public}@.", buf, 0x16u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = +[MSPublisher personIDsWithOutstandingActivities];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(MSMediaStreamDaemon *)self _boundPublisherForPersonID:*(*(&v12 + 1) + 8 * v9)];
        [v10 reenqueueQuarantinedAssetCollections];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(MSDaemon *)self releaseBusy];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)retryOutstandingActivities
{
  v49 = *MEMORY[0x277D85DE8];
  [(MSDaemon *)self retainBusy];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v3 = +[MSPublisher personIDsWithOutstandingActivities];
  v4 = [v3 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v43;
    v7 = MEMORY[0x277D85CD0];
    do
    {
      v8 = 0;
      do
      {
        if (*v43 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [(MSMediaStreamDaemon *)self _boundPublisherForPersonID:*(*(&v42 + 1) + 8 * v8)];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __49__MSMediaStreamDaemon_retryOutstandingActivities__block_invoke;
        block[3] = &unk_278E926D8;
        v41 = v9;
        v10 = v9;
        dispatch_async(v7, block);

        ++v8;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v5);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = +[MSSubscriber personIDsWithOutstandingActivities];
  v12 = [v11 countByEnumeratingWithState:&v36 objects:v47 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v37;
    v15 = MEMORY[0x277D85CD0];
    do
    {
      v16 = 0;
      do
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = [(MSMediaStreamDaemon *)self _boundSubscriberForPersonID:*(*(&v36 + 1) + 8 * v16)];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __49__MSMediaStreamDaemon_retryOutstandingActivities__block_invoke_2;
        v34[3] = &unk_278E926D8;
        v35 = v17;
        v18 = v17;
        dispatch_async(v15, v34);

        ++v16;
      }

      while (v13 != v16);
      v13 = [v11 countByEnumeratingWithState:&v36 objects:v47 count:16];
    }

    while (v13);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = +[MSDeleter personIDsWithOutstandingActivities];
  v20 = [v19 countByEnumeratingWithState:&v30 objects:v46 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v31;
    v23 = MEMORY[0x277D85CD0];
    do
    {
      v24 = 0;
      do
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v25 = [(MSMediaStreamDaemon *)self _boundDeleterForPersonID:*(*(&v30 + 1) + 8 * v24)];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __49__MSMediaStreamDaemon_retryOutstandingActivities__block_invoke_3;
        v28[3] = &unk_278E926D8;
        v29 = v25;
        v26 = v25;
        dispatch_async(v23, v28);

        ++v24;
      }

      while (v21 != v24);
      v21 = [v19 countByEnumeratingWithState:&v30 objects:v46 count:16];
    }

    while (v21);
  }

  [(MSDaemon *)self releaseBusy];
  v27 = *MEMORY[0x277D85DE8];
}

- (id)_boundServerSideConfigManagerForPersonID:(id)a3
{
  v4 = [MSServerSideConfigManager configManagerForPersonID:a3];
  [v4 setDaemon:self];

  return v4;
}

- (id)_boundDeleterForPersonID:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MSDeleter deleterForPersonID:v4];
  v6 = [v5 delegate];

  if (v6)
  {
LABEL_2:
    v7 = v5;
    goto LABEL_11;
  }

  v8 = MSPlatform();
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = MSPlatform();
    v11 = [v10 deletePluginClass];

    v12 = [v11 deleterPluginForPersonID:v4];
    if (v12)
    {
      v13 = v12;
      [(NSCountedSet *)self->_retainedObjects addObject:v12];
      if (objc_opt_respondsToSelector())
      {
        [v13 deleterWillAssignPluginAsDelegateOfDeleter:v5];
      }

      [v5 setDelegate:v13];
      [v5 setDaemon:self];

      goto LABEL_2;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v16 = 134218242;
      v17 = v4;
      v18 = 2114;
      v19 = v11;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to get deleter plugin, person id %p, plugin class %{public}@", &v16, 0x16u);
    }
  }

  v7 = 0;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_boundSubscriberForPersonID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MSSubscriber subscriberForPersonID:v4];
  v6 = [v5 delegate];

  if (v6)
  {
LABEL_6:
    v11 = v5;
    goto LABEL_7;
  }

  v7 = MSPlatform();
  v8 = [v7 subscriberPluginClass];

  v9 = [v8 subscriberPluginForPersonID:v4];
  if (v9)
  {
    v10 = v9;
    [(NSCountedSet *)self->_retainedObjects addObject:v9];
    if (objc_opt_respondsToSelector())
    {
      [v10 subscriberWillAssignPluginAsDelegateOfSubscriber:v5];
    }

    [v5 setDelegate:v10];
    [v5 setDaemon:self];

    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v14 = 134218242;
    v15 = v4;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to get subscriber plugin, person id %p, plugin class %{public}@", &v14, 0x16u);
  }

  v11 = 0;
LABEL_7:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_boundPublisherForPersonID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MSPublisher publisherForPersonID:v4];
  v6 = [v5 delegate];

  if (v6)
  {
    goto LABEL_4;
  }

  v7 = MSPlatform();
  v8 = [v7 publisherPluginClass];

  v9 = [v8 publisherPluginForPersonID:v4];
  if (v9)
  {
    v10 = v9;
    [(NSCountedSet *)self->_retainedObjects addObject:v9];
    [v10 publisherWillAssignPluginAsDelegateOfPublisher:v5];
    [v5 setDelegate:v10];
    [v5 setDaemon:self];

LABEL_4:
    v11 = v5;
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v14 = 134218242;
    v15 = v4;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to get publisher plugin, person id %p, plugin class %{public}@", &v14, 0x16u);
  }

  v11 = 0;
LABEL_5:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)didUnidle
{
  v3 = [(MSMediaStreamDaemon *)self delegate];
  [v3 mediaStreamDaemonDidUnidle:self];
}

- (void)didIdle
{
  v3 = [(MSMediaStreamDaemon *)self delegate];
  [v3 mediaStreamDaemonDidIdle:self];
}

- (BOOL)isInRetryState
{
  if (+[MSPublisher isInRetryState](MSPublisher, "isInRetryState") || +[MSSubscriber isInRetryState])
  {
    return 1;
  }

  return +[MSDeleter isInRetryState];
}

- (BOOL)personIDHasOutstandingPublications:(id)a3
{
  v3 = a3;
  v4 = +[MSPublisher personIDsWithOutstandingActivities];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (BOOL)hasOutstandingActivity
{
  v2 = [(MSMediaStreamDaemon *)self nextActivityDate];
  v3 = v2 != 0;

  return v3;
}

- (id)nextActivityDate
{
  v2 = +[MSPublisher nextActivityDate];
  v3 = +[MSSubscriber nextActivityDate];
  if (v3 && (!v2 || [v2 compare:v3] == 1))
  {
    v4 = v3;

    v2 = v4;
  }

  v5 = +[MSDeleter nextActivityDate];
  if (v5 && (!v2 || [v2 compare:v5] == 1))
  {
    v6 = v5;

    v2 = v6;
  }

  v7 = v2;

  return v2;
}

- (MSMediaStreamDaemon)init
{
  v6.receiver = self;
  v6.super_class = MSMediaStreamDaemon;
  v2 = [(MSDaemon *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCA940]);
    retainedObjects = v2->_retainedObjects;
    v2->_retainedObjects = v3;
  }

  return v2;
}

@end