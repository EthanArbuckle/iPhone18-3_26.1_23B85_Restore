@interface CWFNetworkDenyList
- (BOOL)_evaluateTriggersForDenyListRemove:(id)remove denyListRemoveReason:(unint64_t)reason SSID:(id)d;
- (BOOL)_evaluateTriggersForDenyListing:(id)listing reason:(unint64_t)reason reasonData:(int64_t)data BSSID:(id)d SSID:(id)iD state:(unint64_t)state;
- (BOOL)_ignoreTriggersForDeviceProfile:(unint64_t)profile denyListItem:(id)item;
- (BOOL)_meetsThresholds:(unint64_t)thresholds count:(unsigned int)count forSSIDThresholds:(BOOL)dThresholds BSSID:(id)d SSID:(id)iD;
- (BOOL)isNetworkDenyListedForAutoJoinDueToTrigDisc:(id)disc RSSI:(int64_t *)i timestamp:(double *)timestamp;
- (BOOL)isNetworkInDenyListedState:(unint64_t)state scanResult:(id)result;
- (BOOL)isNetworkTemporarilyDenyListedForAutoJoin:(id)join;
- (CWFNetworkDenyList)initWithDenyListDeviceProfile:(unint64_t)profile;
- (id)_findNetworkDenyListItem:(id)item;
- (id)_findNetworkDenyListItemsForSSID:(id)d;
- (id)denyListedNetworkSSIDs:(unint64_t)ds;
- (id)denyListedReasonHistoryForNetwork:(id)network state:(unint64_t)state timestamps:(id)timestamps reasonData:(id)data;
- (id)networksInDenyListedState:(unint64_t)state;
- (id)networksInDenyListedStateHistory:(unint64_t)history;
- (id)reasonsForNetworkInDenyListedState:(id)state state:(unint64_t)a4 timestamps:(id)timestamps reasonData:(id)data;
- (int64_t)RSSIWhenNetworkWasDenyListed:(id)listed;
- (int64_t)denyListThresholdForReason:(unint64_t)reason forSSIDThresholds:(BOOL)thresholds;
- (unint64_t)denyListedNetworkCount;
- (void)_printDenyList;
- (void)processDenyListedBSSForMetrics:(id)metrics;
- (void)removeAllDenyListEntriesWithNetworkName:(id)name;
- (void)removeAllDenyListedItems;
- (void)removeDenyListStateWithDenyListRemoveReason:(unint64_t)reason;
- (void)removeExpiredDenyListedState:(unint64_t)state;
- (void)removeNetworkDenyListInfoForTrigger:(unint64_t)trigger forNetwork:(id)network;
- (void)removeNetworkDenyListInfoWithReason:(unint64_t)reason forScanResult:(id)result;
- (void)setDefaultDenyListThresholds;
- (void)setDenyListedStateExpiryIntervalInSec:(double)sec state:(unint64_t)state;
- (void)setEnabled:(BOOL)enabled;
- (void)setNetworkDenyListInfo:(id)info forScanResult:(id)result;
@end

@implementation CWFNetworkDenyList

- (void)_printDenyList
{
  v117 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [(NSMutableArray *)self->_denyList count];
  v5 = CWFGetOSLog();
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      v7 = CWFGetOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v109 = "[CWFNetworkDenyList _printDenyList]";
      LODWORD(v79) = 12;
      v78 = buf;
      _os_log_send_and_compose_impl();
    }

    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v8 = self->_denyList;
    v83 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v101 objects:v116 count:16];
    if (v83)
    {
      v80 = v3;
      v10 = MEMORY[0x1E69E9C10];
      v81 = *v102;
      v82 = v8;
      do
      {
        v11 = 0;
        do
        {
          if (*v102 != v81)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v101 + 1) + 8 * v11);
          v13 = objc_alloc(MEMORY[0x1E696AEC0]);
          scanResultForNetworkDenyListItem = [v12 scanResultForNetworkDenyListItem];
          sSID = [scanResultForNetworkDenyListItem SSID];
          v86 = [v13 initWithData:sSID encoding:4];

          scanResultForNetworkDenyListItem2 = [v12 scanResultForNetworkDenyListItem];
          bSSID = [scanResultForNetworkDenyListItem2 BSSID];
          v18 = [bSSID copy];

          statesCurrent = [v12 statesCurrent];
          v20 = [statesCurrent count];

          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138413058;
            v21 = "YES";
            if (!v20)
            {
              v21 = "NO";
            }

            v109 = v86;
            v110 = 2112;
            v111 = v18;
            v112 = 2080;
            v113 = v21;
            v114 = 1024;
            v115 = v20;
            _os_log_impl(&dword_1E0BBF000, v10, OS_LOG_TYPE_DEFAULT, "Network '%@', BSSID %@, isDenyListed:%s, present in %d denylist states", buf, 0x26u);
          }

          v84 = v18;
          v85 = v11;
          v88 = [MEMORY[0x1E696AD60] stringWithString:{@" DenyListHistory: ", v78, v79}];
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          v100 = 0u;
          v22 = v12;
          statesHistory = [v12 statesHistory];
          v24 = [statesHistory countByEnumeratingWithState:&v97 objects:v107 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = 0;
            v27 = *v98;
            do
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v98 != v27)
                {
                  objc_enumerationMutation(statesHistory);
                }

                v29 = *(*(&v97 + 1) + 8 * i);
                stateString = [v29 stateString];
                [v29 stateTimestamp];
                v31 = MEMORY[0x1E696AEC0];
                v32 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:?];
                v33 = sub_1E0BCC248(v32);
                v34 = [v31 stringWithFormat:@"[%d] %@ @ %@, ", v26, stateString, v33];

                [v88 appendString:v34];
                v26 = (v26 + 1);
              }

              v25 = [statesHistory countByEnumeratingWithState:&v97 objects:v107 count:16];
            }

            while (v25);
            v35 = v26 > 0;
            v10 = MEMORY[0x1E69E9C10];
          }

          else
          {
            v35 = 0;
          }

          v36 = CWFGetOSLog();
          v37 = v22;
          if (v36)
          {
            v38 = CWFGetOSLog();
          }

          else
          {
            v39 = v10;
            v38 = v10;
          }

          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v40 = @"<empty>";
            if (v35)
            {
              v40 = &stru_1F5B8FC80;
            }

            v109 = v88;
            v110 = 2112;
            v111 = v40;
            LODWORD(v79) = 22;
            v78 = buf;
            _os_log_send_and_compose_impl();
          }

          v87 = [MEMORY[0x1E696AD60] stringWithString:@" DenyListStates: "];
          v93 = 0u;
          v94 = 0u;
          v95 = 0u;
          v96 = 0u;
          statesCurrent2 = [v22 statesCurrent];
          v42 = [statesCurrent2 countByEnumeratingWithState:&v93 objects:v106 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = 0;
            v45 = *v94;
            do
            {
              for (j = 0; j != v43; ++j)
              {
                if (*v94 != v45)
                {
                  objc_enumerationMutation(statesCurrent2);
                }

                v47 = *(*(&v93 + 1) + 8 * j);
                stateString2 = [v47 stateString];
                [v47 stateTimestamp];
                v49 = MEMORY[0x1E696AEC0];
                v50 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:?];
                v51 = sub_1E0BCC248(v50);
                v52 = [v49 stringWithFormat:@"[%d] %@ @ %@, ", v44, stateString2, v51];

                [v87 appendString:v52];
                v44 = (v44 + 1);
              }

              v43 = [statesCurrent2 countByEnumeratingWithState:&v93 objects:v106 count:16];
            }

            while (v43);
            v53 = v44 > 0;
            v10 = MEMORY[0x1E69E9C10];
          }

          else
          {
            v53 = 0;
          }

          v54 = CWFGetOSLog();
          if (v54)
          {
            v55 = CWFGetOSLog();
          }

          else
          {
            v56 = v10;
            v55 = v10;
          }

          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v57 = @"<empty>";
            if (v53)
            {
              v57 = &stru_1F5B8FC80;
            }

            v109 = v87;
            v110 = 2112;
            v111 = v57;
            LODWORD(v79) = 22;
            v78 = buf;
            _os_log_send_and_compose_impl();
          }

          v58 = [MEMORY[0x1E696AD60] stringWithString:@" Triggers: "];
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          denyListTriggers = [v37 denyListTriggers];
          v60 = [denyListTriggers countByEnumeratingWithState:&v89 objects:v105 count:16];
          if (v60)
          {
            v61 = v60;
            v62 = 0;
            v63 = *v90;
            do
            {
              for (k = 0; k != v61; ++k)
              {
                if (*v90 != v63)
                {
                  objc_enumerationMutation(denyListTriggers);
                }

                v65 = *(*(&v89 + 1) + 8 * k);
                reasonString = [v65 reasonString];
                [v65 reasonTimestamp];
                v67 = MEMORY[0x1E696AEC0];
                v68 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:?];
                v69 = sub_1E0BCC248(v68);
                v70 = [v67 stringWithFormat:@"[%d] %@ @ %@, ", v62, reasonString, v69];

                [v58 appendString:v70];
                v62 = (v62 + 1);
              }

              v61 = [denyListTriggers countByEnumeratingWithState:&v89 objects:v105 count:16];
            }

            while (v61);
            v71 = v62 > 0;
            v10 = MEMORY[0x1E69E9C10];
          }

          else
          {
            v71 = 0;
          }

          v72 = CWFGetOSLog();
          if (v72)
          {
            v73 = CWFGetOSLog();
          }

          else
          {
            v74 = v10;
            v73 = v10;
          }

          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v75 = @"<empty>";
            if (v71)
            {
              v75 = &stru_1F5B8FC80;
            }

            v109 = v58;
            v110 = 2112;
            v111 = v75;
            LODWORD(v79) = 22;
            v78 = buf;
            _os_log_send_and_compose_impl();
          }

          v11 = v85 + 1;
          v8 = v82;
        }

        while (v85 + 1 != v83);
        v83 = [(NSMutableArray *)v82 countByEnumeratingWithState:&v101 objects:v116 count:16];
      }

      while (v83);
      v3 = v80;
    }
  }

  else
  {
    if (v5)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v76 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(&v8->super.super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v109 = "[CWFNetworkDenyList _printDenyList]";
      _os_log_send_and_compose_impl();
    }
  }

  objc_autoreleasePoolPop(v3);
  v77 = *MEMORY[0x1E69E9840];
}

- (unint64_t)denyListedNetworkCount
{
  v34 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = self->_denyList;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = *v25;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        v9 = v5;
        if (*v25 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v5 = *(*(&v24 + 1) + 8 * i);

        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        statesCurrent = [v5 statesCurrent];
        v11 = [statesCurrent countByEnumeratingWithState:&v20 objects:v32 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
LABEL_8:
          v14 = 0;
          while (1)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(statesCurrent);
            }

            if ([*(*(&v20 + 1) + 8 * v14) state])
            {
              break;
            }

            if (v12 == ++v14)
            {
              v12 = [statesCurrent countByEnumeratingWithState:&v20 objects:v32 count:16];
              if (v12)
              {
                goto LABEL_8;
              }

              break;
            }
          }
        }
      }

      v6 += v4;
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0;
  }

  v15 = CWFGetOSLog();
  if (v15)
  {
    v16 = CWFGetOSLog();
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v28 = 136446466;
    v29 = "[CWFNetworkDenyList denyListedNetworkCount]";
    v30 = 2048;
    v31 = v6;
    _os_log_send_and_compose_impl();
  }

  v18 = *MEMORY[0x1E69E9840];
  return v6;
}

- (CWFNetworkDenyList)initWithDenyListDeviceProfile:(unint64_t)profile
{
  v27 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = CWFNetworkDenyList;
  v4 = [(CWFNetworkDenyList *)&v24 init];
  v5 = v4;
  if (!v4)
  {
    v15 = CWFGetOSLog();
    if (v15)
    {
      v16 = CWFGetOSLog();
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v25 = 136446210;
    v26 = "[CWFNetworkDenyList initWithDenyListDeviceProfile:]";
    goto LABEL_27;
  }

  [(CWFNetworkDenyList *)v4 setEnabled:0];
  [(CWFNetworkDenyList *)v5 setWowDenyListExpiry:600.0];
  [(CWFNetworkDenyList *)v5 setAutoJoinkDenyListExpiry:300.0];
  [(CWFNetworkDenyList *)v5 setBSSDenyListExpiry:300.0];
  v5->_profile = profile;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  denyList = v5->_denyList;
  v5->_denyList = v6;

  if (!v5->_denyList)
  {
    v17 = CWFGetOSLog();
    if (v17)
    {
      v16 = CWFGetOSLog();
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v25 = 136446210;
    v26 = "[CWFNetworkDenyList initWithDenyListDeviceProfile:]";
    goto LABEL_27;
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  SSIDThresholds = v5->_SSIDThresholds;
  v5->_SSIDThresholds = v8;

  if (!v5->_SSIDThresholds)
  {
    v18 = CWFGetOSLog();
    if (v18)
    {
      v16 = CWFGetOSLog();
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v25 = 136446210;
    v26 = "[CWFNetworkDenyList initWithDenyListDeviceProfile:]";
    goto LABEL_27;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  BSSIDThresholds = v5->_BSSIDThresholds;
  v5->_BSSIDThresholds = v10;

  if (!v5->_BSSIDThresholds)
  {
    v19 = CWFGetOSLog();
    if (v19)
    {
      v16 = CWFGetOSLog();
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v25 = 136446210;
    v26 = "[CWFNetworkDenyList initWithDenyListDeviceProfile:]";
LABEL_27:
    _os_log_send_and_compose_impl();
LABEL_28:

    [(NSMutableArray *)v5->_denyList removeAllObjects];
    v12 = 0;
    goto LABEL_6;
  }

  [(CWFNetworkDenyList *)v5 setDefaultDenyListThresholds];
  v12 = v5;
LABEL_6:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)setDefaultDenyListThresholds
{
  v3 = [(NSArray *)self->_SSIDThresholds mutableCopy];
  v4 = [(NSArray *)self->_BSSIDThresholds mutableCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
  [(NSArray *)v4 setObject:v5 atIndexedSubscript:0];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
  [(NSArray *)v4 setObject:v6 atIndexedSubscript:1];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
  [(NSArray *)v4 setObject:v7 atIndexedSubscript:2];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:3];
  [(NSArray *)v4 setObject:v8 atIndexedSubscript:3];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:3];
  [(NSArray *)v4 setObject:v9 atIndexedSubscript:4];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:10];
  [(NSArray *)v4 setObject:v10 atIndexedSubscript:5];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
  [(NSArray *)v4 setObject:v11 atIndexedSubscript:6];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:3];
  [(NSArray *)v4 setObject:v12 atIndexedSubscript:7];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
  [(NSArray *)v3 setObject:v13 atIndexedSubscript:0];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
  [(NSArray *)v3 setObject:v14 atIndexedSubscript:1];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
  [(NSArray *)v3 setObject:v15 atIndexedSubscript:2];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:5];
  [(NSArray *)v3 setObject:v16 atIndexedSubscript:3];

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:5];
  [(NSArray *)v3 setObject:v17 atIndexedSubscript:4];

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:10];
  [(NSArray *)v3 setObject:v18 atIndexedSubscript:5];

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
  [(NSArray *)v3 setObject:v19 atIndexedSubscript:6];

  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:3];
  [(NSArray *)v3 setObject:v20 atIndexedSubscript:7];

  SSIDThresholds = self->_SSIDThresholds;
  self->_SSIDThresholds = v3;
  v23 = v3;

  BSSIDThresholds = self->_BSSIDThresholds;
  self->_BSSIDThresholds = v4;
}

- (void)setDenyListedStateExpiryIntervalInSec:(double)sec state:(unint64_t)state
{
  v17 = *MEMORY[0x1E69E9840];
  if (state == 3)
  {
    if (sec == 0.0 || sec > 3600.0)
    {
      v10 = CWFGetOSLog();
      if (v10)
      {
        v8 = CWFGetOSLog();
      }

      else
      {
        v8 = MEMORY[0x1E69E9C10];
        v14 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v6 = *MEMORY[0x1E69E9840];

    [(CWFNetworkDenyList *)self setWowDenyListExpiry:sec];
  }

  else
  {
    if (state != 2)
    {
      if (state == 1)
      {
        if (sec != 0.0 && sec <= 86400.0)
        {
          v4 = *MEMORY[0x1E69E9840];

          [(CWFNetworkDenyList *)self setAutoJoinkDenyListExpiry:sec];
          return;
        }

        v11 = CWFGetOSLog();
        if (v11)
        {
          v8 = CWFGetOSLog();
        }

        else
        {
          v8 = MEMORY[0x1E69E9C10];
          v15 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
LABEL_39:

          v16 = *MEMORY[0x1E69E9840];
          return;
        }
      }

      else
      {
        v7 = CWFGetOSLog();
        if (v7)
        {
          v8 = CWFGetOSLog();
        }

        else
        {
          v8 = MEMORY[0x1E69E9C10];
          v12 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }
      }

LABEL_38:
      _os_log_send_and_compose_impl();
      goto LABEL_39;
    }

    if (sec == 0.0 || sec > 300.0)
    {
      v9 = CWFGetOSLog();
      if (v9)
      {
        v8 = CWFGetOSLog();
      }

      else
      {
        v8 = MEMORY[0x1E69E9C10];
        v13 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v5 = *MEMORY[0x1E69E9840];

    [(CWFNetworkDenyList *)self setBSSDenyListExpiry:sec];
  }
}

- (int64_t)denyListThresholdForReason:(unint64_t)reason forSSIDThresholds:(BOOL)thresholds
{
  if (thresholds)
  {
    [(CWFNetworkDenyList *)self SSIDThresholds];
  }

  else
  {
    [(CWFNetworkDenyList *)self BSSIDThresholds];
  }
  v5 = ;
  v6 = [v5 objectAtIndexedSubscript:reason];
  integerValue = [v6 integerValue];

  return integerValue;
}

- (void)setNetworkDenyListInfo:(id)info forScanResult:(id)result
{
  v57 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  resultCopy = result;
  if ([(CWFNetworkDenyList *)self enabled])
  {
    v8 = [(CWFNetworkDenyList *)self _findNetworkDenyListItem:resultCopy];
    if (v8)
    {
      p_super = v8;
      v10 = 0;
    }

    else
    {
      v12 = [[CWFNetworkDenyListItem alloc] initWithDenyListNetwork:resultCopy];
      if (!v12)
      {
        v33 = CWFGetOSLog();
        if (v33)
        {
          denyListDidUpdateHandler2 = CWFGetOSLog();
        }

        else
        {
          denyListDidUpdateHandler2 = MEMORY[0x1E69E9C10];
          v34 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(denyListDidUpdateHandler2, OS_LOG_TYPE_ERROR))
        {
          v39 = 136446210;
          v40 = "[CWFNetworkDenyList setNetworkDenyListInfo:forScanResult:]";
          _os_log_send_and_compose_impl();
        }

        v13 = 0;
        v10 = 0;
        p_super = 0;
        goto LABEL_25;
      }

      v10 = v12;
      p_super = &v10->super;
    }

    if (![infoCopy state])
    {
      [infoCopy setState:5];
    }

    if (-[CWFNetworkDenyList _ignoreTriggersForDeviceProfile:denyListItem:](self, "_ignoreTriggersForDeviceProfile:denyListItem:", [infoCopy reason], p_super))
    {
      v13 = 0;
LABEL_26:

      goto LABEL_27;
    }

    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    scanResultForNetworkDenyListItem = [p_super scanResultForNetworkDenyListItem];
    sSID = [scanResultForNetworkDenyListItem SSID];
    v13 = [v14 initWithData:sSID encoding:4];

    v17 = CWFGetOSLog();
    if (v17)
    {
      v18 = CWFGetOSLog();
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = CWFStringFromDenyListAddReason([infoCopy reason]);
      bSSID = [infoCopy BSSID];
      v38 = v10;
      redactedForWiFi = [bSSID redactedForWiFi];
      v39 = 136448258;
      v40 = "[CWFNetworkDenyList setNetworkDenyListInfo:forScanResult:]";
      v41 = 2082;
      v42 = "CWFNetworkDenyList.m";
      v43 = 1024;
      v44 = 190;
      v45 = 2114;
      v46 = v21;
      v47 = 2114;
      v48 = v13;
      v49 = 2114;
      v50 = redactedForWiFi;
      v51 = 2048;
      reason = [infoCopy reason];
      v53 = 2048;
      reasonData = [infoCopy reasonData];
      v55 = 2048;
      state = [infoCopy state];
      LODWORD(v36) = 88;
      v35 = &v39;
      _os_log_send_and_compose_impl();

      v10 = v38;
    }

    reason2 = [infoCopy reason];
    reasonData2 = [infoCopy reasonData];
    bSSID2 = [infoCopy BSSID];
    [p_super addDenyListTrigger:reason2 reasonData:reasonData2 BSSID:bSSID2];

    reason3 = [infoCopy reason];
    reasonData3 = [infoCopy reasonData];
    bSSID3 = [infoCopy BSSID];
    v29 = -[CWFNetworkDenyList _evaluateTriggersForDenyListing:reason:reasonData:BSSID:SSID:state:](self, "_evaluateTriggersForDenyListing:reason:reasonData:BSSID:SSID:state:", p_super, reason3, reasonData3, bSSID3, v13, [infoCopy state]);

    if (([(NSMutableArray *)self->_denyList containsObject:p_super]& 1) == 0)
    {
      [(NSMutableArray *)self->_denyList addObject:p_super];
    }

    [(CWFNetworkDenyList *)self _printDenyList:v35];
    if (!v29)
    {
      goto LABEL_26;
    }

    denyListDidUpdateHandler = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];

    if (!denyListDidUpdateHandler)
    {
      goto LABEL_26;
    }

    denyListDidUpdateHandler2 = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];
    (*(denyListDidUpdateHandler2 + 16))(denyListDidUpdateHandler2, &unk_1F5B89C50);
LABEL_25:

    goto LABEL_26;
  }

  v11 = CWFGetOSLog();
  if (v11)
  {
    p_super = CWFGetOSLog();
  }

  else
  {
    p_super = MEMORY[0x1E69E9C10];
    v19 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
  {
    v39 = 136446210;
    v40 = "[CWFNetworkDenyList setNetworkDenyListInfo:forScanResult:]";
    _os_log_send_and_compose_impl();
  }

LABEL_27:

  v32 = *MEMORY[0x1E69E9840];
}

- (BOOL)_evaluateTriggersForDenyListing:(id)listing reason:(unint64_t)reason reasonData:(int64_t)data BSSID:(id)d SSID:(id)iD state:(unint64_t)state
{
  v110 = *MEMORY[0x1E69E9840];
  listingCopy = listing;
  dCopy = d;
  iDCopy = iD;
  if (!listingCopy)
  {
    v75 = CWFGetOSLog();
    if (v75)
    {
      denyListTriggers = CWFGetOSLog();
    }

    else
    {
      denyListTriggers = MEMORY[0x1E69E9C10];
      v76 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(denyListTriggers, OS_LOG_TYPE_ERROR))
    {
      v101 = 136446210;
      v102 = "[CWFNetworkDenyList _evaluateTriggersForDenyListing:reason:reasonData:BSSID:SSID:state:]";
      _os_log_send_and_compose_impl();
    }

    goto LABEL_126;
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  denyListTriggers = [listingCopy denyListTriggers];
  v96 = [denyListTriggers countByEnumeratingWithState:&v97 objects:v109 count:16];
  if (!v96)
  {
LABEL_126:

    v74 = 0;
    goto LABEL_127;
  }

  v82 = 0;
  v83 = 0;
  v91 = 0;
  v93 = 0;
  v89 = 0;
  v87 = 0;
  v85 = 0;
  v95 = *v98;
  v81 = state & 0xFFFFFFFFFFFFFFFELL;
  v88 = dCopy;
  stateCopy = state;
  obj = denyListTriggers;
  do
  {
    v15 = 0;
    do
    {
      if (*v98 != v95)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v97 + 1) + 8 * v15);
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSince1970];
      v19 = v18;

      reason = [v16 reason];
      reasonData = [v16 reasonData];
      [v16 reasonTimestamp];
      v23 = v22;
      if (![listingCopy enterprisePolicy] || reason > 7 || (v24 = v19 - v23, v19 - v23 > 300.0))
      {
        if (![listingCopy enterprisePolicy])
        {
          goto LABEL_29;
        }

        v31 = CWFGetOSLog();
        if (v31)
        {
          v32 = CWFGetOSLog();
        }

        else
        {
          v32 = MEMORY[0x1E69E9C10];
          v33 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v34 = CWFStringFromDenyListAddReason(reason);
          bSSID = [v16 BSSID];
          redactedForWiFi = [bSSID redactedForWiFi];
          v101 = 136446978;
          v102 = "[CWFNetworkDenyList _evaluateTriggersForDenyListing:reason:reasonData:BSSID:SSID:state:]";
          v103 = 2114;
          v104 = v34;
          v105 = 2114;
          v106 = redactedForWiFi;
          v107 = 2048;
          v108 = v19 - v23;
          LODWORD(v80) = 42;
          v79 = &v101;
          _os_log_send_and_compose_impl();

          state = stateCopy;
          goto LABEL_27;
        }

LABEL_28:

        goto LABEL_29;
      }

      bSSID2 = [v16 BSSID];
      v26 = [bSSID2 compare:dCopy options:1];

      v27 = v26 == 0;
      v28 = v89;
      if (!v26)
      {
        v28 = v89 + 1;
      }

      if (reason != reason)
      {
        v27 = 0;
      }

      v93 += v27;
      if (reason == reason)
      {
        v29 = v91 + 1;
      }

      else
      {
        v29 = v91;
      }

      v91 = __PAIR64__(HIDWORD(v91), v29) + 0x100000000;
      v89 = v28;
      if (v28 > 0x12 || [(CWFNetworkDenyList *)self _meetsThresholds:reason count:v93 forSSIDThresholds:0 BSSID:dCopy SSID:iDCopy]|| HIDWORD(v91) > 0x12 || [(CWFNetworkDenyList *)self _meetsThresholds:reason count:v91 forSSIDThresholds:1 BSSID:dCopy SSID:iDCopy])
      {
        if (state == 5 || state == 3)
        {
          [(CWFNetworkDenyList *)self _setDenyListState:listingCopy state:3 reason:reason reasonData:data];
          v85 = 1;
          goto LABEL_29;
        }

        v47 = CWFGetOSLog();
        if (v47)
        {
          v32 = CWFGetOSLog();
        }

        else
        {
          v32 = MEMORY[0x1E69E9C10];
          v52 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v34 = CWFStringFromDenyListAddReason(reason);
          bSSID = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v19];
          v101 = 136446722;
          v102 = "[CWFNetworkDenyList _evaluateTriggersForDenyListing:reason:reasonData:BSSID:SSID:state:]";
          v103 = 2114;
          v104 = v34;
          v105 = 2114;
          v106 = bSSID;
          LODWORD(v80) = 32;
          v79 = &v101;
          _os_log_send_and_compose_impl();
LABEL_27:

          dCopy = v88;
        }

        goto LABEL_28;
      }

LABEL_29:
      if (reason != reason)
      {
        v39 = CWFGetOSLog();
        if (v39)
        {
          v40 = CWFGetOSLog();
        }

        else
        {
          v40 = MEMORY[0x1E69E9C10];
          v44 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          v45 = CWFStringFromDenyListAddReason(reason);
          v46 = CWFStringFromDenyListAddReason(reason);
          v101 = 136446722;
          v102 = "[CWFNetworkDenyList _evaluateTriggersForDenyListing:reason:reasonData:BSSID:SSID:state:]";
          v103 = 2114;
          v104 = v45;
          v105 = 2114;
          v106 = v46;
          LODWORD(v80) = 32;
          v79 = &v101;
          goto LABEL_48;
        }

        goto LABEL_49;
      }

      if (reason <= 3)
      {
        if (state != 1 && state != 5)
        {
          if (state == 3)
          {
            [(CWFNetworkDenyList *)self _setDenyListState:listingCopy state:3 reason:reason reasonData:data];
            v37 = CWFGetOSLog();
            if (v37)
            {
              v38 = CWFGetOSLog();
            }

            else
            {
              v38 = MEMORY[0x1E69E9C10];
              v53 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v54 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v19];
              v101 = 136446466;
              v102 = "[CWFNetworkDenyList _evaluateTriggersForDenyListing:reason:reasonData:BSSID:SSID:state:]";
              v103 = 2114;
              v104 = v54;
              LODWORD(v80) = 22;
              v79 = &v101;
              _os_log_send_and_compose_impl();

              state = stateCopy;
            }

            v85 = 1;
          }

          v55 = CWFGetOSLog();
          if (v55)
          {
            v40 = CWFGetOSLog();
          }

          else
          {
            v40 = MEMORY[0x1E69E9C10];
            v56 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
LABEL_78:
            v45 = CWFStringFromDenyListAddReason(reason);
            v46 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v19];
            v101 = 136446722;
            v102 = "[CWFNetworkDenyList _evaluateTriggersForDenyListing:reason:reasonData:BSSID:SSID:state:]";
            v103 = 2114;
            v104 = v45;
            v105 = 2114;
            v106 = v46;
            LODWORD(v80) = 32;
            v79 = &v101;
            goto LABEL_48;
          }

LABEL_49:

          goto LABEL_50;
        }

        v87 = 1;
        [(CWFNetworkDenyList *)self _setDenyListState:listingCopy state:1 reason:reason reasonData:reasonData, v79, v80];
        goto LABEL_50;
      }

      switch(reason)
      {
        case 7uLL:
          if (++HIDWORD(v83) <= 2u)
          {
            goto LABEL_50;
          }

          goto LABEL_62;
        case 5uLL:
          LODWORD(v83) = v83 + 1;
          if (v83 < 5)
          {
            goto LABEL_50;
          }

LABEL_62:
          if ((state | 4) == 5)
          {
            [(CWFNetworkDenyList *)self _setDenyListState:listingCopy state:1 reason:reason reasonData:reasonData];
            v87 = 1;
          }

          else
          {
            v57 = CWFGetOSLog();
            if (v57)
            {
              v58 = CWFGetOSLog();
            }

            else
            {
              v58 = MEMORY[0x1E69E9C10];
              v60 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
            {
              v61 = CWFStringFromDenyListAddReason(reason);
              v62 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v19];
              v101 = 136446722;
              v102 = "[CWFNetworkDenyList _evaluateTriggersForDenyListing:reason:reasonData:BSSID:SSID:state:]";
              v103 = 2114;
              v104 = v61;
              v105 = 2114;
              v106 = v62;
              LODWORD(v80) = 32;
              v79 = &v101;
              _os_log_send_and_compose_impl();
            }
          }

          goto LABEL_87;
        case 4uLL:
          v30 = v19 - v23;
          if (v19 - v23 <= 300.0)
          {
            LODWORD(v82) = v82 + 1;
            if (v82 >= 3)
            {
              if ((state | 4) != 5)
              {
                v69 = CWFGetOSLog();
                if (v69)
                {
                  v40 = CWFGetOSLog();
                }

                else
                {
                  v40 = MEMORY[0x1E69E9C10];
                  v72 = MEMORY[0x1E69E9C10];
                }

                if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_49;
                }

                v45 = CWFStringFromDenyListAddReason(4uLL);
                v46 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v19];
                v101 = 136446722;
                v102 = "[CWFNetworkDenyList _evaluateTriggersForDenyListing:reason:reasonData:BSSID:SSID:state:]";
                v103 = 2114;
                v104 = v45;
                v105 = 2114;
                v106 = v46;
                LODWORD(v80) = 32;
                v79 = &v101;
                goto LABEL_48;
              }

              selfCopy4 = self;
              v42 = listingCopy;
              v43 = 4;
LABEL_91:
              [(CWFNetworkDenyList *)selfCopy4 _setDenyListState:v42 state:1 reason:v43 reasonData:reasonData, v30, v79, v80];
              v87 = 1;
              goto LABEL_50;
            }
          }

          goto LABEL_50;
      }

      if (reason - 11 <= 1)
      {
        if (v81 != 4)
        {
          v59 = CWFGetOSLog();
          if (v59)
          {
            v40 = CWFGetOSLog();
          }

          else
          {
            v40 = MEMORY[0x1E69E9C10];
            v68 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            goto LABEL_78;
          }

          goto LABEL_49;
        }

        selfCopy3 = self;
        v49 = listingCopy;
        v50 = 4;
        reasonCopy = reason;
LABEL_98:
        [(CWFNetworkDenyList *)selfCopy3 _setDenyListState:v49 state:v50 reason:reasonCopy reasonData:reasonData, v79, v80];
        v87 = 1;
        goto LABEL_50;
      }

LABEL_87:
      if (reason == 8)
      {
        bSSID3 = [v16 BSSID];
        v64 = [bSSID3 compare:dCopy options:1];

        if (v64)
        {
          v65 = HIDWORD(v82);
        }

        else
        {
          v65 = HIDWORD(v82) + 1;
        }

        HIDWORD(v82) = v65;
        if (v65 >= 3)
        {
          state = stateCopy;
          if (stateCopy != 2)
          {
            v67 = CWFGetOSLog();
            if (v67)
            {
              v40 = CWFGetOSLog();
            }

            else
            {
              v40 = MEMORY[0x1E69E9C10];
              v71 = MEMORY[0x1E69E9C10];
            }

            if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              goto LABEL_49;
            }

            v45 = CWFStringFromDenyListAddReason(8uLL);
            v46 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v19];
            v101 = 136446722;
            v102 = "[CWFNetworkDenyList _evaluateTriggersForDenyListing:reason:reasonData:BSSID:SSID:state:]";
            v103 = 2114;
            v104 = v45;
            v105 = 2114;
            v106 = v46;
            LODWORD(v80) = 32;
            v79 = &v101;
LABEL_48:
            _os_log_send_and_compose_impl();

            state = stateCopy;
            goto LABEL_49;
          }

          selfCopy3 = self;
          v49 = listingCopy;
          v50 = 2;
          reasonCopy = 8;
          goto LABEL_98;
        }
      }

      else if (reason == 6)
      {
        state = stateCopy;
        if ((stateCopy | 4) != 5)
        {
          v66 = CWFGetOSLog();
          if (v66)
          {
            v40 = CWFGetOSLog();
          }

          else
          {
            v40 = MEMORY[0x1E69E9C10];
            v70 = MEMORY[0x1E69E9C10];
          }

          if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            goto LABEL_49;
          }

          v45 = CWFStringFromDenyListAddReason(6uLL);
          v46 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v19];
          v101 = 136446722;
          v102 = "[CWFNetworkDenyList _evaluateTriggersForDenyListing:reason:reasonData:BSSID:SSID:state:]";
          v103 = 2114;
          v104 = v45;
          v105 = 2114;
          v106 = v46;
          LODWORD(v80) = 32;
          v79 = &v101;
          goto LABEL_48;
        }

        selfCopy4 = self;
        v42 = listingCopy;
        v43 = 6;
        goto LABEL_91;
      }

      state = stateCopy;
LABEL_50:
      ++v15;
    }

    while (v96 != v15);
    v73 = [obj countByEnumeratingWithState:&v97 objects:v109 count:16, v30];
    v96 = v73;
  }

  while (v73);

  v74 = v87;
  if (v85)
  {
    [listingCopy addDenyListStateHistory:0 state:state reason:reason reasonData:data];
    v74 = 1;
  }

LABEL_127:

  v77 = *MEMORY[0x1E69E9840];
  return v74 & 1;
}

- (BOOL)_ignoreTriggersForDeviceProfile:(unint64_t)profile denyListItem:(id)item
{
  v33 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v7 = itemCopy;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  if (self->_profile == 2)
  {
    v8 = CWFGetOSLog();
    if (v8)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      profile = self->_profile;
      v27 = 136446722;
      v28 = "[CWFNetworkDenyList _ignoreTriggersForDeviceProfile:denyListItem:]";
      v29 = 2048;
      profileCopy = profile;
      v31 = 2048;
      profileCopy2 = profile;
      _os_log_send_and_compose_impl();
    }

    v17 = 1;
  }

  else
  {
    if (([itemCopy enterprisePolicy] & 1) != 0 || (objc_msgSend(v7, "scanResultForNetworkDenyListItem"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "matchingKnownNetworkProfile"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isProfileBased"), v11, v10, v12))
    {
      batteryInfoHandler = [(CWFNetworkDenyList *)self batteryInfoHandler];

      if (batteryInfoHandler)
      {
        batteryInfoHandler2 = [(CWFNetworkDenyList *)self batteryInfoHandler];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = sub_1E0CE06AC;
        v22[3] = &unk_1E86E8CF8;
        v22[4] = &v23;
        v22[5] = profile;
        (*(batteryInfoHandler2 + 16))(batteryInfoHandler2, v22);
      }

      else
      {
        v18 = CWFGetOSLog();
        if (v18)
        {
          batteryInfoHandler2 = CWFGetOSLog();
        }

        else
        {
          batteryInfoHandler2 = MEMORY[0x1E69E9C10];
          v19 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(batteryInfoHandler2, OS_LOG_TYPE_ERROR))
        {
          v27 = 136446210;
          v28 = "[CWFNetworkDenyList _ignoreTriggersForDeviceProfile:denyListItem:]";
          _os_log_send_and_compose_impl();
        }
      }
    }

    v17 = *(v24 + 24);
  }

  _Block_object_dispose(&v23, 8);

  v20 = *MEMORY[0x1E69E9840];
  return v17 & 1;
}

- (void)removeDenyListStateWithDenyListRemoveReason:(unint64_t)reason
{
  v126 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = v6;
  if (!v5)
  {
    v84 = CWFGetOSLog();
    if (v84)
    {
      v85 = CWFGetOSLog();
    }

    else
    {
      v85 = MEMORY[0x1E69E9C10];
      v87 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_110;
    }

    v117 = 136446210;
    v118 = "[CWFNetworkDenyList removeDenyListStateWithDenyListRemoveReason:]";
    goto LABEL_109;
  }

  if (!v6)
  {
    v86 = CWFGetOSLog();
    if (v86)
    {
      v85 = CWFGetOSLog();
    }

    else
    {
      v85 = MEMORY[0x1E69E9C10];
      v88 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_110;
    }

    v117 = 136446210;
    v118 = "[CWFNetworkDenyList removeDenyListStateWithDenyListRemoveReason:]";
LABEL_109:
    _os_log_send_and_compose_impl();
LABEL_110:

    goto LABEL_98;
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  obj = self->_denyList;
  v96 = [(NSMutableArray *)obj countByEnumeratingWithState:&v113 objects:v125 count:16];
  v8 = 0;
  if (!v96)
  {
    goto LABEL_87;
  }

  v9 = 0;
  v95 = *v114;
  v91 = v7;
  selfCopy = self;
  do
  {
    v10 = 0;
    v11 = v9;
    do
    {
      if (*v114 != v95)
      {
        objc_enumerationMutation(obj);
      }

      v97 = v10;
      v9 = *(*(&v113 + 1) + 8 * v10);

      if (reason == 7)
      {
        denyListTriggers = [v9 denyListTriggers];
        [denyListTriggers removeAllObjects];

        statesCurrent = [v9 statesCurrent];
        v111[0] = MEMORY[0x1E69E9820];
        v111[1] = 3221225472;
        v111[2] = sub_1E0CE1564;
        v111[3] = &unk_1E86E8D20;
        v14 = v9;
        v112 = v14;
        [statesCurrent enumerateObjectsUsingBlock:v111];

        statesCurrent2 = [v14 statesCurrent];
        [statesCurrent2 removeAllObjects];

        [v7 addObject:v14];
        v8 = 1;
        v16 = v112;
        goto LABEL_84;
      }

      v17 = objc_alloc(MEMORY[0x1E696AEC0]);
      scanResultForNetworkDenyListItem = [v9 scanResultForNetworkDenyListItem];
      sSID = [scanResultForNetworkDenyListItem SSID];
      v16 = [v17 initWithData:sSID encoding:4];

      scanResultForNetworkDenyListItem2 = [v9 scanResultForNetworkDenyListItem];
      bSSID = [scanResultForNetworkDenyListItem2 BSSID];

      scanResultForNetworkDenyListItem3 = [v9 scanResultForNetworkDenyListItem];
      LODWORD(scanResultForNetworkDenyListItem) = [(CWFNetworkDenyList *)self isNetworkInDenyListedState:1 scanResult:scanResultForNetworkDenyListItem3];

      v22 = 0.0;
      v94 = v8;
      v93 = v9;
      if (scanResultForNetworkDenyListItem)
      {
        denyListTriggers2 = [v9 denyListTriggers];
        [denyListTriggers2 removeAllObjects];

        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        statesCurrent3 = [v9 statesCurrent];
        v25 = [statesCurrent3 countByEnumeratingWithState:&v107 objects:v124 count:16];
        if (!v25)
        {
          goto LABEL_50;
        }

        v26 = v25;
        v27 = *v108;
        while (1)
        {
          v28 = 0;
          do
          {
            if (*v108 != v27)
            {
              objc_enumerationMutation(statesCurrent3);
            }

            v29 = *(*(&v107 + 1) + 8 * v28);
            if ([v29 state] != 1)
            {
              goto LABEL_36;
            }

            if ([v29 reason] == 6)
            {
              goto LABEL_43;
            }

            if (reason != 5)
            {
              goto LABEL_30;
            }

            [v29 stateTimestamp];
            if (v30 > v22)
            {
              [v29 stateTimestamp];
              v22 = v31;
            }

            date = [MEMORY[0x1E695DF00] date];
            [date timeIntervalSince1970];
            v34 = v33;

            v35 = v34 - v22;
            [(CWFNetworkDenyList *)selfCopy autoJoinkDenyListExpiry];
            v37 = v36;
            v38 = CWFGetOSLog();
            v39 = v38;
            if (v35 > v37)
            {
              if (v38)
              {
                v40 = CWFGetOSLog();
              }

              else
              {
                v40 = MEMORY[0x1E69E9C10];
                v42 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                v117 = 138543362;
                v118 = v16;
                LODWORD(v90) = 12;
                v89 = &v117;
                _os_log_send_and_compose_impl();
              }

LABEL_30:
              v43 = CWFGetOSLog();
              if (v43)
              {
                v44 = CWFGetOSLog();
              }

              else
              {
                v44 = MEMORY[0x1E69E9C10];
                v45 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                v117 = 136446466;
                v118 = "[CWFNetworkDenyList removeDenyListStateWithDenyListRemoveReason:]";
                v119 = 2114;
                v120 = v16;
                LODWORD(v90) = 22;
                v89 = &v117;
                _os_log_send_and_compose_impl();
              }

              [v5 addObject:v29];
LABEL_36:
              if ([v29 state] == 3)
              {
                v46 = CWFGetOSLog();
                if (v46)
                {
                  v47 = CWFGetOSLog();
                }

                else
                {
                  v47 = MEMORY[0x1E69E9C10];
                  v48 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                {
                  v117 = 136446466;
                  v118 = "[CWFNetworkDenyList removeDenyListStateWithDenyListRemoveReason:]";
                  v119 = 2114;
                  v120 = v16;
                  LODWORD(v90) = 22;
                  v89 = &v117;
                  _os_log_send_and_compose_impl();
                }

                [v5 addObject:v29];
              }

              goto LABEL_43;
            }

            if (v38)
            {
              v41 = CWFGetOSLog();
            }

            else
            {
              v41 = MEMORY[0x1E69E9C10];
              v49 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              v117 = 138543362;
              v118 = v16;
              LODWORD(v90) = 12;
              v89 = &v117;
              _os_log_send_and_compose_impl();
            }

LABEL_43:
            ++v28;
          }

          while (v26 != v28);
          v50 = [statesCurrent3 countByEnumeratingWithState:&v107 objects:v124 count:16];
          v26 = v50;
          if (!v50)
          {
LABEL_50:

            v7 = v91;
            self = selfCopy;
            v8 = v94;
            v9 = v93;
            break;
          }
        }
      }

      scanResultForNetworkDenyListItem4 = [v9 scanResultForNetworkDenyListItem];
      v52 = [(CWFNetworkDenyList *)self isNetworkInDenyListedState:2 scanResult:scanResultForNetworkDenyListItem4];

      if (!v52)
      {
        goto LABEL_83;
      }

      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      statesCurrent4 = [v9 statesCurrent];
      v54 = [statesCurrent4 countByEnumeratingWithState:&v103 objects:v123 count:16];
      if (!v54)
      {
        goto LABEL_82;
      }

      v55 = v54;
      v56 = *v104;
      do
      {
        for (i = 0; i != v55; ++i)
        {
          if (*v104 != v56)
          {
            objc_enumerationMutation(statesCurrent4);
          }

          v58 = *(*(&v103 + 1) + 8 * i);
          if ([v58 state] == 2)
          {
            if (reason != 5)
            {
              goto LABEL_70;
            }

            [v58 stateTimestamp];
            if (v59 > v22)
            {
              [v58 stateTimestamp];
              v22 = v60;
            }

            date2 = [MEMORY[0x1E695DF00] date];
            [date2 timeIntervalSince1970];
            v63 = v62;

            v64 = v63 - v22;
            [(CWFNetworkDenyList *)selfCopy BSSDenyListExpiry];
            v66 = v65;
            v67 = CWFGetOSLog();
            v68 = v67;
            if (v64 > v66)
            {
              if (v67)
              {
                v69 = CWFGetOSLog();
              }

              else
              {
                v69 = MEMORY[0x1E69E9C10];
                v71 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
              {
                v117 = 138543618;
                v118 = v16;
                v119 = 2114;
                v120 = bSSID;
                LODWORD(v90) = 22;
                v89 = &v117;
                _os_log_send_and_compose_impl();
              }

LABEL_70:
              v72 = CWFGetOSLog();
              if (v72)
              {
                v73 = CWFGetOSLog();
              }

              else
              {
                v73 = MEMORY[0x1E69E9C10];
                v74 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                v117 = 136446722;
                v118 = "[CWFNetworkDenyList removeDenyListStateWithDenyListRemoveReason:]";
                v119 = 2114;
                v120 = v16;
                v121 = 2114;
                v122 = bSSID;
                LODWORD(v90) = 32;
                v89 = &v117;
                _os_log_send_and_compose_impl();
              }

              [v5 addObject:v58];
              continue;
            }

            if (v67)
            {
              v70 = CWFGetOSLog();
            }

            else
            {
              v70 = MEMORY[0x1E69E9C10];
              v75 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              v117 = 138543618;
              v118 = v16;
              v119 = 2114;
              v120 = bSSID;
              LODWORD(v90) = 22;
              v89 = &v117;
              _os_log_send_and_compose_impl();
            }
          }
        }

        v55 = [statesCurrent4 countByEnumeratingWithState:&v103 objects:v123 count:16];
      }

      while (v55);
LABEL_82:

      v7 = v91;
      self = selfCopy;
      v8 = v94;
      v9 = v93;
LABEL_83:
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 3221225472;
      v100[2] = sub_1E0CE1578;
      v100[3] = &unk_1E86E8D48;
      v76 = v9;
      v101 = v76;
      reasonCopy = reason;
      [v5 enumerateObjectsUsingBlock:v100];
      statesCurrent5 = [v76 statesCurrent];
      [statesCurrent5 removeObjectsInArray:v5];

      v8 |= [v5 count] != 0;
      [v5 removeAllObjects];

LABEL_84:
      v10 = v97 + 1;
      v11 = v9;
    }

    while (v97 + 1 != v96);
    v96 = [(NSMutableArray *)obj countByEnumeratingWithState:&v113 objects:v125 count:16];
  }

  while (v96);

LABEL_87:
  if ([v7 count])
  {
    v78 = CWFGetOSLog();
    if (v78)
    {
      v79 = CWFGetOSLog();
    }

    else
    {
      v79 = MEMORY[0x1E69E9C10];
      v80 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      v117 = 136446210;
      v118 = "[CWFNetworkDenyList removeDenyListStateWithDenyListRemoveReason:]";
      LODWORD(v90) = 12;
      v89 = &v117;
      _os_log_send_and_compose_impl();
    }

    [(NSMutableArray *)self->_denyList removeObjectsInArray:v7];
  }

  if (v8)
  {
    denyListDidUpdateHandler = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];

    if (denyListDidUpdateHandler)
    {
      denyListDidUpdateHandler2 = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];
      (denyListDidUpdateHandler2)[2](denyListDidUpdateHandler2, &unk_1F5B8AF00);
    }
  }

  [(CWFNetworkDenyList *)self _printDenyList:v89];
LABEL_98:

  v83 = *MEMORY[0x1E69E9840];
}

- (void)removeExpiredDenyListedState:(unint64_t)state
{
  v162 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v127 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = CWFGetOSLog();
  if (v5)
  {
    v6 = CWFGetOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    CWFStringFromDenyListState(state);
    v8 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v149 = 136446466;
    v150 = "[CWFNetworkDenyList removeExpiredDenyListedState:]";
    v151 = 2112;
    v152 = v8;
    LODWORD(v121) = 22;
    v117 = &v149;
    _os_log_send_and_compose_impl();
  }

  [(CWFNetworkDenyList *)self _printDenyList];
  if (v4)
  {
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v9 = self->_denyList;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v145 objects:v161 count:16];
    if (!v10)
    {

      [(NSMutableArray *)self->_denyList removeObjectsInArray:v127];
      [(CWFNetworkDenyList *)self _printDenyList];
      goto LABEL_127;
    }

    v11 = 0;
    v129 = 0;
    v130 = *v146;
    v133 = v4;
    v125 = v9;
    v12 = v10;
    while (1)
    {
      v13 = 0;
      v14 = v11;
      v126 = v12;
      do
      {
        if (*v146 != v130)
        {
          objc_enumerationMutation(v9);
        }

        v131 = v13;
        v11 = *(*(&v145 + 1) + 8 * v13);

        statesCurrent = [v11 statesCurrent];
        if (statesCurrent)
        {
          v16 = statesCurrent;
          statesCurrent2 = [v11 statesCurrent];
          v18 = [statesCurrent2 count];

          if (v18)
          {
            v19 = objc_alloc(MEMORY[0x1E696AEC0]);
            scanResultForNetworkDenyListItem = [v11 scanResultForNetworkDenyListItem];
            sSID = [scanResultForNetworkDenyListItem SSID];
            *&v22 = COERCE_DOUBLE([v19 initWithData:sSID encoding:4]);

            v132 = v22;
            if (*&v22 == 0.0)
            {
              v111 = CWFGetOSLog();
              if (v111)
              {
                v112 = CWFGetOSLog();
              }

              else
              {
                v112 = MEMORY[0x1E69E9C10];
                v113 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
              {
                v149 = 136446210;
                v150 = "[CWFNetworkDenyList removeExpiredDenyListedState:]";
                _os_log_send_and_compose_impl();
              }

              goto LABEL_127;
            }

            statesHistory = [v11 statesHistory];
            v24 = [statesHistory count];

            if (v24)
            {
              v143 = 0u;
              v144 = 0u;
              v141 = 0u;
              v142 = 0u;
              statesHistory2 = [v11 statesHistory];
              reverseObjectEnumerator = [statesHistory2 reverseObjectEnumerator];

              v27 = [reverseObjectEnumerator countByEnumeratingWithState:&v141 objects:v160 count:16];
              v28 = 0.0;
              if (!v27)
              {
                goto LABEL_36;
              }

              v29 = v27;
              v30 = *v142;
              do
              {
                for (i = 0; i != v29; ++i)
                {
                  if (*v142 != v30)
                  {
                    objc_enumerationMutation(reverseObjectEnumerator);
                  }

                  v32 = *(*(&v141 + 1) + 8 * i);
                  if (v32 && ([*(*(&v141 + 1) + 8 * i) state] == state || objc_msgSend(v32, "state") == 5))
                  {
                    [v32 stateTimestamp];
                    v28 = v41;
                    goto LABEL_36;
                  }
                }

                v29 = [reverseObjectEnumerator countByEnumeratingWithState:&v141 objects:v160 count:16];
              }

              while (v29);
LABEL_36:
            }

            else
            {
              v28 = 0.0;
            }

            v139 = 0u;
            v140 = 0u;
            v137 = 0u;
            v138 = 0u;
            v128 = v11;
            statesCurrent3 = [v11 statesCurrent];
            v43 = [statesCurrent3 countByEnumeratingWithState:&v137 objects:v159 count:16];
            if (!v43)
            {
              goto LABEL_111;
            }

            v44 = v43;
            v45 = *v138;
            while (2)
            {
              v46 = 0;
LABEL_41:
              if (*v138 != v45)
              {
                objc_enumerationMutation(statesCurrent3);
              }

              v47 = *(*(&v137 + 1) + 8 * v46);
              date = [MEMORY[0x1E695DF00] date];
              [date timeIntervalSince1970];
              v50 = v49;

              if ([v47 state] == state && objc_msgSend(v47, "state") == 1)
              {
                [(CWFNetworkDenyList *)self autoJoinkDenyListExpiry];
                v52 = v51;
                [v47 stateTimestamp];
                v54 = v53;
                v55 = CWFGetOSLog();
                if (v55)
                {
                  v56 = CWFGetOSLog();
                }

                else
                {
                  v56 = MEMORY[0x1E69E9C10];
                  v57 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                {
                  v149 = 136446722;
                  v150 = "[CWFNetworkDenyList removeExpiredDenyListedState:]";
                  v151 = 2048;
                  v152 = v50 - v54;
                  v153 = 2048;
                  v154 = v52;
                  LODWORD(v123) = 32;
                  v119 = &v149;
                  _os_log_send_and_compose_impl();
                }

                if (v50 - v54 > v52)
                {
                  stateString = [v47 stateString];
                  v59 = CWFGetOSLog();
                  if (v59)
                  {
                    v60 = CWFGetOSLog();
                  }

                  else
                  {
                    v60 = MEMORY[0x1E69E9C10];
                    v61 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                  {
                    v62 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v54];
                    v149 = 136447234;
                    v150 = "[CWFNetworkDenyList removeExpiredDenyListedState:]";
                    v151 = 2114;
                    v152 = *&v132;
                    v153 = 2114;
                    v154 = *&stateString;
                    v155 = 2114;
                    v156 = v62;
                    v157 = 2114;
                    v158 = v132;
                    LODWORD(v123) = 52;
                    v119 = &v149;
                    _os_log_send_and_compose_impl();
                  }

                  [v133 addObject:v47];
                }
              }

              if ([v47 state] == state && objc_msgSend(v47, "state") == 3)
              {
                [(CWFNetworkDenyList *)self wowDenyListExpiry];
                v64 = v63;
                [v47 stateTimestamp];
                v66 = v65;
                v67 = v28;
                if (v28 == 0.0)
                {
                  v68 = CWFGetOSLog();
                  if (v68)
                  {
                    v69 = CWFGetOSLog();
                  }

                  else
                  {
                    v69 = MEMORY[0x1E69E9C10];
                    v70 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                  {
                    v149 = 136446210;
                    v150 = "[CWFNetworkDenyList removeExpiredDenyListedState:]";
                    LODWORD(v122) = 12;
                    v118 = &v149;
                    _os_log_send_and_compose_impl();
                  }

                  v67 = v66;
                }

                reason = [v47 reason];
                v72 = CWFGetOSLog();
                v73 = v72;
                if (reason == 2 && v50 - v66 <= 3600.0)
                {
                  if (v72)
                  {
                    stateString4 = CWFGetOSLog();
                  }

                  else
                  {
                    stateString4 = MEMORY[0x1E69E9C10];
                    v81 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(stateString4, OS_LOG_TYPE_ERROR))
                  {
                    v149 = 136446210;
                    v150 = "[CWFNetworkDenyList removeExpiredDenyListedState:]";
                    LODWORD(v122) = 12;
                    v118 = &v149;
                    _os_log_send_and_compose_impl();
                  }

                  goto LABEL_108;
                }

                if (v72)
                {
                  v75 = CWFGetOSLog();
                }

                else
                {
                  v75 = MEMORY[0x1E69E9C10];
                  v76 = MEMORY[0x1E69E9C10];
                }

                v77 = v50 - v67;
                if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                {
                  v149 = 136446722;
                  v150 = "[CWFNetworkDenyList removeExpiredDenyListedState:]";
                  v151 = 2048;
                  v152 = v77;
                  v153 = 2048;
                  v154 = v64;
                  LODWORD(v122) = 32;
                  v118 = &v149;
                  _os_log_send_and_compose_impl();
                }

                if (v77 > v64)
                {
                  stateString2 = [v47 stateString];
                  v79 = CWFGetOSLog();
                  if (v79)
                  {
                    v80 = CWFGetOSLog();
                  }

                  else
                  {
                    v80 = MEMORY[0x1E69E9C10];
                    v82 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
                  {
                    v83 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v66];
                    v149 = 136447234;
                    v150 = "[CWFNetworkDenyList removeExpiredDenyListedState:]";
                    v151 = 2114;
                    v152 = *&v132;
                    v153 = 2114;
                    v154 = *&stateString2;
                    v155 = 2114;
                    v156 = v83;
                    v157 = 2114;
                    v158 = v132;
                    LODWORD(v122) = 52;
                    v118 = &v149;
                    _os_log_send_and_compose_impl();
                  }

                  [v133 addObject:v47];
                }
              }

              if ([v47 state] == state && objc_msgSend(v47, "state") == 2 && objc_msgSend(v47, "reason") == 8)
              {
                [(CWFNetworkDenyList *)self BSSDenyListExpiry];
                v85 = v84;
                [v47 stateTimestamp];
                v87 = v86;
                v88 = CWFGetOSLog();
                if (v88)
                {
                  v89 = CWFGetOSLog();
                }

                else
                {
                  v89 = MEMORY[0x1E69E9C10];
                  v90 = MEMORY[0x1E69E9C10];
                }

                v91 = v50 - v87;
                if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                {
                  v149 = 136446722;
                  v150 = "[CWFNetworkDenyList removeExpiredDenyListedState:]";
                  v151 = 2048;
                  v152 = v91;
                  v153 = 2048;
                  v154 = v85;
                  LODWORD(v124) = 32;
                  v120 = &v149;
                  _os_log_send_and_compose_impl();
                }

                if (v91 > v85)
                {
                  stateString3 = [v47 stateString];
                  v93 = CWFGetOSLog();
                  if (v93)
                  {
                    v94 = CWFGetOSLog();
                  }

                  else
                  {
                    v94 = MEMORY[0x1E69E9C10];
                    v95 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
                  {
                    v96 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v87];
                    v149 = 136447234;
                    v150 = "[CWFNetworkDenyList removeExpiredDenyListedState:]";
                    v151 = 2114;
                    v152 = *&v132;
                    v153 = 2114;
                    v154 = *&stateString3;
                    v155 = 2114;
                    v156 = v96;
                    v157 = 2114;
                    v158 = v132;
                    LODWORD(v124) = 52;
                    v120 = &v149;
                    _os_log_send_and_compose_impl();
                  }

                  [v133 addObject:v47];
                }
              }

              if ([v47 state] == state && objc_msgSend(v47, "state") == 4)
              {
                stateString4 = [v47 stateString];
                [v47 stateTimestamp];
                v98 = v97;
                v99 = CWFGetOSLog();
                if (v99)
                {
                  v100 = CWFGetOSLog();
                }

                else
                {
                  v100 = MEMORY[0x1E69E9C10];
                  v101 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
                {
                  v102 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v98];
                  v149 = 136447234;
                  v150 = "[CWFNetworkDenyList removeExpiredDenyListedState:]";
                  v151 = 2114;
                  v152 = *&v132;
                  v153 = 2114;
                  v154 = *&stateString4;
                  v155 = 2114;
                  v156 = v102;
                  v157 = 2114;
                  v158 = v132;
                  LODWORD(v122) = 52;
                  v118 = &v149;
                  _os_log_send_and_compose_impl();
                }

                [v133 addObject:v47];
LABEL_108:
              }

              if (v44 == ++v46)
              {
                v44 = [statesCurrent3 countByEnumeratingWithState:&v137 objects:v159 count:16];
                if (!v44)
                {
LABEL_111:

                  v135[0] = MEMORY[0x1E69E9820];
                  v135[1] = 3221225472;
                  v135[2] = sub_1E0CE2744;
                  v135[3] = &unk_1E86E8D20;
                  v11 = v128;
                  v103 = v128;
                  v136 = v103;
                  v4 = v133;
                  [v133 enumerateObjectsUsingBlock:v135];
                  statesCurrent4 = [v103 statesCurrent];
                  [statesCurrent4 removeObjectsInArray:v133];

                  statesCurrent5 = [v103 statesCurrent];
                  v106 = [statesCurrent5 count];

                  if (!v106)
                  {
                    denyListTriggers = [v103 denyListTriggers];
                    [denyListTriggers removeAllObjects];

                    statesHistory3 = [v103 statesHistory];
                    [statesHistory3 removeAllObjects];

                    [v127 addObject:v103];
                  }

                  v129 |= [v133 count] != 0;
                  [v133 removeAllObjects];

                  v9 = v125;
                  v12 = v126;
                  v36 = v131;
                  goto LABEL_114;
                }

                continue;
              }

              goto LABEL_41;
            }
          }
        }

        v33 = CWFGetOSLog();
        if (v33)
        {
          v34 = CWFGetOSLog();
        }

        else
        {
          v34 = MEMORY[0x1E69E9C10];
          v35 = MEMORY[0x1E69E9C10];
        }

        v36 = v131;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          statesCurrent6 = [v11 statesCurrent];
          v149 = 136446466;
          *&v38 = COERCE_DOUBLE(@"empty");
          if (!statesCurrent6)
          {
            *&v38 = COERCE_DOUBLE(@"nil");
          }

          v150 = "[CWFNetworkDenyList removeExpiredDenyListedState:]";
          v151 = 2112;
          v152 = *&v38;
          LODWORD(v121) = 22;
          v117 = &v149;
          _os_log_send_and_compose_impl();
        }

        denyListTriggers2 = [v11 denyListTriggers];
        [denyListTriggers2 removeAllObjects];

        statesHistory4 = [v11 statesHistory];
        [statesHistory4 removeAllObjects];

        [v127 addObject:v11];
LABEL_114:
        v13 = v36 + 1;
        v14 = v11;
      }

      while (v13 != v12);
      v12 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v145 objects:v161 count:16];
      if (!v12)
      {

        [(NSMutableArray *)self->_denyList removeObjectsInArray:v127];
        [(CWFNetworkDenyList *)self _printDenyList];
        if (v129)
        {
          denyListDidUpdateHandler = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];

          if (denyListDidUpdateHandler)
          {
            denyListDidUpdateHandler2 = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];
            (*(denyListDidUpdateHandler2 + 16))(denyListDidUpdateHandler2, &unk_1F5B8AF20);
            goto LABEL_119;
          }
        }

        goto LABEL_127;
      }
    }
  }

  v115 = CWFGetOSLog();
  if (v115)
  {
    denyListDidUpdateHandler2 = CWFGetOSLog();
  }

  else
  {
    denyListDidUpdateHandler2 = MEMORY[0x1E69E9C10];
    v116 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(denyListDidUpdateHandler2, OS_LOG_TYPE_ERROR))
  {
    v149 = 136446210;
    v150 = "[CWFNetworkDenyList removeExpiredDenyListedState:]";
    _os_log_send_and_compose_impl();
  }

LABEL_119:

LABEL_127:
  v114 = *MEMORY[0x1E69E9840];
}

- (void)removeAllDenyListedItems
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v27 = 136446210;
    v28 = "[CWFNetworkDenyList removeAllDenyListedItems]";
    LODWORD(v18) = 12;
    v17 = &v27;
    _os_log_send_and_compose_impl();
  }

  if ([(NSMutableArray *)self->_denyList count])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = self->_denyList;
    v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v22 + 1) + 8 * i);

          [v6 addObject:v12];
          statesCurrent = [v12 statesCurrent];
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = sub_1E0CE2B00;
          v20[3] = &unk_1E86E8D20;
          v9 = v12;
          v21 = v9;
          [statesCurrent enumerateObjectsUsingBlock:v20];
        }

        v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    [(NSMutableArray *)self->_denyList removeObjectsInArray:v6];
    denyListDidUpdateHandler = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];

    if (denyListDidUpdateHandler)
    {
      denyListDidUpdateHandler2 = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];
      (denyListDidUpdateHandler2)[2](denyListDidUpdateHandler2, &unk_1F5B8AF40);
    }
  }

  else
  {
    v6 = 0;
  }

  [(CWFNetworkDenyList *)self _printDenyList:v17];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)removeNetworkDenyListInfoWithReason:(unint64_t)reason forScanResult:(id)result
{
  v151 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  if (!resultCopy)
  {
    [(CWFNetworkDenyList *)self _printDenyList];
    v6 = CWFGetOSLog();
    if (v6)
    {
      v7 = CWFGetOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v136 = 136446210;
      v137 = "[CWFNetworkDenyList removeNetworkDenyListInfoWithReason:forScanResult:]";
      LODWORD(v105) = 12;
      v102 = &v136;
      _os_log_send_and_compose_impl();
    }

    [(CWFNetworkDenyList *)self removeAllDenyListedItems];
  }

  if (reason == 1)
  {
    sSID = [resultCopy SSID];
    v10 = [(CWFNetworkDenyList *)self _findNetworkDenyListItemsForSSID:sSID];

    if ([v10 count])
    {
      v118 = 0;
      goto LABEL_25;
    }

    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    sSID2 = [resultCopy SSID];
    v118 = [v13 initWithData:sSID2 encoding:4];

    v15 = CWFGetOSLog();
    if (v15)
    {
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      bSSID = [resultCopy BSSID];
      v136 = 136446722;
      v137 = "[CWFNetworkDenyList removeNetworkDenyListInfoWithReason:forScanResult:]";
      v138 = 2114;
      v139 = v118;
      v140 = 2114;
      v141 = bSSID;
      LODWORD(v105) = 32;
      v102 = &v136;
      _os_log_send_and_compose_impl();
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = [(CWFNetworkDenyList *)self _findNetworkDenyListItem:resultCopy];
    if (v11)
    {
      v12 = v11;
      [v10 addObject:v11];
      v118 = 0;
    }

    else
    {
      v16 = objc_alloc(MEMORY[0x1E696AEC0]);
      sSID3 = [resultCopy SSID];
      v118 = [v16 initWithData:sSID3 encoding:4];

      v18 = CWFGetOSLog();
      if (v18)
      {
        v19 = CWFGetOSLog();
      }

      else
      {
        v19 = MEMORY[0x1E69E9C10];
        v22 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        bSSID2 = [resultCopy BSSID];
        v136 = 136446722;
        v137 = "[CWFNetworkDenyList removeNetworkDenyListInfoWithReason:forScanResult:]";
        v138 = 2114;
        v139 = v118;
        v140 = 2114;
        v141 = bSSID2;
        LODWORD(v105) = 32;
        v102 = &v136;
        _os_log_send_and_compose_impl();
      }

      v12 = 0;
    }
  }

LABEL_25:
  v117 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v117)
  {
    v98 = CWFGetOSLog();
    if (v98)
    {
      v24 = CWFGetOSLog();
    }

    else
    {
      v24 = MEMORY[0x1E69E9C10];
      v100 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_152;
    }

    v136 = 136446210;
    v137 = "[CWFNetworkDenyList removeNetworkDenyListInfoWithReason:forScanResult:]";
    goto LABEL_151;
  }

  v115 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v115)
  {
    v99 = CWFGetOSLog();
    if (v99)
    {
      v24 = CWFGetOSLog();
    }

    else
    {
      v24 = MEMORY[0x1E69E9C10];
      v101 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_152;
    }

    v136 = 136446210;
    v137 = "[CWFNetworkDenyList removeNetworkDenyListInfoWithReason:forScanResult:]";
LABEL_151:
    _os_log_send_and_compose_impl();
LABEL_152:
    v96 = 0;
    v115 = 0;
    goto LABEL_140;
  }

  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v24 = v10;
  v112 = [v24 countByEnumeratingWithState:&v131 objects:v150 count:16];
  if (v112)
  {
    v108 = v10;
    v109 = resultCopy;
    v116 = 0;
    v25 = 0x1E696A000uLL;
    v111 = *v132;
    v110 = v24;
    do
    {
      for (i = 0; i != v112; i = v93 + 1)
      {
        if (*v132 != v111)
        {
          objc_enumerationMutation(v24);
        }

        v113 = i;
        v27 = *(*(&v131 + 1) + 8 * i);
        v28 = objc_alloc(*(v25 + 3776));
        scanResultForNetworkDenyListItem = [v27 scanResultForNetworkDenyListItem];
        sSID4 = [scanResultForNetworkDenyListItem SSID];
        v31 = [v28 initWithData:sSID4 encoding:4];

        v118 = v31;
        if (v31)
        {
          scanResultForNetworkDenyListItem2 = [v27 scanResultForNetworkDenyListItem];
          bSSID3 = [scanResultForNetworkDenyListItem2 BSSID];

          if (bSSID3)
          {
            v116 = bSSID3;
            v129 = 0u;
            v130 = 0u;
            v127 = 0u;
            v128 = 0u;
            statesCurrent = [v27 statesCurrent];
            v35 = [statesCurrent countByEnumeratingWithState:&v127 objects:v149 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v128;
              do
              {
                for (j = 0; j != v36; ++j)
                {
                  if (*v128 != v37)
                  {
                    objc_enumerationMutation(statesCurrent);
                  }

                  v39 = *(*(&v127 + 1) + 8 * j);
                  if ([v39 state] == 1)
                  {
                    v40 = CWFGetOSLog();
                    if (v40)
                    {
                      v41 = CWFGetOSLog();
                    }

                    else
                    {
                      v41 = MEMORY[0x1E69E9C10];
                      v42 = MEMORY[0x1E69E9C10];
                    }

                    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                    {
                      v136 = 136446722;
                      v137 = "[CWFNetworkDenyList removeNetworkDenyListInfoWithReason:forScanResult:]";
                      v138 = 2114;
                      v139 = v118;
                      v140 = 2114;
                      v141 = v116;
                      LODWORD(v106) = 32;
                      v103 = &v136;
                      _os_log_send_and_compose_impl();
                    }

                    [v117 addObject:v39];
                  }

                  if ([v39 state] == 3 && -[CWFNetworkDenyList _evaluateTriggersForDenyListRemove:denyListRemoveReason:SSID:](self, "_evaluateTriggersForDenyListRemove:denyListRemoveReason:SSID:", v27, reason, v118))
                  {
                    v43 = CWFGetOSLog();
                    if (v43)
                    {
                      v44 = CWFGetOSLog();
                    }

                    else
                    {
                      v44 = MEMORY[0x1E69E9C10];
                      v45 = MEMORY[0x1E69E9C10];
                    }

                    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                    {
                      v136 = 136446722;
                      v137 = "[CWFNetworkDenyList removeNetworkDenyListInfoWithReason:forScanResult:]";
                      v138 = 2114;
                      v139 = v118;
                      v140 = 2114;
                      v141 = v116;
                      LODWORD(v107) = 32;
                      v104 = &v136;
                      _os_log_send_and_compose_impl();
                    }

                    [v117 addObject:v39];
                  }

                  if ([v39 state] == 2)
                  {
                    v46 = CWFGetOSLog();
                    if (v46)
                    {
                      v47 = CWFGetOSLog();
                    }

                    else
                    {
                      v47 = MEMORY[0x1E69E9C10];
                      v48 = MEMORY[0x1E69E9C10];
                    }

                    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                    {
                      v136 = 136446722;
                      v137 = "[CWFNetworkDenyList removeNetworkDenyListInfoWithReason:forScanResult:]";
                      v138 = 2114;
                      v139 = v118;
                      v140 = 2114;
                      v141 = v116;
                      LODWORD(v105) = 32;
                      v102 = &v136;
                      _os_log_send_and_compose_impl();
                    }

                    [v117 addObject:v39];
                  }
                }

                v36 = [statesCurrent countByEnumeratingWithState:&v127 objects:v149 count:16];
              }

              while (v36);
            }

            v125 = 0u;
            v126 = 0u;
            v123 = 0u;
            v124 = 0u;
            denyListTriggers = [v27 denyListTriggers];
            v50 = [denyListTriggers countByEnumeratingWithState:&v123 objects:v148 count:16];
            if (v50)
            {
              v51 = v50;
              v52 = *v124;
              do
              {
                v53 = 0;
                do
                {
                  if (*v124 != v52)
                  {
                    objc_enumerationMutation(denyListTriggers);
                  }

                  v54 = *(*(&v123 + 1) + 8 * v53);
                  reasonString = [v54 reasonString];
                  [v54 reasonTimestamp];
                  v57 = v56;
                  date = [MEMORY[0x1E695DF00] date];
                  [date timeIntervalSince1970];
                  v60 = v59;

                  if (![v54 reason] || objc_msgSend(v54, "reason") == 1 || objc_msgSend(v54, "reason") == 5 || objc_msgSend(v54, "reason") == 7 || objc_msgSend(v54, "reason") == 2 || objc_msgSend(v54, "reason") == 3 || objc_msgSend(v54, "reason") == 11 || objc_msgSend(v54, "reason") == 12)
                  {
                    v61 = CWFGetOSLog();
                    if (v61)
                    {
                      v62 = CWFGetOSLog();
                    }

                    else
                    {
                      v62 = MEMORY[0x1E69E9C10];
                      v63 = MEMORY[0x1E69E9C10];
                    }

                    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_80;
                    }

                    goto LABEL_82;
                  }

                  if (reason == 1)
                  {
                    v65 = v60 - v57;
                    if ([v54 reason] == 4 && v57 != 0.0 && v65 > 300.0)
                    {
                      v66 = CWFGetOSLog();
                      if (v66)
                      {
                        v62 = CWFGetOSLog();
                      }

                      else
                      {
                        v62 = MEMORY[0x1E69E9C10];
                        v73 = MEMORY[0x1E69E9C10];
                      }

                      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                      {
LABEL_80:
                        v64 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v57];
                        v136 = 136447234;
                        v137 = "[CWFNetworkDenyList removeNetworkDenyListInfoWithReason:forScanResult:]";
                        v138 = 2114;
                        v139 = reasonString;
                        v140 = 2114;
                        v141 = v64;
                        v142 = 2114;
                        v143 = v118;
                        v144 = 2114;
                        v145 = v116;
                        LODWORD(v105) = 52;
                        v102 = &v136;
                        goto LABEL_81;
                      }

LABEL_82:

                      [v115 addObject:v54];
                      goto LABEL_83;
                    }

                    if ([v54 reason] == 8 && v57 != 0.0)
                    {
                      [(CWFNetworkDenyList *)self BSSDenyListExpiry];
                      if (v65 > v67)
                      {
                        v68 = CWFGetOSLog();
                        if (v68)
                        {
                          v62 = CWFGetOSLog();
                        }

                        else
                        {
                          v62 = MEMORY[0x1E69E9C10];
                          v74 = MEMORY[0x1E69E9C10];
                        }

                        if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_82;
                        }

                        v64 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v57];
                        [v54 reasonTimestamp];
                        v136 = 136447490;
                        v137 = "[CWFNetworkDenyList removeNetworkDenyListInfoWithReason:forScanResult:]";
                        v138 = 2114;
                        v139 = reasonString;
                        v140 = 2114;
                        v141 = v64;
                        v142 = 2114;
                        v143 = v118;
                        v144 = 2114;
                        v145 = v116;
                        v146 = 2048;
                        v147 = (v60 - v75);
                        LODWORD(v105) = 62;
                        v102 = &v136;
                        goto LABEL_81;
                      }
                    }
                  }

                  v69 = dbl_1E0D81C10[[v54 reason] == 2];
                  [v54 reasonTimestamp];
                  if (v60 - v70 > v69)
                  {
                    v71 = CWFGetOSLog();
                    if (v71)
                    {
                      v62 = CWFGetOSLog();
                    }

                    else
                    {
                      v62 = MEMORY[0x1E69E9C10];
                      v72 = MEMORY[0x1E69E9C10];
                    }

                    if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_82;
                    }

                    v64 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v60];
                    v136 = 136446978;
                    v137 = "[CWFNetworkDenyList removeNetworkDenyListInfoWithReason:forScanResult:]";
                    v138 = 2114;
                    v139 = reasonString;
                    v140 = 2114;
                    v141 = v64;
                    v142 = 2114;
                    v143 = v118;
                    LODWORD(v105) = 42;
                    v102 = &v136;
LABEL_81:
                    _os_log_send_and_compose_impl();

                    goto LABEL_82;
                  }

LABEL_83:

                  ++v53;
                }

                while (v51 != v53);
                v76 = [denyListTriggers countByEnumeratingWithState:&v123 objects:v148 count:16];
                v51 = v76;
              }

              while (v76);
            }

            v121 = 0u;
            v122 = 0u;
            v119 = 0u;
            v120 = 0u;
            v77 = v117;
            v78 = [v77 countByEnumeratingWithState:&v119 objects:v135 count:16];
            if (v78)
            {
              v79 = v78;
              v80 = *v120;
              do
              {
                for (k = 0; k != v79; ++k)
                {
                  if (*v120 != v80)
                  {
                    objc_enumerationMutation(v77);
                  }

                  [v27 processDenyListStateMetric:*(*(&v119 + 1) + 8 * k) denyListRemove:1 denyListRemoveReason:{1, v102, v105}];
                }

                v79 = [v77 countByEnumeratingWithState:&v119 objects:v135 count:16];
              }

              while (v79);
            }

            statesCurrent2 = [v27 statesCurrent];
            [statesCurrent2 removeObjectsInArray:v77];

            denyListTriggers2 = [v27 denyListTriggers];
            [denyListTriggers2 removeObjectsInArray:v115];

            v24 = v110;
            if ([v77 count])
            {
              denyListDidUpdateHandler = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];

              if (denyListDidUpdateHandler)
              {
                denyListDidUpdateHandler2 = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];
                (denyListDidUpdateHandler2)[2](denyListDidUpdateHandler2, &unk_1F5B8AF60);
              }
            }

            statesCurrent3 = [v27 statesCurrent];
            v25 = 0x1E696A000;
            if ([statesCurrent3 count])
            {
            }

            else
            {
              denyListTriggers3 = [v27 denyListTriggers];
              v92 = [denyListTriggers3 count];

              if (!v92)
              {
                [(NSMutableArray *)self->_denyList removeObject:v27];
              }
            }

            [v77 removeAllObjects];
            [v115 removeAllObjects];
            v93 = v113;
          }

          else
          {
            v89 = CWFGetOSLog();
            if (v89)
            {
              v90 = CWFGetOSLog();
            }

            else
            {
              v90 = MEMORY[0x1E69E9C10];
              v95 = MEMORY[0x1E69E9C10];
            }

            v93 = v113;

            if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
            {
              v136 = 136446210;
              v137 = "[CWFNetworkDenyList removeNetworkDenyListInfoWithReason:forScanResult:]";
              LODWORD(v105) = 12;
              v102 = &v136;
              _os_log_send_and_compose_impl();
            }

            v116 = 0;
          }
        }

        else
        {
          v87 = CWFGetOSLog();
          if (v87)
          {
            v88 = CWFGetOSLog();
          }

          else
          {
            v88 = MEMORY[0x1E69E9C10];
            v94 = MEMORY[0x1E69E9C10];
          }

          v93 = v113;

          if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            v136 = 136446210;
            v137 = "[CWFNetworkDenyList removeNetworkDenyListInfoWithReason:forScanResult:]";
            LODWORD(v105) = 12;
            v102 = &v136;
            _os_log_send_and_compose_impl();
          }
        }
      }

      v112 = [v24 countByEnumeratingWithState:&v131 objects:v150 count:16];
    }

    while (v112);
    v10 = v108;
    resultCopy = v109;
    v96 = v116;
  }

  else
  {
    v96 = 0;
  }

LABEL_140:

  [v10 removeAllObjects];
  v97 = *MEMORY[0x1E69E9840];
}

- (BOOL)_evaluateTriggersForDenyListRemove:(id)remove denyListRemoveReason:(unint64_t)reason SSID:(id)d
{
  v54 = *MEMORY[0x1E69E9840];
  removeCopy = remove;
  dCopy = d;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v39 = removeCopy;
  statesHistory = [removeCopy statesHistory];
  v9 = [statesHistory count];

  isUserModeInteractiveHandler = [(CWFNetworkDenyList *)self isUserModeInteractiveHandler];

  if (isUserModeInteractiveHandler)
  {
    isUserModeInteractiveHandler2 = [(CWFNetworkDenyList *)self isUserModeInteractiveHandler];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = sub_1E0CE4340;
    v44[3] = &unk_1E86E8D70;
    v44[4] = &v45;
    (isUserModeInteractiveHandler2)[2](isUserModeInteractiveHandler2, v44);

    v12 = CWFGetOSLog();
    if (v12)
    {
      v13 = CWFGetOSLog();
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      if (*(v46 + 24))
      {
        v17 = "interactive";
      }

      else
      {
        v17 = "non-interactive";
      }

      v50 = 136446466;
      v51 = "[CWFNetworkDenyList _evaluateTriggersForDenyListRemove:denyListRemoveReason:SSID:]";
      v52 = 2082;
      v53 = v17;
      LODWORD(v36) = 22;
      v35 = &v50;
      _os_log_send_and_compose_impl();
    }

    if (v46[3])
    {
      LOBYTE(v18) = 1;
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      statesHistory2 = [removeCopy statesHistory];
      v20 = [statesHistory2 countByEnumeratingWithState:&v40 objects:v49 count:16];
      if (v20)
      {
        v21 = 0;
        v22 = 0;
        v23 = *v41;
        v24 = v9 - 1;
        reason = 13;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v41 != v23)
            {
              objc_enumerationMutation(statesHistory2);
            }

            v27 = *(*(&v40 + 1) + 8 * i);
            if ([v27 state] != 1)
            {
              if ([v27 reason] == 2)
              {
                date = [MEMORY[0x1E695DF00] date];
                [date timeIntervalSince1970];
                v30 = v29;

                [v27 stateTimestamp];
                v22 |= v30 - v31 < 21600.0;
              }

              if (v21 == v24)
              {
                reason = [v27 reason];
              }

              ++v21;
            }
          }

          v20 = [statesHistory2 countByEnumeratingWithState:&v40 objects:v49 count:16];
        }

        while (v20);
      }

      else
      {
        v22 = 0;
        reason = 13;
      }

      LOBYTE(v18) = 0;
      if (!((reason != 1) | v22 & 1) && reason <= 7)
      {
        v18 = 0xB0u >> reason;
      }
    }
  }

  else
  {
    v14 = CWFGetOSLog();
    if (v14)
    {
      v15 = CWFGetOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v32 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v50 = 136446210;
      v51 = "[CWFNetworkDenyList _evaluateTriggersForDenyListRemove:denyListRemoveReason:SSID:]";
      _os_log_send_and_compose_impl();
    }

    LOBYTE(v18) = 1;
    *(v46 + 24) = 1;
  }

  _Block_object_dispose(&v45, 8);

  v33 = *MEMORY[0x1E69E9840];
  return v18 & 1;
}

- (void)processDenyListedBSSForMetrics:(id)metrics
{
  v43 = *MEMORY[0x1E69E9840];
  metricsCopy = metrics;
  if (metricsCopy)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = self->_denyList;
    v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v5)
    {
      v6 = v5;
      v30 = metricsCopy;
      v7 = 0;
      v8 = *v33;
      do
      {
        v9 = 0;
        v10 = v7;
        do
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v32 + 1) + 8 * v9);

          v11 = CWFGetOSLog();
          if (v11)
          {
            v12 = CWFGetOSLog();
          }

          else
          {
            v12 = MEMORY[0x1E69E9C10];
            v13 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            scanResultForNetworkDenyListItem = [v7 scanResultForNetworkDenyListItem];
            sSID = [scanResultForNetworkDenyListItem SSID];
            scanResultForNetworkDenyListItem2 = [v7 scanResultForNetworkDenyListItem];
            bSSID = [scanResultForNetworkDenyListItem2 BSSID];
            v36 = 136446722;
            v37 = "[CWFNetworkDenyList processDenyListedBSSForMetrics:]";
            v38 = 2114;
            v39 = sSID;
            v40 = 2114;
            v41 = bSSID;
            _os_log_send_and_compose_impl();
          }

          ++v9;
          v10 = v7;
        }

        while (v6 != v9);
        v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v6);

      metricsCopy = v30;
    }

    v18 = CWFGetOSLog();
    if (v18)
    {
      v19 = CWFGetOSLog();
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sSID2 = [metricsCopy SSID];
      bSSID2 = [metricsCopy BSSID];
      v36 = 136446722;
      v37 = "[CWFNetworkDenyList processDenyListedBSSForMetrics:]";
      v38 = 2114;
      v39 = sSID2;
      v40 = 2114;
      v41 = bSSID2;
      _os_log_send_and_compose_impl();
    }

    v23 = [(CWFNetworkDenyList *)self _findNetworkDenyListItem:metricsCopy];
    if (v23)
    {
      v24 = v23;
      [v23 processDenyListedBSSForMetrics];
      goto LABEL_22;
    }

    v27 = CWFGetOSLog();
    if (v27)
    {
      v24 = CWFGetOSLog();
    }

    else
    {
      v24 = MEMORY[0x1E69E9C10];
      v29 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v36 = 136446210;
      v37 = "[CWFNetworkDenyList processDenyListedBSSForMetrics:]";
      goto LABEL_33;
    }
  }

  else
  {
    v26 = CWFGetOSLog();
    if (v26)
    {
      v24 = CWFGetOSLog();
    }

    else
    {
      v24 = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v36 = 136446210;
      v37 = "[CWFNetworkDenyList processDenyListedBSSForMetrics:]";
LABEL_33:
      _os_log_send_and_compose_impl();
    }
  }

LABEL_22:

  v25 = *MEMORY[0x1E69E9840];
}

- (void)removeAllDenyListEntriesWithNetworkName:(id)name
{
  v49 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = self->_denyList;
  v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v6)
  {
    v7 = v6;
    selfCopy = self;
    v34 = v5;
    v8 = 0;
    v9 = 0;
    v10 = *v39;
    do
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v38 + 1) + 8 * v11);

        v13 = objc_alloc(MEMORY[0x1E696AEC0]);
        scanResultForNetworkDenyListItem = [v9 scanResultForNetworkDenyListItem];
        sSID = [scanResultForNetworkDenyListItem SSID];
        v16 = [v13 initWithData:sSID encoding:4];
        v17 = [nameCopy isEqualToString:v16];

        if (v17)
        {
          v18 = CWFGetOSLog();
          if (v18)
          {
            v19 = CWFGetOSLog();
          }

          else
          {
            v19 = MEMORY[0x1E69E9C10];
            v20 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            scanResultForNetworkDenyListItem2 = [v9 scanResultForNetworkDenyListItem];
            sSID2 = [scanResultForNetworkDenyListItem2 SSID];
            scanResultForNetworkDenyListItem3 = [v9 scanResultForNetworkDenyListItem];
            sSID3 = [scanResultForNetworkDenyListItem3 SSID];
            v42 = 136446722;
            v43 = "[CWFNetworkDenyList removeAllDenyListEntriesWithNetworkName:]";
            v44 = 2114;
            v45 = sSID2;
            v46 = 2114;
            v47 = sSID3;
            _os_log_send_and_compose_impl();
          }

          denyListTriggers = [v9 denyListTriggers];
          [denyListTriggers removeAllObjects];

          statesCurrent = [v9 statesCurrent];
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = sub_1E0CE4B88;
          v36[3] = &unk_1E86E8D20;
          v27 = v9;
          v37 = v27;
          [statesCurrent enumerateObjectsUsingBlock:v36];

          statesCurrent2 = [v27 statesCurrent];
          [statesCurrent2 removeAllObjects];

          statesHistory = [v27 statesHistory];
          [statesHistory removeAllObjects];

          [v34 addObject:v27];
          v8 = 1;
        }

        ++v11;
        v12 = v9;
      }

      while (v7 != v11);
      v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v7);

    v5 = v34;
    self = selfCopy;
  }

  else
  {
    v8 = 0;
  }

  if ([v5 count])
  {
    [(NSMutableArray *)self->_denyList removeObjectsInArray:v5];
  }

  if (v8)
  {
    denyListDidUpdateHandler = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];

    if (denyListDidUpdateHandler)
    {
      denyListDidUpdateHandler2 = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];
      (denyListDidUpdateHandler2)[2](denyListDidUpdateHandler2, &unk_1F5B89710);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)removeNetworkDenyListInfoForTrigger:(unint64_t)trigger forNetwork:(id)network
{
  v79 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v53 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  sSID = [networkCopy SSID];
  v10 = [v8 initWithData:sSID encoding:4];

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  selfCopy = self;
  obj = self->_denyList;
  v51 = [(NSMutableArray *)obj countByEnumeratingWithState:&v67 objects:v78 count:16];
  if (v51)
  {
    v11 = *v68;
    v48 = *v68;
    v49 = networkCopy;
    do
    {
      v12 = 0;
      do
      {
        if (*v68 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v52 = v12;
        v13 = *(*(&v67 + 1) + 8 * v12);
        scanResultForNetworkDenyListItem = [v13 scanResultForNetworkDenyListItem];
        sSID2 = [scanResultForNetworkDenyListItem SSID];
        sSID3 = [networkCopy SSID];
        v17 = [sSID2 isEqual:sSID3];

        if (v17)
        {
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          denyListTriggers = [v13 denyListTriggers];
          v19 = [denyListTriggers countByEnumeratingWithState:&v63 objects:v77 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v64;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v64 != v21)
                {
                  objc_enumerationMutation(denyListTriggers);
                }

                v23 = *(*(&v63 + 1) + 8 * i);
                if ([v23 reason] == trigger)
                {
                  [v7 addObject:v23];
                }
              }

              v20 = [denyListTriggers countByEnumeratingWithState:&v63 objects:v77 count:16];
            }

            while (v20);
          }

          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          statesCurrent = [v13 statesCurrent];
          v25 = [statesCurrent countByEnumeratingWithState:&v59 objects:v76 count:16];
          v26 = v53;
          if (v25)
          {
            v27 = v25;
            v28 = *v60;
            do
            {
              for (j = 0; j != v27; ++j)
              {
                if (*v60 != v28)
                {
                  objc_enumerationMutation(statesCurrent);
                }

                v30 = *(*(&v59 + 1) + 8 * j);
                if ([v30 reason] == trigger)
                {
                  if ([v30 state] == 3 && -[CWFNetworkDenyList _evaluateTriggersForDenyListRemove:denyListRemoveReason:SSID:](selfCopy, "_evaluateTriggersForDenyListRemove:denyListRemoveReason:SSID:", v13, 1, v10))
                  {
                    [v26 addObject:v30];
                    v31 = CWFGetOSLog();
                    if (v31)
                    {
                      v32 = CWFGetOSLog();
                    }

                    else
                    {
                      v32 = MEMORY[0x1E69E9C10];
                      v33 = MEMORY[0x1E69E9C10];
                    }

                    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                    {
                      v72 = 136446466;
                      v73 = "[CWFNetworkDenyList removeNetworkDenyListInfoForTrigger:forNetwork:]";
                      v74 = 2114;
                      v75 = v10;
                      LODWORD(v46) = 22;
                      v45 = &v72;
                      _os_log_send_and_compose_impl();
                    }

                    v26 = v53;
                  }

                  else if ([v30 state] != 3)
                  {
                    [v26 addObject:v30];
                  }
                }
              }

              v27 = [statesCurrent countByEnumeratingWithState:&v59 objects:v76 count:16];
            }

            while (v27);
          }

          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v34 = v26;
          v35 = [v34 countByEnumeratingWithState:&v55 objects:v71 count:16];
          v11 = v48;
          if (v35)
          {
            v36 = v35;
            v37 = *v56;
            do
            {
              for (k = 0; k != v36; ++k)
              {
                if (*v56 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                [v13 processDenyListStateMetric:*(*(&v55 + 1) + 8 * k) denyListRemove:1 denyListRemoveReason:{1, v45, v46}];
              }

              v36 = [v34 countByEnumeratingWithState:&v55 objects:v71 count:16];
            }

            while (v36);
          }

          statesCurrent2 = [v13 statesCurrent];
          [statesCurrent2 removeObjectsInArray:v34];

          denyListTriggers2 = [v13 denyListTriggers];
          [denyListTriggers2 removeObjectsInArray:v7];

          denyListTriggers3 = [v13 denyListTriggers];
          if ([denyListTriggers3 count])
          {

            networkCopy = v49;
          }

          else
          {
            statesCurrent3 = [v13 statesCurrent];
            v43 = [statesCurrent3 count];

            networkCopy = v49;
            if (!v43)
            {
              [v47 addObject:v13];
            }
          }
        }

        v12 = v52 + 1;
      }

      while (v52 + 1 != v51);
      v51 = [(NSMutableArray *)obj countByEnumeratingWithState:&v67 objects:v78 count:16];
    }

    while (v51);
  }

  [(NSMutableArray *)selfCopy->_denyList removeObjectsInArray:v47];
  [v47 removeAllObjects];

  v44 = *MEMORY[0x1E69E9840];
}

- (void)setEnabled:(BOOL)enabled
{
  if (enabled)
  {
    self->_enabled = 1;
  }

  else
  {
    self->_enabled = 0;
    [(CWFNetworkDenyList *)self removeAllDenyListedItems];
  }
}

- (BOOL)_meetsThresholds:(unint64_t)thresholds count:(unsigned int)count forSSIDThresholds:(BOOL)dThresholds BSSID:(id)d SSID:(id)iD
{
  dThresholdsCopy = dThresholds;
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  if (dThresholdsCopy)
  {
    sSIDThresholds = [(CWFNetworkDenyList *)self SSIDThresholds];
    v15 = [sSIDThresholds objectAtIndexedSubscript:thresholds];
    LOBYTE(v16) = [v15 unsignedIntValue] <= count;

    v17 = CWFGetOSLog();
    if (v17)
    {
      v18 = CWFGetOSLog();
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      sSIDThresholds2 = [(CWFNetworkDenyList *)self SSIDThresholds];
      v24 = [sSIDThresholds2 objectAtIndexedSubscript:thresholds];
      [v24 unsignedIntValue];
LABEL_12:
      _os_log_send_and_compose_impl();
    }
  }

  else
  {
    bSSIDThresholds = [(CWFNetworkDenyList *)self BSSIDThresholds];
    v20 = [bSSIDThresholds objectAtIndexedSubscript:thresholds];
    v16 = [v20 unsignedIntValue] <= count;

    v21 = CWFGetOSLog();
    if (v21)
    {
      v18 = CWFGetOSLog();
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v25 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      sSIDThresholds2 = [(CWFNetworkDenyList *)self BSSIDThresholds];
      v24 = [sSIDThresholds2 objectAtIndexedSubscript:thresholds];
      [v24 unsignedIntValue];
      goto LABEL_12;
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)_findNetworkDenyListItemsForSSID:(id)d
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_denyList;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        v10 = v7;
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * i);

        scanResultForNetworkDenyListItem = [v7 scanResultForNetworkDenyListItem];
        sSID = [scanResultForNetworkDenyListItem SSID];
        v13 = sSID;
        if (dCopy && sSID)
        {
          scanResultForNetworkDenyListItem2 = [v7 scanResultForNetworkDenyListItem];
          sSID2 = [scanResultForNetworkDenyListItem2 SSID];
          v16 = [sSID2 isEqual:dCopy];

          if (v16)
          {
            [v19 addObject:v7];
          }
        }

        else
        {
        }
      }

      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)_findNetworkDenyListItem:(id)item
{
  v19 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_denyList;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    v11 = v8;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v8 = *(*(&v14 + 1) + 8 * v10);

      if ([v8 containsNetwork:{itemCopy, v14}])
      {
        break;
      }

      ++v10;
      v11 = v8;
      if (v7 == v10)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v8 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)networksInDenyListedState:(unint64_t)state
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v5)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = self->_denyList;
    v24 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v24)
    {
      v7 = 0;
      obj = v6;
      v23 = *v30;
      do
      {
        v8 = 0;
        v9 = v7;
        do
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v29 + 1) + 8 * v8);

          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          statesCurrent = [v7 statesCurrent];
          v11 = [statesCurrent countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v26;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v26 != v13)
                {
                  objc_enumerationMutation(statesCurrent);
                }

                if ([*(*(&v25 + 1) + 8 * i) state] == state)
                {
                  scanResultForNetworkDenyListItem = [v7 scanResultForNetworkDenyListItem];

                  if (scanResultForNetworkDenyListItem)
                  {
                    scanResultForNetworkDenyListItem2 = [v7 scanResultForNetworkDenyListItem];
                    v17 = [scanResultForNetworkDenyListItem2 copyWithZone:0];

                    if (v17)
                    {
                      [v5 addObject:v17];
                    }
                  }
                }
              }

              v12 = [statesCurrent countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v12);
          }

          ++v8;
          v9 = v7;
        }

        while (v8 != v24);
        v6 = obj;
        v24 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v24);
    }
  }

  else
  {
    v20 = CWFGetOSLog();
    if (v20)
    {
      v6 = CWFGetOSLog();
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(&v6->super.super, OS_LOG_TYPE_ERROR))
    {
      v35 = 136446210;
      v36 = "[CWFNetworkDenyList networksInDenyListedState:]";
      _os_log_send_and_compose_impl();
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)networksInDenyListedStateHistory:(unint64_t)history
{
  v39 = *MEMORY[0x1E69E9840];
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v25)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = self->_denyList;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v32;
      obj = v5;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          v11 = v8;
          if (*v32 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v31 + 1) + 8 * i);

          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          statesHistory = [v8 statesHistory];
          v13 = [statesHistory countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v28;
            while (2)
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v28 != v15)
                {
                  objc_enumerationMutation(statesHistory);
                }

                v17 = *(*(&v27 + 1) + 8 * j);
                if ([v17 state] == history || objc_msgSend(v17, "state") == 5)
                {
                  scanResultForNetworkDenyListItem = [v8 scanResultForNetworkDenyListItem];

                  if (scanResultForNetworkDenyListItem)
                  {
                    scanResultForNetworkDenyListItem2 = [v8 scanResultForNetworkDenyListItem];
                    v20 = [scanResultForNetworkDenyListItem2 copyWithZone:0];

                    if (v20)
                    {
                      [v25 addObject:v20];
                    }

                    goto LABEL_21;
                  }
                }
              }

              v14 = [statesHistory countByEnumeratingWithState:&v27 objects:v35 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }

LABEL_21:
        }

        v5 = obj;
        v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v23 = CWFGetOSLog();
    if (v23)
    {
      v5 = CWFGetOSLog();
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v24 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(&v5->super.super, OS_LOG_TYPE_ERROR))
    {
      v37 = 136446210;
      v38 = "[CWFNetworkDenyList networksInDenyListedStateHistory:]";
      _os_log_send_and_compose_impl();
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)denyListedReasonHistoryForNetwork:(id)network state:(unint64_t)state timestamps:(id)timestamps reasonData:(id)data
{
  v59 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  timestampsCopy = timestamps;
  dataCopy = data;
  if (![(CWFNetworkDenyList *)self isNetworkInDenyListedState:state scanResult:networkCopy])
  {
    v51 = 0;
    goto LABEL_40;
  }

  v13 = [(CWFNetworkDenyList *)self _findNetworkDenyListItem:networkCopy];
  if (v13)
  {
    v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v51)
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      statesHistory = [v13 statesHistory];
      v15 = [statesHistory countByEnumeratingWithState:&v52 objects:v56 count:16];
      if (!v15)
      {
        goto LABEL_38;
      }

      v16 = v15;
      v48 = v13;
      v49 = networkCopy;
      v17 = *v53;
      obj = statesHistory;
      while (1)
      {
        v18 = 0;
        do
        {
          if (*v53 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v52 + 1) + 8 * v18);
          reason = [v19 reason];
          [v19 stateTimestamp];
          v22 = v21;
          reasonData = [v19 reasonData];
          v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:reason];
          if (!v24)
          {
            v29 = CWFGetOSLog();
            if (v29)
            {
              v30 = CWFGetOSLog();
            }

            else
            {
              v30 = MEMORY[0x1E69E9C10];
              v34 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v57 = 136446210;
              v58 = "[CWFNetworkDenyList denyListedReasonHistoryForNetwork:state:timestamps:reasonData:]";
              LODWORD(v47) = 12;
              v46 = &v57;
              goto LABEL_30;
            }

LABEL_31:

            v28 = 0;
            v26 = 0;
            goto LABEL_16;
          }

          v25 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
          if (!v25)
          {
            v31 = CWFGetOSLog();
            if (v31)
            {
              v30 = CWFGetOSLog();
            }

            else
            {
              v30 = MEMORY[0x1E69E9C10];
              v35 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v57 = 136446210;
              v58 = "[CWFNetworkDenyList denyListedReasonHistoryForNetwork:state:timestamps:reasonData:]";
              LODWORD(v47) = 12;
              v46 = &v57;
LABEL_30:
              _os_log_send_and_compose_impl();
            }

            goto LABEL_31;
          }

          v26 = v25;
          v27 = [MEMORY[0x1E696AD98] numberWithInteger:reasonData];
          if (v27)
          {
            v28 = v27;
            [v51 addObject:v24];
            if (timestampsCopy)
            {
              [timestampsCopy addObject:v26];
            }

            if (dataCopy)
            {
              [dataCopy addObject:v28];
            }
          }

          else
          {
            v32 = CWFGetOSLog();
            if (v32)
            {
              v33 = CWFGetOSLog();
            }

            else
            {
              v33 = MEMORY[0x1E69E9C10];
              v36 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              v57 = 136446210;
              v58 = "[CWFNetworkDenyList denyListedReasonHistoryForNetwork:state:timestamps:reasonData:]";
              LODWORD(v47) = 12;
              v46 = &v57;
              _os_log_send_and_compose_impl();
            }

            v28 = 0;
          }

LABEL_16:

          ++v18;
        }

        while (v16 != v18);
        statesHistory = obj;
        v37 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
        v16 = v37;
        if (!v37)
        {
          v13 = v48;
          networkCopy = v49;
          goto LABEL_38;
        }
      }
    }

    v42 = CWFGetOSLog();
    if (v42)
    {
      v43 = CWFGetOSLog();
    }

    else
    {
      v43 = MEMORY[0x1E69E9C10];
      v45 = MEMORY[0x1E69E9C10];
    }

    statesHistory = v43;
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }

    v57 = 136446210;
    v58 = "[CWFNetworkDenyList denyListedReasonHistoryForNetwork:state:timestamps:reasonData:]";
    goto LABEL_53;
  }

  v40 = CWFGetOSLog();
  if (v40)
  {
    v41 = CWFGetOSLog();
  }

  else
  {
    v41 = MEMORY[0x1E69E9C10];
    v44 = MEMORY[0x1E69E9C10];
  }

  statesHistory = v41;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    v57 = 136446210;
    v58 = "[CWFNetworkDenyList denyListedReasonHistoryForNetwork:state:timestamps:reasonData:]";
LABEL_53:
    _os_log_send_and_compose_impl();
  }

LABEL_54:
  v51 = 0;
LABEL_38:

LABEL_40:
  v38 = *MEMORY[0x1E69E9840];

  return v51;
}

- (id)reasonsForNetworkInDenyListedState:(id)state state:(unint64_t)a4 timestamps:(id)timestamps reasonData:(id)data
{
  v57 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  timestampsCopy = timestamps;
  dataCopy = data;
  if (![(CWFNetworkDenyList *)self isNetworkInDenyListedState:a4 scanResult:stateCopy])
  {
    v14 = 0;
    goto LABEL_36;
  }

  v12 = [(CWFNetworkDenyList *)self _findNetworkDenyListItem:stateCopy];
  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v13)
    {
      v14 = v13;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      denyListTriggers = [v12 denyListTriggers];
      v16 = [denyListTriggers countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (!v16)
      {
        goto LABEL_34;
      }

      v17 = v16;
      v47 = stateCopy;
      obj = denyListTriggers;
      v46 = v12;
      v18 = *v51;
      while (1)
      {
        v19 = 0;
        do
        {
          if (*v51 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v50 + 1) + 8 * v19);
          reason = [v20 reason];
          [v20 reasonTimestamp];
          v23 = v22;
          reasonData = [v20 reasonData];
          v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:reason];
          if (v25)
          {
            v26 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
            if (v26)
            {
              v27 = v26;
              v28 = [MEMORY[0x1E696AD98] numberWithInteger:reasonData];
              if (v28)
              {
                v29 = v28;
                [v14 addObject:v25];
                [timestampsCopy addObject:v27];
                [dataCopy addObject:v29];
              }

              else
              {
                v32 = CWFGetOSLog();
                if (v32)
                {
                  v33 = CWFGetOSLog();
                }

                else
                {
                  v33 = MEMORY[0x1E69E9C10];
                  v36 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  v55 = 136446210;
                  v56 = "[CWFNetworkDenyList reasonsForNetworkInDenyListedState:state:timestamps:reasonData:]";
                  LODWORD(v45) = 12;
                  v44 = &v55;
                  _os_log_send_and_compose_impl();
                }
              }
            }

            else
            {
              v31 = CWFGetOSLog();
              if (v31)
              {
                v27 = CWFGetOSLog();
              }

              else
              {
                v27 = MEMORY[0x1E69E9C10];
                v35 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                v55 = 136446210;
                v56 = "[CWFNetworkDenyList reasonsForNetworkInDenyListedState:state:timestamps:reasonData:]";
                LODWORD(v45) = 12;
                v44 = &v55;
                goto LABEL_27;
              }
            }
          }

          else
          {
            v30 = CWFGetOSLog();
            if (v30)
            {
              v27 = CWFGetOSLog();
            }

            else
            {
              v27 = MEMORY[0x1E69E9C10];
              v34 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v55 = 136446210;
              v56 = "[CWFNetworkDenyList reasonsForNetworkInDenyListedState:state:timestamps:reasonData:]";
              LODWORD(v45) = 12;
              v44 = &v55;
LABEL_27:
              _os_log_send_and_compose_impl();
            }
          }

          ++v19;
        }

        while (v17 != v19);
        v37 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
        v17 = v37;
        if (!v37)
        {
          v12 = v46;
          stateCopy = v47;
          denyListTriggers = obj;
          goto LABEL_34;
        }
      }
    }

    v41 = CWFGetOSLog();
    if (v41)
    {
      denyListTriggers = CWFGetOSLog();
    }

    else
    {
      denyListTriggers = MEMORY[0x1E69E9C10];
      v43 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(denyListTriggers, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    v55 = 136446210;
    v56 = "[CWFNetworkDenyList reasonsForNetworkInDenyListedState:state:timestamps:reasonData:]";
    goto LABEL_49;
  }

  v40 = CWFGetOSLog();
  if (v40)
  {
    denyListTriggers = CWFGetOSLog();
  }

  else
  {
    denyListTriggers = MEMORY[0x1E69E9C10];
    v42 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(denyListTriggers, OS_LOG_TYPE_ERROR))
  {
    v55 = 136446210;
    v56 = "[CWFNetworkDenyList reasonsForNetworkInDenyListedState:state:timestamps:reasonData:]";
LABEL_49:
    _os_log_send_and_compose_impl();
  }

LABEL_50:
  v14 = 0;
LABEL_34:

LABEL_36:
  v38 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)isNetworkInDenyListedState:(unint64_t)state scanResult:(id)result
{
  v5 = [(CWFNetworkDenyList *)self _findNetworkDenyListItem:result];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 hasDenyListState:state];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isNetworkTemporarilyDenyListedForAutoJoin:(id)join
{
  v33 = *MEMORY[0x1E69E9840];
  joinCopy = join;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = self->_denyList;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        scanResultForNetworkDenyListItem = [v10 scanResultForNetworkDenyListItem];
        sSID = [scanResultForNetworkDenyListItem SSID];
        sSID2 = [joinCopy SSID];
        v14 = [sSID isEqual:sSID2];

        if (v14 && [v10 hasDenyListState:1])
        {
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          statesCurrent = [v10 statesCurrent];
          v16 = [statesCurrent countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v24;
            while (2)
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v24 != v18)
                {
                  objc_enumerationMutation(statesCurrent);
                }

                if (![*(*(&v23 + 1) + 8 * j) reason])
                {

                  v20 = 1;
                  goto LABEL_22;
                }
              }

              v17 = [statesCurrent countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
      v20 = 0;
    }

    while (v7);
  }

  else
  {
    v20 = 0;
  }

LABEL_22:

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (int64_t)RSSIWhenNetworkWasDenyListed:(id)listed
{
  v3 = [(CWFNetworkDenyList *)self _findNetworkDenyListItem:listed];
  v4 = v3;
  if (v3)
  {
    scanResultForNetworkDenyListItem = [v3 scanResultForNetworkDenyListItem];
    rSSI = [scanResultForNetworkDenyListItem RSSI];
  }

  else
  {
    rSSI = 0;
  }

  return rSSI;
}

- (BOOL)isNetworkDenyListedForAutoJoinDueToTrigDisc:(id)disc RSSI:(int64_t *)i timestamp:(double *)timestamp
{
  v42 = *MEMORY[0x1E69E9840];
  discCopy = disc;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = self->_denyList;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    iCopy = i;
    timestampCopy = timestamp;
    v11 = 0;
    v12 = *v37;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        v14 = v11;
        if (*v37 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v36 + 1) + 8 * i);

        if ([v11 hasDenyListState:1])
        {
          scanResultForNetworkDenyListItem = [v11 scanResultForNetworkDenyListItem];
          sSID = [scanResultForNetworkDenyListItem SSID];
          sSID2 = [discCopy SSID];
          v18 = [sSID isEqual:sSID2];

          if (v18)
          {
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            statesCurrent = [v11 statesCurrent];
            v20 = [statesCurrent countByEnumeratingWithState:&v32 objects:v40 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v33;
              while (2)
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v33 != v22)
                  {
                    objc_enumerationMutation(statesCurrent);
                  }

                  v24 = *(*(&v32 + 1) + 8 * j);
                  if ([v24 reason] == 6)
                  {
                    if (iCopy)
                    {
                      *iCopy = [v24 reasonData];
                    }

                    if (timestampCopy)
                    {
                      [v24 stateTimestamp];
                      *timestampCopy = v26;
                    }

                    v25 = 1;
                    goto LABEL_25;
                  }
                }

                v21 = [statesCurrent countByEnumeratingWithState:&v32 objects:v40 count:16];
                if (v21)
                {
                  continue;
                }

                break;
              }
            }
          }
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v10);
    v25 = 0;
    statesCurrent = v11;
    v11 = 0;
LABEL_25:
  }

  else
  {
    v11 = 0;
    v25 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v25;
}

- (id)denyListedNetworkSSIDs:(unint64_t)ds
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if (!v5)
  {
    v22 = CWFGetOSLog();
    if (v22)
    {
      v18 = CWFGetOSLog();
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v36 = 136446210;
    v37 = "[CWFNetworkDenyList denyListedNetworkSSIDs:]";
    goto LABEL_24;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = self->_denyList;
  v26 = [(NSMutableArray *)obj countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v26)
  {
    v6 = 0;
    v25 = *v33;
    do
    {
      v7 = 0;
      v8 = v6;
      do
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v7;
        v6 = *(*(&v32 + 1) + 8 * v7);

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        statesCurrent = [v6 statesCurrent];
        v10 = [statesCurrent countByEnumeratingWithState:&v28 objects:v40 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v29;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v29 != v12)
              {
                objc_enumerationMutation(statesCurrent);
              }

              if ([*(*(&v28 + 1) + 8 * i) state] == ds)
              {
                scanResultForNetworkDenyListItem = [v6 scanResultForNetworkDenyListItem];
                sSID = [scanResultForNetworkDenyListItem SSID];

                v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:sSID encoding:4];
                [v5 appendFormat:@"%@ ", v16];
              }
            }

            v11 = [statesCurrent countByEnumeratingWithState:&v28 objects:v40 count:16];
          }

          while (v11);
        }

        v7 = v27 + 1;
        v8 = v6;
      }

      while (v27 + 1 != v26);
      v26 = [(NSMutableArray *)obj countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v26);
  }

  v17 = CWFGetOSLog();
  if (v17)
  {
    v18 = CWFGetOSLog();
  }

  else
  {
    v18 = MEMORY[0x1E69E9C10];
    v19 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v36 = 136446466;
    v37 = "[CWFNetworkDenyList denyListedNetworkSSIDs:]";
    v38 = 2114;
    v39 = v5;
LABEL_24:
    _os_log_send_and_compose_impl();
  }

LABEL_25:

  v20 = *MEMORY[0x1E69E9840];

  return v5;
}

@end