@interface CWFNearbyDeviceDiscoveryManager
- (CWFNearbyDeviceDiscoveryManager)init;
- (id)getEDSResultFromReport:(id)report;
- (id)getRequestDataFromParams:(id)params;
- (int)handleEvent:(int64_t)event withData:(id)data interface:(id)interface;
- (int)handleNDDDoneEvent:(id)event interface:(id)interface;
- (int)handleNDDRequestWithParams:(id)params clientName:(id)name interface:(id)interface;
- (int)handleNDDResultEvent:(id)event interface:(id)interface;
- (int)handleRequest:(int64_t)request withData:(id)data interface:(id)interface;
- (int)isNDDRequestValid:(id)valid;
- (void)handleDextCrashEvent;
- (void)handleDriverAvailableEvent;
- (void)setSendNDDRequest:(id)request;
@end

@implementation CWFNearbyDeviceDiscoveryManager

- (CWFNearbyDeviceDiscoveryManager)init
{
  v6.receiver = self;
  v6.super_class = CWFNearbyDeviceDiscoveryManager;
  v2 = [(CWFNearbyDeviceDiscoveryManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(CWFNearbyDeviceDiscoveryManager *)v2 set_didDriverCrash:0];
    [(CWFNearbyDeviceDiscoveryManager *)v3 set_currentNDDRequest:0];
    [(CWFNearbyDeviceDiscoveryManager *)v3 set_interface:0];
    v4 = dispatch_queue_create("com.apple.wifi.CWFNDDManager", 0);
    [(CWFNearbyDeviceDiscoveryManager *)v3 set_serviceQueue:v4];
  }

  return v3;
}

- (void)setSendNDDRequest:(id)request
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [request copy];
  sendNDDRequest = self->_sendNDDRequest;
  self->_sendNDDRequest = v4;

  v6 = objc_alloc_init(CWFNearbyDeviceDiscoveryParameter);
  v7 = v6;
  if (v6)
  {
    [(CWFNearbyDeviceDiscoveryParameter *)v6 setOperation:2];
    if ([(CWFNearbyDeviceDiscoveryManager *)self handleNDDRequestWithParams:v7 clientName:0 interface:0])
    {
      v8 = CWFGetOSLog();
      if (v8)
      {
        v9 = CWFGetOSLog();
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
        v10 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        _os_log_send_and_compose_impl();
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (int)handleEvent:(int64_t)event withData:(id)data interface:(id)interface
{
  v43 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  interfaceCopy = interface;
  if (!dataCopy)
  {
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

    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v35 = 136446722;
    v36 = "[CWFNearbyDeviceDiscoveryManager handleEvent:withData:interface:]";
    v37 = 2082;
    v38 = "CWFNearbyDeviceDiscoveryManager.m";
    v39 = 1024;
    v40 = 105;
    goto LABEL_17;
  }

  if (event == 55)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _serviceQueue = [(CWFNearbyDeviceDiscoveryManager *)self _serviceQueue];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = sub_1E0D03E64;
      v26[3] = &unk_1E86E6420;
      v27 = dataCopy;
      selfCopy = self;
      dispatch_sync(_serviceQueue, v26);

      v11 = v27;
      goto LABEL_11;
    }

    v21 = CWFGetOSLog();
    if (v21)
    {
      v16 = CWFGetOSLog();
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v24 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v35 = 136446978;
    v36 = "[CWFNearbyDeviceDiscoveryManager handleEvent:withData:interface:]";
    v37 = 2082;
    v38 = "CWFNearbyDeviceDiscoveryManager.m";
    v39 = 1024;
    v40 = 134;
    v41 = 2114;
    v42 = dataCopy;
    goto LABEL_17;
  }

  if (event == 239)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _serviceQueue2 = [(CWFNearbyDeviceDiscoveryManager *)self _serviceQueue];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = sub_1E0D03D34;
      v29[3] = &unk_1E86E6060;
      v29[4] = self;
      v30 = dataCopy;
      v31 = interfaceCopy;
      dispatch_sync(_serviceQueue2, v29);

      v11 = v30;
      goto LABEL_11;
    }

    v20 = CWFGetOSLog();
    if (v20)
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
      goto LABEL_18;
    }

    v35 = 136446978;
    v36 = "[CWFNearbyDeviceDiscoveryManager handleEvent:withData:interface:]";
    v37 = 2082;
    v38 = "CWFNearbyDeviceDiscoveryManager.m";
    v39 = 1024;
    v40 = 123;
    v41 = 2114;
    v42 = dataCopy;
    goto LABEL_17;
  }

  if (event != 238)
  {
LABEL_19:
    v14 = -3900;
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = CWFGetOSLog();
    if (v22)
    {
      v16 = CWFGetOSLog();
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v25 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v35 = 136446978;
    v36 = "[CWFNearbyDeviceDiscoveryManager handleEvent:withData:interface:]";
    v37 = 2082;
    v38 = "CWFNearbyDeviceDiscoveryManager.m";
    v39 = 1024;
    v40 = 112;
    v41 = 2114;
    v42 = dataCopy;
LABEL_17:
    _os_log_send_and_compose_impl();
LABEL_18:

    goto LABEL_19;
  }

  _serviceQueue3 = [(CWFNearbyDeviceDiscoveryManager *)self _serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D03C04;
  block[3] = &unk_1E86E6060;
  block[4] = self;
  v33 = dataCopy;
  v34 = interfaceCopy;
  dispatch_sync(_serviceQueue3, block);

  v11 = v33;
LABEL_11:

  v14 = 0;
LABEL_20:

  v18 = *MEMORY[0x1E69E9840];
  return v14;
}

- (int)handleRequest:(int64_t)request withData:(id)data interface:(id)interface
{
  v35 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  interfaceCopy = interface;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  if (!dataCopy)
  {
    v14 = CWFGetOSLog();
    if (v14)
    {
      v15 = CWFGetOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v27 = 136446722;
      v28 = "[CWFNearbyDeviceDiscoveryManager handleRequest:withData:interface:]";
      v29 = 2082;
      v30 = "CWFNearbyDeviceDiscoveryManager.m";
      v31 = 1024;
      v32 = 163;
      _os_log_send_and_compose_impl();
    }

    goto LABEL_18;
  }

  if (request != 238)
  {
    v11 = -3900;
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = CWFGetOSLog();
    if (v16)
    {
      v15 = CWFGetOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v18 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v27 = 136446978;
      v28 = "[CWFNearbyDeviceDiscoveryManager handleRequest:withData:interface:]";
      v29 = 2082;
      v30 = "CWFNearbyDeviceDiscoveryManager.m";
      v31 = 1024;
      v32 = 170;
      v33 = 2114;
      v34 = dataCopy;
      _os_log_send_and_compose_impl();
    }

LABEL_18:

    v11 = -3900;
    *(v24 + 6) = -3900;
    goto LABEL_6;
  }

  _serviceQueue = [(CWFNearbyDeviceDiscoveryManager *)self _serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D04278;
  block[3] = &unk_1E86E92B8;
  v22 = &v23;
  block[4] = self;
  v20 = dataCopy;
  v21 = interfaceCopy;
  dispatch_sync(_serviceQueue, block);

  v11 = *(v24 + 6);
LABEL_6:
  _Block_object_dispose(&v23, 8);

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (int)isNDDRequestValid:(id)valid
{
  v43 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  v4 = validCopy;
  if (!validCopy)
  {
    v35 = CWFGetOSLog();
    if (v35)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v37 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if ([validCopy operation] < 1 || objc_msgSend(v4, "operation") >= 3)
  {
    v34 = CWFGetOSLog();
    if (v34)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v36 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if ([v4 operation] != 2 && (objc_msgSend(v4, "type") < 1 || objc_msgSend(v4, "type") >= 4))
  {
    v27 = CWFGetOSLog();
    if (v27)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v29 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if ([v4 operation] != 1)
  {
LABEL_28:
    v26 = 0;
    goto LABEL_38;
  }

  filters = [v4 filters];
  if (![filters count])
  {

LABEL_10:
    v8 = CWFGetOSLog();
    if (v8)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  filters2 = [v4 filters];
  v7 = [filters2 count];

  if (v7 > 8)
  {
    goto LABEL_10;
  }

  filters3 = [v4 filters];
  v11 = [filters3 count];

  if (!v11)
  {
LABEL_25:
    if ([v4 type] != 2 || objc_msgSend(v4, "channel") >= 1 && objc_msgSend(v4, "band") > 0)
    {
      goto LABEL_28;
    }

    v38 = CWFGetOSLog();
    if (v38)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v39 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

LABEL_36:
    _os_log_send_and_compose_impl();
    goto LABEL_37;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    filters4 = [v4 filters];
    v15 = [filters4 objectAtIndexedSubscript:v12];
    receiverMacAddress = [v15 receiverMacAddress];
    if (!receiverMacAddress)
    {
      break;
    }

LABEL_19:

LABEL_20:
    v12 = ++v13;
    filters5 = [v4 filters];
    v23 = [filters5 count];

    if (v23 <= v13)
    {
      goto LABEL_25;
    }
  }

  receiverMacAddress = [v4 filters];
  v17 = [receiverMacAddress objectAtIndexedSubscript:v12];
  transmitterMacAddress = [v17 transmitterMacAddress];
  if (transmitterMacAddress)
  {
LABEL_18:

    goto LABEL_19;
  }

  filters6 = [v4 filters];
  v20 = [filters6 objectAtIndexedSubscript:v12];
  bssid = [v20 bssid];
  if (bssid)
  {

    transmitterMacAddress = 0;
    goto LABEL_18;
  }

  filters7 = [v4 filters];
  v24 = [filters7 objectAtIndexedSubscript:v12];
  frameType = [v24 frameType];

  if (frameType)
  {
    goto LABEL_20;
  }

  v25 = CWFGetOSLog();
  if (v25)
  {
    v9 = CWFGetOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v32 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    filters8 = [v4 filters];
    v42 = [filters8 objectAtIndexedSubscript:v12];
    _os_log_send_and_compose_impl();
  }

LABEL_37:

  v26 = -3900;
LABEL_38:

  v30 = *MEMORY[0x1E69E9840];
  return v26;
}

- (id)getRequestDataFromParams:(id)params
{
  paramsCopy = params;
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  filters = [paramsCopy filters];
  v5 = [filters count];

  if (v5)
  {
    v6 = 0;
    v7 = v49 + 4;
    do
    {
      filters2 = [paramsCopy filters];
      v9 = [filters2 objectAtIndexedSubscript:v6];
      receiverMacAddress = [v9 receiverMacAddress];

      if (receiverMacAddress)
      {
        filters3 = [paramsCopy filters];
        v12 = [filters3 objectAtIndexedSubscript:v6];
        receiverMacAddress2 = [v12 receiverMacAddress];
        v14 = ether_aton([receiverMacAddress2 UTF8String]);

        if (v14)
        {
          v15 = *v14->octet;
          *(v7 + 6) = *&v14->octet[4];
          *(v7 + 2) = v15;
        }
      }

      filters4 = [paramsCopy filters];
      v17 = [filters4 objectAtIndexedSubscript:v6];
      transmitterMacAddress = [v17 transmitterMacAddress];

      if (transmitterMacAddress)
      {
        filters5 = [paramsCopy filters];
        v20 = [filters5 objectAtIndexedSubscript:v6];
        transmitterMacAddress2 = [v20 transmitterMacAddress];
        v22 = ether_aton([transmitterMacAddress2 UTF8String]);

        if (v22)
        {
          v23 = *v22->octet;
          *(v7 + 9) = *&v22->octet[4];
          *(v7 + 14) = v23;
        }
      }

      filters6 = [paramsCopy filters];
      v25 = [filters6 objectAtIndexedSubscript:v6];
      bssid = [v25 bssid];

      if (bssid)
      {
        filters7 = [paramsCopy filters];
        v28 = [filters7 objectAtIndexedSubscript:v6];
        bssid2 = [v28 bssid];
        v30 = ether_aton([bssid2 UTF8String]);

        if (v30)
        {
          v31 = *v30->octet;
          *(v7 + 12) = *&v30->octet[4];
          *(v7 + 5) = v31;
        }
      }

      filters8 = [paramsCopy filters];
      v33 = [filters8 objectAtIndexedSubscript:v6];
      *v7 = [v33 frameType];

      filters9 = [paramsCopy filters];
      v35 = [filters9 objectAtIndexedSubscript:v6];
      if ([v35 numReports])
      {
        filters10 = [paramsCopy filters];
        v37 = [filters10 objectAtIndexedSubscript:v6];
        if ([v37 numReports] > 0x31)
        {
          *(v7 + 1) = 50;
        }

        else
        {
          filters11 = [paramsCopy filters];
          v39 = [filters11 objectAtIndexedSubscript:v6];
          *(v7 + 1) = [v39 numReports];
        }
      }

      else
      {
        *(v7 + 1) = 50;
      }

      ++v6;
      filters12 = [paramsCopy filters];
      v41 = [filters12 count];

      v7 += 28;
    }

    while (v6 < v41);
  }

  else
  {
    LODWORD(v6) = 0;
  }

  v48 = v6;
  LOWORD(v49[0]) = v49[0] & 0xC700 | [paramsCopy channel] | 0x2000;
  if ([paramsCopy band] == 1)
  {
    v42 = v49[0] & 0x3FFF;
  }

  else if ([paramsCopy band] == 2)
  {
    v42 = LOWORD(v49[0]) | 0xC000;
  }

  else
  {
    if ([paramsCopy band] != 4)
    {
      goto LABEL_28;
    }

    v42 = v49[0] & 0x3FFF | 0x4000;
  }

  LOWORD(v49[0]) = v42;
LABEL_28:
  if ([paramsCopy operation] == 1)
  {
    v43 = 1;
  }

  else
  {
    v43 = 2;
  }

  *v47 = v43;
  if ([paramsCopy type] == 1)
  {
    v44 = 0x12C00000001;
  }

  else
  {
    v44 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32([paramsCopy type] == 2), 0x1FuLL)), 0x12C00000001, 0x753000000002);
  }

  *&v47[4] = v44;
  v45 = [MEMORY[0x1E695DEF0] dataWithBytes:v47 length:244];

  return v45;
}

- (int)handleNDDRequestWithParams:(id)params clientName:(id)name interface:(id)interface
{
  v38 = *MEMORY[0x1E69E9840];
  paramsCopy = params;
  nameCopy = name;
  interfaceCopy = interface;
  v11 = [(CWFNearbyDeviceDiscoveryManager *)self isNDDRequestValid:paramsCopy];
  if (v11)
  {
    v18 = v11;
    v26 = CWFGetOSLog();
    if (v26)
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
      _os_log_send_and_compose_impl();
    }

    v14 = 0;
  }

  else
  {
    sendNDDRequest = [(CWFNearbyDeviceDiscoveryManager *)self sendNDDRequest];

    if (sendNDDRequest)
    {
      v13 = [(CWFNearbyDeviceDiscoveryManager *)self getRequestDataFromParams:paramsCopy];
      if (v13)
      {
        v14 = v13;
        if ([paramsCopy operation] == 2 || objc_msgSend(paramsCopy, "type") == 3 || (-[CWFNearbyDeviceDiscoveryManager isNDDAllowed](self, "isNDDAllowed"), v15 = objc_claimAutoreleasedReturnValue(), v16 = (v15)[2](v15, nameCopy, objc_msgSend(paramsCopy, "band") == 2), v15, (v16 & 1) != 0))
        {
          sendNDDRequest2 = [(CWFNearbyDeviceDiscoveryManager *)self sendNDDRequest];
          v18 = (sendNDDRequest2)[2](sendNDDRequest2, v14);

          if (!v18)
          {
            if ([paramsCopy operation] == 1)
            {
              [(CWFNearbyDeviceDiscoveryManager *)self set_currentNDDRequest:paramsCopy];
              selfCopy2 = self;
              v20 = interfaceCopy;
            }

            else
            {
              if ([paramsCopy operation] != 2)
              {
LABEL_13:
                v18 = 0;
                goto LABEL_14;
              }

              [(CWFNearbyDeviceDiscoveryManager *)self set_currentNDDRequest:0];
              selfCopy2 = self;
              v20 = 0;
            }

            [(CWFNearbyDeviceDiscoveryManager *)selfCopy2 set_interface:v20];
            goto LABEL_13;
          }

          v32 = CWFGetOSLog();
          if (v32)
          {
            v33 = CWFGetOSLog();
          }

          else
          {
            v33 = MEMORY[0x1E69E9C10];
            v37 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            _os_log_send_and_compose_impl();
          }
        }

        else
        {
          v23 = CWFGetOSLog();
          if (v23)
          {
            v24 = CWFGetOSLog();
          }

          else
          {
            v24 = MEMORY[0x1E69E9C10];
            v25 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            _os_log_send_and_compose_impl();
          }

          v18 = -3930;
        }
      }

      else
      {
        v30 = CWFGetOSLog();
        if (v30)
        {
          v31 = CWFGetOSLog();
        }

        else
        {
          v31 = MEMORY[0x1E69E9C10];
          v36 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          _os_log_send_and_compose_impl();
        }

        v14 = 0;
        v18 = -3900;
      }
    }

    else
    {
      v28 = CWFGetOSLog();
      if (v28)
      {
        v29 = CWFGetOSLog();
      }

      else
      {
        v29 = MEMORY[0x1E69E9C10];
        v35 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        _os_log_send_and_compose_impl();
      }

      v14 = 0;
      v18 = -3931;
    }
  }

LABEL_14:

  v21 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)getEDSResultFromReport:(id)report
{
  v24 = *MEMORY[0x1E69E9840];
  reportCopy = report;
  v4 = objc_alloc_init(CWFNearbyDeviceDiscoveryReport);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!reportCopy || ![reportCopy bytes] || objc_msgSend(reportCopy, "length") != 48)
  {
    v19 = CWFGetOSLog();
    if (v19)
    {
      v20 = CWFGetOSLog();
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

LABEL_30:
    _os_log_send_and_compose_impl();
LABEL_31:

    goto LABEL_18;
  }

  if (!v4 || !v5)
  {
    v22 = CWFGetOSLog();
    if (v22)
    {
      v20 = CWFGetOSLog();
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  bytes = [reportCopy bytes];
  date = [MEMORY[0x1E695DF00] date];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setTimeStamp:date];

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:ether_ntoa((bytes + 16))];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setReceiver:v8];

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:ether_ntoa((bytes + 22))];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setTransmitter:v9];

  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:ether_ntoa((bytes + 28))];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setBssid:v10];

  [(CWFNearbyDeviceDiscoveryReport *)v4 setFrameType:*(bytes + 8)];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setBandwidth:(*(bytes + 34) >> 11) & 7];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setChannel:*(bytes + 34)];
  v11 = *(bytes + 34);
  if (v11 >= 0x4000)
  {
    v13 = v11 >> 14;
    if (v13 == 3)
    {
      v12 = 2;
    }

    else
    {
      if (v13 != 1)
      {
        goto LABEL_13;
      }

      v12 = 4;
    }
  }

  else
  {
    v12 = 1;
  }

  [(CWFNearbyDeviceDiscoveryReport *)v4 setBand:v12];
LABEL_13:
  for (i = 0; i != 4; ++i)
  {
    v15 = *(bytes + 2 + i);
    if ((v15 | 0x80) != 0x80)
    {
      v16 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
      [v5 addObject:v16];
    }
  }

  [(CWFNearbyDeviceDiscoveryReport *)v4 setRssi:v5];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setRateMbps:*(bytes + 12)];
LABEL_18:

  v17 = *MEMORY[0x1E69E9840];

  return v4;
}

- (int)handleNDDResultEvent:(id)event interface:(id)interface
{
  v34 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  interfaceCopy = interface;
  v8 = objc_alloc_init(CWFXPCEvent);
  sendNDDXPCEvent = [(CWFNearbyDeviceDiscoveryManager *)self sendNDDXPCEvent];

  if (!sendNDDXPCEvent)
  {
    v18 = CWFGetOSLog();
    if (v18)
    {
      v11 = CWFGetOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v26 = 136446722;
    v27 = "[CWFNearbyDeviceDiscoveryManager handleNDDResultEvent:interface:]";
    v28 = 2082;
    v29 = "CWFNearbyDeviceDiscoveryManager.m";
    v30 = 1024;
    v31 = 386;
    goto LABEL_21;
  }

  if (!eventCopy)
  {
    v19 = CWFGetOSLog();
    if (v19)
    {
      v11 = CWFGetOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v26 = 136446978;
    v27 = "[CWFNearbyDeviceDiscoveryManager handleNDDResultEvent:interface:]";
    v28 = 2082;
    v29 = "CWFNearbyDeviceDiscoveryManager.m";
    v30 = 1024;
    v31 = 391;
    v32 = 2048;
    v33 = 0;
    goto LABEL_21;
  }

  v10 = [(CWFNearbyDeviceDiscoveryManager *)self getEDSResultFromReport:eventCopy];
  if (!v10)
  {
    v20 = CWFGetOSLog();
    if (v20)
    {
      v11 = CWFGetOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v26 = 136446978;
    v27 = "[CWFNearbyDeviceDiscoveryManager handleNDDResultEvent:interface:]";
    v28 = 2082;
    v29 = "CWFNearbyDeviceDiscoveryManager.m";
    v30 = 1024;
    v31 = 397;
    v32 = 2048;
    v33 = eventCopy;
LABEL_21:
    _os_log_send_and_compose_impl();
LABEL_22:
    v15 = -3931;
    goto LABEL_5;
  }

  v11 = v10;
  [(CWFXPCEvent *)v8 setType:35];
  date = [MEMORY[0x1E695DF00] date];
  [(CWFXPCEvent *)v8 setTimestamp:date];

  [(CWFXPCEvent *)v8 setInterfaceName:interfaceCopy];
  v24 = @"NDDResult";
  v25 = v11;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  [(CWFXPCEvent *)v8 setInfo:v13];

  sendNDDXPCEvent2 = [(CWFNearbyDeviceDiscoveryManager *)self sendNDDXPCEvent];
  (sendNDDXPCEvent2)[2](sendNDDXPCEvent2, v8);

  v15 = 0;
LABEL_5:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (int)handleNDDDoneEvent:(id)event interface:(id)interface
{
  v32 = *MEMORY[0x1E69E9840];
  interfaceCopy = interface;
  eventCopy = event;
  v8 = objc_alloc_init(CWFXPCEvent);
  v9 = *MEMORY[0x1E696A798];
  integerValue = [eventCopy integerValue];
  integerValue2 = [eventCopy integerValue];

  v12 = CWFErrorDescription(v9, integerValue2);
  v13 = CWFErrorWithDescription(v9, integerValue, v12);

  sendNDDXPCEvent = [(CWFNearbyDeviceDiscoveryManager *)self sendNDDXPCEvent];

  if (sendNDDXPCEvent)
  {
    [(CWFXPCEvent *)v8 setType:36];
    date = [MEMORY[0x1E695DF00] date];
    [(CWFXPCEvent *)v8 setTimestamp:date];

    [(CWFXPCEvent *)v8 setInterfaceName:interfaceCopy];
    v24 = @"NDDDone";
    v25 = v13;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [(CWFXPCEvent *)v8 setInfo:v16];

    sendNDDXPCEvent2 = [(CWFNearbyDeviceDiscoveryManager *)self sendNDDXPCEvent];
    (sendNDDXPCEvent2)[2](sendNDDXPCEvent2, v8);

    [(CWFNearbyDeviceDiscoveryManager *)self set_currentNDDRequest:0];
    [(CWFNearbyDeviceDiscoveryManager *)self set_interface:0];
    v18 = 0;
  }

  else
  {
    v21 = CWFGetOSLog();
    if (v21)
    {
      v22 = CWFGetOSLog();
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v26 = 136446722;
      v27 = "[CWFNearbyDeviceDiscoveryManager handleNDDDoneEvent:interface:]";
      v28 = 2082;
      v29 = "CWFNearbyDeviceDiscoveryManager.m";
      v30 = 1024;
      v31 = 417;
      _os_log_send_and_compose_impl();
    }

    v18 = -3931;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)handleDextCrashEvent
{
  [(CWFNearbyDeviceDiscoveryManager *)self set_didDriverCrash:1];
  _currentNDDRequest = [(CWFNearbyDeviceDiscoveryManager *)self _currentNDDRequest];
  if (_currentNDDRequest)
  {
    v4 = _currentNDDRequest;
    _currentNDDRequest2 = [(CWFNearbyDeviceDiscoveryManager *)self _currentNDDRequest];
    type = [_currentNDDRequest2 type];

    if (type != 3)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:-3931];
      _interface = [(CWFNearbyDeviceDiscoveryManager *)self _interface];
      [(CWFNearbyDeviceDiscoveryManager *)self handleNDDDoneEvent:v8 interface:_interface];
    }
  }
}

- (void)handleDriverAvailableEvent
{
  v17 = *MEMORY[0x1E69E9840];
  if (![(CWFNearbyDeviceDiscoveryManager *)self _didDriverCrash])
  {
    goto LABEL_5;
  }

  _currentNDDRequest = [(CWFNearbyDeviceDiscoveryManager *)self _currentNDDRequest];
  if (!_currentNDDRequest)
  {
    goto LABEL_5;
  }

  v4 = _currentNDDRequest;
  _currentNDDRequest2 = [(CWFNearbyDeviceDiscoveryManager *)self _currentNDDRequest];
  type = [_currentNDDRequest2 type];

  if (type != 3)
  {
    goto LABEL_5;
  }

  sendNDDRequest = [(CWFNearbyDeviceDiscoveryManager *)self sendNDDRequest];
  _currentNDDRequest3 = [(CWFNearbyDeviceDiscoveryManager *)self _currentNDDRequest];
  v9 = [(CWFNearbyDeviceDiscoveryManager *)self getRequestDataFromParams:_currentNDDRequest3];
  v10 = (sendNDDRequest)[2](sendNDDRequest, v9);

  if (v10 != -3931)
  {
    v12 = CWFGetOSLog();
    if (v12)
    {
      v13 = CWFGetOSLog();
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      _currentNDDRequest4 = [(CWFNearbyDeviceDiscoveryManager *)self _currentNDDRequest];
      _os_log_send_and_compose_impl();
    }

    v15 = *MEMORY[0x1E69E9840];
  }

  else
  {
LABEL_5:
    v11 = *MEMORY[0x1E69E9840];

    [(CWFNearbyDeviceDiscoveryManager *)self set_didDriverCrash:0];
  }
}

@end