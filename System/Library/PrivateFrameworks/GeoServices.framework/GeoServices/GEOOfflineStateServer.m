@interface GEOOfflineStateServer
- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6;
- (GEOOfflineStateServer)initWithDaemon:(id)a3;
- (void)_suggestedOfflineStateChanged:(id)a3;
- (void)checkConnectivityWithMessage:(id)a3;
- (void)dealloc;
- (void)fetchStateWithRequest:(id)a3;
- (void)peerDidDisconnect:(id)a3;
- (void)setStateWithRequest:(id)a3;
- (void)subscribeWithRequest:(id)a3;
@end

@implementation GEOOfflineStateServer

- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = sub_100001334(v10);
  v14 = 0;
  if (v13 > 1034)
  {
    if (v13 == 1789)
    {
      v22 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
      v17 = v22;
      if (v22)
      {
        [v22 setSignpostId:a6];
        [(GEOOfflineStateServer *)self checkConnectivityWithMessage:v17];
        goto LABEL_14;
      }

      goto LABEL_17;
    }

    if (v13 == 1035)
    {
      v18 = objc_opt_class();
      v19 = sub_100001388(@"offlinestate", v10, v11, v18, v12);
      v17 = v19;
      if (v19)
      {
        [v19 setSignpostId:a6];
        [(GEOOfflineStateServer *)self fetchStateWithRequest:v17];
        goto LABEL_14;
      }

LABEL_17:
      v14 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    if (v13 == 845)
    {
      v20 = objc_opt_class();
      v21 = sub_100001388(@"offlinestate", v10, v11, v20, v12);
      v17 = v21;
      if (v21)
      {
        [v21 setSignpostId:a6];
        [(GEOOfflineStateServer *)self setStateWithRequest:v17];
        goto LABEL_14;
      }

      goto LABEL_17;
    }

    if (v13 == 962)
    {
      v15 = objc_opt_class();
      v16 = sub_100001388(@"offlinestate", v10, v11, v15, v12);
      v17 = v16;
      if (v16)
      {
        [v16 setSignpostId:a6];
        [(GEOOfflineStateServer *)self subscribeWithRequest:v17];
LABEL_14:
        v14 = 1;
LABEL_15:

        goto LABEL_16;
      }

      goto LABEL_17;
    }
  }

LABEL_16:

  return v14;
}

- (void)peerDidDisconnect:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10001CBB4;
  v11 = sub_10001CBC4;
  v12 = 0;
  peersIsolater = self->_peersIsolater;
  v6 = v4;
  geo_isolate_sync_data();
  sub_10001CE08(v8[5], 1);

  _Block_object_dispose(&v7, 8);
}

- (void)_suggestedOfflineStateChanged:(id)a3
{
  v9 = [a3 object];
  v4 = sub_10001D448(self, v9);
  v5 = v4;
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((v4 + 24));
    if (WeakRetained)
    {
      v7 = v5[2];
      geo_isolate_sync_data();
      v8 = [WeakRetained connection];
      [v8 initiateBarrierIfNecessary:0 delegate:v5];
    }
  }
}

- (void)checkConnectivityWithMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 preferredAuditToken];
  v6 = [v5 offlineCohortId];

  if (![v6 length])
  {
    v11 = @"Invalid cohort id";
LABEL_8:
    v9 = [NSError GEOErrorWithCode:-10 reason:v11];
    v10 = [NSDictionary _geo_replyDictionaryForError:v9 key:@"err"];
    [v4 sendReply:v10];
    goto LABEL_9;
  }

  v7 = [v4 peer];
  v8 = sub_10001D804(self, v7, v6);

  if (!v8)
  {
    v12 = GEOGetOfflineServiceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v4 peer];
      v14 = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Non-active peer attempted to check the connectivity for %{public}@ - %{public}@", &v14, 0x16u);
    }

    v11 = @"Not currently subscribed peer";
    goto LABEL_8;
  }

  v9 = +[GEOOfflineStateManager shared];
  v10 = [v4 peer];
  [v9 checkConnectivityForPeer:v10];
LABEL_9:
}

- (void)setStateWithRequest:(id)a3
{
  v31 = a3;
  v4 = [v31 preferredAuditToken];
  v32 = [v4 offlineCohortId];

  v30 = [[GEOOfflineServiceSetStateReply alloc] initWithRequest:v31];
  if ([v32 length])
  {
    v5 = sub_10001D448(self, v32);
    v6 = v5;
    if (v5 && (WeakRetained = objc_loadWeakRetained((v5 + 24)), v6, (v29 = WeakRetained) != 0))
    {
      v8 = [v31 peer];

      if (WeakRetained != v8)
      {
        v9 = GEOGetOfflineServiceLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = [v31 peer];
          *buf = 138543618;
          v57 = v32;
          v58 = 2114;
          v59 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Non-active peer attempted to set the offline state for %{public}@ - %{public}@", buf, 0x16u);
        }

        v11 = [NSError GEOErrorWithCode:-10 reason:@"Not currently subscribed peer"];
        [v30 setError:v11];

        v12 = v30;
        goto LABEL_26;
      }
    }

    else
    {
      v29 = 0;
    }

    if ([v32 length])
    {
      v15 = +[GEOOfflineStateManager shared];
      [v15 setState:objc_msgSend(v31 forCohortId:{"state"), v32}];

      [v30 send];
      v28 = [v31 peer];
      v16 = v32;
      if (self)
      {
        v45 = 0;
        v46 = &v45;
        v47 = 0x3032000000;
        v48 = sub_10001CBB4;
        v49 = sub_10001CBC4;
        v50 = 0;
        peersIsolater = self->_peersIsolater;
        v37 = _NSConcreteStackBlock;
        v38 = 3221225472;
        v39 = sub_10001DD74;
        v40 = &unk_1000826F8;
        v41 = self;
        v27 = v16;
        v42 = v16;
        v43 = v28;
        v44 = &v45;
        geo_isolate_sync_data();
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v18 = v46[5];
        v19 = [v18 countByEnumeratingWithState:&v33 objects:buf count:16];
        if (v19)
        {
          v20 = *v34;
          do
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v34 != v20)
              {
                objc_enumerationMutation(v18);
              }

              v22 = *(*(&v33 + 1) + 8 * i);
              if (v22)
              {
                v23 = objc_loadWeakRetained((v22 + 24));
                if (v23)
                {
                  v24 = *(v22 + 16);
                  v51 = _NSConcreteStackBlock;
                  v52 = 3221225472;
                  v53 = sub_10001DF68;
                  v54 = &unk_1000838C8;
                  v55 = v22;
                  geo_isolate_sync_data();
                  v25 = [v23 connection];
                  [v25 initiateBarrierIfNecessary:0 delegate:v22];
                }
              }
            }

            v19 = [v18 countByEnumeratingWithState:&v33 objects:buf count:16];
          }

          while (v19);
        }

        _Block_object_dispose(&v45, 8);
        v16 = v27;
      }

      goto LABEL_27;
    }

    v26 = [NSError GEOErrorWithCode:-10 reason:@"Invalid cohort id"];
    v12 = v30;
    [v30 setError:v26];

LABEL_26:
    [v12 send];
LABEL_27:

    v14 = v30;
    goto LABEL_28;
  }

  v13 = [NSError GEOErrorWithCode:-10 reason:@"Invalid cohort id"];
  v14 = v30;
  [v30 setError:v13];

  [v30 send];
LABEL_28:
}

- (void)subscribeWithRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 preferredAuditToken];
  v6 = [v5 offlineCohortId];

  v7 = [[GEOOfflineServiceStateSubscribeReply alloc] initWithRequest:v4];
  if ([v6 length])
  {
    v62 = 0;
    v63 = &v62;
    v64 = 0x2020000000;
    v65 = 0;
    v56 = 0;
    v57 = &v56;
    v58 = 0x3032000000;
    v59 = sub_10001CBB4;
    v60 = sub_10001CBC4;
    v61 = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = sub_10001CBB4;
    v54 = sub_10001CBC4;
    v55 = 0;
    if (![v4 subscribe])
    {
      [v7 setSubscribed:0];
      peersIsolater = self->_peersIsolater;
      v14 = v6;
      v42 = v4;
      geo_isolate_sync_data();
      *(v63 + 24) = v57[5] != 0;
      v15 = GEOGetOfflineServiceLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = v51[5];
        v17 = v57[5];
        *buf = 138543874;
        *&buf[4] = v14;
        *&buf[12] = 2114;
        *&buf[14] = v16;
        *&buf[22] = 2114;
        v104 = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "via unsubscribe: cohort %{public}@ ownership will switch from %{public}@ -> %{public}@", buf, 0x20u);
      }

      goto LABEL_32;
    }

    v8 = [v4 peer];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v44 = sub_10001EA8C;
    v45 = &unk_100081E10;
    v46 = v7;
    v47 = &v62;
    v48 = &v56;
    v49 = &v50;
    v9 = v8;
    v10 = v6;
    v11 = v43;
    if (!self)
    {
LABEL_31:

LABEL_32:
      [v7 send];
      sub_10001CE08(v57[5], *(v63 + 24));
      sub_10001CE08(v51[5], 0);
      _Block_object_dispose(&v50, 8);

      _Block_object_dispose(&v56, 8);
      _Block_object_dispose(&v62, 8);
      goto LABEL_33;
    }

    if (sub_10001D804(self, v9, v10))
    {
      v44(v11, 1, 0, 0);
      goto LABEL_31;
    }

    v86 = 0;
    v87 = &v86;
    v88 = 0x2020000000;
    v89 = [v9 hasEntitlement:@"com.apple.geod.offline.service.takeover"];
    if (v87[3])
    {
      v18 = GEOGetOfflineServiceLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v9;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Will allow takeover by peer %{public}@", buf, 0xCu);
      }

      v19 = v10;
      *&v96 = 0;
      *(&v96 + 1) = &v96;
      v97 = 0x3032000000;
      v98 = sub_10001CBB4;
      v99 = sub_10001CBC4;
      v100 = 0;
      v20 = self->_peersIsolater;
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10001F7C4;
      v104 = &unk_1000826F8;
      v108 = &v96;
      v105 = self;
      v106 = 0;
      v21 = v19;
      v107 = v21;
      geo_isolate_sync_data();
      v22 = *(*(&v96 + 1) + 40);

      _Block_object_dispose(&v96, 8);
      goto LABEL_21;
    }

    v23 = self->_peersIsolater;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10001EDC4;
    v104 = &unk_1000826F8;
    v105 = self;
    v106 = v10;
    v108 = &v86;
    v24 = v9;
    v107 = v24;
    geo_isolate_sync_data();
    if (*(v87 + 24) == 1)
    {
      v25 = GEOGetOfflineServiceLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(v96) = 138543362;
        *(&v96 + 4) = v24;
        v26 = "No active peers found, will allow subscription from peer %{public}@";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, v26, &v96, 0xCu);
      }
    }

    else
    {
      v25 = GEOGetOfflineServiceLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(v96) = 138543362;
        *(&v96 + 4) = v24;
        v26 = "Active peers found, will NOT allow subscription from peer %{public}@";
        goto LABEL_19;
      }
    }

LABEL_21:
    v80 = 0;
    v81 = &v80;
    v82 = 0x3032000000;
    v83 = sub_10001CBB4;
    v27 = self->_peersIsolater;
    v84 = sub_10001CBC4;
    v85 = 0;
    *&v96 = _NSConcreteStackBlock;
    *(&v96 + 1) = 3221225472;
    v97 = sub_10001EEC4;
    v98 = &unk_1000826F8;
    v99 = self;
    v28 = v10;
    v100 = v28;
    v102 = &v80;
    v29 = v9;
    v101 = v29;
    geo_isolate_sync_data();
    if (!v81[5])
    {
      v30 = sub_10001EF78([_GEOOfflinePeerHelper alloc], v29, v28);
      v31 = v81[5];
      v81[5] = v30;
    }

    if (*(v87 + 24) == 1)
    {
      v74 = 0;
      v75 = &v74;
      v76 = 0x3032000000;
      v77 = sub_10001CBB4;
      v32 = self->_peersIsolater;
      v78 = sub_10001CBC4;
      v79 = 0;
      v66 = _NSConcreteStackBlock;
      v67 = 3221225472;
      v68 = sub_10001F034;
      v69 = &unk_100083990;
      v70 = self;
      v33 = v28;
      v71 = v33;
      v72 = &v74;
      v73 = &v80;
      geo_isolate_sync_data();
      sub_10001ED08(v81[5], 1);
      v34 = GEOGetOfflineServiceLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        v35 = v75[5];
        v36 = v81[5];
        *v90 = 138543874;
        v91 = v33;
        v92 = 2114;
        v93 = v35;
        v94 = 2114;
        v95 = v36;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "via subscribe: cohort %{public}@ ownership will switch from %{public}@ -> %{public}@", v90, 0x20u);
      }

      v44(v11, 1, v81[5], v75[5]);
      _Block_object_dispose(&v74, 8);
    }

    else
    {
      v74 = 0;
      v75 = &v74;
      v76 = 0x3032000000;
      v77 = sub_10001CBB4;
      v37 = self->_peersIsolater;
      v78 = sub_10001CBC4;
      v79 = 0;
      v66 = _NSConcreteStackBlock;
      v67 = 3221225472;
      v68 = sub_10001F0D8;
      v69 = &unk_100083990;
      v70 = self;
      v38 = v28;
      v71 = v38;
      v72 = &v74;
      v73 = &v80;
      geo_isolate_sync_data();
      sub_10001ED08(v81[5], 1);
      v39 = GEOGetOfflineServiceLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = v75[5];
        v41 = v81[5];
        *v90 = 138543874;
        v91 = v38;
        v92 = 2114;
        v93 = v40;
        v94 = 2114;
        v95 = v41;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "via subscribe: cohort %{public}@ ownership will NOT switch from %{public}@ -> %{public}@", v90, 0x20u);
      }

      v44(v11, 0, v81[5], 0);
      _Block_object_dispose(&v74, 8);
    }

    _Block_object_dispose(&v80, 8);
    _Block_object_dispose(&v86, 8);
    goto LABEL_31;
  }

  v12 = [NSError GEOErrorWithCode:-10 reason:@"Invalid cohort id"];
  [v7 setError:v12];

  [v7 send];
LABEL_33:
}

- (void)fetchStateWithRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 preferredAuditToken];
  v6 = [v5 offlineCohortId];

  v7 = [[GEOOfflineServiceStateFetchStateReply alloc] initWithRequest:v4];
  if ([v6 length])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    peersIsolater = self->_peersIsolater;
    v13 = self;
    v9 = v6;
    v15 = v4;
    geo_isolate_sync_data();
    if (*(v18 + 24) == 1)
    {
      v10 = [GEOOfflineStateManager shared:_NSConcreteStackBlock];
      [v7 setCurrentSuggestedState:{objc_msgSend(v10, "currentSuggestedStateForCohortId:", v9)}];
    }

    else
    {
      [v7 setCurrentSuggestedState:{0, _NSConcreteStackBlock, 3221225472, sub_10001FA18, &unk_1000826F8, v13, v9, v15, &v17}];
    }

    v12 = +[GEOOfflineStateManager shared];
    [v7 setCurrentState:{objc_msgSend(v12, "currentStateForCohortId:", v9)}];

    [v7 send];
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v11 = [NSError GEOErrorWithCode:-10 reason:@"Invalid cohort id"];
    [v7 setError:v11];

    [v7 send];
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = GEOOfflineStateServer;
  [(GEOOfflineStateServer *)&v4 dealloc];
}

- (GEOOfflineStateServer)initWithDaemon:(id)a3
{
  v10.receiver = self;
  v10.super_class = GEOOfflineStateServer;
  v3 = [(GEOOfflineStateServer *)&v10 initWithDaemon:a3];
  if (v3)
  {
    v4 = geo_isolater_create();
    peersIsolater = v3->_peersIsolater;
    v3->_peersIsolater = v4;

    v6 = [NSMutableDictionary dictionaryWithCapacity:10];
    peerHelpers = v3->_peerHelpers;
    v3->_peerHelpers = v6;

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v3 selector:"_suggestedOfflineStateChanged:" name:GEOOfflineSuggestedStateChangedNotification object:0];
  }

  return v3;
}

@end