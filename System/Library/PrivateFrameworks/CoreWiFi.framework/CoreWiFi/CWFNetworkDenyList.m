@interface CWFNetworkDenyList
- (BOOL)_evaluateTriggersForDenyListRemove:(id)a3 denyListRemoveReason:(unint64_t)a4 SSID:(id)a5;
- (BOOL)_evaluateTriggersForDenyListing:(id)a3 reason:(unint64_t)a4 reasonData:(int64_t)a5 BSSID:(id)a6 SSID:(id)a7 state:(unint64_t)a8;
- (BOOL)_ignoreTriggersForDeviceProfile:(unint64_t)a3 denyListItem:(id)a4;
- (BOOL)_meetsThresholds:(unint64_t)a3 count:(unsigned int)a4 forSSIDThresholds:(BOOL)a5 BSSID:(id)a6 SSID:(id)a7;
- (BOOL)isNetworkDenyListedForAutoJoinDueToTrigDisc:(id)a3 RSSI:(int64_t *)a4 timestamp:(double *)a5;
- (BOOL)isNetworkInDenyListedState:(unint64_t)a3 scanResult:(id)a4;
- (BOOL)isNetworkTemporarilyDenyListedForAutoJoin:(id)a3;
- (CWFNetworkDenyList)initWithDenyListDeviceProfile:(unint64_t)a3;
- (id)_findNetworkDenyListItem:(id)a3;
- (id)_findNetworkDenyListItemsForSSID:(id)a3;
- (id)denyListedNetworkSSIDs:(unint64_t)a3;
- (id)denyListedReasonHistoryForNetwork:(id)a3 state:(unint64_t)a4 timestamps:(id)a5 reasonData:(id)a6;
- (id)networksInDenyListedState:(unint64_t)a3;
- (id)networksInDenyListedStateHistory:(unint64_t)a3;
- (id)reasonsForNetworkInDenyListedState:(id)a3 state:(unint64_t)a4 timestamps:(id)a5 reasonData:(id)a6;
- (int64_t)RSSIWhenNetworkWasDenyListed:(id)a3;
- (int64_t)denyListThresholdForReason:(unint64_t)a3 forSSIDThresholds:(BOOL)a4;
- (unint64_t)denyListedNetworkCount;
- (void)_printDenyList;
- (void)processDenyListedBSSForMetrics:(id)a3;
- (void)removeAllDenyListEntriesWithNetworkName:(id)a3;
- (void)removeAllDenyListedItems;
- (void)removeDenyListStateWithDenyListRemoveReason:(unint64_t)a3;
- (void)removeExpiredDenyListedState:(unint64_t)a3;
- (void)removeNetworkDenyListInfoForTrigger:(unint64_t)a3 forNetwork:(id)a4;
- (void)removeNetworkDenyListInfoWithReason:(unint64_t)a3 forScanResult:(id)a4;
- (void)setDefaultDenyListThresholds;
- (void)setDenyListedStateExpiryIntervalInSec:(double)a3 state:(unint64_t)a4;
- (void)setEnabled:(BOOL)a3;
- (void)setNetworkDenyListInfo:(id)a3 forScanResult:(id)a4;
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
          v14 = [v12 scanResultForNetworkDenyListItem];
          v15 = [v14 SSID];
          v86 = [v13 initWithData:v15 encoding:4];

          v16 = [v12 scanResultForNetworkDenyListItem];
          v17 = [v16 BSSID];
          v18 = [v17 copy];

          v19 = [v12 statesCurrent];
          v20 = [v19 count];

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
          v23 = [v12 statesHistory];
          v24 = [v23 countByEnumeratingWithState:&v97 objects:v107 count:16];
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
                  objc_enumerationMutation(v23);
                }

                v29 = *(*(&v97 + 1) + 8 * i);
                v30 = [v29 stateString];
                [v29 stateTimestamp];
                v31 = MEMORY[0x1E696AEC0];
                v32 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:?];
                v33 = sub_1E0BCC248(v32);
                v34 = [v31 stringWithFormat:@"[%d] %@ @ %@, ", v26, v30, v33];

                [v88 appendString:v34];
                v26 = (v26 + 1);
              }

              v25 = [v23 countByEnumeratingWithState:&v97 objects:v107 count:16];
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
          v41 = [v22 statesCurrent];
          v42 = [v41 countByEnumeratingWithState:&v93 objects:v106 count:16];
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
                  objc_enumerationMutation(v41);
                }

                v47 = *(*(&v93 + 1) + 8 * j);
                v48 = [v47 stateString];
                [v47 stateTimestamp];
                v49 = MEMORY[0x1E696AEC0];
                v50 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:?];
                v51 = sub_1E0BCC248(v50);
                v52 = [v49 stringWithFormat:@"[%d] %@ @ %@, ", v44, v48, v51];

                [v87 appendString:v52];
                v44 = (v44 + 1);
              }

              v43 = [v41 countByEnumeratingWithState:&v93 objects:v106 count:16];
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
          v59 = [v37 denyListTriggers];
          v60 = [v59 countByEnumeratingWithState:&v89 objects:v105 count:16];
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
                  objc_enumerationMutation(v59);
                }

                v65 = *(*(&v89 + 1) + 8 * k);
                v66 = [v65 reasonString];
                [v65 reasonTimestamp];
                v67 = MEMORY[0x1E696AEC0];
                v68 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:?];
                v69 = sub_1E0BCC248(v68);
                v70 = [v67 stringWithFormat:@"[%d] %@ @ %@, ", v62, v66, v69];

                [v58 appendString:v70];
                v62 = (v62 + 1);
              }

              v61 = [v59 countByEnumeratingWithState:&v89 objects:v105 count:16];
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
        v10 = [v5 statesCurrent];
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v32 count:16];
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
              objc_enumerationMutation(v10);
            }

            if ([*(*(&v20 + 1) + 8 * v14) state])
            {
              break;
            }

            if (v12 == ++v14)
            {
              v12 = [v10 countByEnumeratingWithState:&v20 objects:v32 count:16];
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

- (CWFNetworkDenyList)initWithDenyListDeviceProfile:(unint64_t)a3
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
  v5->_profile = a3;
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

- (void)setDenyListedStateExpiryIntervalInSec:(double)a3 state:(unint64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  if (a4 == 3)
  {
    if (a3 == 0.0 || a3 > 3600.0)
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

    [(CWFNetworkDenyList *)self setWowDenyListExpiry:a3];
  }

  else
  {
    if (a4 != 2)
    {
      if (a4 == 1)
      {
        if (a3 != 0.0 && a3 <= 86400.0)
        {
          v4 = *MEMORY[0x1E69E9840];

          [(CWFNetworkDenyList *)self setAutoJoinkDenyListExpiry:a3];
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

    if (a3 == 0.0 || a3 > 300.0)
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

    [(CWFNetworkDenyList *)self setBSSDenyListExpiry:a3];
  }
}

- (int64_t)denyListThresholdForReason:(unint64_t)a3 forSSIDThresholds:(BOOL)a4
{
  if (a4)
  {
    [(CWFNetworkDenyList *)self SSIDThresholds];
  }

  else
  {
    [(CWFNetworkDenyList *)self BSSIDThresholds];
  }
  v5 = ;
  v6 = [v5 objectAtIndexedSubscript:a3];
  v7 = [v6 integerValue];

  return v7;
}

- (void)setNetworkDenyListInfo:(id)a3 forScanResult:(id)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(CWFNetworkDenyList *)self enabled])
  {
    v8 = [(CWFNetworkDenyList *)self _findNetworkDenyListItem:v7];
    if (v8)
    {
      p_super = v8;
      v10 = 0;
    }

    else
    {
      v12 = [[CWFNetworkDenyListItem alloc] initWithDenyListNetwork:v7];
      if (!v12)
      {
        v33 = CWFGetOSLog();
        if (v33)
        {
          v31 = CWFGetOSLog();
        }

        else
        {
          v31 = MEMORY[0x1E69E9C10];
          v34 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
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

    if (![v6 state])
    {
      [v6 setState:5];
    }

    if (-[CWFNetworkDenyList _ignoreTriggersForDeviceProfile:denyListItem:](self, "_ignoreTriggersForDeviceProfile:denyListItem:", [v6 reason], p_super))
    {
      v13 = 0;
LABEL_26:

      goto LABEL_27;
    }

    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    v15 = [p_super scanResultForNetworkDenyListItem];
    v16 = [v15 SSID];
    v13 = [v14 initWithData:v16 encoding:4];

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
      v21 = CWFStringFromDenyListAddReason([v6 reason]);
      v37 = [v6 BSSID];
      v38 = v10;
      v22 = [v37 redactedForWiFi];
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
      v50 = v22;
      v51 = 2048;
      v52 = [v6 reason];
      v53 = 2048;
      v54 = [v6 reasonData];
      v55 = 2048;
      v56 = [v6 state];
      LODWORD(v36) = 88;
      v35 = &v39;
      _os_log_send_and_compose_impl();

      v10 = v38;
    }

    v23 = [v6 reason];
    v24 = [v6 reasonData];
    v25 = [v6 BSSID];
    [p_super addDenyListTrigger:v23 reasonData:v24 BSSID:v25];

    v26 = [v6 reason];
    v27 = [v6 reasonData];
    v28 = [v6 BSSID];
    v29 = -[CWFNetworkDenyList _evaluateTriggersForDenyListing:reason:reasonData:BSSID:SSID:state:](self, "_evaluateTriggersForDenyListing:reason:reasonData:BSSID:SSID:state:", p_super, v26, v27, v28, v13, [v6 state]);

    if (([(NSMutableArray *)self->_denyList containsObject:p_super]& 1) == 0)
    {
      [(NSMutableArray *)self->_denyList addObject:p_super];
    }

    [(CWFNetworkDenyList *)self _printDenyList:v35];
    if (!v29)
    {
      goto LABEL_26;
    }

    v30 = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];

    if (!v30)
    {
      goto LABEL_26;
    }

    v31 = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];
    (*(v31 + 16))(v31, &unk_1F5B89C50);
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

- (BOOL)_evaluateTriggersForDenyListing:(id)a3 reason:(unint64_t)a4 reasonData:(int64_t)a5 BSSID:(id)a6 SSID:(id)a7 state:(unint64_t)a8
{
  v110 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  v84 = a7;
  if (!v12)
  {
    v75 = CWFGetOSLog();
    if (v75)
    {
      v14 = CWFGetOSLog();
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v76 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
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
  v14 = [v12 denyListTriggers];
  v96 = [v14 countByEnumeratingWithState:&v97 objects:v109 count:16];
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
  v81 = a8 & 0xFFFFFFFFFFFFFFFELL;
  v88 = v13;
  v94 = a8;
  obj = v14;
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
      v17 = [MEMORY[0x1E695DF00] date];
      [v17 timeIntervalSince1970];
      v19 = v18;

      v20 = [v16 reason];
      v21 = [v16 reasonData];
      [v16 reasonTimestamp];
      v23 = v22;
      if (![v12 enterprisePolicy] || a4 > 7 || (v24 = v19 - v23, v19 - v23 > 300.0))
      {
        if (![v12 enterprisePolicy])
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
          v34 = CWFStringFromDenyListAddReason(v20);
          v35 = [v16 BSSID];
          v36 = [v35 redactedForWiFi];
          v101 = 136446978;
          v102 = "[CWFNetworkDenyList _evaluateTriggersForDenyListing:reason:reasonData:BSSID:SSID:state:]";
          v103 = 2114;
          v104 = v34;
          v105 = 2114;
          v106 = v36;
          v107 = 2048;
          v108 = v19 - v23;
          LODWORD(v80) = 42;
          v79 = &v101;
          _os_log_send_and_compose_impl();

          a8 = v94;
          goto LABEL_27;
        }

LABEL_28:

        goto LABEL_29;
      }

      v25 = [v16 BSSID];
      v26 = [v25 compare:v13 options:1];

      v27 = v26 == 0;
      v28 = v89;
      if (!v26)
      {
        v28 = v89 + 1;
      }

      if (v20 != a4)
      {
        v27 = 0;
      }

      v93 += v27;
      if (v20 == a4)
      {
        v29 = v91 + 1;
      }

      else
      {
        v29 = v91;
      }

      v91 = __PAIR64__(HIDWORD(v91), v29) + 0x100000000;
      v89 = v28;
      if (v28 > 0x12 || [(CWFNetworkDenyList *)self _meetsThresholds:a4 count:v93 forSSIDThresholds:0 BSSID:v13 SSID:v84]|| HIDWORD(v91) > 0x12 || [(CWFNetworkDenyList *)self _meetsThresholds:a4 count:v91 forSSIDThresholds:1 BSSID:v13 SSID:v84])
      {
        if (a8 == 5 || a8 == 3)
        {
          [(CWFNetworkDenyList *)self _setDenyListState:v12 state:3 reason:a4 reasonData:a5];
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
          v34 = CWFStringFromDenyListAddReason(a4);
          v35 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v19];
          v101 = 136446722;
          v102 = "[CWFNetworkDenyList _evaluateTriggersForDenyListing:reason:reasonData:BSSID:SSID:state:]";
          v103 = 2114;
          v104 = v34;
          v105 = 2114;
          v106 = v35;
          LODWORD(v80) = 32;
          v79 = &v101;
          _os_log_send_and_compose_impl();
LABEL_27:

          v13 = v88;
        }

        goto LABEL_28;
      }

LABEL_29:
      if (v20 != a4)
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
          v45 = CWFStringFromDenyListAddReason(v20);
          v46 = CWFStringFromDenyListAddReason(a4);
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

      if (a4 <= 3)
      {
        if (a8 != 1 && a8 != 5)
        {
          if (a8 == 3)
          {
            [(CWFNetworkDenyList *)self _setDenyListState:v12 state:3 reason:a4 reasonData:a5];
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

              a8 = v94;
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
            v45 = CWFStringFromDenyListAddReason(a4);
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
        [(CWFNetworkDenyList *)self _setDenyListState:v12 state:1 reason:a4 reasonData:v21, v79, v80];
        goto LABEL_50;
      }

      switch(a4)
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
          if ((a8 | 4) == 5)
          {
            [(CWFNetworkDenyList *)self _setDenyListState:v12 state:1 reason:a4 reasonData:v21];
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
              v61 = CWFStringFromDenyListAddReason(a4);
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
              if ((a8 | 4) != 5)
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

              v41 = self;
              v42 = v12;
              v43 = 4;
LABEL_91:
              [(CWFNetworkDenyList *)v41 _setDenyListState:v42 state:1 reason:v43 reasonData:v21, v30, v79, v80];
              v87 = 1;
              goto LABEL_50;
            }
          }

          goto LABEL_50;
      }

      if (a4 - 11 <= 1)
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

        v48 = self;
        v49 = v12;
        v50 = 4;
        v51 = a4;
LABEL_98:
        [(CWFNetworkDenyList *)v48 _setDenyListState:v49 state:v50 reason:v51 reasonData:v21, v79, v80];
        v87 = 1;
        goto LABEL_50;
      }

LABEL_87:
      if (a4 == 8)
      {
        v63 = [v16 BSSID];
        v64 = [v63 compare:v13 options:1];

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
          a8 = v94;
          if (v94 != 2)
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

            a8 = v94;
            goto LABEL_49;
          }

          v48 = self;
          v49 = v12;
          v50 = 2;
          v51 = 8;
          goto LABEL_98;
        }
      }

      else if (a4 == 6)
      {
        a8 = v94;
        if ((v94 | 4) != 5)
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

        v41 = self;
        v42 = v12;
        v43 = 6;
        goto LABEL_91;
      }

      a8 = v94;
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
    [v12 addDenyListStateHistory:0 state:a8 reason:a4 reasonData:a5];
    v74 = 1;
  }

LABEL_127:

  v77 = *MEMORY[0x1E69E9840];
  return v74 & 1;
}

- (BOOL)_ignoreTriggersForDeviceProfile:(unint64_t)a3 denyListItem:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
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
      v30 = a3;
      v31 = 2048;
      v32 = profile;
      _os_log_send_and_compose_impl();
    }

    v17 = 1;
  }

  else
  {
    if (([v6 enterprisePolicy] & 1) != 0 || (objc_msgSend(v7, "scanResultForNetworkDenyListItem"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "matchingKnownNetworkProfile"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isProfileBased"), v11, v10, v12))
    {
      v13 = [(CWFNetworkDenyList *)self batteryInfoHandler];

      if (v13)
      {
        v14 = [(CWFNetworkDenyList *)self batteryInfoHandler];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = sub_1E0CE06AC;
        v22[3] = &unk_1E86E8CF8;
        v22[4] = &v23;
        v22[5] = a3;
        (*(v14 + 16))(v14, v22);
      }

      else
      {
        v18 = CWFGetOSLog();
        if (v18)
        {
          v14 = CWFGetOSLog();
        }

        else
        {
          v14 = MEMORY[0x1E69E9C10];
          v19 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
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

- (void)removeDenyListStateWithDenyListRemoveReason:(unint64_t)a3
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
  v99 = self;
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

      if (a3 == 7)
      {
        v12 = [v9 denyListTriggers];
        [v12 removeAllObjects];

        v13 = [v9 statesCurrent];
        v111[0] = MEMORY[0x1E69E9820];
        v111[1] = 3221225472;
        v111[2] = sub_1E0CE1564;
        v111[3] = &unk_1E86E8D20;
        v14 = v9;
        v112 = v14;
        [v13 enumerateObjectsUsingBlock:v111];

        v15 = [v14 statesCurrent];
        [v15 removeAllObjects];

        [v7 addObject:v14];
        v8 = 1;
        v16 = v112;
        goto LABEL_84;
      }

      v17 = objc_alloc(MEMORY[0x1E696AEC0]);
      v18 = [v9 scanResultForNetworkDenyListItem];
      v19 = [v18 SSID];
      v16 = [v17 initWithData:v19 encoding:4];

      v20 = [v9 scanResultForNetworkDenyListItem];
      v98 = [v20 BSSID];

      v21 = [v9 scanResultForNetworkDenyListItem];
      LODWORD(v18) = [(CWFNetworkDenyList *)self isNetworkInDenyListedState:1 scanResult:v21];

      v22 = 0.0;
      v94 = v8;
      v93 = v9;
      if (v18)
      {
        v23 = [v9 denyListTriggers];
        [v23 removeAllObjects];

        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v24 = [v9 statesCurrent];
        v25 = [v24 countByEnumeratingWithState:&v107 objects:v124 count:16];
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
              objc_enumerationMutation(v24);
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

            if (a3 != 5)
            {
              goto LABEL_30;
            }

            [v29 stateTimestamp];
            if (v30 > v22)
            {
              [v29 stateTimestamp];
              v22 = v31;
            }

            v32 = [MEMORY[0x1E695DF00] date];
            [v32 timeIntervalSince1970];
            v34 = v33;

            v35 = v34 - v22;
            [(CWFNetworkDenyList *)v99 autoJoinkDenyListExpiry];
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
          v50 = [v24 countByEnumeratingWithState:&v107 objects:v124 count:16];
          v26 = v50;
          if (!v50)
          {
LABEL_50:

            v7 = v91;
            self = v99;
            v8 = v94;
            v9 = v93;
            break;
          }
        }
      }

      v51 = [v9 scanResultForNetworkDenyListItem];
      v52 = [(CWFNetworkDenyList *)self isNetworkInDenyListedState:2 scanResult:v51];

      if (!v52)
      {
        goto LABEL_83;
      }

      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v53 = [v9 statesCurrent];
      v54 = [v53 countByEnumeratingWithState:&v103 objects:v123 count:16];
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
            objc_enumerationMutation(v53);
          }

          v58 = *(*(&v103 + 1) + 8 * i);
          if ([v58 state] == 2)
          {
            if (a3 != 5)
            {
              goto LABEL_70;
            }

            [v58 stateTimestamp];
            if (v59 > v22)
            {
              [v58 stateTimestamp];
              v22 = v60;
            }

            v61 = [MEMORY[0x1E695DF00] date];
            [v61 timeIntervalSince1970];
            v63 = v62;

            v64 = v63 - v22;
            [(CWFNetworkDenyList *)v99 BSSDenyListExpiry];
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
                v120 = v98;
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
                v122 = v98;
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
              v120 = v98;
              LODWORD(v90) = 22;
              v89 = &v117;
              _os_log_send_and_compose_impl();
            }
          }
        }

        v55 = [v53 countByEnumeratingWithState:&v103 objects:v123 count:16];
      }

      while (v55);
LABEL_82:

      v7 = v91;
      self = v99;
      v8 = v94;
      v9 = v93;
LABEL_83:
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 3221225472;
      v100[2] = sub_1E0CE1578;
      v100[3] = &unk_1E86E8D48;
      v76 = v9;
      v101 = v76;
      v102 = a3;
      [v5 enumerateObjectsUsingBlock:v100];
      v77 = [v76 statesCurrent];
      [v77 removeObjectsInArray:v5];

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
    v81 = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];

    if (v81)
    {
      v82 = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];
      (v82)[2](v82, &unk_1F5B8AF00);
    }
  }

  [(CWFNetworkDenyList *)self _printDenyList:v89];
LABEL_98:

  v83 = *MEMORY[0x1E69E9840];
}

- (void)removeExpiredDenyListedState:(unint64_t)a3
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
    CWFStringFromDenyListState(a3);
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

        v15 = [v11 statesCurrent];
        if (v15)
        {
          v16 = v15;
          v17 = [v11 statesCurrent];
          v18 = [v17 count];

          if (v18)
          {
            v19 = objc_alloc(MEMORY[0x1E696AEC0]);
            v20 = [v11 scanResultForNetworkDenyListItem];
            v21 = [v20 SSID];
            *&v22 = COERCE_DOUBLE([v19 initWithData:v21 encoding:4]);

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

            v23 = [v11 statesHistory];
            v24 = [v23 count];

            if (v24)
            {
              v143 = 0u;
              v144 = 0u;
              v141 = 0u;
              v142 = 0u;
              v25 = [v11 statesHistory];
              v26 = [v25 reverseObjectEnumerator];

              v27 = [v26 countByEnumeratingWithState:&v141 objects:v160 count:16];
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
                    objc_enumerationMutation(v26);
                  }

                  v32 = *(*(&v141 + 1) + 8 * i);
                  if (v32 && ([*(*(&v141 + 1) + 8 * i) state] == a3 || objc_msgSend(v32, "state") == 5))
                  {
                    [v32 stateTimestamp];
                    v28 = v41;
                    goto LABEL_36;
                  }
                }

                v29 = [v26 countByEnumeratingWithState:&v141 objects:v160 count:16];
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
            v42 = [v11 statesCurrent];
            v43 = [v42 countByEnumeratingWithState:&v137 objects:v159 count:16];
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
                objc_enumerationMutation(v42);
              }

              v47 = *(*(&v137 + 1) + 8 * v46);
              v48 = [MEMORY[0x1E695DF00] date];
              [v48 timeIntervalSince1970];
              v50 = v49;

              if ([v47 state] == a3 && objc_msgSend(v47, "state") == 1)
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
                  v58 = [v47 stateString];
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
                    v154 = *&v58;
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

              if ([v47 state] == a3 && objc_msgSend(v47, "state") == 3)
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

                v71 = [v47 reason];
                v72 = CWFGetOSLog();
                v73 = v72;
                if (v71 == 2 && v50 - v66 <= 3600.0)
                {
                  if (v72)
                  {
                    v74 = CWFGetOSLog();
                  }

                  else
                  {
                    v74 = MEMORY[0x1E69E9C10];
                    v81 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
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
                  v78 = [v47 stateString];
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
                    v154 = *&v78;
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

              if ([v47 state] == a3 && objc_msgSend(v47, "state") == 2 && objc_msgSend(v47, "reason") == 8)
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
                  v92 = [v47 stateString];
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
                    v154 = *&v92;
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

              if ([v47 state] == a3 && objc_msgSend(v47, "state") == 4)
              {
                v74 = [v47 stateString];
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
                  v154 = *&v74;
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
                v44 = [v42 countByEnumeratingWithState:&v137 objects:v159 count:16];
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
                  v104 = [v103 statesCurrent];
                  [v104 removeObjectsInArray:v133];

                  v105 = [v103 statesCurrent];
                  v106 = [v105 count];

                  if (!v106)
                  {
                    v107 = [v103 denyListTriggers];
                    [v107 removeAllObjects];

                    v108 = [v103 statesHistory];
                    [v108 removeAllObjects];

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
          v37 = [v11 statesCurrent];
          v149 = 136446466;
          *&v38 = COERCE_DOUBLE(@"empty");
          if (!v37)
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

        v39 = [v11 denyListTriggers];
        [v39 removeAllObjects];

        v40 = [v11 statesHistory];
        [v40 removeAllObjects];

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
          v109 = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];

          if (v109)
          {
            v110 = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];
            (*(v110 + 16))(v110, &unk_1F5B8AF20);
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
    v110 = CWFGetOSLog();
  }

  else
  {
    v110 = MEMORY[0x1E69E9C10];
    v116 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
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
          v13 = [v12 statesCurrent];
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = sub_1E0CE2B00;
          v20[3] = &unk_1E86E8D20;
          v9 = v12;
          v21 = v9;
          [v13 enumerateObjectsUsingBlock:v20];
        }

        v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    [(NSMutableArray *)self->_denyList removeObjectsInArray:v6];
    v14 = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];

    if (v14)
    {
      v15 = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];
      (v15)[2](v15, &unk_1F5B8AF40);
    }
  }

  else
  {
    v6 = 0;
  }

  [(CWFNetworkDenyList *)self _printDenyList:v17];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)removeNetworkDenyListInfoWithReason:(unint64_t)a3 forScanResult:(id)a4
{
  v151 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (!v5)
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

  if (a3 == 1)
  {
    v9 = [v5 SSID];
    v10 = [(CWFNetworkDenyList *)self _findNetworkDenyListItemsForSSID:v9];

    if ([v10 count])
    {
      v118 = 0;
      goto LABEL_25;
    }

    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = [v5 SSID];
    v118 = [v13 initWithData:v14 encoding:4];

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
      v21 = [v5 BSSID];
      v136 = 136446722;
      v137 = "[CWFNetworkDenyList removeNetworkDenyListInfoWithReason:forScanResult:]";
      v138 = 2114;
      v139 = v118;
      v140 = 2114;
      v141 = v21;
      LODWORD(v105) = 32;
      v102 = &v136;
      _os_log_send_and_compose_impl();
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = [(CWFNetworkDenyList *)self _findNetworkDenyListItem:v5];
    if (v11)
    {
      v12 = v11;
      [v10 addObject:v11];
      v118 = 0;
    }

    else
    {
      v16 = objc_alloc(MEMORY[0x1E696AEC0]);
      v17 = [v5 SSID];
      v118 = [v16 initWithData:v17 encoding:4];

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
        v23 = [v5 BSSID];
        v136 = 136446722;
        v137 = "[CWFNetworkDenyList removeNetworkDenyListInfoWithReason:forScanResult:]";
        v138 = 2114;
        v139 = v118;
        v140 = 2114;
        v141 = v23;
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
    v109 = v5;
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
        v29 = [v27 scanResultForNetworkDenyListItem];
        v30 = [v29 SSID];
        v31 = [v28 initWithData:v30 encoding:4];

        v118 = v31;
        if (v31)
        {
          v32 = [v27 scanResultForNetworkDenyListItem];
          v33 = [v32 BSSID];

          if (v33)
          {
            v116 = v33;
            v129 = 0u;
            v130 = 0u;
            v127 = 0u;
            v128 = 0u;
            v34 = [v27 statesCurrent];
            v35 = [v34 countByEnumeratingWithState:&v127 objects:v149 count:16];
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
                    objc_enumerationMutation(v34);
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

                  if ([v39 state] == 3 && -[CWFNetworkDenyList _evaluateTriggersForDenyListRemove:denyListRemoveReason:SSID:](self, "_evaluateTriggersForDenyListRemove:denyListRemoveReason:SSID:", v27, a3, v118))
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

                v36 = [v34 countByEnumeratingWithState:&v127 objects:v149 count:16];
              }

              while (v36);
            }

            v125 = 0u;
            v126 = 0u;
            v123 = 0u;
            v124 = 0u;
            v49 = [v27 denyListTriggers];
            v50 = [v49 countByEnumeratingWithState:&v123 objects:v148 count:16];
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
                    objc_enumerationMutation(v49);
                  }

                  v54 = *(*(&v123 + 1) + 8 * v53);
                  v55 = [v54 reasonString];
                  [v54 reasonTimestamp];
                  v57 = v56;
                  v58 = [MEMORY[0x1E695DF00] date];
                  [v58 timeIntervalSince1970];
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

                  if (a3 == 1)
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
                        v139 = v55;
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
                        v139 = v55;
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
                    v139 = v55;
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
                v76 = [v49 countByEnumeratingWithState:&v123 objects:v148 count:16];
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

            v82 = [v27 statesCurrent];
            [v82 removeObjectsInArray:v77];

            v83 = [v27 denyListTriggers];
            [v83 removeObjectsInArray:v115];

            v24 = v110;
            if ([v77 count])
            {
              v84 = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];

              if (v84)
              {
                v85 = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];
                (v85)[2](v85, &unk_1F5B8AF60);
              }
            }

            v86 = [v27 statesCurrent];
            v25 = 0x1E696A000;
            if ([v86 count])
            {
            }

            else
            {
              v91 = [v27 denyListTriggers];
              v92 = [v91 count];

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
    v5 = v109;
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

- (BOOL)_evaluateTriggersForDenyListRemove:(id)a3 denyListRemoveReason:(unint64_t)a4 SSID:(id)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v38 = a5;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v39 = v7;
  v8 = [v7 statesHistory];
  v9 = [v8 count];

  v10 = [(CWFNetworkDenyList *)self isUserModeInteractiveHandler];

  if (v10)
  {
    v11 = [(CWFNetworkDenyList *)self isUserModeInteractiveHandler];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = sub_1E0CE4340;
    v44[3] = &unk_1E86E8D70;
    v44[4] = &v45;
    (v11)[2](v11, v44);

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
      v19 = [v7 statesHistory];
      v20 = [v19 countByEnumeratingWithState:&v40 objects:v49 count:16];
      if (v20)
      {
        v21 = 0;
        v22 = 0;
        v23 = *v41;
        v24 = v9 - 1;
        v25 = 13;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v41 != v23)
            {
              objc_enumerationMutation(v19);
            }

            v27 = *(*(&v40 + 1) + 8 * i);
            if ([v27 state] != 1)
            {
              if ([v27 reason] == 2)
              {
                v28 = [MEMORY[0x1E695DF00] date];
                [v28 timeIntervalSince1970];
                v30 = v29;

                [v27 stateTimestamp];
                v22 |= v30 - v31 < 21600.0;
              }

              if (v21 == v24)
              {
                v25 = [v27 reason];
              }

              ++v21;
            }
          }

          v20 = [v19 countByEnumeratingWithState:&v40 objects:v49 count:16];
        }

        while (v20);
      }

      else
      {
        v22 = 0;
        v25 = 13;
      }

      LOBYTE(v18) = 0;
      if (!((a4 != 1) | v22 & 1) && v25 <= 7)
      {
        v18 = 0xB0u >> v25;
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

- (void)processDenyListedBSSForMetrics:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
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
      v30 = v4;
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
            v14 = [v7 scanResultForNetworkDenyListItem];
            v15 = [v14 SSID];
            v16 = [v7 scanResultForNetworkDenyListItem];
            v17 = [v16 BSSID];
            v36 = 136446722;
            v37 = "[CWFNetworkDenyList processDenyListedBSSForMetrics:]";
            v38 = 2114;
            v39 = v15;
            v40 = 2114;
            v41 = v17;
            _os_log_send_and_compose_impl();
          }

          ++v9;
          v10 = v7;
        }

        while (v6 != v9);
        v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v6);

      v4 = v30;
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
      v21 = [v4 SSID];
      v22 = [v4 BSSID];
      v36 = 136446722;
      v37 = "[CWFNetworkDenyList processDenyListedBSSForMetrics:]";
      v38 = 2114;
      v39 = v21;
      v40 = 2114;
      v41 = v22;
      _os_log_send_and_compose_impl();
    }

    v23 = [(CWFNetworkDenyList *)self _findNetworkDenyListItem:v4];
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

- (void)removeAllDenyListEntriesWithNetworkName:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v33 = self;
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
        v14 = [v9 scanResultForNetworkDenyListItem];
        v15 = [v14 SSID];
        v16 = [v13 initWithData:v15 encoding:4];
        v17 = [v4 isEqualToString:v16];

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
            v21 = [v9 scanResultForNetworkDenyListItem];
            v22 = [v21 SSID];
            v23 = [v9 scanResultForNetworkDenyListItem];
            v24 = [v23 SSID];
            v42 = 136446722;
            v43 = "[CWFNetworkDenyList removeAllDenyListEntriesWithNetworkName:]";
            v44 = 2114;
            v45 = v22;
            v46 = 2114;
            v47 = v24;
            _os_log_send_and_compose_impl();
          }

          v25 = [v9 denyListTriggers];
          [v25 removeAllObjects];

          v26 = [v9 statesCurrent];
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = sub_1E0CE4B88;
          v36[3] = &unk_1E86E8D20;
          v27 = v9;
          v37 = v27;
          [v26 enumerateObjectsUsingBlock:v36];

          v28 = [v27 statesCurrent];
          [v28 removeAllObjects];

          v29 = [v27 statesHistory];
          [v29 removeAllObjects];

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
    self = v33;
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
    v30 = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];

    if (v30)
    {
      v31 = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];
      (v31)[2](v31, &unk_1F5B89710);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)removeNetworkDenyListInfoForTrigger:(unint64_t)a3 forNetwork:(id)a4
{
  v79 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v53 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9 = [v6 SSID];
  v10 = [v8 initWithData:v9 encoding:4];

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v54 = self;
  obj = self->_denyList;
  v51 = [(NSMutableArray *)obj countByEnumeratingWithState:&v67 objects:v78 count:16];
  if (v51)
  {
    v11 = *v68;
    v48 = *v68;
    v49 = v6;
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
        v14 = [v13 scanResultForNetworkDenyListItem];
        v15 = [v14 SSID];
        v16 = [v6 SSID];
        v17 = [v15 isEqual:v16];

        if (v17)
        {
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v18 = [v13 denyListTriggers];
          v19 = [v18 countByEnumeratingWithState:&v63 objects:v77 count:16];
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
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v63 + 1) + 8 * i);
                if ([v23 reason] == a3)
                {
                  [v7 addObject:v23];
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v63 objects:v77 count:16];
            }

            while (v20);
          }

          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v24 = [v13 statesCurrent];
          v25 = [v24 countByEnumeratingWithState:&v59 objects:v76 count:16];
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
                  objc_enumerationMutation(v24);
                }

                v30 = *(*(&v59 + 1) + 8 * j);
                if ([v30 reason] == a3)
                {
                  if ([v30 state] == 3 && -[CWFNetworkDenyList _evaluateTriggersForDenyListRemove:denyListRemoveReason:SSID:](v54, "_evaluateTriggersForDenyListRemove:denyListRemoveReason:SSID:", v13, 1, v10))
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

              v27 = [v24 countByEnumeratingWithState:&v59 objects:v76 count:16];
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

          v39 = [v13 statesCurrent];
          [v39 removeObjectsInArray:v34];

          v40 = [v13 denyListTriggers];
          [v40 removeObjectsInArray:v7];

          v41 = [v13 denyListTriggers];
          if ([v41 count])
          {

            v6 = v49;
          }

          else
          {
            v42 = [v13 statesCurrent];
            v43 = [v42 count];

            v6 = v49;
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

  [(NSMutableArray *)v54->_denyList removeObjectsInArray:v47];
  [v47 removeAllObjects];

  v44 = *MEMORY[0x1E69E9840];
}

- (void)setEnabled:(BOOL)a3
{
  if (a3)
  {
    self->_enabled = 1;
  }

  else
  {
    self->_enabled = 0;
    [(CWFNetworkDenyList *)self removeAllDenyListedItems];
  }
}

- (BOOL)_meetsThresholds:(unint64_t)a3 count:(unsigned int)a4 forSSIDThresholds:(BOOL)a5 BSSID:(id)a6 SSID:(id)a7
{
  v8 = a5;
  v28 = *MEMORY[0x1E69E9840];
  v12 = a6;
  v13 = a7;
  if (v8)
  {
    v14 = [(CWFNetworkDenyList *)self SSIDThresholds];
    v15 = [v14 objectAtIndexedSubscript:a3];
    LOBYTE(v16) = [v15 unsignedIntValue] <= a4;

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
      v23 = [(CWFNetworkDenyList *)self SSIDThresholds];
      v24 = [v23 objectAtIndexedSubscript:a3];
      [v24 unsignedIntValue];
LABEL_12:
      _os_log_send_and_compose_impl();
    }
  }

  else
  {
    v19 = [(CWFNetworkDenyList *)self BSSIDThresholds];
    v20 = [v19 objectAtIndexedSubscript:a3];
    v16 = [v20 unsignedIntValue] <= a4;

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
      v23 = [(CWFNetworkDenyList *)self BSSIDThresholds];
      v24 = [v23 objectAtIndexedSubscript:a3];
      [v24 unsignedIntValue];
      goto LABEL_12;
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)_findNetworkDenyListItemsForSSID:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

        v11 = [v7 scanResultForNetworkDenyListItem];
        v12 = [v11 SSID];
        v13 = v12;
        if (v4 && v12)
        {
          v14 = [v7 scanResultForNetworkDenyListItem];
          v15 = [v14 SSID];
          v16 = [v15 isEqual:v4];

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

- (id)_findNetworkDenyListItem:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

      if ([v8 containsNetwork:{v4, v14}])
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

- (id)networksInDenyListedState:(unint64_t)a3
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
          v10 = [v7 statesCurrent];
          v11 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
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
                  objc_enumerationMutation(v10);
                }

                if ([*(*(&v25 + 1) + 8 * i) state] == a3)
                {
                  v15 = [v7 scanResultForNetworkDenyListItem];

                  if (v15)
                  {
                    v16 = [v7 scanResultForNetworkDenyListItem];
                    v17 = [v16 copyWithZone:0];

                    if (v17)
                    {
                      [v5 addObject:v17];
                    }
                  }
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
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

- (id)networksInDenyListedStateHistory:(unint64_t)a3
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
          v12 = [v8 statesHistory];
          v13 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v27 + 1) + 8 * j);
                if ([v17 state] == a3 || objc_msgSend(v17, "state") == 5)
                {
                  v18 = [v8 scanResultForNetworkDenyListItem];

                  if (v18)
                  {
                    v19 = [v8 scanResultForNetworkDenyListItem];
                    v20 = [v19 copyWithZone:0];

                    if (v20)
                    {
                      [v25 addObject:v20];
                    }

                    goto LABEL_21;
                  }
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
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

- (id)denyListedReasonHistoryForNetwork:(id)a3 state:(unint64_t)a4 timestamps:(id)a5 reasonData:(id)a6
{
  v59 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (![(CWFNetworkDenyList *)self isNetworkInDenyListedState:a4 scanResult:v10])
  {
    v51 = 0;
    goto LABEL_40;
  }

  v13 = [(CWFNetworkDenyList *)self _findNetworkDenyListItem:v10];
  if (v13)
  {
    v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v51)
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v14 = [v13 statesHistory];
      v15 = [v14 countByEnumeratingWithState:&v52 objects:v56 count:16];
      if (!v15)
      {
        goto LABEL_38;
      }

      v16 = v15;
      v48 = v13;
      v49 = v10;
      v17 = *v53;
      obj = v14;
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
          v20 = [v19 reason];
          [v19 stateTimestamp];
          v22 = v21;
          v23 = [v19 reasonData];
          v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v20];
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
          v27 = [MEMORY[0x1E696AD98] numberWithInteger:v23];
          if (v27)
          {
            v28 = v27;
            [v51 addObject:v24];
            if (v11)
            {
              [v11 addObject:v26];
            }

            if (v12)
            {
              [v12 addObject:v28];
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
        v14 = obj;
        v37 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
        v16 = v37;
        if (!v37)
        {
          v13 = v48;
          v10 = v49;
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

    v14 = v43;
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

  v14 = v41;
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

- (id)reasonsForNetworkInDenyListedState:(id)a3 state:(unint64_t)a4 timestamps:(id)a5 reasonData:(id)a6
{
  v57 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v49 = a5;
  v11 = a6;
  if (![(CWFNetworkDenyList *)self isNetworkInDenyListedState:a4 scanResult:v10])
  {
    v14 = 0;
    goto LABEL_36;
  }

  v12 = [(CWFNetworkDenyList *)self _findNetworkDenyListItem:v10];
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
      v15 = [v12 denyListTriggers];
      v16 = [v15 countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (!v16)
      {
        goto LABEL_34;
      }

      v17 = v16;
      v47 = v10;
      obj = v15;
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
          v21 = [v20 reason];
          [v20 reasonTimestamp];
          v23 = v22;
          v24 = [v20 reasonData];
          v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
          if (v25)
          {
            v26 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
            if (v26)
            {
              v27 = v26;
              v28 = [MEMORY[0x1E696AD98] numberWithInteger:v24];
              if (v28)
              {
                v29 = v28;
                [v14 addObject:v25];
                [v49 addObject:v27];
                [v11 addObject:v29];
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
          v10 = v47;
          v15 = obj;
          goto LABEL_34;
        }
      }
    }

    v41 = CWFGetOSLog();
    if (v41)
    {
      v15 = CWFGetOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v43 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
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
    v15 = CWFGetOSLog();
  }

  else
  {
    v15 = MEMORY[0x1E69E9C10];
    v42 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
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

- (BOOL)isNetworkInDenyListedState:(unint64_t)a3 scanResult:(id)a4
{
  v5 = [(CWFNetworkDenyList *)self _findNetworkDenyListItem:a4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 hasDenyListState:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isNetworkTemporarilyDenyListedForAutoJoin:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        v11 = [v10 scanResultForNetworkDenyListItem];
        v12 = [v11 SSID];
        v13 = [v4 SSID];
        v14 = [v12 isEqual:v13];

        if (v14 && [v10 hasDenyListState:1])
        {
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v15 = [v10 statesCurrent];
          v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
                  objc_enumerationMutation(v15);
                }

                if (![*(*(&v23 + 1) + 8 * j) reason])
                {

                  v20 = 1;
                  goto LABEL_22;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
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

- (int64_t)RSSIWhenNetworkWasDenyListed:(id)a3
{
  v3 = [(CWFNetworkDenyList *)self _findNetworkDenyListItem:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 scanResultForNetworkDenyListItem];
    v6 = [v5 RSSI];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isNetworkDenyListedForAutoJoinDueToTrigDisc:(id)a3 RSSI:(int64_t *)a4 timestamp:(double *)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v31 = a3;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = self->_denyList;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v29 = a4;
    v30 = a5;
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
          v15 = [v11 scanResultForNetworkDenyListItem];
          v16 = [v15 SSID];
          v17 = [v31 SSID];
          v18 = [v16 isEqual:v17];

          if (v18)
          {
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v19 = [v11 statesCurrent];
            v20 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
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
                    objc_enumerationMutation(v19);
                  }

                  v24 = *(*(&v32 + 1) + 8 * j);
                  if ([v24 reason] == 6)
                  {
                    if (v29)
                    {
                      *v29 = [v24 reasonData];
                    }

                    if (v30)
                    {
                      [v24 stateTimestamp];
                      *v30 = v26;
                    }

                    v25 = 1;
                    goto LABEL_25;
                  }
                }

                v21 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
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
    v19 = v11;
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

- (id)denyListedNetworkSSIDs:(unint64_t)a3
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
        v9 = [v6 statesCurrent];
        v10 = [v9 countByEnumeratingWithState:&v28 objects:v40 count:16];
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
                objc_enumerationMutation(v9);
              }

              if ([*(*(&v28 + 1) + 8 * i) state] == a3)
              {
                v14 = [v6 scanResultForNetworkDenyListItem];
                v15 = [v14 SSID];

                v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v15 encoding:4];
                [v5 appendFormat:@"%@ ", v16];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v28 objects:v40 count:16];
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