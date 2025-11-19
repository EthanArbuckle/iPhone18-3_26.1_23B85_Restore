@interface CWFNearbyDeviceDiscoveryManager
- (CWFNearbyDeviceDiscoveryManager)init;
- (id)getEDSResultFromReport:(id)a3;
- (id)getRequestDataFromParams:(id)a3;
- (int)handleEvent:(int64_t)a3 withData:(id)a4 interface:(id)a5;
- (int)handleNDDDoneEvent:(id)a3 interface:(id)a4;
- (int)handleNDDRequestWithParams:(id)a3 clientName:(id)a4 interface:(id)a5;
- (int)handleNDDResultEvent:(id)a3 interface:(id)a4;
- (int)handleRequest:(int64_t)a3 withData:(id)a4 interface:(id)a5;
- (int)isNDDRequestValid:(id)a3;
- (void)handleDextCrashEvent;
- (void)handleDriverAvailableEvent;
- (void)setSendNDDRequest:(id)a3;
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

- (void)setSendNDDRequest:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [a3 copy];
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

- (int)handleEvent:(int64_t)a3 withData:(id)a4 interface:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (!v8)
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

  if (a3 == 55)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [(CWFNearbyDeviceDiscoveryManager *)self _serviceQueue];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = sub_1E0D03E64;
      v26[3] = &unk_1E86E6420;
      v27 = v8;
      v28 = self;
      dispatch_sync(v13, v26);

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
    v42 = v8;
    goto LABEL_17;
  }

  if (a3 == 239)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [(CWFNearbyDeviceDiscoveryManager *)self _serviceQueue];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = sub_1E0D03D34;
      v29[3] = &unk_1E86E6060;
      v29[4] = self;
      v30 = v8;
      v31 = v9;
      dispatch_sync(v12, v29);

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
    v42 = v8;
    goto LABEL_17;
  }

  if (a3 != 238)
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
    v42 = v8;
LABEL_17:
    _os_log_send_and_compose_impl();
LABEL_18:

    goto LABEL_19;
  }

  v10 = [(CWFNearbyDeviceDiscoveryManager *)self _serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D03C04;
  block[3] = &unk_1E86E6060;
  block[4] = self;
  v33 = v8;
  v34 = v9;
  dispatch_sync(v10, block);

  v11 = v33;
LABEL_11:

  v14 = 0;
LABEL_20:

  v18 = *MEMORY[0x1E69E9840];
  return v14;
}

- (int)handleRequest:(int64_t)a3 withData:(id)a4 interface:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  if (!v8)
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

  if (a3 != 238)
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
      v34 = v8;
      _os_log_send_and_compose_impl();
    }

LABEL_18:

    v11 = -3900;
    *(v24 + 6) = -3900;
    goto LABEL_6;
  }

  v10 = [(CWFNearbyDeviceDiscoveryManager *)self _serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D04278;
  block[3] = &unk_1E86E92B8;
  v22 = &v23;
  block[4] = self;
  v20 = v8;
  v21 = v9;
  dispatch_sync(v10, block);

  v11 = *(v24 + 6);
LABEL_6:
  _Block_object_dispose(&v23, 8);

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (int)isNDDRequestValid:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (!v3)
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

  if ([v3 operation] < 1 || objc_msgSend(v4, "operation") >= 3)
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

  v5 = [v4 filters];
  if (![v5 count])
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

  v6 = [v4 filters];
  v7 = [v6 count];

  if (v7 > 8)
  {
    goto LABEL_10;
  }

  v10 = [v4 filters];
  v11 = [v10 count];

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
    v14 = [v4 filters];
    v15 = [v14 objectAtIndexedSubscript:v12];
    v16 = [v15 receiverMacAddress];
    if (!v16)
    {
      break;
    }

LABEL_19:

LABEL_20:
    v12 = ++v13;
    v22 = [v4 filters];
    v23 = [v22 count];

    if (v23 <= v13)
    {
      goto LABEL_25;
    }
  }

  v16 = [v4 filters];
  v17 = [v16 objectAtIndexedSubscript:v12];
  v18 = [v17 transmitterMacAddress];
  if (v18)
  {
LABEL_18:

    goto LABEL_19;
  }

  v19 = [v4 filters];
  v20 = [v19 objectAtIndexedSubscript:v12];
  v21 = [v20 bssid];
  if (v21)
  {

    v18 = 0;
    goto LABEL_18;
  }

  v40 = [v4 filters];
  v24 = [v40 objectAtIndexedSubscript:v12];
  v41 = [v24 frameType];

  if (v41)
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
    v33 = [v4 filters];
    v42 = [v33 objectAtIndexedSubscript:v12];
    _os_log_send_and_compose_impl();
  }

LABEL_37:

  v26 = -3900;
LABEL_38:

  v30 = *MEMORY[0x1E69E9840];
  return v26;
}

- (id)getRequestDataFromParams:(id)a3
{
  v3 = a3;
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  v4 = [v3 filters];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    v7 = v49 + 4;
    do
    {
      v8 = [v3 filters];
      v9 = [v8 objectAtIndexedSubscript:v6];
      v10 = [v9 receiverMacAddress];

      if (v10)
      {
        v11 = [v3 filters];
        v12 = [v11 objectAtIndexedSubscript:v6];
        v13 = [v12 receiverMacAddress];
        v14 = ether_aton([v13 UTF8String]);

        if (v14)
        {
          v15 = *v14->octet;
          *(v7 + 6) = *&v14->octet[4];
          *(v7 + 2) = v15;
        }
      }

      v16 = [v3 filters];
      v17 = [v16 objectAtIndexedSubscript:v6];
      v18 = [v17 transmitterMacAddress];

      if (v18)
      {
        v19 = [v3 filters];
        v20 = [v19 objectAtIndexedSubscript:v6];
        v21 = [v20 transmitterMacAddress];
        v22 = ether_aton([v21 UTF8String]);

        if (v22)
        {
          v23 = *v22->octet;
          *(v7 + 9) = *&v22->octet[4];
          *(v7 + 14) = v23;
        }
      }

      v24 = [v3 filters];
      v25 = [v24 objectAtIndexedSubscript:v6];
      v26 = [v25 bssid];

      if (v26)
      {
        v27 = [v3 filters];
        v28 = [v27 objectAtIndexedSubscript:v6];
        v29 = [v28 bssid];
        v30 = ether_aton([v29 UTF8String]);

        if (v30)
        {
          v31 = *v30->octet;
          *(v7 + 12) = *&v30->octet[4];
          *(v7 + 5) = v31;
        }
      }

      v32 = [v3 filters];
      v33 = [v32 objectAtIndexedSubscript:v6];
      *v7 = [v33 frameType];

      v34 = [v3 filters];
      v35 = [v34 objectAtIndexedSubscript:v6];
      if ([v35 numReports])
      {
        v36 = [v3 filters];
        v37 = [v36 objectAtIndexedSubscript:v6];
        if ([v37 numReports] > 0x31)
        {
          *(v7 + 1) = 50;
        }

        else
        {
          v38 = [v3 filters];
          v39 = [v38 objectAtIndexedSubscript:v6];
          *(v7 + 1) = [v39 numReports];
        }
      }

      else
      {
        *(v7 + 1) = 50;
      }

      ++v6;
      v40 = [v3 filters];
      v41 = [v40 count];

      v7 += 28;
    }

    while (v6 < v41);
  }

  else
  {
    LODWORD(v6) = 0;
  }

  v48 = v6;
  LOWORD(v49[0]) = v49[0] & 0xC700 | [v3 channel] | 0x2000;
  if ([v3 band] == 1)
  {
    v42 = v49[0] & 0x3FFF;
  }

  else if ([v3 band] == 2)
  {
    v42 = LOWORD(v49[0]) | 0xC000;
  }

  else
  {
    if ([v3 band] != 4)
    {
      goto LABEL_28;
    }

    v42 = v49[0] & 0x3FFF | 0x4000;
  }

  LOWORD(v49[0]) = v42;
LABEL_28:
  if ([v3 operation] == 1)
  {
    v43 = 1;
  }

  else
  {
    v43 = 2;
  }

  *v47 = v43;
  if ([v3 type] == 1)
  {
    v44 = 0x12C00000001;
  }

  else
  {
    v44 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32([v3 type] == 2), 0x1FuLL)), 0x12C00000001, 0x753000000002);
  }

  *&v47[4] = v44;
  v45 = [MEMORY[0x1E695DEF0] dataWithBytes:v47 length:244];

  return v45;
}

- (int)handleNDDRequestWithParams:(id)a3 clientName:(id)a4 interface:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CWFNearbyDeviceDiscoveryManager *)self isNDDRequestValid:v8];
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
    v12 = [(CWFNearbyDeviceDiscoveryManager *)self sendNDDRequest];

    if (v12)
    {
      v13 = [(CWFNearbyDeviceDiscoveryManager *)self getRequestDataFromParams:v8];
      if (v13)
      {
        v14 = v13;
        if ([v8 operation] == 2 || objc_msgSend(v8, "type") == 3 || (-[CWFNearbyDeviceDiscoveryManager isNDDAllowed](self, "isNDDAllowed"), v15 = objc_claimAutoreleasedReturnValue(), v16 = (v15)[2](v15, v9, objc_msgSend(v8, "band") == 2), v15, (v16 & 1) != 0))
        {
          v17 = [(CWFNearbyDeviceDiscoveryManager *)self sendNDDRequest];
          v18 = (v17)[2](v17, v14);

          if (!v18)
          {
            if ([v8 operation] == 1)
            {
              [(CWFNearbyDeviceDiscoveryManager *)self set_currentNDDRequest:v8];
              v19 = self;
              v20 = v10;
            }

            else
            {
              if ([v8 operation] != 2)
              {
LABEL_13:
                v18 = 0;
                goto LABEL_14;
              }

              [(CWFNearbyDeviceDiscoveryManager *)self set_currentNDDRequest:0];
              v19 = self;
              v20 = 0;
            }

            [(CWFNearbyDeviceDiscoveryManager *)v19 set_interface:v20];
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

- (id)getEDSResultFromReport:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(CWFNearbyDeviceDiscoveryReport);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v3 || ![v3 bytes] || objc_msgSend(v3, "length") != 48)
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

  v6 = [v3 bytes];
  v7 = [MEMORY[0x1E695DF00] date];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setTimeStamp:v7];

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:ether_ntoa((v6 + 16))];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setReceiver:v8];

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:ether_ntoa((v6 + 22))];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setTransmitter:v9];

  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:ether_ntoa((v6 + 28))];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setBssid:v10];

  [(CWFNearbyDeviceDiscoveryReport *)v4 setFrameType:*(v6 + 8)];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setBandwidth:(*(v6 + 34) >> 11) & 7];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setChannel:*(v6 + 34)];
  v11 = *(v6 + 34);
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
    v15 = *(v6 + 2 + i);
    if ((v15 | 0x80) != 0x80)
    {
      v16 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
      [v5 addObject:v16];
    }
  }

  [(CWFNearbyDeviceDiscoveryReport *)v4 setRssi:v5];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setRateMbps:*(v6 + 12)];
LABEL_18:

  v17 = *MEMORY[0x1E69E9840];

  return v4;
}

- (int)handleNDDResultEvent:(id)a3 interface:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(CWFXPCEvent);
  v9 = [(CWFNearbyDeviceDiscoveryManager *)self sendNDDXPCEvent];

  if (!v9)
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

  if (!v6)
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

  v10 = [(CWFNearbyDeviceDiscoveryManager *)self getEDSResultFromReport:v6];
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
    v33 = v6;
LABEL_21:
    _os_log_send_and_compose_impl();
LABEL_22:
    v15 = -3931;
    goto LABEL_5;
  }

  v11 = v10;
  [(CWFXPCEvent *)v8 setType:35];
  v12 = [MEMORY[0x1E695DF00] date];
  [(CWFXPCEvent *)v8 setTimestamp:v12];

  [(CWFXPCEvent *)v8 setInterfaceName:v7];
  v24 = @"NDDResult";
  v25 = v11;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  [(CWFXPCEvent *)v8 setInfo:v13];

  v14 = [(CWFNearbyDeviceDiscoveryManager *)self sendNDDXPCEvent];
  (v14)[2](v14, v8);

  v15 = 0;
LABEL_5:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (int)handleNDDDoneEvent:(id)a3 interface:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(CWFXPCEvent);
  v9 = *MEMORY[0x1E696A798];
  v10 = [v7 integerValue];
  v11 = [v7 integerValue];

  v12 = CWFErrorDescription(v9, v11);
  v13 = CWFErrorWithDescription(v9, v10, v12);

  v14 = [(CWFNearbyDeviceDiscoveryManager *)self sendNDDXPCEvent];

  if (v14)
  {
    [(CWFXPCEvent *)v8 setType:36];
    v15 = [MEMORY[0x1E695DF00] date];
    [(CWFXPCEvent *)v8 setTimestamp:v15];

    [(CWFXPCEvent *)v8 setInterfaceName:v6];
    v24 = @"NDDDone";
    v25 = v13;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [(CWFXPCEvent *)v8 setInfo:v16];

    v17 = [(CWFNearbyDeviceDiscoveryManager *)self sendNDDXPCEvent];
    (v17)[2](v17, v8);

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
  v3 = [(CWFNearbyDeviceDiscoveryManager *)self _currentNDDRequest];
  if (v3)
  {
    v4 = v3;
    v5 = [(CWFNearbyDeviceDiscoveryManager *)self _currentNDDRequest];
    v6 = [v5 type];

    if (v6 != 3)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:-3931];
      v7 = [(CWFNearbyDeviceDiscoveryManager *)self _interface];
      [(CWFNearbyDeviceDiscoveryManager *)self handleNDDDoneEvent:v8 interface:v7];
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

  v3 = [(CWFNearbyDeviceDiscoveryManager *)self _currentNDDRequest];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  v5 = [(CWFNearbyDeviceDiscoveryManager *)self _currentNDDRequest];
  v6 = [v5 type];

  if (v6 != 3)
  {
    goto LABEL_5;
  }

  v7 = [(CWFNearbyDeviceDiscoveryManager *)self sendNDDRequest];
  v8 = [(CWFNearbyDeviceDiscoveryManager *)self _currentNDDRequest];
  v9 = [(CWFNearbyDeviceDiscoveryManager *)self getRequestDataFromParams:v8];
  v10 = (v7)[2](v7, v9);

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
      v16 = [(CWFNearbyDeviceDiscoveryManager *)self _currentNDDRequest];
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