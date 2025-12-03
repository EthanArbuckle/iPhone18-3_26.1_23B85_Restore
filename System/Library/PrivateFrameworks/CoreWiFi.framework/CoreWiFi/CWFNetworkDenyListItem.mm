@interface CWFNetworkDenyListItem
- (BOOL)containsNetwork:(id)network;
- (BOOL)hasDenyListState:(unint64_t)state;
- (BOOL)isEqualToDenyListScanResult:(id)result;
- (BOOL)updateNetwork:(id)network;
- (CWFNetworkDenyListItem)initWithDenyListNetwork:(id)network;
- (id)_copyCreateDenyListState:(unint64_t)state reason:(unint64_t)reason reasonData:(int64_t)data;
- (void)addDenyListState:(unint64_t)state reason:(unint64_t)reason reasonData:(int64_t)data;
- (void)addDenyListStateHistory:(id)history state:(unint64_t)state reason:(unint64_t)reason reasonData:(int64_t)data;
- (void)addDenyListTrigger:(unint64_t)trigger reasonData:(int64_t)data BSSID:(id)d;
- (void)dealloc;
- (void)processDenyListStateMetric:(id)metric denyListRemove:(BOOL)remove denyListRemoveReason:(unint64_t)reason;
- (void)processDenyListedBSSForMetrics;
@end

@implementation CWFNetworkDenyListItem

- (CWFNetworkDenyListItem)initWithDenyListNetwork:(id)network
{
  v33 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  v30.receiver = self;
  v30.super_class = CWFNetworkDenyListItem;
  v5 = [(CWFNetworkDenyListItem *)&v30 init];
  if (!v5)
  {
    v19 = CWFGetOSLog();
    if (v19)
    {
      v20 = CWFGetOSLog();
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v25 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    v31 = 136446210;
    v32 = "[CWFNetworkDenyListItem initWithDenyListNetwork:]";
    goto LABEL_33;
  }

  if (!networkCopy)
  {
    v21 = CWFGetOSLog();
    if (v21)
    {
      v20 = CWFGetOSLog();
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v26 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    v31 = 136446210;
    v32 = "[CWFNetworkDenyListItem initWithDenyListNetwork:]";
    goto LABEL_33;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  denyListTriggers = v5->_denyListTriggers;
  v5->_denyListTriggers = v6;

  if (!v5->_denyListTriggers)
  {
    v22 = CWFGetOSLog();
    if (v22)
    {
      v20 = CWFGetOSLog();
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v27 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    v31 = 136446210;
    v32 = "[CWFNetworkDenyListItem initWithDenyListNetwork:]";
    goto LABEL_33;
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  statesCurrent = v5->_statesCurrent;
  v5->_statesCurrent = v8;

  if (!v5->_statesCurrent)
  {
    v23 = CWFGetOSLog();
    if (v23)
    {
      v20 = CWFGetOSLog();
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    v31 = 136446210;
    v32 = "[CWFNetworkDenyListItem initWithDenyListNetwork:]";
    goto LABEL_33;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  statesHistory = v5->_statesHistory;
  v5->_statesHistory = v10;

  if (!v5->_statesHistory)
  {
    v24 = CWFGetOSLog();
    if (v24)
    {
      v20 = CWFGetOSLog();
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v29 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    v31 = 136446210;
    v32 = "[CWFNetworkDenyListItem initWithDenyListNetwork:]";
LABEL_33:
    _os_log_send_and_compose_impl();
LABEL_34:

    v16 = 0;
    goto LABEL_7;
  }

  isEAP = [networkCopy isEAP];
  matchingKnownNetworkProfile = [networkCopy matchingKnownNetworkProfile];
  isProfileBased = [matchingKnownNetworkProfile isProfileBased];

  v5->_enterprisePolicy = isEAP & isProfileBased;
  v15 = [networkCopy copyWithZone:0];
  [(CWFNetworkDenyListItem *)v5 setScanResultForNetworkDenyListItem:v15];

  v16 = v5;
LABEL_7:

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)dealloc
{
  [(NSMutableArray *)self->_denyListTriggers removeAllObjects];
  [(NSMutableArray *)self->_statesCurrent removeAllObjects];
  [(NSMutableArray *)self->_statesHistory removeAllObjects];
  v3.receiver = self;
  v3.super_class = CWFNetworkDenyListItem;
  [(CWFNetworkDenyListItem *)&v3 dealloc];
}

- (void)addDenyListTrigger:(unint64_t)trigger reasonData:(int64_t)data BSSID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  denyListTriggers = [(CWFNetworkDenyListItem *)self denyListTriggers];
  v10 = [denyListTriggers count];

  if (v10 >= 0x10)
  {
    denyListTriggers2 = [(CWFNetworkDenyListItem *)self denyListTriggers];
    [denyListTriggers2 removeObjectAtIndex:0];
  }

  v12 = objc_alloc_init(CWFNetworkDenyListInfo);
  if (v12)
  {
    v13 = CWFStringFromDenyListAddReason(trigger);
    [(CWFNetworkDenyListInfo *)v12 setReason:trigger];
    [(CWFNetworkDenyListInfo *)v12 setReasonData:data];
    if (v13)
    {
      [(CWFNetworkDenyListInfo *)v12 setReasonString:v13];
    }

    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSince1970];
    [(CWFNetworkDenyListInfo *)v12 setReasonTimestamp:?];

    if (dCopy)
    {
      [(CWFNetworkDenyListInfo *)v12 setBSSID:dCopy];
    }

    denyListTriggers3 = [(CWFNetworkDenyListItem *)self denyListTriggers];
    [denyListTriggers3 addObject:v12];
  }

  else
  {
    v17 = CWFGetOSLog();
    if (v17)
    {
      v13 = CWFGetOSLog();
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v18 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)containsNetwork:(id)network
{
  if (network)
  {
    return MEMORY[0x1EEE66B58](self, sel_isEqualToDenyListScanResult_);
  }

  else
  {
    return 0;
  }
}

- (BOOL)hasDenyListState:(unint64_t)state
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  statesCurrent = [(CWFNetworkDenyListItem *)self statesCurrent];
  v5 = [statesCurrent countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(statesCurrent);
        }

        if ([*(*(&v12 + 1) + 8 * i) state] == state)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [statesCurrent countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)updateNetwork:(id)network
{
  v4 = [network copyWithZone:0];
  scanResultForNetworkDenyListItem = self->_scanResultForNetworkDenyListItem;
  self->_scanResultForNetworkDenyListItem = v4;

  return 1;
}

- (id)_copyCreateDenyListState:(unint64_t)state reason:(unint64_t)reason reasonData:(int64_t)data
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = objc_alloc_init(CWFNetworkDenyListInfo);
  if (v8)
  {
    v9 = CWFStringFromDenyListState(state);
    v10 = CWFStringFromDenyListAddReason(reason);
    [(CWFNetworkDenyListInfo *)v8 setState:state];
    [(CWFNetworkDenyListInfo *)v8 setStateString:v9];
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSince1970];
    [(CWFNetworkDenyListInfo *)v8 setStateTimestamp:?];

    [(CWFNetworkDenyListInfo *)v8 setReason:reason];
    [(CWFNetworkDenyListInfo *)v8 setReasonData:data];
    [(CWFNetworkDenyListInfo *)v8 setReasonString:v10];
  }

  else
  {
    v14 = CWFGetOSLog();
    if (v14)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)addDenyListState:(unint64_t)state reason:(unint64_t)reason reasonData:(int64_t)data
{
  v60 = *MEMORY[0x1E69E9840];
  v8 = [(CWFNetworkDenyListItem *)self _copyCreateDenyListState:state reason:reason reasonData:data];
  if (!v8)
  {
    v39 = CWFGetOSLog();
    if (v39)
    {
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v40 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v48 = 136446210;
      v49 = "[CWFNetworkDenyListItem addDenyListState:reason:reasonData:]";
      _os_log_send_and_compose_impl();
    }

    goto LABEL_31;
  }

  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  scanResultForNetworkDenyListItem = [(CWFNetworkDenyListItem *)self scanResultForNetworkDenyListItem];
  sSID = [scanResultForNetworkDenyListItem SSID];
  v12 = [v9 initWithData:sSID encoding:4];

  scanResultForNetworkDenyListItem2 = [(CWFNetworkDenyListItem *)self scanResultForNetworkDenyListItem];
  bSSID = [scanResultForNetworkDenyListItem2 BSSID];

  statesCurrent = [(CWFNetworkDenyListItem *)self statesCurrent];
  v16 = [statesCurrent count];

  if (v16)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    statesCurrent2 = [(CWFNetworkDenyListItem *)self statesCurrent];
    v18 = [statesCurrent2 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v18)
    {
      v19 = v18;
      v41 = bSSID;
      v42 = v12;
      v20 = 0;
      v21 = *v44;
      while (2)
      {
        v22 = 0;
        v23 = v20;
        do
        {
          if (*v44 != v21)
          {
            objc_enumerationMutation(statesCurrent2);
          }

          v20 = *(*(&v43 + 1) + 8 * v22);

          state = [v20 state];
          if (state == [v8 state])
          {

            v27 = CWFGetOSLog();
            if (v27)
            {
              v28 = CWFGetOSLog();
            }

            else
            {
              v28 = MEMORY[0x1E69E9C10];
              v30 = MEMORY[0x1E69E9C10];
            }

            bSSID = v41;
            v12 = v42;

            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              v31 = CWFStringFromDenyListState(state);
              v32 = CWFStringFromDenyListAddReason(reason);
              v48 = 136316418;
              v49 = "[CWFNetworkDenyListItem addDenyListState:reason:reasonData:]";
              v50 = 2114;
              v51 = v42;
              v52 = 2114;
              v53 = v41;
              v54 = 2114;
              v55 = v31;
              v56 = 2114;
              v57 = v32;
              v58 = 2048;
              reasonCopy3 = reason;
              _os_log_send_and_compose_impl();
            }

            goto LABEL_30;
          }

          ++v22;
          v23 = v20;
        }

        while (v19 != v22);
        v19 = [statesCurrent2 countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }

      bSSID = v41;
      v12 = v42;
    }

    v25 = CWFGetOSLog();
    if (v25)
    {
      v26 = CWFGetOSLog();
    }

    else
    {
      v26 = MEMORY[0x1E69E9C10];
      v36 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    v34 = CWFStringFromDenyListState(state);
    v35 = CWFStringFromDenyListAddReason(reason);
    v48 = 136316418;
    v49 = "[CWFNetworkDenyListItem addDenyListState:reason:reasonData:]";
    v50 = 2114;
    v51 = v12;
    v52 = 2114;
    v53 = bSSID;
    v54 = 2114;
    v55 = v34;
    v56 = 2114;
    v57 = v35;
    v58 = 2048;
    reasonCopy3 = reason;
    goto LABEL_28;
  }

  v29 = CWFGetOSLog();
  if (v29)
  {
    v26 = CWFGetOSLog();
  }

  else
  {
    v26 = MEMORY[0x1E69E9C10];
    v33 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v34 = CWFStringFromDenyListState(state);
    v35 = CWFStringFromDenyListAddReason(reason);
    v48 = 136316418;
    v49 = "[CWFNetworkDenyListItem addDenyListState:reason:reasonData:]";
    v50 = 2114;
    v51 = v12;
    v52 = 2114;
    v53 = bSSID;
    v54 = 2114;
    v55 = v34;
    v56 = 2114;
    v57 = v35;
    v58 = 2048;
    reasonCopy3 = reason;
LABEL_28:
    _os_log_send_and_compose_impl();
  }

LABEL_29:

  statesCurrent3 = [(CWFNetworkDenyListItem *)self statesCurrent];
  [statesCurrent3 addObject:v8];

  [(CWFNetworkDenyListItem *)self processDenyListStateMetric:v8 denyListRemove:0 denyListRemoveReason:0];
LABEL_30:

LABEL_31:
  v38 = *MEMORY[0x1E69E9840];
}

- (void)addDenyListStateHistory:(id)history state:(unint64_t)state reason:(unint64_t)reason reasonData:(int64_t)data
{
  v29 = *MEMORY[0x1E69E9840];
  historyCopy = history;
  v11 = historyCopy;
  if (historyCopy)
  {
    v12 = historyCopy;
LABEL_4:
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    scanResultForNetworkDenyListItem = [(CWFNetworkDenyListItem *)self scanResultForNetworkDenyListItem];
    sSID = [scanResultForNetworkDenyListItem SSID];
    v16 = [v13 initWithData:sSID encoding:4];

    statesHistory = [(CWFNetworkDenyListItem *)self statesHistory];
    v18 = [statesHistory count];

    if (v18 >= 5)
    {
      statesHistory2 = [(CWFNetworkDenyListItem *)self statesHistory];
      [statesHistory2 removeObjectAtIndex:0];
    }

    v20 = CWFGetOSLog();
    if (v20)
    {
      v21 = CWFGetOSLog();
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v23 = CWFStringFromDenyListState(state);
      v28 = CWFStringFromDenyListAddReason(reason);
      _os_log_send_and_compose_impl();
    }

    statesHistory3 = [(CWFNetworkDenyListItem *)self statesHistory];
    [statesHistory3 addObject:v12];

    goto LABEL_12;
  }

  v12 = [(CWFNetworkDenyListItem *)self _copyCreateDenyListState:state reason:reason reasonData:data];
  if (v12)
  {
    goto LABEL_4;
  }

  v26 = CWFGetOSLog();
  if (v26)
  {
    v12 = CWFGetOSLog();
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v27 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    _os_log_send_and_compose_impl();
  }

LABEL_12:

  v25 = *MEMORY[0x1E69E9840];
}

- (void)processDenyListedBSSForMetrics
{
  v45 = *MEMORY[0x1E69E9840];
  if (self->_denyListMetrics)
  {
    scanResultForNetworkDenyListItem = [(CWFNetworkDenyListItem *)self scanResultForNetworkDenyListItem];
    bSSID = [scanResultForNetworkDenyListItem BSSID];

    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    scanResultForNetworkDenyListItem2 = [(CWFNetworkDenyListItem *)self scanResultForNetworkDenyListItem];
    sSID = [scanResultForNetworkDenyListItem2 SSID];
    v7 = [v4 initWithData:sSID encoding:4];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = self->_denyListMetrics;
    v33 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (!v33)
    {

      goto LABEL_19;
    }

    v31 = 0;
    v9 = @"ssid";
    v10 = *v35;
    v11 = @"prunedCount";
    while (1)
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        v14 = [v13 objectForKeyedSubscript:v9];
        if ([v14 isEqualToString:v7])
        {
          [v13 objectForKeyedSubscript:@"bssid"];
          v15 = v7;
          v16 = v9;
          v17 = v8;
          v19 = v18 = v11;
          v20 = [v19 isEqualToString:bSSID];

          v11 = v18;
          v8 = v17;
          v9 = v16;
          v7 = v15;

          if (!v20)
          {
            goto LABEL_14;
          }

          v21 = [v13 objectForKey:v11];

          if (v21)
          {
            v22 = [v13 objectForKeyedSubscript:v11];
            unsignedIntegerValue = [v22 unsignedIntegerValue];

            v24 = unsignedIntegerValue + 1;
          }

          else
          {
            v24 = 1;
          }

          v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v24];
          [v13 setObject:v14 forKeyedSubscript:v11];
          v31 = 1;
        }

LABEL_14:
      }

      v33 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v34 objects:v44 count:16];
      if (!v33)
      {

        if ((v31 & 1) == 0)
        {
LABEL_19:
          v25 = CWFGetOSLog();
          if (v25)
          {
            v26 = CWFGetOSLog();
          }

          else
          {
            v26 = MEMORY[0x1E69E9C10];
            v27 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v38 = 136446722;
            v39 = "[CWFNetworkDenyListItem processDenyListedBSSForMetrics]";
            v40 = 2114;
            v41 = v7;
            v42 = 2114;
            v43 = bSSID;
            _os_log_send_and_compose_impl();
          }

          goto LABEL_24;
        }

        goto LABEL_25;
      }
    }
  }

  v29 = CWFGetOSLog();
  if (v29)
  {
    v26 = CWFGetOSLog();
  }

  else
  {
    v26 = MEMORY[0x1E69E9C10];
    v30 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v38 = 136446210;
    v39 = "[CWFNetworkDenyListItem processDenyListedBSSForMetrics]";
    _os_log_send_and_compose_impl();
  }

  v7 = 0;
  bSSID = 0;
LABEL_24:

LABEL_25:
  v28 = *MEMORY[0x1E69E9840];
}

- (void)processDenyListStateMetric:(id)metric denyListRemove:(BOOL)remove denyListRemoveReason:(unint64_t)reason
{
  removeCopy = remove;
  v99 = *MEMORY[0x1E69E9840];
  metricCopy = metric;
  v84 = metricCopy;
  if (!metricCopy)
  {
    v68 = CWFGetOSLog();
    if (v68)
    {
      v16 = CWFGetOSLog();
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v75 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    v87 = 136446210;
    v88 = "[CWFNetworkDenyListItem processDenyListStateMetric:denyListRemove:denyListRemoveReason:]";
    goto LABEL_55;
  }

  v8 = metricCopy;
  if (!self->_denyListMetrics)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    denyListMetrics = self->_denyListMetrics;
    self->_denyListMetrics = v9;

    if (!self->_denyListMetrics)
    {
      v69 = CWFGetOSLog();
      if (v69)
      {
        v16 = CWFGetOSLog();
      }

      else
      {
        v16 = MEMORY[0x1E69E9C10];
        v76 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_60;
      }

      v87 = 136446210;
      v88 = "[CWFNetworkDenyListItem processDenyListStateMetric:denyListRemove:denyListRemoveReason:]";
LABEL_55:
      _os_log_send_and_compose_impl();
LABEL_60:
      v8 = v84;
      goto LABEL_38;
    }
  }

  scanResultForNetworkDenyListItem = [(CWFNetworkDenyListItem *)self scanResultForNetworkDenyListItem];
  bSSID = [scanResultForNetworkDenyListItem BSSID];

  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  scanResultForNetworkDenyListItem2 = [(CWFNetworkDenyListItem *)self scanResultForNetworkDenyListItem];
  sSID = [scanResultForNetworkDenyListItem2 SSID];
  v16 = [v13 initWithData:sSID encoding:4];

  if (!bSSID)
  {
    v70 = CWFGetOSLog();
    if (v70)
    {
      v71 = CWFGetOSLog();
    }

    else
    {
      v71 = MEMORY[0x1E69E9C10];
      v77 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      v87 = 136446210;
      v88 = "[CWFNetworkDenyListItem processDenyListStateMetric:denyListRemove:denyListRemoveReason:]";
      _os_log_send_and_compose_impl();
    }

    goto LABEL_60;
  }

  if (!v16)
  {
    v72 = CWFGetOSLog();
    if (v72)
    {
      v16 = CWFGetOSLog();
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v78 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v87 = 136446210;
      v88 = "[CWFNetworkDenyListItem processDenyListStateMetric:denyListRemove:denyListRemoveReason:]";
      _os_log_send_and_compose_impl();
    }

    goto LABEL_37;
  }

  v85 = bSSID;
  v86 = v16;
  if (!removeCopy)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (ether_aton([bSSID UTF8String]))
    {
      v46 = ether_aton([bSSID UTF8String]);
      v47 = v46->octet[0];
      v48 = v46->octet[1];
      v49 = v46->octet[2];
      [MEMORY[0x1E696AEC0] stringWithString:v16];
      v50 = bSSID;
      v52 = v51 = v8;
      [dictionary setObject:v52 forKeyedSubscript:@"ssid"];

      v53 = [MEMORY[0x1E696AEC0] stringWithString:v50];
      [dictionary setObject:v53 forKeyedSubscript:@"bssid"];

      v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v51, "state")}];
      [dictionary setObject:v54 forKeyedSubscript:@"state"];

      v55 = MEMORY[0x1E696AD98];
      [v51 stateTimestamp];
      v56 = [v55 numberWithDouble:?];
      [dictionary setObject:v56 forKeyedSubscript:@"denyListTimestamp"];

      v57 = MEMORY[0x1E696AEC0];
      v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02x:%02x:%02x", v47, v48, v49];
      v59 = [v57 stringWithString:v58];
      [dictionary setObject:v59 forKeyedSubscript:@"oui"];

      v60 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v51, "reason")}];
      [dictionary setObject:v60 forKeyedSubscript:@"reason"];

      v61 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v51, "reasonData")}];
      [dictionary setObject:v61 forKeyedSubscript:@"denyListedSubreason"];

      v62 = CWFGetOSLog();
      if (v62)
      {
        v63 = CWFGetOSLog();
      }

      else
      {
        v63 = MEMORY[0x1E69E9C10];
        v64 = MEMORY[0x1E69E9C10];
      }

      bSSID = v85;
      v16 = v86;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v65 = [dictionary objectForKeyedSubscript:@"oui"];
        v66 = [dictionary objectForKeyedSubscript:@"reason"];
        [dictionary objectForKeyedSubscript:@"denyListedSubreason"];
        v87 = 136447490;
        v88 = "[CWFNetworkDenyListItem processDenyListStateMetric:denyListRemove:denyListRemoveReason:]";
        v89 = 2114;
        v90 = v86;
        v91 = 2114;
        v92 = v85;
        v93 = 2114;
        v94 = v65;
        v95 = 2114;
        v96 = v66;
        v98 = v97 = 2114;
        _os_log_send_and_compose_impl();
      }

      [(NSMutableArray *)self->_denyListMetrics addObject:dictionary];
      v8 = v84;
    }

    else
    {
      v73 = CWFGetOSLog();
      if (v73)
      {
        v74 = CWFGetOSLog();
      }

      else
      {
        v74 = MEMORY[0x1E69E9C10];
        v79 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        v87 = 136446210;
        v88 = "[CWFNetworkDenyListItem processDenyListStateMetric:denyListRemove:denyListRemoveReason:]";
        _os_log_send_and_compose_impl();
      }
    }

LABEL_37:
    v16 = bSSID;
    goto LABEL_38;
  }

  indexSet = [MEMORY[0x1E696AD50] indexSet];
  if ([(NSMutableArray *)self->_denyListMetrics count])
  {
    for (i = 0; i < [(NSMutableArray *)self->_denyListMetrics count]; ++i)
    {
      v18 = [(NSMutableArray *)self->_denyListMetrics objectAtIndex:i, v80, v81];
      v19 = [v18 objectForKeyedSubscript:@"state"];
      unsignedIntegerValue = [v19 unsignedIntegerValue];
      state = [v8 state];

      if (unsignedIntegerValue == state)
      {
        v22 = [v18 objectForKeyedSubscript:@"ssid"];
        if (([v22 isEqualToString:v16] & 1) == 0)
        {

LABEL_15:
          v35 = CWFGetOSLog();
          if (v35)
          {
            v36 = CWFGetOSLog();
          }

          else
          {
            v36 = MEMORY[0x1E69E9C10];
            v37 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v38 = [v18 objectForKeyedSubscript:@"ssid"];
            v39 = [v18 objectForKeyedSubscript:@"bssid"];
            v87 = 136447234;
            v88 = "[CWFNetworkDenyListItem processDenyListStateMetric:denyListRemove:denyListRemoveReason:]";
            v89 = 2114;
            v90 = v38;
            v91 = 2114;
            v92 = v39;
            v93 = 2114;
            v94 = v16;
            v95 = 2114;
            v96 = v85;
            LODWORD(v81) = 52;
            v80 = &v87;
            _os_log_send_and_compose_impl();

            v8 = v84;
          }

          goto LABEL_25;
        }

        v23 = [v18 objectForKeyedSubscript:@"bssid"];
        v24 = [v23 isEqualToString:v85];

        if (!v24)
        {
          goto LABEL_15;
        }

        date = [MEMORY[0x1E695DF00] date];
        [date timeIntervalSince1970];
        v27 = v26;

        v28 = MEMORY[0x1E696AD98];
        v29 = [v18 objectForKeyedSubscript:@"denyListTimestamp"];
        [v29 doubleValue];
        v31 = [v28 numberWithDouble:v27 - v30];
        [v18 setObject:v31 forKeyedSubscript:@"denyListedDuration"];

        v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:reason];
        [v18 setObject:v32 forKeyedSubscript:@"denyListRemoveReason"];

        [v18 removeObjectForKey:@"ssid"];
        [v18 removeObjectForKey:@"bssid"];
        [v18 removeObjectForKey:@"state"];
        [v18 removeObjectForKey:@"denyListTimestamp"];
        v33 = CWFGetOSLog();
        if (v33)
        {
          v34 = CWFGetOSLog();
        }

        else
        {
          v34 = MEMORY[0x1E69E9C10];
          v40 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v41 = [v18 objectForKeyedSubscript:@"denyListedDuration"];
          v42 = [v18 objectForKeyedSubscript:@"denyListRemoveReason"];
          v43 = [v18 objectForKeyedSubscript:@"prunedCount"];
          v87 = 136447490;
          v88 = "[CWFNetworkDenyListItem processDenyListStateMetric:denyListRemove:denyListRemoveReason:]";
          v89 = 2114;
          v90 = v16;
          v91 = 2114;
          v92 = v85;
          v93 = 2114;
          v94 = v41;
          v95 = 2114;
          v96 = v42;
          v97 = 2114;
          v98 = v43;
          LODWORD(v81) = 62;
          v80 = &v87;
          _os_log_send_and_compose_impl();

          v8 = v84;
        }

        [indexSet addIndex:i];
      }

LABEL_25:
    }
  }

  if ([indexSet count])
  {
    v44 = [(NSMutableArray *)self->_denyListMetrics objectsAtIndexes:indexSet];
    [v44 enumerateObjectsUsingBlock:&unk_1F5B89DD0];
    [(NSMutableArray *)self->_denyListMetrics removeObjectsAtIndexes:indexSet];

    v8 = v84;
  }

  v16 = v85;
LABEL_38:

  v67 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqualToDenyListScanResult:(id)result
{
  resultCopy = result;
  bSSID = [(CWFScanResult *)self->_scanResultForNetworkDenyListItem BSSID];
  if (bSSID)
  {
    bSSID2 = [resultCopy BSSID];
    v7 = bSSID2 == 0;
  }

  else
  {
    v7 = 1;
  }

  bSSID3 = [resultCopy BSSID];
  bSSID4 = [(CWFScanResult *)self->_scanResultForNetworkDenyListItem BSSID];
  v10 = [bSSID3 isEqual:bSSID4];

  sSID = [(CWFScanResult *)self->_scanResultForNetworkDenyListItem SSID];
  if (sSID)
  {
    sSID2 = [resultCopy SSID];
    if (sSID2)
    {
      sSID3 = [(CWFScanResult *)self->_scanResultForNetworkDenyListItem SSID];
      sSID4 = [resultCopy SSID];
      v15 = [sSID3 isEqual:sSID4];

      v16 = v15 ^ 1;
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 1;
  }

  supportedSecurityTypes = [(CWFScanResult *)self->_scanResultForNetworkDenyListItem supportedSecurityTypes];
  v18 = [resultCopy supportedSecurityTypes] & supportedSecurityTypes;
  if ([(CWFScanResult *)self->_scanResultForNetworkDenyListItem isPasspoint])
  {
    v19 = [resultCopy isPasspoint] ^ 1;
  }

  else
  {
    LOBYTE(v19) = 1;
  }

  if (v18)
  {
    v20 = v16;
  }

  else
  {
    v20 = 1;
  }

  if (!v18)
  {
    LOBYTE(v19) = 1;
  }

  v21 = ((v19 | v7) ^ 1) & v10;
  if (v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = v7 | v10;
  }

  return v22 & 1;
}

@end