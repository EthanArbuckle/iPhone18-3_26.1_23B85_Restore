@interface _GEOOfflinePeerHelper
- (id)description;
- (void)geoXPCConnectionIsReadyToSend:(id)send;
@end

@implementation _GEOOfflinePeerHelper

- (id)description
{
  WeakRetained = objc_loadWeakRetained(&self->_peer);
  peerID = [WeakRetained peerID];
  v5 = objc_loadWeakRetained(&self->_peer);
  bundleIdentifier = [v5 bundleIdentifier];
  v7 = [NSString stringWithFormat:@"<Helper %p: peerId: %@ - %@>", self, peerID, bundleIdentifier];

  return v7;
}

- (void)geoXPCConnectionIsReadyToSend:(id)send
{
  sendCopy = send;
  WeakRetained = objc_loadWeakRetained(&self->_peer);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    connection = [WeakRetained connection];

    if (connection == sendCopy)
    {
      v30 = 0;
      v31 = &v30;
      v32 = 0x2020000000;
      v33 = 0;
      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v29 = 4;
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      isolater = self->_isolater;
      geo_isolate_sync_data();
      v9 = v27[3];
      if (v9 > 2)
      {
        if ((v9 - 3) < 2)
        {
LABEL_25:
          _Block_object_dispose(&v22, 8);
          _Block_object_dispose(&v26, 8);
          _Block_object_dispose(&v30, 8);
          goto LABEL_26;
        }
      }

      else
      {
        if (v9)
        {
          if (v9 == 1)
          {
            v10 = objc_alloc_init(GEOOfflineServiceSuggestedStateChanged);
            v15 = [GEOOfflineStateManager shared:_NSConcreteStackBlock];
            [v10 setCurrentState:{objc_msgSend(v15, "currentSuggestedStateForCohortId:", self->_cohortId)}];

            v12 = GEOGetOfflineServiceLog();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              currentState = [v10 currentState];
              *buf = 67109378;
              *v35 = currentState;
              *&v35[4] = 2114;
              *&v35[6] = self;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Notifying peer of suggestion change to %d - %{public}@", buf, 0x12u);
            }
          }

          else
          {
            if (v9 != 2)
            {
              goto LABEL_23;
            }

            v10 = objc_alloc_init(GEOOfflineServiceOfflineStateChanged);
            v11 = [GEOOfflineStateManager shared:_NSConcreteStackBlock];
            [v10 setCurrentState:{objc_msgSend(v11, "currentStateForCohortId:", self->_cohortId)}];

            v12 = GEOGetOfflineServiceLog();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              [v10 currentState];
              v13 = GEOOfflineStateAsString();
              *buf = 138543618;
              *v35 = v13;
              *&v35[8] = 2114;
              *&v35[10] = self;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Notifying peer of state change to current: %{public}@ - %{public}@", buf, 0x16u);
            }
          }
        }

        else
        {
          v10 = objc_alloc_init(GEOOfflineServiceSubscriptionStateChanged);
          [v10 setIsSubscribed:{*(v31 + 24), _NSConcreteStackBlock, 3221225472, sub_10001F758, &unk_100081EF0, self, &v30, &v26, &v22}];
          if (*(v31 + 24) == 1)
          {
            v14 = +[GEOOfflineStateManager shared];
            [v10 setCurrentState:{objc_msgSend(v14, "currentSuggestedStateForCohortId:", self->_cohortId)}];
          }

          else
          {
            [v10 setCurrentState:0];
          }

          v12 = GEOGetOfflineServiceLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v17 = *(v31 + 24);
            currentState2 = [v10 currentState];
            v19 = "NO";
            *buf = 136446722;
            if (v17)
            {
              v19 = "YES";
            }

            *v35 = v19;
            *&v35[8] = 1026;
            *&v35[10] = currentState2;
            *&v35[14] = 2114;
            *&v35[16] = self;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Notifying peer of subscription state change to: %{public}s - state: %{public}d - %{public}@", buf, 0x1Cu);
          }
        }

        connection2 = [v6 connection];
        [v10 send:connection2];
      }

LABEL_23:
      if (*(v23 + 24) == 1)
      {
        connection3 = [v6 connection];
        [connection3 initiateBarrierIfNecessary:0 delegate:self];
      }

      goto LABEL_25;
    }
  }

LABEL_26:
}

@end