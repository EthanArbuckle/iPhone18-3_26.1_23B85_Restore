void sub_1006393DC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x10063849CLL);
  }

  _Unwind_Resume(a1);
}

id sub_10063952C(int a1)
{
  v6[0] = 11;
  if (a1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  v6[1] = v2;
  v3 = [NSData dataWithBytes:v6 length:2];
  v4 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v8 = 1;
    v9 = 1024;
    v10 = a1;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sending control message: encrypt control channel (%d, %d) %@", buf, 0x18u);
  }

  return v3;
}

id sub_100639644(char a1, __int16 a2, __int16 a3, void *a4, void *a5, void *a6, void *a7, void *a8, char a9, uint64_t a10)
{
  v16 = a5;
  v17 = a6;
  if (a9)
  {
    v18 = 13;
  }

  else
  {
    v18 = 2;
  }

  v33 = v18;
  v19 = a4;
  v20 = a8;
  v21 = a7;
  v35 = [a4 UTF8String];
  v22 = strlen(v35);
  v37 = v16;
  if (v16)
  {
    v32 = [v16 UTF8String];
    v23 = strlen(v32);
  }

  else
  {
    v23 = 0;
    v32 = 0;
  }

  v36 = v17;
  v24 = [v17 UTF8String];
  v25 = strlen(v24);
  v26 = [v21 UTF8String];

  v27 = strlen(v26);
  v28 = [v20 UTF8String];

  v29 = strlen(v28);
  v39[0] = v33;
  v39[1] = a1;
  v39[2] = HIBYTE(a2);
  v39[3] = a2;
  v39[4] = HIBYTE(a3);
  v39[5] = a3;
  v39[6] = HIBYTE(v22);
  v39[7] = v22;
  v39[8] = BYTE1(v23);
  v39[9] = v23;
  v39[10] = HIBYTE(v25);
  v39[11] = v25;
  v39[12] = HIBYTE(v27);
  v39[13] = v27;
  v39[14] = HIBYTE(v29);
  v39[15] = v29;
  v30 = objc_alloc_init(NSMutableData);
  [v30 appendBytes:v39 length:16];
  [v30 appendBytes:v35 length:v22];
  if (v23)
  {
    [v30 appendBytes:v32 length:v23];
  }

  [v30 appendBytes:v24 length:v25];
  [v30 appendBytes:v26 length:v27];
  [v30 appendBytes:v28 length:v29];
  if (a9)
  {
    v38 = a10;
    [v30 appendBytes:&v38 length:8];
  }

  return v30;
}

id sub_1006398CC(char a1, __int16 a2, __int16 a3, void *a4, void *a5, void *a6, void *a7, void *a8, char a9, char a10, char a11, char a12, char a13, char a14, uint64_t a15, unsigned __int16 a16)
{
  v21 = a5;
  v22 = a6;
  v23 = a4;
  v24 = a8;
  v25 = a7;
  v39 = [a4 UTF8String];
  v26 = strlen(v39);
  v41 = v21;
  if (v21)
  {
    v36 = [v21 UTF8String];
    v27 = strlen(v36);
  }

  else
  {
    v27 = 0;
    v36 = 0;
  }

  v40 = v22;
  v28 = [v22 UTF8String];
  v29 = strlen(v28);
  v30 = [v25 UTF8String];

  v31 = strlen(v30);
  v32 = [v24 UTF8String];

  v33 = strlen(v32);
  v42[0] = 6;
  v42[1] = a1;
  v42[2] = HIBYTE(a2);
  v42[3] = a2;
  v42[4] = HIBYTE(a3);
  v42[5] = a3;
  v42[6] = HIBYTE(v26);
  v42[7] = v26;
  v42[8] = BYTE1(v27);
  v42[9] = v27;
  v42[10] = HIBYTE(v29);
  v42[11] = v29;
  v42[12] = HIBYTE(v31);
  v42[13] = v31;
  v42[14] = HIBYTE(v33);
  v42[15] = v33;
  v42[16] = a12;
  v42[17] = a11;
  v42[18] = a10;
  v42[19] = a9;
  v42[20] = a14;
  v42[21] = a13;
  v42[22] = HIBYTE(a16);
  v42[23] = a16;
  v34 = objc_alloc_init(NSMutableData);
  [v34 appendBytes:v42 length:24];
  [v34 appendBytes:v39 length:v26];
  if (v27)
  {
    [v34 appendBytes:v36 length:v27];
  }

  [v34 appendBytes:v28 length:{v29, v36}];
  [v34 appendBytes:v30 length:v31];
  [v34 appendBytes:v32 length:v33];
  [v34 appendBytes:a15 length:a16];

  return v34;
}

void sub_100639B78(uint64_t a1)
{
  v2 = [*(a1 + 32) capabilityFlags];
  v3 = +[IDSPairingManager sharedInstance];
  v4 = [*(a1 + 40) productBuildVersion];
  v16 = [*(a1 + 40) productVersion];
  v15 = [*(a1 + 40) productName];
  v17 = [*(a1 + 40) pairingProtocolVersion];
  v14 = [v17 unsignedIntValue];
  v5 = [*(a1 + 40) minCompatibilityVersion];
  v13 = [v5 unsignedIntValue];
  v6 = [*(a1 + 40) maxCompatibilityVersion];
  v7 = [v6 unsignedIntValue];
  v8 = [*(a1 + 40) serviceMinCompatibilityVersion];
  v9 = [v8 unsignedShortValue];
  v10 = [*(a1 + 40) deviceUniqueID];
  v11 = [v10 UUIDString];
  LOWORD(v12) = v9;
  [v3 updatePairedDeviceBuildVersion:v4 productVersion:v16 productName:v15 pairingProtocolVersion:v14 minCompatibilityVersion:v13 maxCompatibilityVersion:v7 serviceMinCompatibilityVersion:v12 capabilityFlags:v2 deviceUniqueID:v11];

  if (_IDSSupportsDirectMessaging())
  {
    v18 = +[IDSDaemon sharedInstance];
    [v18 processDirectMessagingCapability:(v2 >> 11) & 1];
  }
}

void sub_100639D4C(uint64_t a1)
{
  v2 = +[IDSDaemon sharedInstance];
  [v2 processDirectMessagingInfo:*(a1 + 32)];
}

void sub_10063B420(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceConnection];

  if (!v2)
  {
    v3 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "setupDataConnectionWithDeviceConnectionInfo: serviceConnection is nil", buf, 2u);
    }
  }

  v4 = [*(a1 + 40) objectForKey:@"completionHandler"];
  v5 = [*(a1 + 48) controlChannelVersion];
  v6 = [*(a1 + 48) capabilityFlags];
  v7 = [*(a1 + 48) instanceID];
  v8 = [*(a1 + 48) serviceMinCompatibilityVersion];
  v9 = *(a1 + 80);
  v10 = *(a1 + 64);
  v11 = [*(a1 + 32) serviceConnection];
  v12 = TrafficClassForIDSOpenSocketPriorityLevel();
  (v4)[2](v4, v5, v6, v7, v8, v9, v10, v11, v12, *(a1 + 56));
}

void sub_10063B57C(uint64_t a1)
{
  v2 = [*(a1 + 32) vifName];
  v7 = [NSString stringWithFormat:@"%@: openSocketWithOptions unable to allocate new port - cannot continue", v2];

  v3 = [NSDictionary dictionaryWithObject:v7 forKey:NSLocalizedDescriptionKey];
  v4 = [NSError errorWithDomain:@"IDSUTun" code:5201 userInfo:v3];

  v5 = [*(a1 + 40) objectForKey:@"completionHandler"];
  v6 = TrafficClassForIDSOpenSocketPriorityLevel();
  (v5)[2](v5, 0, 0, 0, 0, 0xFFFFFFFFLL, 0, 0, v6, v4);
}

void sub_10063BD88(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  v3 = +[IDSFoundationLog utunController];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 48) ^ 1;
      *buf = 67109120;
      LODWORD(v16) = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "setShouldStartBTForDefaultPairedDevice: %d", buf, 8u);
    }

    [*(*(a1 + 32) + 96) setShouldStartBTLinkManager:(*(a1 + 48) & 1) == 0];
    v6 = kIDSDefaultPairedDeviceID;
    v3 = sub_10000FAC0(*(a1 + 32) + 8, kIDSDefaultPairedDeviceID);
    if (v3)
    {
      v7 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_prepareConnectionInfoWithCBUUID: deviceConnectionInfo already exists %@", buf, 0xCu);
      }
    }

    else
    {
      v8 = +[IDSPairingManager sharedInstance];
      v9 = [v8 isPaired];

      if (v9)
      {
        v7 = [*(a1 + 32) defaultPairedDeviceIdentityPair];
        v10 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v16 = v7;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "localdevicecontroller is paired [%@]", buf, 0xCu);
        }
      }

      else
      {
        v11 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "checking localdevicecontroller not paired", buf, 2u);
        }

        v12 = im_primary_queue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10063C080;
        block[3] = &unk_100BD6ED0;
        block[4] = *(a1 + 32);
        dispatch_async(v12, block);

        v7 = 0;
      }

      v13 = [*(a1 + 32) _prepareConnectionInfoWithCBUUID:v6 deviceUniqueID:*(a1 + 40) shouldUseServiceConnector:*(a1 + 48) identityPair:v7 remoteDeviceEncryptionInfo:0];
    }
  }

  else if (v4)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "prepareDefaultPairedConnectionInfoWithDeviceUniqueID failed due to invalid linkManager", buf, 2u);
  }
}

void sub_10063C080(uint64_t a1)
{
  v2 = +[IDSPairingManager sharedInstance];
  [v2 addDelegate:*(a1 + 32)];

  v3 = +[IDSPairingManager sharedInstance];
  v4 = [v3 isPaired];

  if (v4)
  {
    v5 = *(a1 + 32);

    [v5 didUpdatePairedDevice:0];
  }
}

void sub_10063C3C4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      *buf = 138412546;
      v60 = v4;
      v61 = 2112;
      v62 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: openSocketWithOptions called with options [%@]", buf, 0x16u);
    }

    v6 = sub_10000FAC0(*(a1 + 48) + 8, *(a1 + 32));
    if (v6)
    {
      v7 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 64);
        *buf = 138412290;
        v60 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Update deviceUniqueID for controlChannel %@", buf, 0xCu);
      }

      v9 = [v6 controlChannel];
      [v9 setDeviceUniqueID:*(a1 + 64)];

      v10 = [v6 controlChannel];
      [v10 setRemoteDeviceEncryptionInfo:*(a1 + 72)];
LABEL_8:

      v11 = [v6 linkLayerConnected];
      if (*(a1 + 81))
      {
        v12 = 0;
      }

      else
      {
        v12 = *(a1 + 82) ^ 1;
      }

      v20 = +[IDSDevicePolicyController sharedInstance];
      v21 = [v20 shouldBlackOutDeviceWithCbuuid:*(a1 + 32)];

      if (v21)
      {
        v22 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(a1 + 32);
          v24 = *(a1 + 64);
          *buf = 138412546;
          v60 = v23;
          v61 = 2112;
          v62 = v24;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Device %@/%@ is blacked out due to fairplay failures", buf, 0x16u);
        }

        [*(*(a1 + 48) + 96) stopLinkForDeviceUniqueID:*(a1 + 64) cbuuid:*(a1 + 32) disconnectWP:1];
        v12 = 0;
      }

      else if (v11)
      {
        [*(a1 + 48) setupDataConnectionWithDeviceConnectionInfo:v6 options:*(a1 + 40)];
        [*(a1 + 48) checkSuspendTrafficForDevice:v6 wait:0];
LABEL_31:
        v36 = [*(a1 + 40) objectForKey:IDSOpenSocketOptionPhoneCallKey];
        v37 = v36 == 0;

        if (!v37)
        {
          [*(*(a1 + 48) + 96) setIsOnPhoneCall:1 forDeviceID:*(a1 + 32)];
        }

        goto LABEL_38;
      }

      v52 = 0;
      v25 = [*(a1 + 40) objectForKey:@"account"];
      v26 = [*(a1 + 40) objectForKey:@"service"];
      v27 = [*(a1 + 40) objectForKey:IDSOpenSocketOptionStreamNameKey];
      v28 = [*(a1 + 40) objectForKey:IDSOpenSocketOptionClientIDKey];
      v29 = [IDSGenericConnectionID idWithAccount:v25 service:v26 name:v27];
      if (v12)
      {
        [*(*(a1 + 48) + 96) startLinkForDeviceUniqueID:*(a1 + 64) cbuuid:*(a1 + 32)];
      }

      [v6 cancelBlockOnLinkConnectWithID:v29 cancelSucceeded:&v52];
      v30 = v52;
      v31 = +[IDSFoundationLog utunController];
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
      if (v30)
      {
        if (v32)
        {
          v33 = *(a1 + 40);
          *buf = 138412546;
          v60 = v29;
          v61 = 2112;
          v62 = v33;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Canceled a previously scheduled openSocket for %@. Rescheduling openSocket with new options %@.", buf, 0x16u);
        }
      }

      else
      {
        if (v32)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Add a block for data channel setup on link connects.", buf, 2u);
        }

        objc_initWeak(buf, v6);
        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_10063CD28;
        v45[3] = &unk_100BE2D78;
        objc_copyWeak(&v51, buf);
        v46 = v29;
        v47 = v28;
        v48 = *(a1 + 32);
        v34 = *(a1 + 40);
        v35 = *(a1 + 48);
        v49 = v34;
        v50 = v35;
        [v6 addBlocksOnLinkConnect:v45];

        objc_destroyWeak(&v51);
        objc_destroyWeak(buf);
      }

      if (v30)
      {
        goto LABEL_38;
      }

      goto LABEL_31;
    }

    if (*(a1 + 80) == 1)
    {
      v13 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        *buf = 138412290;
        v60 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@: openSocketWithOptions called for default paired device but no connectionInfo - aborting", buf, 0xCu);
      }

      v15 = [NSString stringWithFormat:@"%@: openSocketWithOptions called for default paired device but no connectionInfo - cannot continue", *(a1 + 32)];
      v16 = [NSDictionary dictionaryWithObject:v15 forKey:NSLocalizedDescriptionKey];
      v17 = [NSError errorWithDomain:@"IDSUTun" code:5255 userInfo:v16];

      v18 = [*(a1 + 40) objectForKey:@"completionHandlerQueue"];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10063CC10;
      block[3] = &unk_100BD6E40;
      v57 = *(a1 + 40);
      v58 = v17;
      v19 = v17;
      dispatch_async(v18, block);
    }

    else
    {
      v10 = [*(a1 + 56) objectForKeyedSubscript:IDSOpenSocketOptionUnauthenticatedIdentityPair];
      v6 = [*(a1 + 48) _prepareConnectionInfoWithCBUUID:*(a1 + 32) deviceUniqueID:*(a1 + 64) shouldUseServiceConnector:0 identityPair:v10 remoteDeviceEncryptionInfo:*(a1 + 72)];
      if (v6)
      {
        goto LABEL_8;
      }

      v38 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = *(a1 + 32);
        *buf = 138412290;
        v60 = v39;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%@: openSocketWithOptions unable to create new device - cannot continue", buf, 0xCu);
      }

      v40 = [NSString stringWithFormat:@"%@: openSocketWithOptions unable to create new device - cannot continue", *(a1 + 32)];
      v41 = [NSDictionary dictionaryWithObject:v40 forKey:NSLocalizedDescriptionKey];
      v42 = [NSError errorWithDomain:@"IDSUTun" code:5201 userInfo:v41];

      v43 = [*(a1 + 40) objectForKey:@"completionHandlerQueue"];
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_10063CC9C;
      v53[3] = &unk_100BD6E40;
      v54 = *(a1 + 40);
      v55 = v42;
      v44 = v42;
      dispatch_async(v43, v53);
    }

    v6 = 0;
LABEL_38:
  }
}

void sub_10063CBEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_10063CC10(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:@"completionHandler"];
  (*(v2 + 2))(v2, 0, 0, 0, 0, 0xFFFFFFFFLL, 0, 0, -1, *(a1 + 40));
}

void sub_10063CC9C(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:@"completionHandler"];
  (*(v2 + 2))(v2, 0, 0, 0, 0, 0xFFFFFFFFLL, 0, 0, -1, *(a1 + 40));
}

void sub_10063CD28(uint64_t a1, int a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    if (v7)
    {
      if (([*(a1 + 32) isEqual:v7] & 1) != 0 || objc_msgSend(*(a1 + 40), "isEqual:", v7))
      {
        v9 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 48);
          *buf = 138412290;
          v30 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: scheduled openSocketWithOptions attempt canceled - closeSocket called", buf, 0xCu);
        }

        v11 = [NSString stringWithFormat:@"%@: scheduled openSocketWithOptions attempt canceled - closeSocket called", *(a1 + 48)];
        v12 = [NSDictionary dictionaryWithObject:v11 forKey:NSLocalizedDescriptionKey];
        v13 = [NSError errorWithDomain:@"IDSUTun" code:5205 userInfo:v12];

        v14 = [*(a1 + 56) objectForKey:@"completionHandlerQueue"];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10063D0E0;
        block[3] = &unk_100BD6E40;
        v27 = *(a1 + 56);
        v28 = v13;
        v15 = v13;
        dispatch_async(v14, block);
        *a4 = 1;
      }
    }

    else if (a2)
    {
      v16 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 48);
        *buf = 138412290;
        v30 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@: openSocketWithOptions attempt canceled - possibly obliteration", buf, 0xCu);
      }

      v18 = [NSString stringWithFormat:@"%@: openSocketWithOptions attempt canceled - possibly obliteration", *(a1 + 48)];
      v19 = [NSDictionary dictionaryWithObject:v18 forKey:NSLocalizedDescriptionKey];
      v20 = [NSError errorWithDomain:@"IDSUTun" code:5204 userInfo:v19];

      v21 = [*(a1 + 56) objectForKey:@"completionHandlerQueue"];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10063D16C;
      v23[3] = &unk_100BD6E40;
      v24 = *(a1 + 56);
      v25 = v20;
      v22 = v20;
      dispatch_async(v21, v23);
    }

    else
    {
      [*(a1 + 64) setupDataConnectionWithDeviceConnectionInfo:WeakRetained options:*(a1 + 56)];
      [*(a1 + 64) checkSuspendTrafficForDevice:WeakRetained wait:0];
    }
  }
}

void sub_10063D0E0(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:@"completionHandler"];
  (*(v2 + 2))(v2, 0, 0, 0, 0, 0xFFFFFFFFLL, 0, 0, -1, *(a1 + 40));
}

void sub_10063D16C(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:@"completionHandler"];
  (*(v2 + 2))(v2, 0, 0, 0, 0, 0xFFFFFFFFLL, 0, 0, -1, *(a1 + 40));
}

void sub_10063D288(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 40);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10063D374;
      v9[3] = &unk_100BE2DF0;
      v5 = v3;
      v6 = *(a1 + 40);
      v10 = v5;
      v11 = v6;
      sub_10000C18C(v4 + 8, v9);
      v7 = v10;
    }

    else
    {
      v7 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8[0] = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "cleanupSocketsForClient: clientID is nil.", v8, 2u);
      }
    }
  }
}

void sub_10063D374(uint64_t a1, void *a2, void *a3)
{
  v30 = a2;
  v4 = a3;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 138412546;
    v45 = v30;
    v46 = 2112;
    v47 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device %@: utun cleaning up device connection for clientID: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v28 = v30;
      v29 = *(a1 + 32);
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v28 = v30;
        v29 = *(a1 + 32);
        _IDSLogV();
      }
    }
  }

  v7 = v4;
  v43 = 0;
  [v7 cancelBlockOnLinkConnectWithID:*(a1 + 32) cancelSucceeded:&v43];
  v8 = objc_alloc_init(NSMutableArray);
  v9 = [v7 connectionsTableByLocalRemotePortKey];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10063D830;
  v39[3] = &unk_100BE2DC8;
  v40 = *(a1 + 32);
  v10 = v7;
  v41 = v10;
  v11 = v8;
  v42 = v11;
  sub_10000C280(v9, v39);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v11;
  v34 = [obj countByEnumeratingWithState:&v35 objects:v50 count:16];
  if (v34)
  {
    v32 = *v36;
    do
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v36 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        v14 = [v13 connectionID];
        v15 = [v13 localConnectionGUID];
        v16 = [v13 remoteConnectionGUID];
        v17 = [v14 account];
        v18 = [v14 service];
        v19 = [v14 name];
        v20 = sub_10062D4A4(v15, v16, v17, v18, v19);

        if (v20)
        {
          v21 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [v10 vifName];
            *buf = 138412802;
            v45 = v22;
            v46 = 2112;
            v47 = v20;
            v48 = 2112;
            v49 = v13;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@: close channel control message [%@] created for connection %@", buf, 0x20u);
          }

          v23 = [v10 controlChannel];
          [v23 sendMessage:v20];
        }

        v24 = *(a1 + 40);
        v25 = [v10 portMap];
        v26 = [v13 addressPair];
        v27 = [v26 localAddress];
        [v24 releasePortIfNecessary:v25 port:{objc_msgSend(v27, "saPortHostOrder")}];

        [*(a1 + 40) removeConnection:v13 fromDeviceConnectionInfo:v10 removeCode:5030 removeReason:@"Cleaning up all connections for service"];
      }

      v34 = [obj countByEnumeratingWithState:&v35 objects:v50 count:16];
    }

    while (v34);
  }
}

void sub_10063D830(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 clientID];
  v6 = [v5 isEqualToIgnoringCase:*(a1 + 32)];

  if (v6)
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = [v4 connectionID];
      v11 = [v10 service];
      *buf = 138412802;
      v22 = v9;
      v23 = 2112;
      v24 = v8;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "utun cleaning up device connection info: %@, clientID: %@, connection for service %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v13 = *(a1 + 32);
        v12 = *(a1 + 40);
        v14 = [v4 connectionID];
        [v14 service];
        v20 = v19 = v13;
        v18 = v12;
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v16 = *(a1 + 32);
          v15 = *(a1 + 40);
          v17 = [v4 connectionID];
          [v17 service];
          v20 = v19 = v16;
          v18 = v15;
          _IDSLogV();
        }
      }
    }

    [*(a1 + 48) addObject:{v4, v18, v19, v20}];
  }
}

void sub_10063DB2C(id *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = a1 + 4;
    v4 = [a1[4] objectForKey:IDSOpenSocketOptionCBUUIDKey];
    v22 = [*v3 objectForKey:IDSOpenSocketOptionDeviceUniqueIDKey];
    v5 = sub_10000FAC0(a1[5] + 8, v4);
    if (([v4 isEqualToString:kIDSDefaultPairedDeviceID] & 1) == 0)
    {
      v6 = [v5 controlChannel];
      v7 = [v6 deviceUniqueID];

      if (([v7 isEqualToString:v22] & 1) == 0)
      {
        v8 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v31 = v22;
          v32 = 2112;
          v33 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "closeSocketWithOptions found deviceUniqueID mismatch (%@ != %@), ignore.", buf, 0x16u);
        }

        goto LABEL_23;
      }
    }

    v7 = [a1[4] objectForKey:@"account"];
    v8 = [a1[4] objectForKey:@"service"];
    v9 = [a1[4] objectForKey:IDSOpenSocketOptionStreamNameKey];
    v10 = [IDSGenericConnectionID idWithAccount:v7 service:v8 name:v9];
    v11 = [v5 connectionsByID];
    v12 = [v11 objectForKey:v10];

    if ([v5 linkLayerConnected])
    {
      [a1[5] closeDataConnectionWithDeviceConnectionInfo:v5 options:a1[4]];
      [a1[5] checkSuspendTrafficForDevice:v5 wait:1];
    }

    else
    {
      v29 = 0;
      [v5 cancelBlockOnLinkConnectWithID:v10 cancelSucceeded:&v29];
      v13 = v29;
      v14 = +[IDSFoundationLog utunController];
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        if (v15)
        {
          *buf = 138412290;
          v31 = v10;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Canceled a previously scheduled openSocket for %@. Not scheduling closeSocket.", buf, 0xCu);
        }

        goto LABEL_22;
      }

      if (v15)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Add a block for data channel close on link connects.", buf, 2u);
      }

      objc_initWeak(buf, v5);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10063DFE4;
      v26[3] = &unk_100BE2E18;
      objc_copyWeak(&v28, buf);
      v21 = *(a1 + 2);
      v16 = v21.i64[0];
      v27 = vextq_s8(v21, v21, 8uLL);
      [v5 addBlocksOnLinkConnect:v26];

      objc_destroyWeak(&v28);
      objc_destroyWeak(buf);
    }

    if (a1[7])
    {
      v17 = a1[6];
      if (!a1[6])
      {
        v18 = dispatch_get_global_queue(0, 0xFFFFFFFFFFFF8000);

        v17 = v18;
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10063E068;
      block[3] = &unk_100BD7298;
      v25 = a1[7];
      v24 = v12;
      dispatch_async(v17, block);
    }

    v19 = [a1[4] objectForKey:{IDSOpenSocketOptionPhoneCallKey, *&v21}];
    v20 = v19 == 0;

    if (!v20)
    {
      [*(a1[5] + 12) setIsOnPhoneCall:0 forDeviceID:v4];
    }

LABEL_22:

LABEL_23:
  }
}

void sub_10063DFC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

uint64_t sub_10063DFE4(uint64_t a1, char a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (!a3 && (a2 & 1) == 0 && WeakRetained)
  {
    v9 = WeakRetained;
    [*(a1 + 32) closeDataConnectionWithDeviceConnectionInfo:WeakRetained options:*(a1 + 40)];
    WeakRetained = [*(a1 + 32) checkSuspendTrafficForDevice:v9 wait:1];
    v7 = v9;
  }

  return _objc_release_x1(WeakRetained, v7);
}

uint64_t sub_10063E068(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) packetsSent];
  v4 = [*(a1 + 32) bytesSent];
  v5 = [*(a1 + 32) packetsReceived];
  v6 = [*(a1 + 32) bytesReceived];
  v7 = *(v2 + 16);

  return v7(v2, v3, v4, v5, v6);
}

void sub_10063E710(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = [*(a1 + 32) objectForKey:IDSOpenSocketOptionCBUUIDKey];
    v4 = [*(a1 + 32) objectForKey:@"account"];
    v5 = [*(a1 + 32) objectForKey:@"service"];
    v6 = [*(a1 + 32) objectForKey:IDSOpenSocketOptionStreamNameKey];
    v7 = [*(a1 + 32) objectForKey:@"suspendWait"];
    v8 = v7;
    if (v7)
    {
      v20 = [v7 BOOLValue];
    }

    else
    {
      v20 = 0;
    }

    v9 = sub_10000FAC0(*(a1 + 40) + 8, v3);
    v10 = [IDSGenericConnectionID idWithAccount:v4 service:v5 name:v6];
    v11 = [v9 connectionsByID];
    v12 = [v11 objectForKey:v10];

    v13 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      [v9 vifName];
      v19 = v6;
      v14 = v5;
      v15 = v4;
      v17 = v16 = v3;
      v18 = *(a1 + 32);
      *buf = 138412802;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@: suspendSocketWithOptions called with options [%@] (connection %@)", buf, 0x20u);

      v3 = v16;
      v4 = v15;
      v5 = v14;
      v6 = v19;
    }

    if (v12)
    {
      if (([v12 suspended] & 1) == 0)
      {
        [v12 setSuspended:1];
        [*(a1 + 40) checkSuspendTrafficForDevice:v9 wait:v20];
      }
    }
  }
}

void sub_10063EC94(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = [*(a1 + 32) objectForKey:IDSOpenSocketOptionCBUUIDKey];
    v26 = [*(a1 + 32) objectForKey:IDSOpenSocketOptionDeviceUniqueIDKey];
    v4 = [*(a1 + 32) objectForKey:@"account"];
    v5 = [*(a1 + 32) objectForKey:@"service"];
    v6 = [*(a1 + 32) objectForKey:IDSOpenSocketOptionStreamNameKey];
    v7 = [*(a1 + 32) objectForKey:IDSOpenSocketOptionCloudEnabledKey];
    v24 = [v7 BOOLValue];

    v8 = [*(a1 + 32) objectForKey:IDSOpenSocketOptionIsIDSDSessionSocket];
    v9 = [v8 BOOLValue];

    v10 = sub_10000FAC0(*(a1 + 40) + 8, v3);
    v25 = v4;
    v11 = [IDSGenericConnectionID idWithAccount:v4 service:v5 name:v6];
    v12 = [v10 connectionsByID];
    v13 = [v12 objectForKey:v11];

    if (*(a1 + 48) == 1)
    {
      v14 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v10 vifName];
        v16 = *(a1 + 32);
        *buf = 138412802;
        v28 = v15;
        v29 = 2112;
        v30 = v16;
        v31 = 2112;
        v32 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@: resumeSocketWithOptions called with options [%@] (connection %@)", buf, 0x20u);
      }
    }

    v17 = +[IDSDevicePolicyController sharedInstance];
    v18 = [v17 shouldBlackOutDeviceWithCbuuid:v3];

    if (v18)
    {
      v19 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v10 controlChannel];
        v21 = [v20 deviceUniqueID];
        *buf = 138412546;
        v28 = v3;
        v29 = 2112;
        v30 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Device %@/%@ is blacked out due to fairplay failures", buf, 0x16u);
      }

      v22 = v26;
      [*(*(a1 + 40) + 96) stopLinkForDeviceUniqueID:v26 cbuuid:v3 disconnectWP:1];
    }

    else
    {
      v23 = v24 | v9;
      v22 = v26;
      if ((v23 & 1) == 0)
      {
        [*(*(a1 + 40) + 96) startLinkForDeviceUniqueID:v26 cbuuid:v3];
      }

      if (v13 && [v13 suspended])
      {
        [v13 setSuspended:0];
        [*(a1 + 40) checkSuspendTrafficForDevice:v10 wait:0];
      }
    }
  }
}

void *sub_10063F19C(void *result)
{
  if (*(result[4] + 96))
  {
    return [*(result[4] + 96) startUDPGlobalLinkForDevice:result[5]];
  }

  return result;
}

void sub_10063F248(uint64_t a1)
{
  v2 = sub_10000FAC0(*(a1 + 32) + 8, *(a1 + 40));
  v3 = +[IDSFoundationLog utunController];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "removeDeviceConnectionInfoForDevice for %@", &v9, 0xCu);
    }

    [*(a1 + 32) resetAllConnectionsForDevice:v2];
    v6 = [v2 controlChannel];
    [v6 invalidate];

    if (v2[2079])
    {
      os_channel_get_fd();
    }

    else
    {
      [v2 utunSocket];
    }

    IDSTransportThreadRemoveSocket();
    [v2 cancelBlocksOnLinkConnect];
    [v2 invalidate];
    sub_1006C361C(*(a1 + 32) + 8, *(a1 + 40));
  }

  else
  {
    if (v4)
    {
      v7 = *(a1 + 40);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "removeDeviceConnectionInfoForDevice found no match for %@", &v9, 0xCu);
    }
  }

  v8 = *(*(a1 + 32) + 96);
  if (v8)
  {
    [v8 stopUDPGlobalLinkForDevice:*(a1 + 40)];
  }
}

void *sub_10063F4B8(void *result)
{
  if (*(result[4] + 96))
  {
    return [*(result[4] + 96) createConnectionDataForDevice:result[5] localPartyID:result[6] dataReadyHandler:result[7]];
  }

  return result;
}

void *sub_10063F5B4(void *result)
{
  if (*(result[4] + 96))
  {
    return [*(result[4] + 96) processRemoteConnectionDataForDevice:result[5] remoteConnectionData:result[6] completionHandler:result[7]];
  }

  return result;
}

void *sub_10063F6A8(void *result)
{
  if (*(result[4] + 96))
  {
    return [*(result[4] + 96) startConnectionForDevice:result[5] isInitiator:*(result + 56) remotePartyID:result[6] useStunMICheck:*(result + 57)];
  }

  return result;
}

void sub_10063F75C(uint64_t a1)
{
  v2 = sub_10000FAC0(*(a1 + 32) + 8, *(a1 + 40));
  v3 = +[IDSFoundationLog utunController];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "removeDeviceConnectionInfoForDevice for %@.", &v9, 0xCu);
    }

    [*(a1 + 32) resetAllConnectionsForDevice:v2];
    v6 = [v2 controlChannel];
    [v6 invalidate];

    if (v2[2079])
    {
      os_channel_get_fd();
    }

    else
    {
      [v2 utunSocket];
    }

    IDSTransportThreadRemoveSocket();
    [v2 cancelBlocksOnLinkConnect];
    [v2 invalidate];
    sub_1006C361C(*(a1 + 32) + 8, *(a1 + 40));
  }

  else
  {
    if (v4)
    {
      v7 = *(a1 + 40);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "removeDeviceConnectionInfoForDevice found no match for %@.", &v9, 0xCu);
    }
  }

  v8 = *(*(a1 + 32) + 96);
  if (v8)
  {
    [v8 stopGlobalLinkForDevice:*(a1 + 40)];
  }
}

void *sub_10063F980(void *result)
{
  if (*(result[4] + 96))
  {
    return [*(result[4] + 96) startGlobalLinkForDevice:result[5]];
  }

  return result;
}

void *sub_10063FA88(void *result)
{
  if (*(result[4] + 96))
  {
    v1 = result;
    v2 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(v1 + 16);
      v4[0] = 67109120;
      v4[1] = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "IDSUTunController connectGlobalLinkForDevice preferredLocalInterface: %i", v4, 8u);
    }

    return [*(v1[4] + 96) connectGlobalLinkForDevice:v1[5] sessionInfo:v1[6] connectReadyHandler:v1[7] withLocalInterfacePreference:*(v1 + 16)];
  }

  return result;
}

void sub_10063FC1C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  if (v2)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    [v2 disconnectGlobalLinkForDevice:v4 isReinitiating:v3 completionHandler:v5];
  }

  else if (*(a1 + 48))
  {
    v6 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10063FD10;
    block[3] = &unk_100BD7270;
    v9 = *(a1 + 48);
    v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
    dispatch_async(v6, v7);
  }
}

void sub_10063FEBC(uint64_t a1)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v7 = -1431655766;
  [*(*(a1 + 32) + 96) currentLinkType:&v8 andRATType:&v7 forDeviceID:*(a1 + 40)];
  v2 = im_primary_queue();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10063FF88;
  v3[3] = &unk_100BE2EE0;
  v4 = *(a1 + 48);
  v5 = v8;
  v6 = v7;
  dispatch_async(v2, v3);
}

uint64_t sub_10064000C(uint64_t a1)
{
  kdebug_trace();
  [*(*(a1 + 32) + 96) startLocalSetup];

  return kdebug_trace();
}

void sub_100640278(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    if (*(*(a1 + 32) + 96))
    {
      v3 = kIDSDefaultPairedDeviceID;
      if ([*(a1 + 40) isEqualToString:kIDSDefaultPairedDeviceID])
      {
        v4 = im_primary_queue();
        dispatch_async(v4, &stru_100BE2F00);
      }

      v5 = sub_10000FAC0(*(a1 + 32) + 8, *(a1 + 40));
      if (v5)
      {
        v6 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(a1 + 40);
          *buf = 138412290;
          v14 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "obliterateConnectionInfo: clear all connections for cbuuid %@", buf, 0xCu);
        }

        [*(a1 + 32) resetAllConnectionsForDevice:v5];
        v8 = [v5 controlChannel];
        [v8 invalidate];

        if (v5[2079].isa)
        {
          os_channel_get_fd();
        }

        else
        {
          [v5 utunSocket];
        }

        IDSTransportThreadRemoveSocket();
        [v5 cancelBlocksOnLinkConnect];
        [v5 invalidate];
        sub_1006C361C(*(a1 + 32) + 8, *(a1 + 40));
      }

      if ([*(a1 + 40) isEqualToString:v3])
      {
        [*(*(a1 + 32) + 96) obliterateConnectionInfo];
      }

      v9 = *(a1 + 56);
      if (v9)
      {
        v10 = *(a1 + 48);
        if (v10)
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100640560;
          block[3] = &unk_100BD7270;
          v12 = v9;
          dispatch_async(v10, block);
        }
      }
    }

    else
    {
      v5 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "obliterateConnectionInfo failed due to invalid linkManager", buf, 2u);
      }
    }
  }
}

void sub_1006404D4(id a1)
{
  v1 = +[IDSUTunDeliveryController sharedInstance];
  [v1 enableConnectionForDefaultPairedDevice:0];

  if (_IDSSupportsDirectMessaging())
  {
    v2 = +[IDSUTunDeliveryController sharedInstance];
    [v2 defaultPeerSupportsDirectMessaging:0 isObliterating:1];
  }
}

uint64_t sub_100640560(uint64_t a1)
{
  v2 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "obliterateConnectionInfo: completionBlock", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_100640650(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = sub_10000FAC0(*(a1 + 32) + 8, kIDSDefaultPairedDeviceID);
    v4 = +[IDSFoundationLog utunController];
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Clearing control channel", buf, 2u);
      }

      v4 = [v3 controlChannel];
      [*(*(a1 + 32) + 96) setRequireBT:1];
      [v4 setIdentityPair:0];
      [v4 setIsDefaultPairedDevicePairedLocally:0];
    }

    else if (v5)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Couldn't find deviceConnection info", v6, 2u);
    }
  }
}

void sub_100640808(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 96);
    if (v3)
    {
      if (*(a1 + 48) == 1)
      {
        [v3 setShouldStartBTLinkManager:0];
      }

      v4 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        v7 = 138412290;
        v8 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "addPairedDevice with cbuuid %@", &v7, 0xCu);
      }

      [*(*(a1 + 32) + 96) addPairedDevice:*(a1 + 40)];
    }

    else
    {
      v6 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v7) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "addPairedDevice failed due to invalid linkManager", &v7, 2u);
      }
    }
  }
}

void sub_1006409C8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 96);
    v4 = +[IDSFoundationLog utunController];
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        v6 = *(a1 + 40);
        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "connectPairedDevice with cbuuid %@", &v7, 0xCu);
      }

      [*(*(a1 + 32) + 96) connectPairedDevice:*(a1 + 40)];
    }

    else
    {
      if (v5)
      {
        LOWORD(v7) = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "connectPairedDevice failed due to invalid linkManager", &v7, 2u);
      }
    }
  }
}

void sub_100640B60(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 96);
    v4 = +[IDSFoundationLog utunController];
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        v6 = *(a1 + 40);
        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "deletePairedDevice with cbuuid %@", &v7, 0xCu);
      }

      [*(*(a1 + 32) + 96) deletePairedDevice:*(a1 + 40)];
    }

    else
    {
      if (v5)
      {
        LOWORD(v7) = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "deletePairedDevice failed due to invalid linkManager", &v7, 2u);
      }
    }
  }
}

void sub_100640D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100640D58(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  if (v2)
  {
    v3 = [v2 copyLinkStatsDict];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    _objc_release_x1(v3, v5);
  }

  else
  {
    v6 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "copyLinkStatsDict failed due to invalid linkManager", v9, 2u);
    }

    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }
}

void sub_10064115C(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  v4 = [v12 connectionID];
  v5 = [v4 service];

  if ([v5 length] && ((objc_msgSend(*(a1 + 32), "containsObject:", v5) & 1) != 0 || !objc_msgSend(*(a1 + 32), "count")))
  {
    v6 = *(*(*(a1 + 48) + 8) + 40);
    if (!v6)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v8 = *(*(a1 + 48) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = Mutable;

      v6 = *(*(*(a1 + 48) + 8) + 40);
    }

    v10 = [v6 objectForKey:v5];
    if (!v10)
    {
      v10 = objc_alloc_init(IDSServiceStatistics);
    }

    v11 = [*(a1 + 40) objectForKey:v5];
    -[IDSServiceStatistics setPacketsSent:](v10, "setPacketsSent:", [v11 packetsSent] + objc_msgSend(v12, "packetsSent") + -[IDSServiceStatistics packetsSent](v10, "packetsSent"));
    -[IDSServiceStatistics setPacketsReceived:](v10, "setPacketsReceived:", [v11 packetsReceived] + objc_msgSend(v12, "packetsReceived") + -[IDSServiceStatistics packetsReceived](v10, "packetsReceived"));
    -[IDSServiceStatistics setBytesSent:](v10, "setBytesSent:", [v11 bytesSent] + objc_msgSend(v12, "bytesSent") + -[IDSServiceStatistics bytesSent](v10, "bytesSent"));
    -[IDSServiceStatistics setBytesReceived:](v10, "setBytesReceived:", [v11 bytesReceived] + objc_msgSend(v12, "bytesReceived") + -[IDSServiceStatistics bytesReceived](v10, "bytesReceived"));
    if (v10)
    {
      CFDictionarySetValue(*(*(*(a1 + 48) + 8) + 40), v5, v10);
    }

    [*(a1 + 40) removeObjectForKey:v5];
  }
}

void sub_100641534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100641554(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = result;
    v4 = [*(result + 32) onTransportThread_PerServiceDataTransferredForDevice:v3[5] services:v3[6]];
    v5 = *(v3[7] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    return _objc_release_x1(v4, v6);
  }

  return result;
}

void sub_10064177C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10064179C(uint64_t a1)
{
  v2 = sub_10000FAC0(*(a1 + 32) + 8, *(a1 + 40));
  v3 = v2;
  if (v2)
  {
    v4 = [v2 connectionsTableByLocalRemotePortKey];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10064185C;
    v7[3] = &unk_100BE2FA0;
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v8 = v5;
    v9 = v6;
    sub_10000C280(v4, v7);
  }
}

void sub_10064185C(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = a3;
  v4 = [v18 connectionID];
  v5 = [v4 service];

  if ([v5 length] && ((objc_msgSend(*(a1 + 32), "containsObject:", v5) & 1) != 0 || !objc_msgSend(*(a1 + 32), "count")))
  {
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = Mutable;
    }

    v9 = [v18 packetsSent];
    v17 = [v18 bytesSent];
    v10 = [*(*(*(a1 + 40) + 8) + 40) objectForKey:v5];
    if (!v10)
    {
      v10 = objc_alloc_init(NSMutableDictionary);
    }

    v11 = [v10 objectForKey:@"localDeliveryQueueStatMessageCount"];
    v12 = [v10 objectForKey:@"localDeliveryQueueStatBytes"];
    v13 = [v11 unsignedLongLongValue];
    v14 = [v12 unsignedLongLongValue];
    v15 = [NSNumber numberWithUnsignedLongLong:&v9[v13]];
    [v10 setObject:v15 forKey:@"localDeliveryQueueStatMessageCount"];

    v16 = [NSNumber numberWithUnsignedLongLong:&v17[v14]];
    [v10 setObject:v16 forKey:@"localDeliveryQueueStatBytes"];

    [*(*(*(a1 + 40) + 8) + 40) setObject:v10 forKey:v5];
  }
}

void sub_100641C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100641C58(uint64_t a1)
{
  v2 = sub_10000FAC0(*(a1 + 32) + 8, *(a1 + 40));
  v3 = v2;
  if (v2)
  {
    v4 = [v2 connectionsTableByLocalRemotePortKey];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100641D18;
    v7[3] = &unk_100BE2FA0;
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v8 = v5;
    v9 = v6;
    sub_10000C280(v4, v7);
  }
}

void sub_100641D18(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = a3;
  v4 = [v18 connectionID];
  v5 = [v4 service];

  if ([v5 length] && ((objc_msgSend(*(a1 + 32), "containsObject:", v5) & 1) != 0 || !objc_msgSend(*(a1 + 32), "count")))
  {
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = Mutable;
    }

    v9 = [v18 packetsReceived];
    v17 = [v18 bytesReceived];
    v10 = [*(*(*(a1 + 40) + 8) + 40) objectForKey:v5];
    if (!v10)
    {
      v10 = objc_alloc_init(NSMutableDictionary);
    }

    v11 = [v10 objectForKey:@"localDeliveryQueueStatMessageCount"];
    v12 = [v10 objectForKey:@"localDeliveryQueueStatBytes"];
    v13 = [v11 unsignedLongLongValue];
    v14 = [v12 unsignedLongLongValue];
    v15 = [NSNumber numberWithUnsignedLongLong:&v9[v13]];
    [v10 setObject:v15 forKey:@"localDeliveryQueueStatMessageCount"];

    v16 = [NSNumber numberWithUnsignedLongLong:&v17[v14]];
    [v10 setObject:v16 forKey:@"localDeliveryQueueStatBytes"];

    [*(*(*(a1 + 40) + 8) + 40) setObject:v10 forKey:v5];
  }
}

void sub_100642020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100642038(uint64_t a1)
{
  v2 = sub_10000FAC0(*(a1 + 32) + 8, *(a1 + 40));
  v3 = v2;
  if (v2)
  {
    v4 = [v2 connectionsTableByLocalRemotePortKey];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100642180;
    v9[3] = &unk_100BE2FA0;
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v10 = v5;
    v11 = v6;
    sub_10000C280(v4, v9);
    v7 = v10;
  }

  else
  {
    v7 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "getTransmittedPacketsForDevice: cannot find device %@", buf, 0xCu);
    }
  }
}

void sub_100642180(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v8 = v4;
  v6 = [v4 connectionID];
  v7 = [v6 service];
  LODWORD(v5) = [v5 containsObject:v7];

  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) += [v8 packetsSent];
  }
}

void sub_10064231C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100642334(uint64_t a1)
{
  v2 = sub_10000FAC0(*(a1 + 32) + 8, *(a1 + 40));
  v3 = v2;
  if (v2)
  {
    v4 = [v2 connectionsTableByLocalRemotePortKey];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10064247C;
    v9[3] = &unk_100BE2FA0;
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v10 = v5;
    v11 = v6;
    sub_10000C280(v4, v9);
    v7 = v10;
  }

  else
  {
    v7 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "getTransmittedPacketsForDevice: cannot find device %@", buf, 0xCu);
    }
  }
}

void sub_10064247C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v8 = v4;
  v6 = [v4 connectionID];
  v7 = [v6 service];
  LODWORD(v5) = [v5 containsObject:v7];

  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) += [v8 packetsReceived];
  }
}

void sub_10064258C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 96);
    v4 = +[IDSFoundationLog utunController];
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        if (*(a1 + 40))
        {
          v6 = @"YES";
        }

        else
        {
          v6 = @"NO";
        }

        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setPreferInfraWiFi %@", &v7, 0xCu);
      }

      [*(*(a1 + 32) + 96) setPreferInfraWiFi:*(a1 + 40)];
    }

    else
    {
      if (v5)
      {
        LOWORD(v7) = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setPreferInfraWiFi failed due to invalid linkManager", &v7, 2u);
      }
    }
  }
}

void sub_100642740(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    if (*(*(a1 + 32) + 96))
    {
      v4 = *(a1 + 40);
      v5 = *(*(a1 + 32) + 96);

      [v5 setLinkPreferences:v4];
    }

    else
    {
      v8 = v2;
      v9 = v3;
      v6 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setLinkPreferences failed due to invalid linkManager", v7, 2u);
      }
    }
  }
}

void sub_1006428A0(uint64_t a1)
{
  v2 = sub_10000FAC0(*(a1 + 32) + 8, kIDSDefaultPairedDeviceID);
  if ([v2 linkLayerConnected])
  {
    v3 = [v2 controlChannel];
    [v3 sendOTRNegotiationMessage:*(a1 + 40) negotiationCount:*(a1 + 56) negotiationData:*(a1 + 48)];
  }

  else
  {
    v4 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Drop OTR negotiation message for %@, link is not connected.", &v6, 0xCu);
    }

    v3 = [v2 controlChannel];
    [v3 suspendOTRNegotiation:*(a1 + 40)];
  }
}

void sub_100642A50(uint64_t a1)
{
  v2 = sub_10000FAC0(*(a1 + 32) + 8, kIDSDefaultPairedDeviceID);
  if ([v2 linkLayerConnected])
  {
    v3 = [v2 controlChannel];
    [v3 sendSuspendOTRNegotiationMessage:*(a1 + 40)];
  }

  else
  {
    v3 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Drop suspend OTR negotiation message for %@, link is not connected.", &v5, 0xCu);
    }
  }
}

void sub_100642B5C(const char *a1, int a2)
{
  if (a1 && *a1)
  {
    v4 = socket(30, 2, 0);
    if (v4 == -1)
    {
      __error();
      IDSAssertNonFatalErrnoWithSource();
      v17 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = a1;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Cannot open socket for ioctl for %s on disconnect", buf, 0xCu);
      }

      goto LABEL_23;
    }

    v5 = v4;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v6;
    v23 = v6;
    __strlcpy_chk();
    if (ioctl(v5, 0xC02069AAuLL, buf) == -1)
    {
      v10 = +[IDSFoundationLog utunController];
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *v18 = 136315138;
      *v19 = a1;
      v12 = "Cannot get interface state for %s on disconnect";
    }

    else
    {
      v7 = BYTE3(v23);
      v8 = a2 ^ 1;
      BYTE3(v23) = a2 ^ 1;
      v9 = ioctl(v5, 0xC02069A9uLL, buf);
      v10 = +[IDSFoundationLog utunController];
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v9 != -1)
      {
        if (v11)
        {
          *v18 = 67109634;
          *v19 = v7;
          *&v19[4] = 1024;
          *&v19[6] = v8;
          v20 = 2080;
          v21 = a1;
          v12 = "Set interface availability from %u to %u (0 is available) %s";
          v13 = v10;
          v14 = 24;
LABEL_21:
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, v18, v14);
        }

LABEL_22:

        close(v5);
LABEL_23:
        IDSCheckFileDescriptorUsageWithSource();
        return;
      }

      if (!v11)
      {
        goto LABEL_22;
      }

      *v18 = 136315138;
      *v19 = a1;
      v12 = "Cannot set interface state to available for %s on disconnect";
    }

    v13 = v10;
    v14 = 12;
    goto LABEL_21;
  }

  v15 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = "<null>";
    if (a1)
    {
      v16 = a1;
    }

    *buf = 136315138;
    *&buf[4] = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Cannot use invalid interface name [%s]", buf, 0xCu);
  }
}

void sub_10064365C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = sub_10000FAC0(*(a1 + 32) + 8, kIDSDefaultPairedDeviceID);
    if ([v3 shouldUseServiceConnector])
    {
      v4 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ipsec path does not require control channel encryption", buf, 2u);
      }

      v5 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100643880;
      block[3] = &unk_100BD6ED0;
      block[4] = *(a1 + 32);
      dispatch_async(v5, block);
    }

    else
    {
      v5 = [v3 controlChannel];
      if ([v5 isDefaultPairedDevicePairedLocally])
      {
        v6 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "control channel already paired", buf, 2u);
        }

        v7 = im_primary_queue();
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_1006438D8;
        v9[3] = &unk_100BD6ED0;
        v9[4] = *(a1 + 32);
        dispatch_async(v7, v9);
      }

      else if (*(a1 + 40))
      {
        [v5 setIdentityPair:?];
        [v5 setIsDefaultPairedDevicePairedLocally:1];
        v8 = sub_10063952C([v5 isDefaultPairedDevicePairedRemotely]);
        [v5 sendPriorityMessage:v8];
      }
    }
  }
}

void sub_100643880(uint64_t a1)
{
  v2 = +[IDSPairingManager sharedInstance];
  [v2 removeDelegate:*(a1 + 32)];
}

void sub_1006438D8(uint64_t a1)
{
  v2 = +[IDSPairingManager sharedInstance];
  [v2 removeDelegate:*(a1 + 32)];
}

void sub_100643CC0(id a1)
{
  info = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(&info);
  LODWORD(v2) = info.denom;
  LODWORD(v1) = info.numer;
  *&qword_100CBF3C0 = v1 / v2 / 1000000000.0;
}

id sub_100645250(id a1, IDSURI *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [(IDSURI *)v2 tokenFreeURI];
  objc_autoreleasePoolPop(v3);

  return v4;
}

id sub_1006452B4(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [a1 prefixedURI];
  v7 = [NSString stringWithFormat:@"%@, %@, %d", v5, v6, a3];

  return v7;
}

id sub_10064545C(id a1, IDSURI *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [(IDSURI *)v2 tokenFreeURI];
  objc_autoreleasePoolPop(v3);

  return v4;
}

id sub_100645724(id a1, IDSURI *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [(IDSURI *)v2 tokenFreeURI];
  objc_autoreleasePoolPop(v3);

  return v4;
}

void sub_100647F04(uint64_t a1, void *a2, void *a3, unint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v287 = a5;
  v301 = a1;
  [*(a1 + 32) _dequeuePendingQueryIfPossible];
  v288 = COERCE_DOUBLE(v9);
  v294 = v288;
  if (IMGetDomainBoolForKey())
  {
    a4 = IMGetDomainIntForKey();
    [NSError errorWithDomain:"errorWithDomain:code:userInfo:" code:FTErrorDomain userInfo:?];
    v294 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

    v10 = +[IMRGLog warning];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_10092DF3C(a4, v10);
    }
  }

  v293 = v8;
  v298 = [v293 responseIdentities];
  v11 = [v293 responseIdentities];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [v293 responseIdentities];
      v15 = objc_opt_class();
      NSStringFromClass(v15);
      v16 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v17 = [v293 responseIdentities];
      *buf = 138413058;
      v337 = v16;
      v338 = 2112;
      *v339 = v17;
      *&v339[8] = 2112;
      *&v339[10] = v294;
      v340 = 2048;
      v341 = a4;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Response identities is not what we expected (%@ instead of NSDictionary) %@, error %@, resultCode %ld", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v18 = [v293 responseIdentities];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v268 = [v293 responseIdentities];
      _IDSWarnV();

      v21 = [v293 responseIdentities];
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v269 = [v293 responseIdentities];
      _IDSLogV();

      v24 = [v293 responseIdentities];
      v25 = objc_opt_class();
      NSStringFromClass(v25);
      v26 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      [v293 responseIdentities];
      v274 = v294;
      v277 = a4;
      v267 = v261 = v26;
      _IDSLogTransport();
    }

    v298 = 0;
  }

  v331 = 0;
  v27 = sub_1004A5720(*&v294);
  *(*(*(v301 + 128) + 8) + 24) &= v27;
  if (v27)
  {
    v28 = ++*(*(*(v301 + 136) + 8) + 24);
    if ((v28 == 9 || v28 == 4) && ![IDSPeerIDQueryHandler isServerBackoffModeActive:*&v261])
    {
      *&v29 = v28;
      v30 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v337 = v29;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "We have suffered %ld network failures. Forcing the server bag to reload.", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v261 = v29;
        _IDSLogV();
      }

      v31 = [IDSServerBag sharedInstanceForBagType:0, *&v261];
      [v31 forceBagLoad];
    }
  }

  v32 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = @"NO";
    if (v27)
    {
      v33 = @"YES";
    }

    v34 = *(*(*(v301 + 136) + 8) + 24);
    *buf = 138412802;
    v337 = v294;
    v338 = 2112;
    *v339 = v33;
    *&v339[8] = 1024;
    *&v339[10] = v34;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Query completed with error %@. isNetworkError? %@ numNetworkFailures %d", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v35 = @"NO";
    if (v27)
    {
      v35 = @"YES";
    }

    v267 = v35;
    *&v274 = *(*(*(v301 + 136) + 8) + 24);
    v261 = v294;
    _IDSLogV();
  }

  v284 = [IDSPeerIDQueryHandler isQueryRetryForBadSignatureEnabled:*&v261];
  v37 = v294 == 0.0 && a4 < 2;
  v290 = sub_1004A539C(*&v294, &v331);
  *(*(*(v301 + 144) + 8) + 24) &= v331;
  v38 = +[NSDate date];
  [v38 timeIntervalSinceDate:*(v301 + 40)];
  v40 = v39;

  if (a4 == 6003)
  {
    v41 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Time is off, considering this an invalid result", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    [NSError errorWithDomain:IDSPeerIDManagerErrorDomain code:3 userInfo:0];
    *&v42 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

    v290 = 0;
    v37 = 0;
    v294 = *&v42;
  }

  v43 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = *(v301 + 48);
    v45 = *(v301 + 56);
    v46 = *(v301 + 64);
    v47 = *(v301 + 72);
    *buf = 134219010;
    v337 = v40;
    v338 = 2112;
    *v339 = v44;
    *&v339[8] = 2112;
    *&v339[10] = v45;
    v340 = 2112;
    v341 = v46;
    v342 = 2112;
    *v343 = v47;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Query time was: %f  (identifier: %@) (URIs: %@) (service: %@) (fromURI: %@)", buf, 0x34u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    v277 = *(v301 + 64);
    v280 = *(v301 + 72);
    v270 = *(v301 + 48);
    v262 = v40;
    _IDSLogEventV();
  }

  v48 = [*(v301 + 32) _completionBlocksForURIs:*(v301 + 80) fromURI:*(v301 + 72) fromService:*(v301 + 64) forceToServer:{*(v301 + 188), *&v262, v270, v277, v280}];
  v289 = [v48 copy];

  if ([v289 count])
  {
    v299 = objc_alloc_init(NSMutableDictionary);
    if (v37)
    {
      v49 = objc_autoreleasePoolPush();
      v50 = [v293 uris];
      v329[0] = _NSConcreteStackBlock;
      v329[1] = 3221225472;
      v329[2] = sub_10064AFA4;
      v329[3] = &unk_100BD7530;
      v330 = *(v301 + 64);
      v285 = [v50 __imArrayByApplyingBlock:v329];

      v51 = [*(v301 + 32) delegate];
      v52 = [v51 finishedQueryWithInfo:v298 forURIs:v285 fromURI:*(v301 + 72) service:*(v301 + 64)];

      v327 = 0u;
      v328 = 0u;
      v325 = 0u;
      v326 = 0u;
      v53 = v52;
      v54 = [v53 countByEnumeratingWithState:&v325 objects:v344 count:16];
      if (v54)
      {
        v295 = 0.0;
        v55 = *v326;
        v56 = IDSPeerIDManagerErrorDomain;
        v300 = 1;
        do
        {
          for (i = 0; i != v54; i = i + 1)
          {
            if (*v326 != v55)
            {
              objc_enumerationMutation(v53);
            }

            v58 = *(*(&v325 + 1) + 8 * i);
            v59 = objc_autoreleasePoolPush();
            v60 = [v53 objectForKey:v58];
            v61 = [v60 BOOLValue];

            if (v61)
            {
              ++*&v295;
            }

            else
            {
              if (!*(*(*(v301 + 152) + 8) + 40))
              {
                Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                v63 = *(*(v301 + 152) + 8);
                v64 = *(v63 + 40);
                *(v63 + 40) = Mutable;
              }

              v65 = [NSError errorWithDomain:v56 code:3 userInfo:0];
              [*(*(*(v301 + 152) + 8) + 40) setObject:v65 forKeyedSubscript:v58];

              v300 = 0;
            }

            objc_autoreleasePoolPop(v59);
          }

          v54 = [v53 countByEnumeratingWithState:&v325 objects:v344 count:16];
        }

        while (v54);
      }

      else
      {
        v295 = 0.0;
        v300 = 1;
      }

      [v299 addEntriesFromDictionary:v53];
      objc_autoreleasePoolPop(v49);
    }

    else
    {
      v295 = 0.0;
      v300 = 0;
    }

    if (v331)
    {
      v70 = 6;
    }

    else
    {
      v70 = 15;
    }

    v71 = +[IDSPairingManager sharedInstance];
    v72 = [v71 isCurrentDeviceTinkerConfiguredWatch];

    v73 = objc_autoreleasePoolPush();
    v74 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      v75 = +[IDSPeerIDQueryHandler isServerBackoffModeActive];
      *&v76 = COERCE_DOUBLE(@"not ");
      if (v75)
      {
        *&v76 = COERCE_DOUBLE(&stru_100C06028);
      }

      *buf = 138412290;
      v337 = *&v76;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, " We are %@in backoff mode.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v77 = +[IDSPeerIDQueryHandler isServerBackoffModeActive];
      v78 = @"not ";
      if (v77)
      {
        v78 = &stru_100C06028;
      }

      v263 = v78;
      _IDSLogV();
    }

    v79 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      v80 = +[IDSPeerIDQueryHandler shouldUseSelfTokens];
      *&v81 = COERCE_DOUBLE(@"not ");
      if (v80)
      {
        *&v81 = COERCE_DOUBLE(&stru_100C06028);
      }

      *buf = 138412290;
      v337 = *&v81;
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, " We are %@in self session mode.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v82 = +[IDSPeerIDQueryHandler shouldUseSelfTokens];
      v83 = @"not ";
      if (v82)
      {
        v83 = &stru_100C06028;
      }

      v263 = v83;
      _IDSLogV();
    }

    *&v286 = v70 >> v72;
    if (+[IDSPeerIDQueryHandler isServerBackoffModeActive]&& *(v301 + 189) == 1)
    {
      v286 = COERCE_DOUBLE(+[IDSPeerIDQueryHandler serverBackoffModeMaxSenderRetries]);
      v84 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v337) = LODWORD(v286);
        _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, " **** We are in backoff mode! Using override for maxRetries %d", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v264 = v286;
        _IDSLogV();
      }
    }

    v85 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      v86 = *(v301 + 56);
      v87 = *(*(*(v301 + 160) + 8) + 24);
      v88 = [v293 forceCellular];
      v89 = @"NO";
      *buf = 138413570;
      v337 = v86;
      v338 = 2112;
      if (v290)
      {
        v90 = @"YES";
      }

      else
      {
        v90 = @"NO";
      }

      if (v300)
      {
        v91 = @"YES";
      }

      else
      {
        v91 = @"NO";
      }

      *v339 = v91;
      *&v339[8] = 2112;
      if (v88)
      {
        v89 = @"YES";
      }

      *&v339[10] = v294;
      v340 = 2112;
      v341 = v90;
      v342 = 1024;
      *v343 = v87;
      *&v343[4] = 2112;
      *&v343[6] = v89;
      _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Looked up %@   success: %@   error: %@   will retry: %@   retries: %d  tried force cell: %@", buf, 0x3Au);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v92 = *(v301 + 56);
      if (v300)
      {
        v93 = @"YES";
      }

      else
      {
        v93 = @"NO";
      }

      if (v290)
      {
        v94 = @"YES";
      }

      else
      {
        v94 = @"NO";
      }

      v95 = *(*(*(v301 + 160) + 8) + 24);
      if ([v293 forceCellular])
      {
        v96 = @"YES";
      }

      else
      {
        v96 = @"NO";
      }

      v281 = v95;
      v282 = v96;
      v275 = *&v294;
      v278 = v94;
      v264 = v92;
      v271 = v93;
      _IDSLogEventV();
    }

    v97 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      *&v98 = COERCE_DOUBLE(@"NO");
      if (v300)
      {
        *&v98 = COERCE_DOUBLE(@"YES");
      }

      *buf = 138412290;
      v337 = *&v98;
      _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "               Success: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      *&v99 = COERCE_DOUBLE(@"NO");
      if (v300)
      {
        *&v99 = COERCE_DOUBLE(@"YES");
      }

      v264 = *&v99;
      _IDSLogV();
    }

    v100 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      v101 = [v293 uris];
      v102 = [v101 count];
      *buf = 134218240;
      v337 = v295;
      v338 = 2048;
      *v339 = v102;
      _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "    Found identity for: %lu/%lu", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v103 = [v293 uris];
      v264 = v295;
      v271 = [v103 count];
      _IDSLogV();
    }

    v104 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      v105 = [v293 forceCellular];
      *&v106 = COERCE_DOUBLE(@"NO");
      if (v105)
      {
        *&v106 = COERCE_DOUBLE(@"YES");
      }

      *buf = 138412290;
      v337 = *&v106;
      _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "  Tried Force Cellular: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v107 = [v293 forceCellular];
      *&v108 = COERCE_DOUBLE(@"NO");
      if (v107)
      {
        *&v108 = COERCE_DOUBLE(@"YES");
      }

      v264 = *&v108;
      _IDSLogV();
    }

    v109 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      v110 = *(v301 + 56);
      v111 = *(*(*(v301 + 160) + 8) + 24);
      v112 = [v293 forceCellular];
      v113 = @"NO";
      *buf = 138413570;
      v337 = v110;
      v338 = 2112;
      if (v290)
      {
        v114 = @"YES";
      }

      else
      {
        v114 = @"NO";
      }

      if (v300)
      {
        v115 = @"YES";
      }

      else
      {
        v115 = @"NO";
      }

      *v339 = v115;
      *&v339[8] = 2112;
      if (v112)
      {
        v113 = @"YES";
      }

      *&v339[10] = v294;
      v340 = 2112;
      v341 = v114;
      v342 = 1024;
      *v343 = v111;
      *&v343[4] = 2112;
      *&v343[6] = v113;
      _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "Looked up %@   success: %@   error: %@   will retry: %@   retries: %d  tried force cell: %@", buf, 0x3Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v116 = *(v301 + 56);
      v117 = (v300 & 1) != 0 ? @"YES" : @"NO";
      v118 = v290 ? @"YES" : @"NO";
      v119 = *(*(*(v301 + 160) + 8) + 24);
      v120 = [v293 forceCellular] ? @"YES" : @"NO";
      v281 = v119;
      v282 = v120;
      v275 = *&v294;
      v278 = v118;
      v264 = v116;
      v271 = v117;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v121 = *(v301 + 56);
        v122 = *(*(*(v301 + 160) + 8) + 24);
        if ([v293 forceCellular])
        {
          v123 = @"YES";
        }

        else
        {
          v123 = @"NO";
        }

        v281 = v122;
        v282 = v123;
        v275 = *&v294;
        v278 = v118;
        v264 = v121;
        v271 = v117;
        _IDSLogV();
      }
    }

    v124 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v337 = v40;
      _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "Query Time: %f", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v264 = v40;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v264 = v40;
          _IDSLogV();
        }
      }
    }

    v125 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v337 = v40;
      _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "            Query Time: %f", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v264 = v40;
      _IDSLogV();
    }

    v126 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
    {
      v127 = *(v301 + 56);
      *buf = 138412290;
      v337 = v127;
      _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "                  URIs: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v264 = *(v301 + 56);
      _IDSLogV();
    }

    v128 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
    {
      IDSLoggableDescriptionForObjectOnService();
      v129 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412290;
      v337 = v129;
      _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "    responseIdentities: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      IDSLoggableDescriptionForObjectOnService();
      v264 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      _IDSLogV();
    }

    v130 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v337 = v294;
      _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "                 error: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v264 = v294;
      _IDSLogV();
    }

    v131 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
    {
      v132 = @"NO";
      if (v290)
      {
        *&v133 = COERCE_DOUBLE(@"YES");
      }

      else
      {
        *&v133 = COERCE_DOUBLE(@"NO");
      }

      v134 = *(*(*(v301 + 160) + 8) + 24);
      if (v331)
      {
        v132 = @"YES";
      }

      *buf = 138412802;
      v337 = *&v133;
      v338 = 1024;
      *v339 = v134;
      *&v339[4] = 2112;
      *&v339[6] = v132;
      _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "           shouldRetry: %@   retries: %d   wasOffline: %@", buf, 0x1Cu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v135 = @"NO";
      if (v290)
      {
        *&v136 = COERCE_DOUBLE(@"YES");
      }

      else
      {
        *&v136 = COERCE_DOUBLE(@"NO");
      }

      if (v331)
      {
        v135 = @"YES";
      }

      v271 = *(*(*(v301 + 160) + 8) + 24);
      v275 = v135;
      v264 = *&v136;
      _IDSLogV();
    }

    v137 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v337) = LODWORD(v286);
      _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "            maxRetries: %d", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v264 = v286;
      _IDSLogV();
    }

    v138 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
    {
      *&v139 = COERCE_DOUBLE(@"NO");
      if (a4 == 6003)
      {
        *&v139 = COERCE_DOUBLE(@"YES");
      }

      *buf = 138412290;
      v337 = *&v139;
      _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, "         Timestamp off: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      *&v140 = COERCE_DOUBLE(@"NO");
      if (a4 == 6003)
      {
        *&v140 = COERCE_DOUBLE(@"YES");
      }

      v264 = *&v140;
      _IDSLogV();
    }

    objc_autoreleasePoolPop(v73);
    v141 = [*&v294 domain];
    v142 = [v141 isEqualToString:NSPOSIXErrorDomain];

    v143 = [*&v294 domain];
    if ([v143 isEqualToString:NSURLErrorDomain])
    {
      v144 = 2;
    }

    else
    {
      v145 = [*&v294 domain];
      v146 = [v145 isEqualToString:kCFErrorDomainCFNetwork];

      if (v146)
      {
        v144 = 2;
      }

      else
      {
        v144 = 1;
      }
    }

    v147 = +[FTNetworkSupport sharedInstance];
    v148 = [v147 wiFiActiveAndReachable];

    v149 = 1;
    if (v148)
    {
      LODWORD(v150) = 2;
    }

    else
    {
      LODWORD(v150) = 1;
    }

    if ((v300 & 1) == 0)
    {
      v149 = sub_100022FD8(a4);
    }

    v296 = [v293 hasAttemptedAPSDelivery];
    if ([v293 deliveryMechanism] == 1)
    {
      v150 = 3;
    }

    else
    {
      v150 = v150;
    }

    if (v142)
    {
      v151 = 3;
    }

    else
    {
      v151 = v144;
    }

    if (v294 == 0.0)
    {
      v152 = 0;
    }

    else
    {
      v152 = v151;
    }

    v153 = [IDSQueryCompletionMetric alloc];
    v154 = *(v301 + 64);
    v155 = *(v301 + 184);
    v156 = [v298 count] == 0;
    v157 = *(*(*(v301 + 160) + 8) + 24);
    v158 = *(v301 + 88);
    v159 = [*(v301 + 96) count];
    LOBYTE(v283) = *(v301 + 188);
    BYTE1(v272) = v156;
    LOBYTE(v272) = v296;
    v297 = [v153 initWithService:v154 querySuccess:v300 & 1 connectionType:v150 queryTimeInterval:v155 queryURITypes:v149 conferenceResultCode:v152 queryErrorType:v40 queryError:*&v294 wasReversePushAttempted:v272 hasEmptyResult:v158 queryReason:v157 retryCount:v159 uriCount:v283 isForced:?];
    if ([*(v301 + 64) isEqualToString:@"com.apple.madrid"])
    {
      v160 = v301;
      os_unfair_lock_lock((*(v301 + 32) + 12));
      if (!*(*(v301 + 32) + 40))
      {
        v161 = objc_alloc_init(NSMutableArray);
        v162 = *(v301 + 32);
        v163 = *(v162 + 40);
        *(v162 + 40) = v161;

        v160 = v301;
      }

      v164 = [NSMutableSet setWithArray:*(v160 + 96)];
      v165 = [IDSPeerIDQueryHandlerOpenQueryMetricContext alloc];
      v166 = +[NSDate now];
      v167 = *(v301 + 64);
      v168 = [*(v301 + 48) UUIDString];
      v169 = [(IDSPeerIDQueryHandlerOpenQueryMetricContext *)v165 initWithURISet:v164 queryMetric:v297 ktQueryStart:v166 service:v167 uniqueIdentifier:v168];

      [*(*(v301 + 32) + 40) addObject:v169];
      os_unfair_lock_unlock((*(v301 + 32) + 12));
      v170 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
      {
        [*(v301 + 48) UUIDString];
        v171 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138412290;
        v337 = v171;
        _os_log_impl(&_mh_execute_header, v170, OS_LOG_TYPE_DEFAULT, "Holding query metric on KT service until KT query resolves (query identifier: %@)", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        [*(v301 + 48) UUIDString];
        v265 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        _IDSLogV();
      }

      v172 = *(v301 + 32);
      v173 = *(v172 + 96);
      +[IDSPeerIDQueryHandler ktQueryMetricTimeout];
      [v173 enqueueExecutionWithTarget:v172 afterDelay:?];
    }

    else
    {
      v174 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v174, OS_LOG_TYPE_DEFAULT, "Posting query metric immediately for non KT service", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v164 = +[IDSCoreAnalyticsLogger defaultLogger];
      [v164 logMetric:v297];
    }

    if (a4 != 6005)
    {
      v185 = 0;
      goto LABEL_272;
    }

    if (v284)
    {
      v175 = +[IDSDAccountController sharedInstance];
      v176 = *(v301 + 64);
      v177 = [*(v301 + 72) prefixedURI];
      v178 = [v175 deviceCertificateForService:v176 uri:v177];

      if (v178)
      {
        v179 = [v293 IDCertificate];
        v180 = [v178 isEqualToData:v179];

        if ((v180 & 1) == 0)
        {
          v181 = *(*(*(v301 + 168) + 8) + 24);
          v182 = v181 < +[IDSPeerIDQueryHandler queryRetryNumberForBadSignature];
          v183 = +[IMRGLog queryRetry];
          v184 = os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT);
          if (v182)
          {
            if (v184)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v183, OS_LOG_TYPE_DEFAULT, "Query used old certificate, retrying", buf, 2u);
            }

            [v293 setIDCertificate:v178];
            ++*(*(*(v301 + 168) + 8) + 24);
            v185 = 1;
            goto LABEL_271;
          }

          if (v184)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v183, OS_LOG_TYPE_DEFAULT, "Retries exhausted, not retrying", buf, 2u);
          }
        }
      }
    }

    else
    {
      v178 = +[IMRGLog queryRetry];
      if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v178, OS_LOG_TYPE_DEFAULT, "Server has disabled bad query signature recovery", buf, 2u);
      }
    }

    v185 = 0;
LABEL_271:

LABEL_272:
    if (v300 & 1 | ((v290 & 1) == 0))
    {
      if (!v185)
      {
LABEL_274:
        if (((*&v294 == 0) & v300) != 0)
        {
          v294 = 0.0;
        }

        else
        {
          v207 = [*&v294 domain];
          v208 = [v207 isEqualToString:FTErrorDomain];

          if (v208)
          {
            v209 = *(v301 + 104);
            if (v209)
            {
              v210 = [NSDictionary dictionaryWithObject:v209 forKey:IDSPeerIDManagerFromIdentityUserInfoKey];
            }

            else
            {
              v210 = 0;
            }

            +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", FTErrorDomain, [*&v294 code], v210);
            *&v211 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

            v294 = *&v211;
          }

          if (!*(*(*(v301 + 152) + 8) + 40))
          {
            v212 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            v213 = *(*(v301 + 152) + 8);
            v214 = *(v213 + 40);
            *(v213 + 40) = v212;
          }

          v316 = 0u;
          v317 = 0u;
          v314 = 0u;
          v315 = 0u;
          v215 = [v293 uris];
          v216 = [v215 countByEnumeratingWithState:&v314 objects:v335 count:16];
          if (v216)
          {
            v217 = *v315;
            do
            {
              for (j = 0; j != v216; j = j + 1)
              {
                if (*v315 != v217)
                {
                  objc_enumerationMutation(v215);
                }

                v219 = [IDSURI URIWithPrefixedURI:*(*(&v314 + 1) + 8 * j)];
                if (v294 != 0.0)
                {
                  [*(*(*(v301 + 152) + 8) + 40) setObject:*&v294 forKeyedSubscript:v219];
                }
              }

              v216 = [v215 countByEnumeratingWithState:&v314 objects:v335 count:16];
            }

            while (v216);
          }
        }

        v220 = +[IMMobileNetworkManager sharedInstance];
        [v220 removeFastDormancyDisableToken:*(v301 + 112)];

        v221 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
        {
          v222 = @"NO";
          v223 = *(v301 + 80);
          if (v300)
          {
            v224 = @"YES";
          }

          else
          {
            v224 = @"NO";
          }

          if (*(*(*(v301 + 128) + 8) + 24))
          {
            v225 = @"YES";
          }

          else
          {
            v225 = @"NO";
          }

          if (*(*(*(v301 + 144) + 8) + 24))
          {
            v222 = @"YES";
          }

          *buf = 138413058;
          v337 = v223;
          v338 = 2112;
          *v339 = v224;
          *&v339[8] = 2112;
          *&v339[10] = v225;
          v340 = 2112;
          v341 = v222;
          _os_log_impl(&_mh_execute_header, v221, OS_LOG_TYPE_DEFAULT, "  All done query set for: %@   success: %@  allNetworkFailures: %@  entirelyOffline: %@", buf, 0x2Au);
        }

        v226 = os_log_shim_legacy_logging_enabled();
        v227 = v301;
        if (v226)
        {
          v228 = @"NO";
          if (v300)
          {
            v229 = @"YES";
          }

          else
          {
            v229 = @"NO";
          }

          if (*(*(*(v301 + 128) + 8) + 24))
          {
            v230 = @"YES";
          }

          else
          {
            v230 = @"NO";
          }

          if (*(*(*(v301 + 144) + 8) + 24))
          {
            v228 = @"YES";
          }

          v276 = v230;
          v279 = v228;
          v265 = *(v301 + 80);
          v273 = v229;
          _IDSLogEventV();
          v227 = v301;
        }

        v291 = [*(v227 + 96) count];
        if (v291 && *(*(*(v301 + 128) + 8) + 24) == 1 && !+[IDSPeerIDQueryHandler isServerBackoffModeActive])
        {
          v231 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v231, OS_LOG_TYPE_DEFAULT, " **** Every failure was a network failure - forcing the bag to reload", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            _IDSLogV();
          }

          v232 = [IDSServerBag sharedInstanceForBagType:0];
          [v232 forceBagLoad];
        }

        v206 = objc_alloc_init(NSMutableDictionary);
        v312 = 0u;
        v313 = 0u;
        v310 = 0u;
        v311 = 0u;
        v233 = *(v301 + 80);
        v234 = [v233 countByEnumeratingWithState:&v310 objects:v334 count:16];
        if (v234)
        {
          v235 = *v311;
          do
          {
            for (k = 0; k != v234; k = k + 1)
            {
              if (*v311 != v235)
              {
                objc_enumerationMutation(v233);
              }

              v237 = *(*(&v310 + 1) + 8 * k);
              v238 = objc_autoreleasePoolPush();
              v239 = [v237 tokenFreeURI];
              v240 = [v239 prefixedURI];

              v241 = [v298 _dictionaryForKey:v240];
              v242 = [v241 _numberForKey:@"negative-cache-ttl-seconds"];

              if (v242)
              {
                CFDictionarySetValue(v206, v240, v242);
              }

              objc_autoreleasePoolPop(v238);
            }

            v234 = [v233 countByEnumeratingWithState:&v310 objects:v334 count:16];
          }

          while (v234);
        }

        v243 = [IDSPeerIDQueryHandlerMetricContext alloc];
        v244 = [NSNumber numberWithInteger:a4];
        v245 = [(IDSPeerIDQueryHandlerMetricContext *)v243 initWithDidFlightToServer:v291 != 0 responseCode:v244];

        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v246 = v289;
        v247 = [v246 countByEnumeratingWithState:&v306 objects:v333 count:16];
        if (v247)
        {
          v248 = *v307;
          do
          {
            for (m = 0; m != v247; m = m + 1)
            {
              if (*v307 != v248)
              {
                objc_enumerationMutation(v246);
              }

              (*(*(*(&v306 + 1) + 8 * m) + 16))(*(*(&v306 + 1) + 8 * m), *(v301 + 72), *(v301 + 80));
            }

            v247 = [v246 countByEnumeratingWithState:&v306 objects:v333 count:16];
          }

          while (v247);
        }

        v250 = [*(*(v301 + 32) + 48) allValues];
        v251 = [v250 copy];

        v304 = 0u;
        v305 = 0u;
        v302 = 0u;
        v303 = 0u;
        v252 = v251;
        v253 = [v252 countByEnumeratingWithState:&v302 objects:v332 count:16];
        if (v253)
        {
          v254 = *v303;
          do
          {
            for (n = 0; n != v253; n = n + 1)
            {
              if (*v303 != v254)
              {
                objc_enumerationMutation(v252);
              }

              (*(*(*(&v302 + 1) + 8 * n) + 16))(*(*(&v302 + 1) + 8 * n), *(v301 + 72), *(v301 + 80));
            }

            v253 = [v252 countByEnumeratingWithState:&v302 objects:v332 count:16];
          }

          while (v253);
        }

        v256 = v301;
        if (*(v301 + 120))
        {
          [*(v301 + 32) _completeWithEventTrace:?];
          v256 = v301;
        }

        [*(v256 + 32) _removeCompletionBlocksForURIs:*(v256 + 80) fromURI:*(v256 + 72) fromService:*(v256 + 64) forRefresh:*(v256 + 188)];
        v257 = *(*(v301 + 152) + 8);
        v258 = *(v257 + 40);
        *(v257 + 40) = 0;

        v259 = *(*(v301 + 176) + 8);
        v260 = *(v259 + 40);
        *(v259 + 40) = 0;

LABEL_405:
        goto LABEL_406;
      }
    }

    else
    {
      if (*(*(*(v301 + 160) + 8) + 24) < SLODWORD(v286))
      {
        v186 = 1;
      }

      else
      {
        v186 = v185;
      }

      if ((v186 & 1) == 0)
      {
        goto LABEL_274;
      }
    }

    v187 = *(*(v301 + 152) + 8);
    v188 = *(v187 + 40);
    *(v187 + 40) = 0;

    v189 = v301 + 160;
    ++*(*(*(v301 + 160) + 8) + 24);
    if (v331)
    {
      v190 = 20.0;
    }

    else
    {
      v190 = 5.0;
    }

    if (v331)
    {
      v191 = 10.0;
    }

    else
    {
      v191 = 3.0;
    }

    v192 = *(*(*v189 + 8) + 24);
    [v293 setForceCellular:{objc_msgSend(v293, "forceCellular") ^ 1}];
    if (v331)
    {
      v193 = 120.0;
    }

    else
    {
      v193 = 30.0;
    }

    if (v193 >= v190 * (v192 / 15.0 * v191 + 1.0))
    {
      v194 = v190 * (v192 / 15.0 * v191 + 1.0);
    }

    else
    {
      v194 = v193;
    }

    if (v190 >= v194)
    {
      v195 = v190;
    }

    else
    {
      v195 = v194;
    }

    +[IDSPeerIDQueryHandler queryRetryIntervalForBadSignature];
    v197 = v196;
    if (*(*(*v189 + 8) + 24) >= 2)
    {
      [v293 setImportanceLevel:1];
    }

    v198 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v337 = v193;
      _os_log_impl(&_mh_execute_header, v198, OS_LOG_TYPE_DEFAULT, " Max Query Interval: %f", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v265 = v193;
      _IDSLogV();
    }

    v199 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v337 = v191;
      _os_log_impl(&_mh_execute_header, v199, OS_LOG_TYPE_DEFAULT, "   Query Multiplier: %f", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v265 = v191;
      _IDSLogV();
    }

    v200 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v337 = v190;
      _os_log_impl(&_mh_execute_header, v200, OS_LOG_TYPE_DEFAULT, " Base Retry Interval: %f", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v265 = v190;
      _IDSLogV();
    }

    v201 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v337 = v190 * (v192 / 15.0 * v191 + 1.0);
      _os_log_impl(&_mh_execute_header, v201, OS_LOG_TYPE_DEFAULT, "      Retry Interval: %f", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v265 = v190 * (v192 / 15.0 * v191 + 1.0);
      _IDSLogV();
    }

    if (+[IDSPeerIDQueryHandler isServerBackoffModeActive]&& (*(v301 + 189) & 1) == 0)
    {
      v195 = +[IDSPeerIDQueryHandler serverBackoffModeReceiverRetryInterval];
      v202 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v337 = v195;
        _os_log_impl(&_mh_execute_header, v202, OS_LOG_TYPE_DEFAULT, " **** We are in backoff mode! Overriding retry interval %f", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v266 = v195;
        _IDSLogV();
      }

      v197 = +[IDSPeerIDQueryHandler serverBackoffModeReceiverRetryInterval];
    }

    if (!v185)
    {
      v197 = v195;
    }

    v203 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v337 = v197;
      _os_log_impl(&_mh_execute_header, v203, OS_LOG_TYPE_DEFAULT, " ** Will retry in: %f", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v318 = _NSConcreteStackBlock;
    v319 = 3221225472;
    v320 = sub_10064AFBC;
    v321 = &unk_100BD6E18;
    v322 = v293;
    v204 = *(v301 + 56);
    v205 = *(v301 + 32);
    v323 = v204;
    v324 = v205;
    im_dispatch_after_primary_queue();

    v206 = v322;
    goto LABEL_405;
  }

  v66 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
  {
    v67 = *(v301 + 56);
    v68 = *(v301 + 64);
    v69 = *(v301 + 72);
    *buf = 138412802;
    v337 = v67;
    v338 = 2112;
    *v339 = v68;
    *&v339[8] = 2112;
    *&v339[10] = v69;
    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Got a query response for (URIs: %@) (service: %@) (fromURI: %@) but we have no completions for it?", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

LABEL_406:
}

id sub_10064AFBC(uint64_t a1)
{
  v2 = +[NetworkChangeNotifier sharedInstance];
  v3 = [v2 linkQualityForInterfaceType:2];

  if (v3 != 2)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " ** WiFi link quality is not good, requesting cellular preferred", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    [*(a1 + 32) setForceCellular:1];
  }

  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, " => Retrying query for URIs: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v10 = *(a1 + 40);
    _IDSLogV();
  }

  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    *buf = 138412290;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " => Retrying query for URIs: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v10 = *(a1 + 40);
    _IDSLogV();
  }

  return [*(*(a1 + 48) + 16) sendMessage:{*(a1 + 32), v10}];
}

void sub_10064C078(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[IMRGLog registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138412802;
    v10 = v8;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finished capturing AutoBugCapture diagnostics for queued query refresh { context: %@, sessionID: %@, error: %@ }", &v9, 0x20u);
  }
}

void sub_10064C990(id a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v9 = a2;
    v10 = 2048;
    v11 = a3;
    v12 = 2048;
    v13 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Send attachment message progress updated to %lld of %lld (%lld bps)", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

void sub_10064CABC(uint64_t a1, void *a2, int a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10)
{
  v45 = a2;
  v17 = a4;
  v43 = a5;
  value = a6;
  v46 = a7;
  v18 = a8;
  v44 = a9;
  if (a3)
  {
    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v56 = v45;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Succeeded uploading file transfer: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v42 = v45;
      _IDSLogV();
    }

    v20 = objc_alloc_init(NSMutableDictionary);
    v21 = v20;
    if (value)
    {
      CFDictionarySetValue(v20, @"mmcs-owner", value);
    }

    if (v18)
    {
      CFDictionarySetValue(v21, @"mmcs-url", v18);
    }

    v22 = [v46 __imHexString];
    if (v22)
    {
      CFDictionarySetValue(v21, @"mmcs-signature-hex", v22);
    }

    v23 = objc_alloc_init(IDSAttachmentEncryptionParameter);
    v24 = JWEncodeDictionary();
    [(IDSAttachmentEncryptionParameter *)v23 setDataToEncrypt:v24];

    v25 = IMSingleObjectArray();
    [(IDSAttachmentEncryptionParameter *)v23 setEndpoints:v25];

    [(IDSAttachmentEncryptionParameter *)v23 setGuid:*(a1 + 40)];
    [(IDSAttachmentEncryptionParameter *)v23 setEncryptionType:*(a1 + 88)];
    [(IDSAttachmentEncryptionParameter *)v23 setFromID:*(a1 + 48)];
    [(IDSAttachmentEncryptionParameter *)v23 setService:*(a1 + 56)];
    v26 = [IDSEncryptionComponent alloc];
    v27 = *(a1 + 64);
    v28 = v27[1];
    v29 = [v27 pinnedIdentityController];
    v30 = [(IDSEncryptionComponent *)v26 initWithEncryptionController:v28 pinnedIdentityController:v29];

    v54 = v30;
    v31 = [NSArray arrayWithObjects:&v54 count:1];
    v32 = [IDSPipelineComponent pipelineFromComponents:v31];

    v33 = [v32 runWithInput:v23];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10064D0AC;
    v49[3] = &unk_100BE3120;
    v50 = *(a1 + 72);
    v51 = *(a1 + 80);
    v52 = *(a1 + 32);
    v53 = a10;
    [v33 registerResultBlock:v49];
  }

  else
  {
    v34 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(a1 + 72);
      *buf = 138412290;
      v56 = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Failed uploading attachment file transfer: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v42 = *(a1 + 72);
      _IDSLogV();
    }

    v36 = objc_alloc_init(NSMutableDictionary);
    v21 = v36;
    if (v18)
    {
      CFDictionarySetValue(v36, @"url", v18);
    }

    v37 = [v17 domain];
    if (v37)
    {
      CFDictionarySetValue(v21, @"eD", v37);
    }

    v38 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v17 code]);
    if (v38)
    {
      CFDictionarySetValue(v21, @"eC", v38);
    }

    v39 = [NSNumber numberWithInteger:a10];
    if (v39)
    {
      CFDictionarySetValue(v21, @"fS", v39);
    }

    v23 = [[NSDictionary alloc] initWithObjectsAndKeys:{@"Failed uploading attachment file transfer (failed upload)", NSLocalizedDescriptionKey, v21, @"MMCSUploadErrorKey", 0, v43, v44}];
    v40 = [NSError alloc];
    v30 = [v40 initWithDomain:IDSSendErrorDomain code:4 userInfo:v23];
    [*(a1 + 80) failWithError:v30];
    v32 = +[NSFileManager defaultManager];
    v41 = *(a1 + 72);
    v48 = 0;
    [v32 removeItemAtPath:v41 error:&v48];
  }
}

void sub_10064D0AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state] == 1)
  {
    v4 = +[NSFileManager defaultManager];
    v5 = *(a1 + 32);
    v19 = 0;
    [v4 removeItemAtPath:v5 error:&v19];
    v6 = v19;

    v7 = [NSDictionary alloc];
    v8 = [v3 error];
    v9 = [v7 initWithObjectsAndKeys:{@"Failed uploading attachment file transfer (failed post-upload encryption)", NSLocalizedDescriptionKey, v8, NSUnderlyingErrorKey, 0}];

    v10 = [NSError alloc];
    v11 = [v10 initWithDomain:IDSSendErrorDomain code:4 userInfo:v9];
    [*(a1 + 40) failWithError:v11];
  }

  else
  {
    v12 = [v3 value];
    v13 = [v12 endpointsToEncryptedData];
    v9 = [v13 objectForKey:*(a1 + 48)];

    v14 = [IDSMMCSUploadResult alloc];
    v15 = [NSNumber numberWithInteger:*(a1 + 56)];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10064D2A8;
    v17[3] = &unk_100BD6ED0;
    v18 = *(a1 + 32);
    v16 = [(IDSMMCSUploadResult *)v14 initWithEncryptedResult:v9 dataLength:v15 fileCleanupBlock:v17];

    [*(a1 + 40) fulfillWithValue:v16];
    v11 = v18;
  }
}

void sub_10064D2A8(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = *(a1 + 32);
  v4 = 0;
  [v2 removeItemAtPath:v3 error:&v4];
}

void sub_10064DD64(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = a2;
  v34 = a3;
  v7 = a4;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) identifier];
    *buf = 138413058;
    v41 = v9;
    v42 = 2112;
    v43 = v33;
    v44 = 2112;
    v45 = v34;
    v46 = 2112;
    v47 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating listener on %@ willSendToDestinations %@ skipped %@ regPropToDest %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [*(a1 + 32) identifier];
    v31 = v34;
    v29 = v32 = v7;
    v30 = v33;
    _IDSLogV();
  }

  v10 = objc_alloc_init(NSMutableDictionary);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v12)
  {
    v13 = *v36;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        v16 = [v11 objectForKeyedSubscript:{v15, v29, v30, v31, v32}];
        v17 = [v16 __imArrayByApplyingBlock:&stru_100BE3168];
        [v10 setObject:v17 forKeyedSubscript:v15];
      }

      v12 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v12);
  }

  v18 = +[IDSDaemon sharedInstance];
  v19 = [*(a1 + 40) localObject];
  v20 = [v18 broadcasterForLocalObject:v19 messageContext:*(a1 + 40)];

  if (v20)
  {
    v22 = *(a1 + 32);
    v21 = (a1 + 32);
    v23 = [v22 identifier];
    v24 = [*v21 alternateCallbackID];
    v25 = [*v21 mainAccountUUID];
    v26 = [v33 __imArrayByApplyingBlock:&stru_100BE3188];
    v27 = [v34 __imArrayByApplyingBlock:&stru_100BE31A8];
    v28 = [v10 copy];
    [v20 messageIdentifier:v23 alternateCallbackID:v24 forAccount:v25 willSendToDestinations:v26 skippedDestinations:v27 registrationPropertyToDestinations:v28];
  }
}

void sub_10064E0FC(uint64_t a1, void *a2)
{
  v3 = a2;
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(*(a1 + 32), &state);
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 40) identifier];
    v6 = [v3 idsResponseCode];
    v7 = [v3 responseError];
    v8 = [v3 lastCall];
    v9 = @"NO";
    v10 = *(a1 + 48);
    *buf = 138413314;
    if (v8)
    {
      v9 = @"YES";
    }

    v85 = v5;
    v86 = 2048;
    v87 = v6;
    v88 = 2112;
    v89 = v7;
    v90 = 2112;
    v91 = v9;
    v92 = 2112;
    v93 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Updating listener on %@ with responseCode %ld error %@  lastCall %@ - messageContext %@", buf, 0x34u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v11 = [*(a1 + 40) identifier];
    v12 = [v3 idsResponseCode];
    v13 = [v3 responseError];
    v14 = [v3 lastCall];
    v15 = @"NO";
    if (v14)
    {
      v15 = @"YES";
    }

    v75 = v15;
    v76 = *(a1 + 48);
    v73 = v12;
    v74 = v13;
    v71 = v11;
    _IDSLogV();
  }

  v16 = [v3 responseError];
  if ([v16 code] != 24)
  {

LABEL_19:
    v21 = objc_alloc_init(NSMutableDictionary);
    v23 = *(a1 + 56);
    if (v23)
    {
      CFDictionarySetValue(v21, IDSMessageContextServiceIdentifierKey, v23);
    }

    v24 = [*(a1 + 40) localDestinationDeviceUUID];
    if (v24)
    {
      CFDictionarySetValue(v21, IDSMessageContextOriginalDestinationDeviceKey, v24);
    }

    v25 = [*(a1 + 40) destinationCorrelationIdentifier];
    if (v25)
    {
      CFDictionarySetValue(v21, IDSMessageContextDestinationCorrelationIdentifierKey, v25);
    }

    v26 = [*(a1 + 40) fromID];
    if (v26)
    {
      CFDictionarySetValue(v21, IDSMessageContextFromIDKey, v26);
    }

    v27 = [v3 responseTimeStamp];

    if (v27)
    {
      v28 = [v3 responseTimeStamp];
      v29 = sub_10064EDCC(v28);

      [v29 timeIntervalSince1970];
      v31 = v30;
      v32 = [NSNumber numberWithDouble:?];
      if (v32)
      {
        CFDictionarySetValue(v21, IDSMessageContextServerTimestampKey, v32);
      }

      v33 = [*(a1 + 40) command];
      if (v33)
      {
        CFDictionarySetValue(v21, IDSMessageContextOriginalCommandKey, v33);
      }

      v34 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v85 = v31;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "ServerTimeStamps before broadcast is  %f", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v72 = v31;
        _IDSLogV();
      }

      v35 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v85 = v29;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "ServerDate before broadcast is  %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v72 = v29;
        _IDSLogV();
      }
    }

    v36 = [v3 currentAverageRTT];
    if (v36)
    {
      CFDictionarySetValue(v21, IDSMessageContextAverageLocalRTTKey, v36);
    }

    v37 = [v3 localMessageState];
    if (v37)
    {
      CFDictionarySetValue(v21, IDSMessageContextLocalMessageStateKey, v37);
    }

    v38 = [v3 endpointState];
    if (v38)
    {
      CFDictionarySetValue(v21, IDSMessageContextEndpointStateKey, v38);
    }

    v39 = [v3 isDeviceBlackedOut];
    if (v39)
    {
      CFDictionarySetValue(v21, IDSMessageContextDeviceBlackedOutKey, v39);
    }

    v40 = [v3 wpConnectionErrorDomain];
    if (v40)
    {
      CFDictionarySetValue(v21, IDSMessageContextWPConnectionErrorDomainKey, v40);
    }

    v41 = [v3 wpConnectionErrorCode];
    if (v41)
    {
      CFDictionarySetValue(v21, IDSMessageContextWPConnectionErrorCodeKey, v41);
    }

    v42 = [v3 wpConnectionErrorUserInfo];
    if (v42)
    {
      CFDictionarySetValue(v21, IDSMessageContextWPConnectionErrorUserInfoKey, v42);
    }

    v43 = [*(a1 + 88) daemon];
    v44 = [*(a1 + 48) localObject];
    v22 = [v43 broadcasterForLocalObject:v44 messageContext:*(a1 + 48)];

    if (v22)
    {
      v45 = [*(a1 + 40) command];
      v46 = [v45 isEqualToNumber:&off_100C3CE68];

      if (v46)
      {
        if (([v3 lastCall] & 1) == 0)
        {
LABEL_79:

          goto LABEL_80;
        }

        v47 = [*(a1 + 40) command];
        if (v47)
        {
          CFDictionarySetValue(v21, IDSMessageContextOriginalCommandKey, v47);
        }
      }

      v48 = [*(a1 + 40) identifier];
      v49 = [*(a1 + 40) alternateCallbackID];
      v50 = [*(a1 + 40) mainAccountUUID];
      v51 = [v3 idsResponseCode];
      v52 = [v3 responseError];
      [v22 messageIdentifier:v48 alternateCallbackID:v49 forAccount:v50 updatedWithResponseCode:v51 error:v52 lastCall:objc_msgSend(v3 context:{"lastCall"), v21}];
    }

    else
    {
      if (![v3 lastCall])
      {
        goto LABEL_67;
      }

      v53 = *(a1 + 72);
      v78[0] = _NSConcreteStackBlock;
      v78[1] = 3221225472;
      v78[2] = sub_10064EE70;
      v78[3] = &unk_100BDA898;
      v79 = *(a1 + 40);
      v80 = v3;
      v81 = v21;
      v82 = *(a1 + 64);
      [v53 enqueueBroadcast:v78 forTopic:*(a1 + 80) entitlement:kIDSMessagingEntitlement command:0 capabilities:kIDSListenerCapConsumesLaunchOnDemandOutgoingMessageUpdates messageContext:*(a1 + 48)];

      v48 = v79;
    }

    goto LABEL_67;
  }

  v17 = *(a1 + 96);

  if ((v17 & 1) == 0)
  {
    goto LABEL_19;
  }

  v18 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 56);
    *buf = 138412290;
    v85 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Silently failing %@ messages due to watch switch", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v72 = *(a1 + 56);
    _IDSLogV();
  }

  v20 = [*(a1 + 64) dataProtectionClass];
  v21 = [*(a1 + 40) identifier];
  v22 = [*(a1 + 40) alternateCallbackID];
  [IDSDMessageStore deleteOutgoingMessageWithGUID:v21 alternateGUID:v22 dataProtectionClass:v20];
LABEL_67:

  if ([v3 lastCall] && objc_msgSend(v3, "idsResponseCode") != 11)
  {
    v21 = *(a1 + 56);
    v54 = [*(a1 + 88) serviceController];
    v22 = [v54 serviceWithIdentifier:*(a1 + 56)];

    v55 = [v22 superService];

    if (v55)
    {
      v56 = [v22 superService];

      v21 = v56;
    }

    v57 = [*(a1 + 40) dataToEncrypt];

    v58 = [IDSMessageSendResponseMetric alloc];
    v59 = [v3 idsResponseCode];
    v60 = [*(a1 + 40) command];
    v77 = [v58 initWithResponseCode:v59 service:v21 command:v60 hasDataToEncrypt:v57 != 0 messageType:0];

    v61 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v61 logMetric:v77];

    v62 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v63 = [v3 idsResponseCode];
      v64 = *(a1 + 56);
      v65 = [*(a1 + 40) command];
      v66 = [*(a1 + 40) identifier];
      v67 = v66;
      v68 = @"NO";
      *buf = 134219010;
      v85 = v63;
      v86 = 2112;
      if (v57)
      {
        v68 = @"YES";
      }

      v87 = v64;
      v88 = 2112;
      v89 = v65;
      v90 = 2112;
      v91 = v68;
      v92 = 2112;
      v93 = v66;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Logged message send response metric: responseCode=%ld service=%@ command=%@ hasDataToEncrypt=%@ messageGUID=%@", buf, 0x34u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [v3 idsResponseCode];
      v69 = [*(a1 + 40) command];
      v70 = [*(a1 + 40) identifier];
      _IDSLogV();
    }

    goto LABEL_79;
  }

LABEL_80:
  os_activity_scope_leave(&state);
}

void *sub_10064EDCC(void *a1)
{
  v1 = a1;
  v2 = +[NSDate date];
  if (v1)
  {
    if ([v1 unsignedLongLongValue] / 1000000000.0 <= 600000.0)
    {
      +[NSDate date];
    }

    else
    {
      [NSDate dateWithTimeIntervalSince1970:?];
    }
    v3 = ;

    v2 = v3;
  }

  v4 = v2;

  return v2;
}

void sub_10064EE70(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) identifier];
    v5 = [*(a1 + 32) alternateCallbackID];
    v6 = [*(a1 + 32) mainAccountUUID];
    v7 = [*(a1 + 40) idsResponseCode];
    v8 = [*(a1 + 40) responseError];
    [v3 messageIdentifier:v4 alternateCallbackID:v5 forAccount:v6 updatedWithResponseCode:v7 error:v8 lastCall:objc_msgSend(*(a1 + 40) context:{"lastCall"), *(a1 + 48)}];
  }

  else if ([*(a1 + 40) lastCall])
  {
    v9 = [*(a1 + 56) dataProtectionClass];
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 32) identifier];
      *buf = 138412290;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Found no valid broadcaster for outgoing message %@, cleaning up", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v15 = [*(a1 + 32) identifier];
      _IDSWarnV();

      v16 = [*(a1 + 32) identifier];
      _IDSLogV();

      v14 = [*(a1 + 32) identifier];
      _IDSLogTransport();
    }

    v12 = [*(a1 + 32) identifier];
    v13 = [*(a1 + 32) alternateCallbackID];
    [IDSDMessageStore deleteOutgoingMessageWithGUID:v12 alternateGUID:v13 dataProtectionClass:v9];
  }
}

void sub_10064F5BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x10064F41CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_10064F838(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v7 = v3;
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v3 = v7;
  }

  if ([v3 lastCall])
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) alternateCallbackID];
    [IDSDMessageStore deleteOutgoingMessageWithGUID:v5 alternateGUID:v6 dataProtectionClass:*(a1 + 56)];
  }
}

void sub_10064F8E0(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = im_primary_queue();
    block = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_10064FAA0;
    v11 = &unk_100BD7270;
    v12 = *(a1 + 48);
    dispatch_async(v2, &block);
  }

  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deleting sent outgoing message with guid %@ after exception", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v7 = *(a1 + 32);
    _IDSLogV();
  }

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) alternateCallbackID];
  [IDSDMessageStore deleteOutgoingMessageWithGUID:v5 alternateGUID:v6 dataProtectionClass:*(a1 + 56)];
}

void sub_10064FAA0(uint64_t a1)
{
  v2 = objc_alloc_init(IDSDeliveryContext);
  [v2 setIdsResponseCode:10];
  [v2 setLastCall:1];
  (*(*(a1 + 32) + 16))();
}

void sub_10064FB14(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = im_primary_queue();
    block = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_10064FCD4;
    v11 = &unk_100BD7270;
    v12 = *(a1 + 48);
    dispatch_async(v2, &block);
  }

  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deleting sent outgoing message with guid %@ after exception", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v7 = *(a1 + 32);
    _IDSLogV();
  }

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) alternateCallbackID];
  [IDSDMessageStore deleteOutgoingMessageWithGUID:v5 alternateGUID:v6 dataProtectionClass:*(a1 + 56)];
}

void sub_10064FCD4(uint64_t a1)
{
  v2 = objc_alloc_init(IDSDeliveryContext);
  [v2 setIdsResponseCode:10];
  [v2 setLastCall:1];
  (*(*(a1 + 32) + 16))();
}

id sub_1006527A0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = [NSURL fileURLWithPath:v3];
    v45[0] = v5;
    v8 = [v7 lastPathComponent];
    v45[1] = v8;
    v9 = [NSArray arrayWithObjects:v45 count:2];
    v10 = [NSString pathWithComponents:v9];

    v11 = [v7 lastPathComponent];
    v12 = [v5 stringByAppendingString:v11];

    v13 = +[NSFileManager defaultManager];
    v14 = [v13 attributesOfItemAtPath:v10 error:0];

    if (v14)
    {
      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v40 = v3;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "file persistence - destination file exists %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v6 = 0;
      goto LABEL_33;
    }

    v16 = +[NSFileManager defaultManager];
    v38 = 0;
    v17 = [v16 moveItemAtPath:v3 toPath:v10 error:&v38];
    v18 = v38;

    if ((v17 & 1) == 0)
    {
      v19 = +[NSFileManager defaultManager];
      v14 = [v19 attributesOfItemAtPath:v10 error:0];

      if (v14)
      {
LABEL_32:
        v10 = v10;

        v6 = v10;
LABEL_33:

        goto LABEL_34;
      }

      v20 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v40 = v3;
        v41 = 2112;
        v42 = v10;
        v43 = 2112;
        v44 = v18;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "file persistence - failed to move file %@ => %@ (error %@)", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v32 = v10;
        v34 = v18;
        v30 = v3;
        _IDSLogV();
      }

      v21 = [NSFileManager defaultManager:v30];
      v37 = 0;
      v22 = [v21 copyItemAtPath:v3 toPath:v10 error:&v37];
      v23 = v37;

      if ((v22 & 1) == 0)
      {
        v24 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v40 = v3;
          v41 = 2112;
          v42 = v10;
          v43 = 2112;
          v44 = v23;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "file persistence - failed to copy file %@ => %@ (error %@)", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v33 = v10;
          v35 = v23;
          v31 = v3;
          _IDSLogV();
        }

        v10 = 0;
      }

      v25 = [NSFileManager defaultManager:v31];
      v36 = 0;
      v26 = [v25 removeItemAtPath:v3 error:&v36];
      v27 = v36;

      if ((v26 & 1) == 0)
      {
        v28 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v40 = v3;
          v41 = 2112;
          v42 = v27;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "file persistence - failed to remove original file %@ (error %@)", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    v14 = 0;
    goto LABEL_32;
  }

LABEL_34:

  return v6;
}

void sub_100652D18(uint64_t a1, void *a2, char a3, int a4)
{
  v63 = a2;
  if (a3)
  {
    v61 = a4;
    v62 = [*(a1 + 32) sendMetric];
    v7 = [*(a1 + 104) currentServerTime];
    [v7 currentServerTimeInterval];
    v8 = [NSNumber numberWithDouble:?];
    v9 = +[_TtC17identityservicesd27IDSCloudTelemetryMetricKeys outgoingStoredKey];
    [v62 addEntry:v8 forKey:v9];

    if (a4)
    {
      v95[0] = _NSConcreteStackBlock;
      v95[1] = 3221225472;
      v95[2] = sub_10065380C;
      v95[3] = &unk_100BE3270;
      v10 = *(a1 + 104);
      v96 = *(a1 + 32);
      v97 = *(a1 + 40);
      v98 = *(a1 + 48);
      v99 = v63;
      v102 = *(a1 + 112);
      v11 = *(a1 + 88);
      v12 = *(a1 + 96);
      *&v13 = *(a1 + 80);
      *(&v13 + 1) = v10;
      *&v14 = v11;
      *(&v14 + 1) = v12;
      v100 = v14;
      v101 = v13;
      v15 = objc_retainBlock(v95);

      v16 = &v96;
      v17 = &v97;
    }

    else
    {
      if (*(a1 + 116) != 1)
      {
        v38 = *(a1 + 56);
        v39 = [*(a1 + 40) identifier];
        LODWORD(v38) = [v38 _canSendNonUrgentInternetMessageForTopic:v39];

        if (v38)
        {
          v40 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Sending a non-urgent sync message as we have a go ahead based on the server policy", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            _IDSLogV();
          }

          v83[0] = _NSConcreteStackBlock;
          v83[1] = 3221225472;
          v83[2] = sub_1006538C4;
          v83[3] = &unk_100BE3270;
          v41 = *(a1 + 104);
          v84 = *(a1 + 32);
          v85 = *(a1 + 40);
          v86 = *(a1 + 48);
          v87 = v63;
          v90 = *(a1 + 112);
          v42 = *(a1 + 88);
          v43 = *(a1 + 96);
          *&v44 = *(a1 + 80);
          *(&v44 + 1) = v41;
          *&v45 = v42;
          *(&v45 + 1) = v43;
          v88 = v45;
          v89 = v44;
          v46 = objc_retainBlock(v83);

          v47 = &v84;
          v48 = &v85;
          v49 = &v86;
          v50 = &v87;
        }

        else
        {
          v78[0] = _NSConcreteStackBlock;
          v78[1] = 3221225472;
          v78[2] = sub_100653900;
          v78[3] = &unk_100BE32C0;
          v79 = *(a1 + 32);
          v80 = v63;
          v81 = *(a1 + 56);
          v82 = *(a1 + 80);
          v46 = objc_retainBlock(v78);
          v47 = &v79;
          v48 = &v80;
          v49 = &v81;
          v50 = &v82;
        }

        v51 = im_primary_queue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100653C20;
        block[3] = &unk_100BE3310;
        v73 = *(a1 + 104);
        v68 = *(a1 + 32);
        v69 = v63;
        v74 = *(a1 + 112);
        v71 = *(a1 + 80);
        v75 = *(a1 + 116);
        v70 = *(a1 + 56);
        v15 = v46;
        v72 = v15;
        dispatch_async(v51, block);

        v35 = v68;
        goto LABEL_32;
      }

      v91[0] = _NSConcreteStackBlock;
      v91[1] = 3221225472;
      v91[2] = sub_100653848;
      v91[3] = &unk_100BE3298;
      v92 = *(a1 + 32);
      v93 = *(a1 + 48);
      v94 = *(a1 + 112);
      v15 = objc_retainBlock(v91);
      v16 = &v92;
      v17 = &v93;
    }

    if (*(a1 + 116) == 1)
    {
      v21 = [*(a1 + 32) identifier];
      v22 = [NSString stringWithFormat:@"message %@ on service %@", v21, *(a1 + 64)];

      v23 = *(a1 + 104);
      v24 = *(a1 + 64);
      v25 = *(a1 + 72);
      v26 = *(a1 + 32);
      v27 = +[IDSDaemonPriorityQueueController sharedInstance];
      v28 = [v27 queueForPriority:{objc_msgSend(*(a1 + 32), "priority")}];
      v76[0] = _NSConcreteStackBlock;
      v76[1] = 3221225472;
      v76[2] = sub_100653C04;
      v76[3] = &unk_100BDAD68;
      v77 = v15;
      [v23 _performDuetCheckAndSendForServiceIdentifier:v24 serviceDuetIdentifiers:v25 sendParameters:v26 logString:v22 fromQueue:v28 completionBlock:v76];
    }

    else
    {
      (v15[2])(v15, 0);
    }

    if (!*(a1 + 80))
    {
      goto LABEL_33;
    }

    v29 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a1 + 64);
      v31 = [*(a1 + 32) identifier];
      v32 = [*(a1 + 32) alternateCallbackID];
      *buf = 67109890;
      *v104 = 11;
      *&v104[4] = 2112;
      *&v104[6] = v30;
      *&v104[14] = 2112;
      *&v104[16] = v31;
      v105 = 2112;
      v106 = v32;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Notifying client IDSResponsePersisted(%d) for %@ id %@ alt %@", buf, 0x26u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v33 = *(a1 + 64);
      v34 = [*(a1 + 32) identifier];
      [*(a1 + 32) alternateCallbackID];
      v60 = v59 = v34;
      v57 = 11;
      v58 = v33;
      _IDSLogV();
    }

    v35 = [[IDSDeliveryContext alloc] initWithResponseCode:11 error:0 lastCall:1];
    (*(*(a1 + 80) + 16))(*(a1 + 80), v35, v36, v37);
LABEL_32:

LABEL_33:
    if ([*(a1 + 32) priority] == 300 && *(a1 + 116) == 1 && (v61 & 1) == 0)
    {
      v52 = +[IDSUTunDeliveryController sharedInstance];
      v53 = [v52 hasSpaceForMessagesWithPriority:300 dataProtectionClass:*(a1 + 112)];

      if (v53)
      {
        v54 = +[IDSUTunDeliveryController sharedInstance];
        v55 = [v54 hasSpaceForMessagesWithPriority:300 dataProtectionClass:*(a1 + 112)];

        if (v55)
        {
          v56 = +[IDSDaemonPriorityQueueController sharedInstance];
          v64[0] = _NSConcreteStackBlock;
          v64[1] = 3221225472;
          v64[2] = sub_100654158;
          v64[3] = &unk_100BD89B0;
          v65 = *(a1 + 56);
          v66 = *(a1 + 112);
          [v56 performBlockMainQueue:v64];
        }
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (*(a1 + 80))
  {
    v18 = [NSError alloc];
    v62 = [v18 initWithDomain:IDSSendErrorDomain code:18 userInfo:0];
    v15 = [[IDSDeliveryContext alloc] initWithResponseCode:18 error:v62 lastCall:1];
    (*(*(a1 + 80) + 16))();
    v19 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 32);
      *buf = 138412546;
      *v104 = v63;
      *&v104[8] = 2112;
      *&v104[10] = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Persisting message failed guid: %@  params: %@, failing with IDSResponseDataProtectionClassUnavailable", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    goto LABEL_39;
  }

LABEL_40:
}

void sub_100653848(uint64_t a1)
{
  v2 = [*(a1 + 32) accountUUID];
  +[IDSDaemon _sendLocalDeliveryMessagesForAccountUUID:threadContext:priority:dataProtectionClass:](IDSDaemon, "_sendLocalDeliveryMessagesForAccountUUID:threadContext:priority:dataProtectionClass:", v2, *(a1 + 40), [*(a1 + 32) priority], *(a1 + 48));
}

void sub_100653900(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [*(a1 + 32) message];
    v6 = [*(a1 + 32) destinations];
    v7 = [*(a1 + 32) identifier];
    v8 = *(a1 + 40);
    *buf = 138413314;
    v21 = v3;
    v22 = 2112;
    v23 = v5;
    v24 = 2112;
    v25 = v6;
    v26 = 2112;
    v27 = v7;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "account %@ sendMessage: %@ to: %@ identifier: %@ guid: %@ - non-urgent message has been persisted.", buf, 0x34u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v9 = [*(a1 + 32) message];
    v10 = [*(a1 + 32) destinations];
    v18 = [*(a1 + 32) identifier];
    v19 = *(a1 + 40);
    v16 = v9;
    v17 = v10;
    v14 = v3;
    _IDSLogV();
  }

  [*(a1 + 48) _processOutgoingNonUrgentInternetMessages];
  if (*(a1 + 56))
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 32) message];
      *buf = 138412290;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Non-urgent message send %@ will be maintained by us from now on, alerting sender that it's been persisted and scheduled for sending.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v15 = [*(a1 + 32) message];
      _IDSLogV();
    }

    v13 = [[IDSDeliveryContext alloc] initWithResponseCode:0 error:0 lastCall:1];
    (*(*(a1 + 56) + 16))(*(a1 + 56));
  }
}

uint64_t sub_100653C04(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_100653C20(uint64_t a1)
{
  v2 = [*(a1 + 72) accountController];
  v3 = [*(a1 + 32) accountUUID];
  v4 = [v2 accountWithUniqueID:v3];

  if (!v4)
  {
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 32) accountUUID];
      *buf = 138412290;
      *v39 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "(Messaging2) No account found for ID: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v33 = [*(a1 + 32) accountUUID];
      _IDSLogV();
    }

    IMLogBacktrace();
    v14 = *(a1 + 40);
    v15 = [*(a1 + 32) alternateCallbackID];
    [IDSDMessageStore deleteOutgoingMessageWithGUID:v14 alternateGUID:v15 dataProtectionClass:*(a1 + 80)];

    v16 = [NSError alloc];
    v17 = [v16 initWithDomain:IDSSendErrorDomain code:2 userInfo:0];
    if (*(a1 + 56))
    {
      v18 = [[IDSDeliveryContext alloc] initWithResponseCode:2 error:v17 lastCall:1];
      (*(*(a1 + 56) + 16))(*(a1 + 56));
    }

    goto LABEL_19;
  }

  if (*(a1 + 84) == 1)
  {
    v5 = [*(a1 + 32) identifier];
    v6 = [v4 service];
    v7 = [v6 identifier];
    v8 = [NSString stringWithFormat:@"message %@ on service %@", v5, v7];

    v9 = *(a1 + 48);
    v10 = *(a1 + 32);
    v11 = im_primary_queue();
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10065413C;
    v35[3] = &unk_100BE32E8;
    v37 = *(a1 + 64);
    v36 = v4;
    [v9 _performDuetCheckAndSendForAccount:v36 sendParameters:v10 logString:v8 fromQueue:v11 completionBlock:v35];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }

  if (*(a1 + 56))
  {
    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v4 service];
      v21 = [v20 identifier];
      v22 = [*(a1 + 32) identifier];
      v23 = [*(a1 + 32) alternateCallbackID];
      *buf = 67109890;
      *v39 = 11;
      *&v39[4] = 2112;
      *&v39[6] = v21;
      v40 = 2112;
      v41 = v22;
      v42 = 2112;
      v43 = v23;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Notifying client IDSResponsePersisted(%d) for %@ id %@ alt %@", buf, 0x26u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v24 = [v4 service];
      v25 = [v24 identifier];
      v26 = [*(a1 + 32) identifier];
      v34 = [*(a1 + 32) alternateCallbackID];
      _IDSLogV();
    }

    v17 = [[IDSDeliveryContext alloc] initWithResponseCode:11 error:0 lastCall:0];
    (*(*(a1 + 56) + 16))(*(a1 + 56), v17, v27, v28, v29, v30, v31, v32);
LABEL_19:
  }
}

uint64_t sub_10065413C(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 40) + 16))(*(result + 40), *(result + 32));
  }

  return result;
}

void sub_100654158(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
  v5 = [NSArray arrayWithObject:v4];
  [v3 _handleSpaceBecomingAvailableForUrgentLocalMessagesWithDataProtectionClasses:v5 withMessageTypes:0];

  objc_autoreleasePoolPop(v2);
}

void sub_100654F74(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x100654500);
  }

  _Unwind_Resume(exc_buf);
}

void sub_100654FF4(id *a1, void *a2)
{
  v3 = a2;
  if (![v3 lastCall])
  {
    goto LABEL_29;
  }

  v4 = [a1[4] servicePushTopic];
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [a1[4] subService];
  v7 = [v6 length];
  v8 = a1[4];
  if (v7)
  {
    [v8 subService];
  }

  else
  {
    [v8 serviceIdentifier];
  }
  v9 = ;

  if (v9)
  {
    CFDictionarySetValue(v5, IDSMessageContextServiceIdentifierKey, v9);
  }

  v10 = [a1[5] localDestinationDeviceUUID];
  if (v10)
  {
    CFDictionarySetValue(v5, IDSMessageContextOriginalDestinationDeviceKey, v10);
  }

  if (v4)
  {
    v11 = [v3 responseError];
    if ([v11 code] == 24)
    {
      v12 = [a1[4] silentlyFailMessagesOnSwitch];

      if (v12)
      {
        v13 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = v9;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Silently failing %@ messages due to watch switch", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v24 = v9;
          _IDSLogV();
        }

        goto LABEL_19;
      }
    }

    else
    {
    }

    v14 = +[IDSDaemon sharedInstance];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100655454;
    v26[3] = &unk_100BD8D00;
    v27 = a1[5];
    v28 = v3;
    v29 = v5;
    [v14 enqueueBroadcast:v26 forTopic:v4 entitlement:kIDSMessagingEntitlement command:0 capabilities:kIDSListenerCapConsumesLaunchOnDemandOutgoingMessageUpdates messageContext:0];
  }

LABEL_19:
  v15 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [a1[6] guid];
    v17 = [v3 lastCall];
    v18 = @"NO";
    if (v17)
    {
      v18 = @"YES";
    }

    *buf = 138412546;
    v31 = v16;
    v32 = 2112;
    v33 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Deleting sent outgoing non-urgent local message with guid %@? %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v19 = [a1[6] guid];
    v20 = [v3 lastCall];
    v21 = @"NO";
    if (v20)
    {
      v21 = @"YES";
    }

    v24 = v19;
    v25 = v21;
    _IDSLogV();
  }

  v22 = [a1[6] guid];
  v23 = [a1[6] alternateGUID];
  +[IDSDMessageStore deleteOutgoingMessageWithGUID:alternateGUID:dataProtectionClass:](IDSDMessageStore, "deleteOutgoingMessageWithGUID:alternateGUID:dataProtectionClass:", v22, v23, [a1[7] dataProtectionClass]);

LABEL_29:
}

void sub_100655454(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v9 = [v3 identifier];
  v5 = [*(a1 + 32) alternateCallbackID];
  v6 = [*(a1 + 32) mainAccountUUID];
  v7 = [*(a1 + 40) idsResponseCode];
  v8 = [*(a1 + 40) responseError];
  [v4 messageIdentifier:v9 alternateCallbackID:v5 forAccount:v6 updatedWithResponseCode:v7 error:v8 lastCall:objc_msgSend(*(a1 + 40) context:{"lastCall"), *(a1 + 48)}];
}

void sub_100655538(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [[IDSDeliveryContext alloc] initWithResponseCode:10 error:0 lastCall:1];
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1006555B4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [[IDSDeliveryContext alloc] initWithResponseCode:10 error:0 lastCall:1];
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100656378(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1006558FCLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1006563F8(id *a1, void *a2)
{
  v3 = a2;
  if (![v3 lastCall])
  {
    goto LABEL_29;
  }

  v4 = [a1[4] servicePushTopic];
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [a1[4] subService];
  v7 = [v6 length];
  v8 = a1[4];
  if (v7)
  {
    [v8 subService];
  }

  else
  {
    [v8 serviceIdentifier];
  }
  v9 = ;

  if (v9)
  {
    CFDictionarySetValue(v5, IDSMessageContextServiceIdentifierKey, v9);
  }

  v10 = [a1[5] localDestinationDeviceUUID];
  if (v10)
  {
    CFDictionarySetValue(v5, IDSMessageContextOriginalDestinationDeviceKey, v10);
  }

  if (v4)
  {
    v11 = [v3 responseError];
    if ([v11 code] == 24)
    {
      v12 = [a1[4] silentlyFailMessagesOnSwitch];

      if (v12)
      {
        v13 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = v9;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Silently failing %@ messages due to watch switch", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v24 = v9;
          _IDSLogV();
        }

        goto LABEL_19;
      }
    }

    else
    {
    }

    v14 = +[IDSDaemon sharedInstance];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100656858;
    v26[3] = &unk_100BD8D00;
    v27 = a1[5];
    v28 = v3;
    v29 = v5;
    [v14 enqueueBroadcast:v26 forTopic:v4 entitlement:kIDSMessagingEntitlement command:0 capabilities:kIDSListenerCapConsumesLaunchOnDemandOutgoingMessageUpdates messageContext:0];
  }

LABEL_19:
  v15 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [a1[6] guid];
    v17 = [v3 lastCall];
    v18 = @"NO";
    if (v17)
    {
      v18 = @"YES";
    }

    *buf = 138412546;
    v31 = v16;
    v32 = 2112;
    v33 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Deleting sent outgoing non-urgent local message with guid %@? %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v19 = [a1[6] guid];
    v20 = [v3 lastCall];
    v21 = @"NO";
    if (v20)
    {
      v21 = @"YES";
    }

    v24 = v19;
    v25 = v21;
    _IDSLogV();
  }

  v22 = [a1[6] guid];
  v23 = [a1[6] alternateGUID];
  +[IDSDMessageStore deleteOutgoingMessageWithGUID:alternateGUID:dataProtectionClass:](IDSDMessageStore, "deleteOutgoingMessageWithGUID:alternateGUID:dataProtectionClass:", v22, v23, [a1[7] dataProtectionClass]);

LABEL_29:
}

void sub_100656858(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v9 = [v3 identifier];
  v5 = [*(a1 + 32) alternateCallbackID];
  v6 = [*(a1 + 32) mainAccountUUID];
  v7 = [*(a1 + 40) idsResponseCode];
  v8 = [*(a1 + 40) responseError];
  [v4 messageIdentifier:v9 alternateCallbackID:v5 forAccount:v6 updatedWithResponseCode:v7 error:v8 lastCall:objc_msgSend(*(a1 + 40) context:{"lastCall"), *(a1 + 48)}];
}

void sub_10065693C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [[IDSDeliveryContext alloc] initWithResponseCode:10 error:0 lastCall:1];
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1006569B8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [[IDSDeliveryContext alloc] initWithResponseCode:10 error:0 lastCall:1];
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100656AF4(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _failSavedMessageCleanly:*(*(&v7 + 1) + 8 * v6) withResponseCode:{*(a1 + 48), v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_100656DAC(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) serviceController];
    v3 = [v2 serviceWithPushTopic:*(a1 + 32)];
    v4 = [v3 shouldSilentlyFailMessagesOnSwitch];

    if (*(a1 + 64) == 24 && v4)
    {
      v5 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        *buf = 138412290;
        v33 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Silently failing %@ messages due to watch switch", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLog())
        {
          v26 = *(a1 + 32);
          _IDSLogV();
        }
      }
    }

    else
    {
      v8 = [*(a1 + 48) command];
      v9 = [v8 integerValue];

      if (v9 == 229)
      {
        v10 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [*(a1 + 48) guid];
          *buf = 138412290;
          v33 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Silently failing message with guid %@ due to it being a proxy ", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v26 = [*(a1 + 48) guid];
          _IDSLogV();
        }
      }

      else
      {
        v12 = objc_alloc_init(IMMessageContext);
        v13 = objc_alloc_init(NSMutableDictionary);
        v14 = v13;
        v15 = *(a1 + 32);
        if (v15)
        {
          CFDictionarySetValue(v13, IDSMessageContextServiceIdentifierKey, v15);
        }

        v16 = [*(a1 + 48) localDestinationDeviceUUID];
        if (v16)
        {
          CFDictionarySetValue(v14, IDSMessageContextOriginalDestinationDeviceKey, v16);
        }

        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_1006571FC;
        v28[3] = &unk_100BE3360;
        v17 = *(a1 + 40);
        v18 = *(a1 + 48);
        v20 = *(a1 + 56);
        v19 = *(a1 + 64);
        v30 = v14;
        v31 = v19;
        v29 = v18;
        v21 = kIDSMessagingEntitlement;
        v22 = kIDSListenerCapConsumesLaunchOnDemandOutgoingMessageUpdates;
        v23 = v14;
        [v17 enqueueBroadcast:v28 forTopic:v20 entitlement:v21 command:0 capabilities:v22 messageContext:v12];
      }
    }

    v24 = [*(a1 + 48) guid];
    v25 = [*(a1 + 48) alternateGUID];
    [IDSDMessageStore deleteOutgoingMessageWithGUID:v24 alternateGUID:v25];
  }

  else
  {
    v27 = [*(a1 + 48) guid];
    v7 = [*(a1 + 48) alternateGUID];
    [IDSDMessageStore deleteOutgoingMessageWithGUID:v27 alternateGUID:v7];
  }
}

void sub_1006571FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) guid];
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Broadcasting failure of outgoing message %@ that never got processed through the database", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v10 = [*(a1 + 32) guid];
    _IDSLogTransport();
  }

  v6 = [NSError errorWithDomain:IDSSendErrorDomain code:*(a1 + 48) userInfo:0, v10];
  if (v3)
  {
    v7 = [*(a1 + 32) guid];
    v8 = [*(a1 + 32) alternateGUID];
    v9 = [*(a1 + 32) mainAccountGuid];
    [v3 messageIdentifier:v7 alternateCallbackID:v8 forAccount:v9 updatedWithResponseCode:objc_msgSend(v6 error:"code") lastCall:v6 context:{1, *(a1 + 40)}];
  }
}

void sub_1006573D8(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = +[IDSDAccountController sharedInstance];
  v4 = [v3 accountWithUniqueID:v9];

  if (([v4 isUsableForSending] & 1) == 0)
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    if (!v5)
    {
      v6 = objc_alloc_init(NSMutableArray);
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v5 addObject:v9];
  }
}

void sub_100657584(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  state = xpc_activity_get_state(v2);
  if (state == 2)
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"YES";
      if (!v2)
      {
        v10 = @"NO";
      }

      *buf = 138412290;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Got called to checkpoint vacuum DB run state with non null activity %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v11 = @"YES";
      if (!v2)
      {
        v11 = @"NO";
      }

      v12 = v11;
      _IDSLogV();
    }

    [IDSDMessageStore checkpointAndVacuumDBWithDataProtectionClass:0, v12];
    [IDSDMessageStore checkpointAndVacuumDBWithDataProtectionClass:2];
  }

  else if (!state)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = @"YES";
      if (!v2)
      {
        v5 = @"NO";
      }

      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Told to Check In for Checkpointing and Vacuum with activity %@ ", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v6, XPC_ACTIVITY_GRACE_PERIOD, 0);
    xpc_dictionary_set_int64(v6, XPC_ACTIVITY_DELAY, 86400);
    xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP, 1);
    xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_ALLOW_BATTERY, 0);
    xpc_dictionary_set_string(v6, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
    v7 = xpc_activity_copy_criteria(v2);
    v8 = v7;
    if (!v7 || !xpc_equal(v7, v6))
    {
      xpc_activity_set_criteria(v2, v6);
    }
  }
}

void sub_100657D28(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) service];
  v5 = [v4 identifier];
  LODWORD(v3) = [v3 client:v9 isEntitledToAccessService:v5 forEntitlement:kIDSMessagingEntitlement shouldWarn:1];

  if (v3)
  {
    v6 = [v9 ID];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

void sub_100657DE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [v3 idsResponseCode];
    v6 = [v3 responseError];
    v7 = [v3 lastCall];
    v8 = @"NO";
    v9 = *(a1 + 32);
    *buf = 134218754;
    if (v7)
    {
      v8 = @"YES";
    }

    *&buf[4] = v5;
    v31 = 2112;
    v32 = v6;
    v33 = 2112;
    v34 = v8;
    v35 = 2112;
    v36 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "sendServerMessage updated with responseCode %ld error %@  lastCall %@ - messageContext %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v10 = [v3 idsResponseCode];
    v11 = [v3 responseError];
    v12 = [v3 lastCall];
    v13 = @"NO";
    if (v12)
    {
      v13 = @"YES";
    }

    v28 = v13;
    v29 = *(a1 + 32);
    v25 = v10;
    v26 = v11;
    _IDSLogV();
  }

  if ([v3 lastCall])
  {
    v14 = [IDSMessageSendResponseMetric alloc];
    v15 = [v3 idsResponseCode];
    v16 = [*(a1 + 40) service];
    v17 = [v16 identifier];
    v18 = [v14 initWithResponseCode:v15 service:v17 command:*(a1 + 48) hasDataToEncrypt:0 messageType:1];

    v19 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v19 logMetric:v18];

    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v3 idsResponseCode];
      v22 = [*(a1 + 40) service];
      v23 = [v22 identifier];
      *buf = 134218242;
      *&buf[4] = v21;
      v31 = 2112;
      v32 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Logged server message send response metric: responseCode=%ld service=%@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [v3 idsResponseCode];
      v24 = [*(a1 + 40) service];
      v27 = [v24 identifier];
      _IDSLogV();
    }
  }
}

void sub_1006588D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 entitlements];
  v5 = [v4 dictionaryRepresentation];
  **(a1 + 32) = [v5 copy];

  v6 = [v3 ID];

  **(a1 + 40) = [v6 copy];
}

void sub_100659368(uint64_t a1)
{
  v2 = [*(a1 + 32) localObject];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = [v3 keyType];
    v5 = [*(a1 + 40) keyDiversifier];
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 80);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    *buf = 138413314;
    v45 = v10;
    v46 = 2112;
    v47 = v8;
    v48 = 2048;
    v49 = v7;
    v50 = 2112;
    v51 = v9;
    v52 = 2112;
    v53 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Daemon received signData request {requestID: %@, data: %@, algo: %ld, service: %@, options: %@}", buf, 0x34u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v41 = *(a1 + 64);
    v42 = *(a1 + 40);
    v39 = *(a1 + 80);
    v36 = *(a1 + 48);
    _IDSLogV();
  }

  if (*(a1 + 56) && *(a1 + 64) && *(a1 + 48) && IDSIsValidSigningAlgorithm() && (IDSIsValidSigningKeyType() & 1) != 0)
  {
    if ([*(a1 + 72) validateListenerForLocalObject:v2 andCheckEntitlement:kIDSMessagingEntitlement forAccessToServiceWithIdentifier:*(a1 + 64)])
    {
      v12 = [*(a1 + 72) _signatureTypeForSigningAlgorithm:*(a1 + 80)];
      if (v12 != -1000 || v4)
      {
        v28 = [IDSEncryptionController sharedInstance:v36];
        v29 = *(a1 + 56);
        v30 = *(a1 + 64);
        v43 = 0;
        v19 = [v28 publicKeySignData:v29 withSignatureType:v12 keyType:v4 keyDiversifier:v5 service:v30 priority:300 error:&v43];
        v16 = v43;

        v31 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = *(a1 + 48);
          *buf = 138412802;
          v45 = v32;
          v46 = 2112;
          v47 = v19;
          v48 = 2112;
          v49 = v16;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Finished signing request... broadcasting { request: %@, signedData: %@, error: %@ }", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v38 = v19;
          v40 = v16;
          v37 = *(a1 + 48);
          _IDSLogV();
        }

        [*(a1 + 32) setReply:{1, v37, v38, v40}];
        v33 = +[IDSDaemon sharedInstance];
        v34 = [*(a1 + 32) localObject];
        v35 = [v33 broadcasterForLocalObject:v34 messageContext:*(a1 + 32)];

        [v35 finishedSigningForRequest:*(a1 + 48) signedData:v19 error:v16];
      }

      else
      {
        v13 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 48);
          v15 = *(a1 + 80);
          *buf = 138412802;
          v45 = v14;
          v46 = 2048;
          v47 = v15;
          v48 = 2048;
          v49 = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Daemon dropping request %@ because it has a mismatched signing algorithm %ld and key type %ld", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          *(&v36 + 1) = *(a1 + 80);
          v39 = 0;
          *&v36 = *(a1 + 48);
          _IDSLogV();
        }

        v16 = [NSError errorWithDomain:IDSSigningErrorDomain code:1 userInfo:0, v36, v39, v41, v42];
        [*(a1 + 32) setReply:1];
        v17 = +[IDSDaemon sharedInstance];
        v18 = [*(a1 + 32) localObject];
        v19 = [v17 broadcasterForLocalObject:v18 messageContext:*(a1 + 32)];

        [v19 finishedSigningForRequest:*(a1 + 48) signedData:0 error:v16];
      }
    }

    else
    {
      v24 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a1 + 48);
        *buf = 138412290;
        v45 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Daemon dropping request %@ because unentitled", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        *&v36 = *(a1 + 48);
        _IDSLogV();
      }

      v16 = [NSError errorWithDomain:IDSSigningErrorDomain code:4 userInfo:0, v36, v39, v41, v42];
      [*(a1 + 32) setReply:1];
      v26 = +[IDSDaemon sharedInstance];
      v27 = [*(a1 + 32) localObject];
      v19 = [v26 broadcasterForLocalObject:v27 messageContext:*(a1 + 32)];

      [v19 finishedSigningForRequest:*(a1 + 48) signedData:0 error:v16];
    }

    goto LABEL_30;
  }

  v20 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 48);
    *buf = 138412290;
    v45 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Daemon dropping request %@ because it is missing required parameter", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (*(a1 + 48))
  {
    v16 = [NSError errorWithDomain:IDSSigningErrorDomain code:1 userInfo:0];
    [*(a1 + 32) setReply:1];
    v22 = +[IDSDaemon sharedInstance];
    v23 = [*(a1 + 32) localObject];
    v19 = [v22 broadcasterForLocalObject:v23 messageContext:*(a1 + 32)];

    [v19 finishedSigningForRequest:*(a1 + 48) signedData:0 error:v16];
LABEL_30:
  }
}

void sub_100659CA0(uint64_t a1)
{
  v78 = [*(a1 + 32) localObject];
  v2 = *(a1 + 40);
  if (v2)
  {
    v76 = [v2 keyType];
    v77 = [*(a1 + 40) keyDiversifier];
  }

  else
  {
    v77 = 0;
    v76 = 0;
  }

  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = *(a1 + 96);
    v7 = *(a1 + 72);
    v8 = *(a1 + 80);
    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    *buf = 138413826;
    v94 = v9;
    v95 = 2112;
    v96 = v4;
    v97 = 2112;
    v98 = v5;
    v99 = 2048;
    v100 = v6;
    v101 = 2112;
    v102 = v7;
    v103 = 2112;
    v104 = v8;
    v105 = 2112;
    v106 = v10;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Daemon received verifySignedData request {requestID: %@, signedData: %@, data: %@, algo: %ld, service: %@, uri: %@, options: %@}", buf, 0x48u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v65 = *(a1 + 80);
    v66 = *(a1 + 40);
    v63 = *(a1 + 96);
    v64 = *(a1 + 72);
    v61 = *(a1 + 64);
    v59 = *(a1 + 48);
    _IDSLogV();
  }

  if (*(a1 + 56) && *(a1 + 64) && *(a1 + 72) && *(a1 + 80) && *(a1 + 48) && IDSIsValidSigningAlgorithm() && (IDSIsValidSigningKeyType() & 1) != 0)
  {
    if ([*(a1 + 88) validateListenerForLocalObject:v78 andCheckEntitlement:kIDSMessagingEntitlement forAccessToServiceWithIdentifier:*(a1 + 72)])
    {
      if ([*(a1 + 80) isTokenURI])
      {
        v69 = [*(a1 + 88) _signatureTypeForSigningAlgorithm:*(a1 + 96)];
        if (v69 != -1000 || v76)
        {
          v28 = [*(a1 + 80) prefixedURI];
          v90 = 0;
          v17 = [v28 _stripPotentialTokenURIWithToken:&v90];
          v14 = v90;

          v68 = [[IDSURI alloc] initWithPrefixedURI:v17];
          if (v14 && v17)
          {
            v29 = +[IDSDAccountController sharedInstance];
            v30 = +[IDSDServiceController sharedInstance];
            v31 = [v30 serviceWithIdentifier:*(a1 + 72)];
            v32 = [v29 registeredAccountsOnService:v31];

            v88 = 0u;
            v89 = 0u;
            v86 = 0u;
            v87 = 0u;
            obj = v32;
            v72 = [obj countByEnumeratingWithState:&v86 objects:v92 count:16];
            if (v72)
            {
              v75 = 0;
              v33 = 0;
              v71 = *v87;
              v34 = kIDSServiceDefaultsSentinelAlias;
              while (2)
              {
                v35 = 0;
                do
                {
                  if (*v87 != v71)
                  {
                    v36 = v35;
                    objc_enumerationMutation(obj);
                    v35 = v36;
                  }

                  v73 = v35;
                  v37 = *(*(&v86 + 1) + 8 * v35);
                  v38 = [v37 primaryRegistration];
                  v74 = [v38 registrationCert];

                  v84 = 0u;
                  v85 = 0u;
                  v82 = 0u;
                  v83 = 0u;
                  v39 = [v37 unprefixedURIStringsFromRegistration];
                  v40 = [v39 countByEnumeratingWithState:&v82 objects:v91 count:16];
                  if (v40)
                  {
                    v41 = *v83;
                    while (2)
                    {
                      for (i = 0; i != v40; i = i + 1)
                      {
                        if (*v83 != v41)
                        {
                          objc_enumerationMutation(v39);
                        }

                        v43 = *(*(&v82 + 1) + 8 * i);
                        if (([v43 isEqualToIgnoringCase:v34] & 1) == 0)
                        {
                          v44 = [[IDSURI alloc] initWithUnprefixedURI:v43];

                          v75 = v44;
                          goto LABEL_64;
                        }
                      }

                      v40 = [v39 countByEnumeratingWithState:&v82 objects:v91 count:16];
                      if (v40)
                      {
                        continue;
                      }

                      break;
                    }
                  }

LABEL_64:

                  v33 = v74;
                  if (v74 && v75)
                  {

                    v49 = +[IDSEncryptionController sharedInstance];
                    v50 = *(a1 + 56);
                    v51 = *(a1 + 64);
                    v52 = *(a1 + 72);
                    v79[0] = _NSConcreteStackBlock;
                    v79[1] = 3221225472;
                    v79[2] = sub_10065AA04;
                    v79[3] = &unk_100BD71D8;
                    v80 = *(a1 + 48);
                    v81 = *(a1 + 32);
                    LOBYTE(v67) = 0;
                    LODWORD(v62) = v76;
                    [v49 publicKeyVerifySignedData:v50 matchesData:v51 forSignatureType:v69 identity:v74 toURI:v68 pushToken:v14 service:v52 localURI:v75 withKeyType:v62 keyDiversifier:v77 priority:300 completion:v79 avoidMainQueue:v67];

                    v53 = v80;
                    goto LABEL_83;
                  }

                  v35 = v73 + 1;
                }

                while ((v73 + 1) != v72);
                v72 = [obj countByEnumeratingWithState:&v86 objects:v92 count:16];
                if (v72)
                {
                  continue;
                }

                break;
              }
            }

            else
            {
              v33 = 0;
              v75 = 0;
            }

            v54 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              v55 = *(a1 + 48);
              *buf = 138412290;
              v94 = v55;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Daemon dropping request %@ because we are not registered", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v60 = *(a1 + 48);
              _IDSLogV();
            }

            v53 = [NSError errorWithDomain:IDSSigningErrorDomain code:14 userInfo:0, v60];
            [*(a1 + 32) setReply:1];
            v56 = +[IDSDaemon sharedInstance];
            v57 = [*(a1 + 32) localObject];
            v58 = [v56 broadcasterForLocalObject:v57 messageContext:*(a1 + 32)];

            [v58 finishedVerifyingSignedDataForRequest:*(a1 + 48) success:0 error:v53];
LABEL_83:
          }

          else
          {
            v45 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v46 = *(a1 + 48);
              *buf = 138412290;
              v94 = v46;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Daemon dropping request %@ because tokenURI malformed", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v60 = *(a1 + 48);
              _IDSLogV();
            }

            v33 = [NSError errorWithDomain:IDSSigningErrorDomain code:2 userInfo:0, v60];
            [*(a1 + 32) setReply:1];
            v47 = +[IDSDaemon sharedInstance];
            v48 = [*(a1 + 32) localObject];
            v75 = [v47 broadcasterForLocalObject:v48 messageContext:*(a1 + 32)];

            [v75 finishedVerifyingSignedDataForRequest:*(a1 + 48) success:0 error:v33];
          }
        }

        else
        {
          v11 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(a1 + 48);
            v13 = *(a1 + 96);
            *buf = 138412802;
            v94 = v12;
            v95 = 2048;
            v96 = v13;
            v97 = 2048;
            v98 = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Daemon dropping request %@ because it has a mismatched verification algorithm %ld and key type %ld", buf, 0x20u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            *(&v59 + 1) = *(a1 + 96);
            v61 = 0;
            *&v59 = *(a1 + 48);
            _IDSLogV();
          }

          v14 = [NSError errorWithDomain:IDSSigningErrorDomain code:1 userInfo:0, v59, v61, v63, v64, v65, v66];
          [*(a1 + 32) setReply:1];
          v15 = +[IDSDaemon sharedInstance];
          v16 = [*(a1 + 32) localObject];
          v17 = [v15 broadcasterForLocalObject:v16 messageContext:*(a1 + 32)];

          [v17 finishedVerifyingSignedDataForRequest:*(a1 + 48) success:0 error:v14];
        }
      }

      else
      {
        v24 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = *(a1 + 48);
          *buf = 138412290;
          v94 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Daemon dropping request %@ because it is not a token URI", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          *&v59 = *(a1 + 48);
          _IDSLogV();
        }

        v14 = [NSError errorWithDomain:IDSSigningErrorDomain code:2 userInfo:0, v59, v61, v63, v64, v65, v66];
        [*(a1 + 32) setReply:1];
        v26 = +[IDSDaemon sharedInstance];
        v27 = [*(a1 + 32) localObject];
        v17 = [v26 broadcasterForLocalObject:v27 messageContext:*(a1 + 32)];

        [v17 finishedVerifyingSignedDataForRequest:*(a1 + 48) success:0 error:v14];
      }
    }

    else
    {
      v20 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 48);
        *buf = 138412290;
        v94 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Daemon dropping request %@ because unentitled", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        *&v59 = *(a1 + 48);
        _IDSLogV();
      }

      v14 = [NSError errorWithDomain:IDSSigningErrorDomain code:4 userInfo:0, v59, v61, v63, v64, v65, v66];
      [*(a1 + 32) setReply:1];
      v22 = +[IDSDaemon sharedInstance];
      v23 = [*(a1 + 32) localObject];
      v17 = [v22 broadcasterForLocalObject:v23 messageContext:*(a1 + 32)];

      [v17 finishedVerifyingSignedDataForRequest:*(a1 + 48) success:0 error:v14];
    }

    goto LABEL_33;
  }

  v18 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 48);
    *buf = 138412290;
    v94 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Daemon dropping request %@ because it is missing required parameter", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (*(a1 + 48))
  {
    v14 = [NSError errorWithDomain:IDSSigningErrorDomain code:1 userInfo:0];
    v17 = [*(a1 + 88) listenerRemoteObjectForLocalObject:v78];
    [v17 finishedVerifyingSignedDataForRequest:*(a1 + 48) success:0 error:v14];
LABEL_33:
  }
}

void sub_10065AA04(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    *buf = 138412802;
    if (a2)
    {
      v8 = @"YES";
    }

    v17 = v7;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished signing verification request... broadcasting { request: %@, verified: %@, error: %@ }", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v9 = @"NO";
    if (a2)
    {
      v9 = @"YES";
    }

    v14 = v9;
    v15 = v5;
    v13 = *(a1 + 32);
    _IDSLogV();
  }

  [*(a1 + 40) setReply:{1, v13, v14, v15}];
  v10 = +[IDSDaemon sharedInstance];
  v11 = [*(a1 + 40) localObject];
  v12 = [v10 broadcasterForLocalObject:v11 messageContext:*(a1 + 40)];

  [v12 finishedVerifyingSignedDataForRequest:*(a1 + 32) success:a2 error:v5];
}

void sub_10065AD3C(uint64_t a1)
{
  v63 = [*(a1 + 32) localObject];
  v2 = *(a1 + 40);
  if (v2)
  {
    v60 = [v2 keyType];
    v61 = [*(a1 + 40) keyDiversifier];
  }

  else
  {
    v61 = 0;
    v60 = 0;
  }

  v3 = objc_alloc_init(NSMutableArray);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v4 = *(a1 + 48);
  v5 = [v4 countByEnumeratingWithState:&v75 objects:v89 count:16];
  if (v5)
  {
    v6 = *v76;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v76 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [NSKeyedUnarchiver ids_secureUnarchiveObjectOfClass:objc_opt_class() withData:*(*(&v75 + 1) + 8 * i)];
        if (v8)
        {
          [v3 addObject:v8];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v75 objects:v89 count:16];
    }

    while (v5);
  }

  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 80);
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v13 = *(a1 + 40);
    *buf = 138413058;
    v82 = v11;
    v83 = 2048;
    v84 = v10;
    v85 = 2112;
    v86 = v12;
    v87 = 2112;
    v88 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Daemon received verifySignedPayloads request {requestID: %@, algo: %ld, service: %@, options: %@}", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v53 = *(a1 + 64);
    v54 = *(a1 + 40);
    v50 = *(a1 + 56);
    v52 = *(a1 + 80);
    _IDSLogV();
  }

  if (v3 && [v3 count] && *(a1 + 64) && *(a1 + 56) && IDSIsValidSigningAlgorithm() && (IDSIsValidSigningKeyType() & 1) != 0)
  {
    if ([*(a1 + 72) validateListenerForLocalObject:v63 andCheckEntitlement:kIDSMessagingEntitlement forAccessToServiceWithIdentifier:*(a1 + 64)])
    {
      v56 = [*(a1 + 72) _signatureTypeForSigningAlgorithm:*(a1 + 80)];
      if (v56 != -1000 || v60)
      {
        v26 = [IDSDAccountController sharedInstance:v50];
        v27 = +[IDSDServiceController sharedInstance];
        v28 = [v27 serviceWithIdentifier:*(a1 + 64)];
        v29 = [v26 registeredAccountsOnService:v28];

        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        obj = v29;
        v59 = [obj countByEnumeratingWithState:&v71 objects:v80 count:16];
        if (v59)
        {
          v62 = 0;
          v17 = 0;
          v58 = *v72;
          v30 = kIDSServiceDefaultsSentinelAlias;
          while (2)
          {
            for (j = 0; j != v59; j = j + 1)
            {
              if (*v72 != v58)
              {
                objc_enumerationMutation(obj);
              }

              v32 = *(*(&v71 + 1) + 8 * j);
              v33 = [v32 primaryRegistration];
              v34 = [v33 registrationCert];

              v69 = 0u;
              v70 = 0u;
              v67 = 0u;
              v68 = 0u;
              v35 = [v32 prefixedURIStringsFromRegistration];
              v36 = [v35 countByEnumeratingWithState:&v67 objects:v79 count:16];
              if (v36)
              {
                v37 = *v68;
                while (2)
                {
                  for (k = 0; k != v36; k = k + 1)
                  {
                    if (*v68 != v37)
                    {
                      objc_enumerationMutation(v35);
                    }

                    v39 = *(*(&v67 + 1) + 8 * k);
                    if (([v39 isEqualToString:v30] & 1) == 0)
                    {
                      v40 = [[IDSURI alloc] initWithPrefixedURI:v39];

                      v62 = v40;
                      goto LABEL_63;
                    }
                  }

                  v36 = [v35 countByEnumeratingWithState:&v67 objects:v79 count:16];
                  if (v36)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_63:

              v17 = v34;
              if (v34 && v62)
              {

                v41 = +[IDSEncryptionController sharedInstance];
                v42 = [v3 copy];
                v43 = *(a1 + 64);
                v64[0] = _NSConcreteStackBlock;
                v64[1] = 3221225472;
                v64[2] = sub_10065B848;
                v64[3] = &unk_100BE3468;
                v65 = *(a1 + 32);
                v66 = *(a1 + 56);
                LOBYTE(v55) = 0;
                [v41 publicKeyVerifySignedPayloads:v42 forSignatureType:v56 identity:v17 service:v43 localURI:v62 withKeyType:v60 keyDiversifier:v61 priority:300 completion:v64 avoidMainQueue:v55];

                v44 = v65;
                goto LABEL_76;
              }
            }

            v59 = [obj countByEnumeratingWithState:&v71 objects:v80 count:16];
            if (v59)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v17 = 0;
          v62 = 0;
        }

        v45 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = *(a1 + 56);
          *buf = 138412290;
          v82 = v46;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Daemon dropping request %@ because we are not registered", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v51 = *(a1 + 56);
          _IDSLogV();
        }

        v44 = [NSError errorWithDomain:IDSSigningErrorDomain code:14 userInfo:0, v51];
        [*(a1 + 32) setReply:1];
        v47 = +[IDSDaemon sharedInstance];
        v48 = [*(a1 + 32) localObject];
        v49 = [v47 broadcasterForLocalObject:v48 messageContext:*(a1 + 32)];

        [v49 finishedVerifyingBatchedSignedDataForRequest:*(a1 + 56) results:0 error:v44];
LABEL_76:
      }

      else
      {
        v14 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 56);
          v16 = *(a1 + 80);
          *buf = 138412802;
          v82 = v15;
          v83 = 2048;
          v84 = v16;
          v85 = 2048;
          v86 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Daemon dropping request %@ because it has a mismatched verification algorithm %ld and key type %ld", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v52 = *(a1 + 80);
          v53 = 0;
          v50 = *(a1 + 56);
          _IDSLogV();
        }

        v17 = [NSError errorWithDomain:IDSSigningErrorDomain code:1 userInfo:0, v50, v52, v53, v54];
        [*(a1 + 32) setReply:1];
        v18 = +[IDSDaemon sharedInstance];
        v19 = [*(a1 + 32) localObject];
        v62 = [v18 broadcasterForLocalObject:v19 messageContext:*(a1 + 32)];

        [v62 finishedVerifyingBatchedSignedDataForRequest:*(a1 + 56) results:0 error:v17];
      }
    }

    else
    {
      v22 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 56);
        *buf = 138412290;
        v82 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Daemon dropping request %@ because unentitled", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v50 = *(a1 + 56);
        _IDSLogV();
      }

      v17 = [NSError errorWithDomain:IDSSigningErrorDomain code:4 userInfo:0, v50, v52, v53, v54];
      [*(a1 + 32) setReply:1];
      v24 = +[IDSDaemon sharedInstance];
      v25 = [*(a1 + 32) localObject];
      v62 = [v24 broadcasterForLocalObject:v25 messageContext:*(a1 + 32)];

      [v62 finishedVerifyingBatchedSignedDataForRequest:*(a1 + 56) results:0 error:v17];
    }

    goto LABEL_40;
  }

  v20 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 56);
    *buf = 138412290;
    v82 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Daemon dropping request %@ because it is missing required parameter", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (*(a1 + 56))
  {
    v17 = [NSError errorWithDomain:IDSSigningErrorDomain code:1 userInfo:0];
    v62 = [*(a1 + 72) listenerRemoteObjectForLocalObject:v63];
    [v62 finishedVerifyingBatchedSignedDataForRequest:*(a1 + 56) results:0 error:v17];
LABEL_40:
  }
}

void sub_10065B848(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v24 = a3;
  [*(a1 + 32) setReply:1];
  v6 = +[IDSDaemon sharedInstance];
  v7 = [*(a1 + 32) localObject];
  v23 = a1;
  v22 = [v6 broadcasterForLocalObject:v7 messageContext:*(a1 + 32)];

  v8 = objc_alloc_init(NSMutableDictionary);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v15 = [v9 objectForKeyedSubscript:v14];
        if (v15)
        {
          v16 = [NSKeyedArchiver archivedDataWithRootObject:v15 requiringSecureCoding:1 error:0];
        }

        else
        {
          v16 = 0;
        }

        v17 = [v14 prefixedURI];

        if (v17)
        {
          v18 = v16 == 0;
        }

        else
        {
          v18 = 1;
        }

        if (!v18)
        {
          v19 = [v14 prefixedURI];
          [v8 setObject:v16 forKeyedSubscript:v19];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  v20 = *(v23 + 40);
  v21 = [v8 copy];
  [v22 finishedVerifyingBatchedSignedDataForRequest:v20 results:v21 error:v24];
}

void sub_10065BB70(uint64_t a1)
{
  v205 = 0;
  v206 = 0;
  [*(a1 + 32) _fetchAccountEntitlements:&v206 listenerID:&v205 inContext:*(a1 + 40)];
  v1 = v206;
  v2 = v205;
  v174 = v1;
  if (v1)
  {
    v172 = v2;
    v183 = [[IDSSendParameters alloc] initWithDictionary:*(a1 + 48)];
    v3 = [v183 accountUUID];
    [v183 setMainAccountUUID:v3];

    v4 = [v183 fromID];
    [v183 setOriginalfromID:v4];

    if ([*(a1 + 32) dropMessageIfDropPointIsDetectedWithSendParameters:v183])
    {
      v5 = [NSString alloc];
      v6 = [v183 messageUUID];
      v173 = [v5 initWithData:v6 encoding:4];

      v7 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v183 messageType];
        v9 = [v183 accountUUID];
        v10 = [v183 fromID];
        *buf = 138413058;
        v211 = v173;
        v212 = 2112;
        v213 = v8;
        v214 = 2112;
        v215 = v9;
        v216 = 2112;
        v217 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Message has been dropped at point IDSMessageDropPointDaemon { messageID: %@, type: %@, accountID: %@, fromID: %@ }", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v11 = [v183 messageType];
        v12 = [v183 accountUUID];
        v168 = [v183 fromID];
        _IDSLogV();
      }

LABEL_39:
      v184 = 0;
LABEL_159:

      v2 = v172;
      goto LABEL_160;
    }

    v173 = [v183 groupData];
    if (v173)
    {
      v13 = [NSKeyedUnarchiver ids_secureUnarchiveObjectOfClass:objc_opt_class() withData:v173];
      [v183 setDestinations:v13];
    }

    v14 = [*(a1 + 32) accountController];
    v15 = [v183 mainAccountUUID];
    v184 = [v14 accountWithUniqueID:v15];

    v16 = [v184 service];
    v17 = [v16 pushTopic];
    LODWORD(v15) = [v17 hasPrefix:@"com.apple.private.alloy.continuity"];

    if (v15)
    {
      kdebug_trace();
    }

    if (!v184)
    {
      v43 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = [v183 mainAccountUUID];
        *buf = 138412290;
        v211 = v44;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "(Messaging1) No account found for ID: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v158 = [v183 mainAccountUUID];
        _IDSLogV();
      }

      IMLogBacktrace();
      goto LABEL_39;
    }

    v171 = [v183 sendMetric];
    if (v171)
    {
      v18 = +[NSString stringGUID];
      v19 = *(*(a1 + 32) + 536);
      v202[0] = _NSConcreteStackBlock;
      v202[1] = 3221225472;
      v202[2] = sub_10065DA28;
      v202[3] = &unk_100BD71D8;
      v203 = v171;
      v20 = v18;
      v204 = v20;
      [v19 wouldSampleOutgoingMetricWithSamplingID:v20 completionHandler:v202];
    }

    v21 = [*(a1 + 32) currentServerTime];
    [v21 currentServerTimeInterval];
    v22 = [NSNumber numberWithDouble:?];
    v23 = +[_TtC17identityservicesd27IDSCloudTelemetryMetricKeys outgoingReceivedKey];
    [v171 addEntry:v22 forKey:v23];

    if ([v183 forceQuery] == 1)
    {
      v24 = *(a1 + 32);
      v25 = [*(a1 + 40) localObject];
      v26 = [v184 service];
      v27 = [v26 identifier];
      LOBYTE(v24) = [v24 validateListenerForLocalObject:v25 andCheckEntitlement:kIDSForceQuerySendParameterEntitlement forAccessToServiceWithIdentifier:v27];

      if ((v24 & 1) == 0)
      {
        v45 = [NSString alloc];
        v46 = [v183 messageUUID];
        v170 = [v45 initWithData:v46 encoding:4];

        v47 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = [v184 service];
          v49 = [v48 identifier];
          *buf = 138412546;
          v211 = v170;
          v212 = 2112;
          v213 = v49;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Message using force query parameter but does not have appropriate entitlement! { messageID: %@, service: %@}", buf, 0x16u);
        }

        if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
        {
          goto LABEL_158;
        }

        v169 = [v184 service];
        v50 = [v169 identifier];
        _IDSLogV();
LABEL_157:

LABEL_158:
        goto LABEL_159;
      }
    }

    v28 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Gossip - Trying to fetch STH.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v29 = [v183 destinations];
    if (v29)
    {
      v30 = [v184 service];
      v31 = [v30 pushTopic];
      if (v31)
      {
        v32 = [v183 fromID];
        v33 = v32 == 0;

        if (!v33)
        {
          v34 = +[IDSKTGossipManager sharedInstance];
          v35 = [v183 destinations];
          v36 = [v184 service];
          v37 = [v36 pushTopic];
          v38 = [v183 fromID];
          v170 = [v34 gossipSTHPayloadForDestinations:v35 forServiceIdentifier:v37 fromID:v38];

          if (v170)
          {
            v208 = NGMEncryptedAttributeKTGossipData;
            v209 = v170;
            v39 = [NSDictionary dictionaryWithObjects:&v209 forKeys:&v208 count:1];
            v40 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v211 = v39;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Gossip - Encrypted Attributes: %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v157 = v39;
              _IDSLogV();
            }

            v41 = v183;
            v42 = v39;
            goto LABEL_52;
          }
        }
      }

      else
      {
      }
    }

    v51 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Gossip - Retrieved nil STH. Will not gossip.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v170 = 0;
    v42 = 0;
    v41 = v183;
LABEL_52:
    v169 = v42;
    [v41 setEncryptionAttributes:v157];
    if ([v184 accountType] == 2)
    {
      goto LABEL_57;
    }

    v52 = [v183 dataToEncrypt];
    if (v52)
    {
      v53 = 0;
    }

    else
    {
      v54 = [v183 protobuf];
      v53 = v54 == 0;
    }

    if (v53 | (([*(a1 + 32) _isUnderFirstDataProtectionLock] & 1) == 0))
    {
LABEL_57:
      v55 = *(a1 + 32);
      v56 = [v183 destinations];
      LOBYTE(v55) = [v55 _canSendMessageWithAccount:v184 toDestination:v56];

      if (v55)
      {
        if ([v184 accountType] != 2)
        {
          v196 = 0u;
          v197 = 0u;
          v195 = 0u;
          v194 = 0u;
          v57 = [v183 destinations];
          obj = [v57 destinationURIs];

          v181 = [obj countByEnumeratingWithState:&v194 objects:v207 count:16];
          if (v181)
          {
            v179 = *v195;
            v176 = IDSDevicePropertyIdentities;
            v177 = IDSDevicePropertyPushToken;
            do
            {
              for (i = 0; i != v181; i = i + 1)
              {
                if (*v195 != v179)
                {
                  objc_enumerationMutation(obj);
                }

                v59 = *(*(&v194 + 1) + 8 * i);
                if ([v59 hasPrefix:@"device:"])
                {
                  v60 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Attempting to send to a local device using modern addressing, however we are not a local account, Swapping out destination for internet style addressing", buf, 2u);
                  }

                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                  {
                    _IDSLogV();
                  }

                  v61 = [v59 _stripFZIDPrefix];
                  v62 = [v184 service];
                  v63 = [v184 dependentRegistrationMatchingUUID:v61 includingTinker:{objc_msgSend(v62, "wantsTinkerDevices")}];

                  if (v63)
                  {
                    v64 = [v63 _dataForKey:v177];
                    v65 = [v63 _arrayForKey:v176];
                    v66 = [v184 service];
                    v67 = [v66 pushTopic];

                    v68 = _IDSCopyIDForPushTokenAndIdentitiesWithService();
                    v69 = [NSMutableSet alloc];
                    v70 = [v183 destinations];
                    v71 = [v70 destinationURIs];
                    v72 = [v69 initWithSet:v71];

                    [v72 removeObject:v59];
                    if (v68)
                    {
                      [v72 addObject:v68];
                    }

                    else
                    {
                      v73 = OSLogHandleForIDSCategory();
                      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138413058;
                        v211 = v59;
                        v212 = 2112;
                        v213 = v64;
                        v214 = 2112;
                        v215 = v67;
                        v216 = 2112;
                        v217 = v65;
                        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Cloud destination could not be formed { destination: %@, token: %@, topic: %@, identities: %@ }", buf, 0x2Au);
                      }

                      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                      {
                        v166 = v67;
                        v167 = v65;
                        v159 = v59;
                        v164 = v64;
                        _IDSLogV();
                      }
                    }

                    v74 = [NSSet setWithSet:v72, v159, v164, v166, v167];
                    v75 = [IDSDestination destinationWithStrings:v74];
                    [v183 setDestinations:v75];
                  }
                }
              }

              v181 = [obj countByEnumeratingWithState:&v194 objects:v207 count:16];
            }

            while (v181);
          }
        }

        v76 = [v183 command];
        v77 = [v76 isEqual:&off_100C3CEE0];

        if (v77)
        {
          v78 = [*(a1 + 32) opportunisticDeliveryController];
          v79 = [v183 destinations];
          [v78 sendOpportunisticDataIfNeededToDestination:v79 completion:0];
        }

        v50 = [v183 fromID];
        v80 = [*(a1 + 32) serviceController];
        v81 = [v184 service];
        v82 = [v81 pushTopic];
        v83 = [v80 serviceWithPushTopic:v82];
        v84 = [v83 shouldAllowProxyDelivery];

        if ((([v50 length] != 0) & v84) == 1 && (objc_msgSend(v184, "unprefixedURIStringsFromRegistration"), v85 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v50, "_stripFZIDPrefix"), v86 = objc_claimAutoreleasedReturnValue(), v87 = objc_msgSend(v85, "containsObject:", v86), v86, v85, (v87 & 1) == 0))
        {
          v149 = [*(a1 + 32) accountController];
          v150 = [v184 service];
          v182 = [v149 localAccountOnService:v150];

          v151 = [(__CFDictionary *)v182 loginID];
          v152 = [v151 _stripFZIDPrefix];
          v153 = [v50 _stripFZIDPrefix];
          v154 = _FTAreIDsEquivalent();

          if (v154)
          {
            v155 = [(__CFDictionary *)v182 uniqueID];
            [v183 setAccountUUID:v155];

            v156 = [(__CFDictionary *)v182 uniqueID];
            [v183 setMainAccountUUID:v156];
          }
        }

        else
        {
          v182 = 0;
        }

        v88 = [v50 _stripFZIDPrefix];
        IsPhoneNumber = IMStringIsPhoneNumber();

        if (IsPhoneNumber && (v90 = *(a1 + 32), [v50 _stripFZIDPrefix], v91 = objc_claimAutoreleasedReturnValue(), v92 = _IDSCopyIDForPhoneNumberWithOptions(), objc_msgSend(v184, "service"), v93 = objc_claimAutoreleasedReturnValue(), +[IDSDAccountController sharedInstance](IDSDAccountController, "sharedInstance"), v94 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v184, "service"), v95 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v94, "appleIDAccountOnService:", v95), v96 = objc_claimAutoreleasedReturnValue(), LODWORD(v90) = objc_msgSend(v90, "shouldDropMessageIfOutOfFamilyPhoneNumber:forService:withAppleIDAccount:", v92, v93, v96), v96, v95, v94, v93, v92, v91, v90))
        {
          v97 = objc_alloc_init(NSMutableDictionary);
          v98 = [v183 subService];
          if (v98)
          {
            CFDictionarySetValue(v97, IDSMessageContextServiceIdentifierKey, v98);
          }

          v99 = [v183 localDestinationDeviceUUID];
          if (v99)
          {
            CFDictionarySetValue(v97, IDSMessageContextOriginalDestinationDeviceKey, v99);
          }

          v100 = objc_alloc_init(IMMessageContext);
          v101 = *(a1 + 32);
          v191[0] = _NSConcreteStackBlock;
          v191[1] = 3221225472;
          v191[2] = sub_10065DEF4;
          v191[3] = &unk_100BE3490;
          v192 = v183;
          v193 = v97;
          v180 = v97;
          v102 = [v184 service];
          v103 = [v102 pushTopic];
          [v101 enqueueBroadcast:v191 forTopic:v103 entitlement:kIDSMessagingEntitlement command:0 capabilities:kIDSListenerCapConsumesLaunchOnDemandOutgoingMessageUpdates messageContext:v100];

          v104 = v192;
        }

        else
        {
          if (v182)
          {
            v113 = v182;

            v114 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v211 = v113;
              _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "Switching to using local account since it has the alias corresponding to the fromID: %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v159 = v113;
              _IDSLogV();
            }
          }

          else
          {
            v113 = v184;
          }

          v122 = [(__CFDictionary *)v113 newSendMessageContext];
          [v122 setListenerID:v172];
          [v122 setEntitlements:v174];
          v123 = *(a1 + 32);
          v124 = [(__CFDictionary *)v113 service];
          LODWORD(v123) = [v123 _shouldIncludeDefaultDeviceAsDestinationForMessageWithParams:v183 service:v124];

          if (v123)
          {
            v125 = *(a1 + 32);
            v126 = [(__CFDictionary *)v113 service];
            v127 = [v125 _shouldMessageBeProxied:v183 service:v126];
          }

          else
          {
            v127 = 0;
          }

          [v122 setShouldIncludeDefaultDevice:v127];
          v180 = [v183 subService];
          if ([(__CFDictionary *)v180 length])
          {
            [v122 setSubService:v180];
            v128 = [*(a1 + 32) serviceController];
            v129 = [v128 serviceWithPushTopic:v180];

            v130 = [*(a1 + 32) accountController];
            v131 = [v130 localAccountOnService:v129];

            v132 = [v131 uniqueID];
            [v183 setAccountUUID:v132];
            [v183 setSubServiceAccountUUID:v132];
            v133 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v211 = v180;
              v212 = 2112;
              v213 = v132;
              _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "subServiceName %@ subServiceUUID %@", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v160 = v180;
              v164 = v132;
              _IDSLogV();
            }

            if (!v131)
            {
              v134 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v211 = v129;
                _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_ERROR, "Couldn't find sub-account for service name %@", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                _IDSWarnV();
                _IDSLogV();
                v160 = v129;
                _IDSLogTransport();
              }
            }
          }

          v135 = [(__CFDictionary *)v113 service:v160];
          v104 = [v135 identifier];

          v185 = [(__CFDictionary *)v113 smallDescription];
          if ([v183 priority] == 300 && (objc_msgSend(objc_opt_class(), "entitlementDictionary:isEntitledToAccessService:forEntitlement:forAccount:shouldWarn:", v174, v104, kIDSHighPriorityMessagingEntitlement, v185, 0) & 1) == 0)
          {
            v136 = objc_opt_class();
            v137 = kIDSUrgentPriorityMessagingEntitlement;
            if (([v136 entitlementDictionary:v174 isEntitledToAccessService:v104 forEntitlement:kIDSUrgentPriorityMessagingEntitlement forAccount:v185 shouldWarn:0] & 1) == 0)
            {
              v138 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v211 = v137;
                v212 = 2112;
                v213 = v104;
                _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_ERROR, "**** IDSDaemon: Urgent priority messaging requires entitlement for %@, DOWNGRADING MESSAGE PRIORITY TO DEFAULT - violator %@ ****", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                _IDSWarnV();
                _IDSLogV();
                v161 = v137;
                v165 = v104;
                _IDSLogTransport();
              }

              [v183 setPriority:{200, v161, v165}];
            }
          }

          v139 = [v183 priority];
          if (v139 != 100 && v139 != 200 && v139 != 300)
          {
            v140 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
            {
              v141 = [v183 priority];
              *buf = 134218242;
              v211 = v141;
              v212 = 2112;
              v213 = v104;
              _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_ERROR, "Client has specified a priority we do not recognize: %lu. Perpetrator: %@. Forcing default priority.", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              v162 = [v183 priority];
              _IDSWarnV();
              v163 = [v183 priority];
              _IDSLogV();
              v161 = [v183 priority];
              v165 = v104;
              _IDSLogTransport();
            }

            [v183 setPriority:{200, v161, v165}];
          }

          v142 = [v183 priority];
          v143 = objc_opt_class();
          v144 = *(a1 + 40);
          v145 = [v122 servicePushTopic];
          v146 = [v143 progressBlockForSendParameters:v183 messageContext:v144 topic:v145 forObject:*(a1 + 32)];

          v147 = +[IDSDaemonPriorityQueueController sharedInstance];
          v186[0] = _NSConcreteStackBlock;
          v186[1] = 3221225472;
          v186[2] = sub_10065E028;
          v186[3] = &unk_100BDA848;
          v186[4] = *(a1 + 32);
          v187 = v183;
          v188 = *(a1 + 40);
          v100 = v122;
          v189 = v100;
          v148 = v146;
          v190 = v148;
          [v147 performBlockWithPriority:v186 priority:v142];

          v184 = v113;
        }

        goto LABEL_156;
      }

      v105 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "Result of can send message with account was no", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v106 = objc_alloc_init(NSMutableDictionary);
      v107 = [v183 subService];
      if (v107)
      {
        CFDictionarySetValue(v106, IDSMessageContextServiceIdentifierKey, v107);
      }

      v108 = [v183 localDestinationDeviceUUID];
      if (v108)
      {
        CFDictionarySetValue(v106, IDSMessageContextOriginalDestinationDeviceKey, v108);
      }

      v50 = objc_alloc_init(IMMessageContext);
      v109 = *(a1 + 32);
      v110 = v198;
      v198[0] = _NSConcreteStackBlock;
      v198[1] = 3221225472;
      v198[2] = sub_10065DDC0;
      v198[3] = &unk_100BE3490;
      v198[4] = v183;
      v199 = v106;
      v182 = v106;
      v111 = [v184 service];
      v112 = [v111 pushTopic];
      [v109 enqueueBroadcast:v198 forTopic:v112 entitlement:kIDSMessagingEntitlement command:0 capabilities:kIDSListenerCapConsumesLaunchOnDemandOutgoingMessageUpdates messageContext:v50];
    }

    else
    {
      v115 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "Client is attempting to send a message under first data protection lock, failing message", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v116 = objc_alloc_init(NSMutableDictionary);
      v117 = [v183 subService];
      if (v117)
      {
        CFDictionarySetValue(v116, IDSMessageContextServiceIdentifierKey, v117);
      }

      v118 = [v183 localDestinationDeviceUUID];
      if (v118)
      {
        CFDictionarySetValue(v116, IDSMessageContextOriginalDestinationDeviceKey, v118);
      }

      v50 = objc_alloc_init(IMMessageContext);
      v119 = *(a1 + 32);
      v110 = v200;
      v200[0] = _NSConcreteStackBlock;
      v200[1] = 3221225472;
      v200[2] = sub_10065DC8C;
      v200[3] = &unk_100BE3490;
      v200[4] = v183;
      v201 = v116;
      v182 = v116;
      v120 = [v184 service];
      v121 = [v120 pushTopic];
      [v119 enqueueBroadcast:v200 forTopic:v121 entitlement:kIDSMessagingEntitlement command:0 capabilities:kIDSListenerCapConsumesLaunchOnDemandOutgoingMessageUpdates messageContext:v50];
    }

    v100 = v110[4];
LABEL_156:

    goto LABEL_157;
  }

  v183 = 0;
  v184 = 0;
LABEL_160:
}

void sub_10065DA28(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) guid];
    v8 = v7;
    v9 = *(a1 + 40);
    v10 = @"NO";
    *buf = 138412802;
    if (a2)
    {
      v10 = @"YES";
    }

    v20 = v7;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cloud telemetry metric for outgoing message with guid: %@ samplingID: %@ will be sampled: %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v11 = [*(a1 + 32) guid];
    _IDSLogV();
  }

  v12 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10065DC68;
  block[3] = &unk_100BD8DE8;
  v18 = a2;
  v15 = v5;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v13 = v5;
  dispatch_async(v12, block);
}

id *sub_10065DC68(id *result)
{
  if (*(result + 56) == 1 && !result[4])
  {
    return [result[5] setSamplingID:result[6]];
  }

  return result;
}

void sub_10065DC8C(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = IDSSendErrorDomain;
  v4 = [NSDictionary dictionaryWithObject:@"Sending Internet IDS Messages before first unlock is no longer supported. Please contact the IDS & Privacy teams to discuss further" forKey:@"Reason"];
  v5 = [NSError errorWithDomain:v3 code:18 userInfo:v4];

  if (v10)
  {
    v6 = [*(a1 + 32) messageUUID];
    v7 = JWUUIDPushObjectToString();
    v8 = [*(a1 + 32) alternateCallbackID];
    v9 = [*(a1 + 32) mainAccountUUID];
    [v10 messageIdentifier:v7 alternateCallbackID:v8 forAccount:v9 updatedWithResponseCode:objc_msgSend(v5 error:"code") lastCall:v5 context:{1, *(a1 + 40)}];
  }
}

void sub_10065DDC0(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = IDSSendErrorDomain;
  v4 = [NSDictionary dictionaryWithObject:@"Destination device is not active for this account" forKey:@"Reason"];
  v5 = [NSError errorWithDomain:v3 code:24 userInfo:v4];

  if (v10)
  {
    v6 = [*(a1 + 32) messageUUID];
    v7 = JWUUIDPushObjectToString();
    v8 = [*(a1 + 32) alternateCallbackID];
    v9 = [*(a1 + 32) mainAccountUUID];
    [v10 messageIdentifier:v7 alternateCallbackID:v8 forAccount:v9 updatedWithResponseCode:objc_msgSend(v5 error:"code") lastCall:v5 context:{1, *(a1 + 40)}];
  }
}

void sub_10065DEF4(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = IDSSendErrorDomain;
  v4 = [NSDictionary dictionaryWithObject:@"Sender phone number is not bound to account AppleID." forKey:@"Reason"];
  v5 = [NSError errorWithDomain:v3 code:37 userInfo:v4];

  if (v10)
  {
    v6 = [*(a1 + 32) messageUUID];
    v7 = JWUUIDPushObjectToString();
    v8 = [*(a1 + 32) alternateCallbackID];
    v9 = [*(a1 + 32) mainAccountUUID];
    [v10 messageIdentifier:v7 alternateCallbackID:v8 forAccount:v9 updatedWithResponseCode:objc_msgSend(v5 error:"code") lastCall:v5 context:{1, *(a1 + 40)}];
  }
}

id sub_10065E028(void *a1)
{
  v2 = objc_opt_class();
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1[8];
  v7 = a1[4];
  v6 = a1[5];

  return [v2 sendMessageWithIDSSendParameters:v6 messageContext:v3 threadContext:v4 progressBlock:v5 onObject:v7];
}

void sub_10065EB38(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x10065E8BCLL);
  }

  _Unwind_Resume(a1);
}

void sub_10065EB98(uint64_t a1)
{
  v3 = [*(a1 + 32) replayStateCommitter];
  v2 = [*(a1 + 40) replayKey];
  [v3 commitStateForKey:v2];
}

void sub_10065F2F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8 = *(a1 + 48);
    v7 = *(a1 + 56);
    v9 = [v3 idsResponseCode];
    v10 = [v3 responseError];
    *buf = 138413570;
    v30 = v6;
    v31 = 2112;
    v32 = v5;
    v33 = 2112;
    v34 = v8;
    v35 = 2112;
    v36 = v7;
    v37 = 2048;
    v38 = v9;
    v39 = 2112;
    v40 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Finished sending cancel message using queueOneIdentifier: %@  fromID: %@  service: %@  messageIdentifier: %@   with responseCode: %ld responseError: %@", buf, 0x3Eu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v15 = [v3 idsResponseCode];
    [v3 responseError];
    v28 = v27 = v15;
    v25 = v13;
    v26 = v14;
    v23 = v11;
    v24 = v12;
    _IDSLogV();
  }

  if ([v3 idsResponseCode])
  {
    v16 = 0;
  }

  else
  {
    v17 = [v3 responseError];
    v16 = v17 == 0;
  }

  v18 = +[IDSDaemon sharedInstance];
  v19 = [*(a1 + 64) localObject];
  v20 = [v18 broadcasterForLocalObject:v19 messageContext:*(a1 + 64)];

  if (v20)
  {
    v21 = *(a1 + 72);
    v22 = [v3 responseError];
    [v20 didCancelMessageWithSuccess:v16 onAccount:v21 error:v22 identifier:*(a1 + 56)];
  }
}

void sub_10065FD70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x10065F9E0);
  }

  _Unwind_Resume(exception_object);
}

void sub_10065FF34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = [v3 lastCall];
    v8 = @"NO";
    if (v7)
    {
      v8 = @"YES";
    }

    *buf = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Sent outgoing error message with guid %@. Last call? %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [v3 lastCall];
    _IDSLogV();
  }
}

void sub_100660CF4(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v17 = v7;
    v18 = 2048;
    v19 = a4;
    v20 = 1024;
    v21 = v8 == 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Completed forced OTR negotiation: token is %@, setupTime is %.6f, error==nil is %d", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v15 = v8 == 0;
      v14 = a4;
      v13 = v7;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v15 = v8 == 0;
        v14 = a4;
        v13 = v7;
        _IDSLogV();
      }
    }
  }

  v10 = [IDSDaemon sharedInstance:v13];
  v11 = [*(a1 + 32) localObject];
  v12 = [v10 broadcasterForLocalObject:v11 messageContext:*(a1 + 32)];

  if (v12)
  {
    [v12 OTRTestCallback:v7 time:v8 error:a4];
  }
}

void sub_100661670(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 lastCall])
  {
    if ([v3 idsResponseCode])
    {
      v4 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [v3 responseError];
        v6 = *(a1 + 32);
        *buf = 138412546;
        v12 = v5;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "** Failed sending engram decryption failure {responseError: %@, token: %@}", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && (_IDSShouldLog() & 1) != 0)
      {
LABEL_12:
        v10 = [v3 responseError];
        _IDSLogV();
      }
    }

    else
    {
      v7 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v3 responseError];
        v9 = *(a1 + 32);
        *buf = 138412546;
        v12 = v8;
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finished sending engram decryption failure {responseError: %@, token: %@}", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && (_IDSShouldLog() & 1) != 0)
      {
        goto LABEL_12;
      }
    }
  }
}

void sub_100661868(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1006617D8);
  }

  _Unwind_Resume(a1);
}

id sub_100661E7C(id a1, id a2)
{
  v2 = a2;
  v3 = [[NSData alloc] initWithBase64EncodedString:v2 options:0];

  return v3;
}

void sub_1006638BC(uint64_t a1)
{
  v2 = +[IDSUTunDeliveryController sharedInstance];
  v3 = [v2 hasSpaceForMessagesWithPriority:*(a1 + 48) dataProtectionClass:*(a1 + 56)];

  if (v3)
  {
    v4 = [IDSDMessageStore unsentNonUrgentAccountUUIDsRequiringDuetOverrides:*(a1 + 60) priority:*(a1 + 48) dataProtectionClass:*(a1 + 56)];
    if ([v4 count])
    {
      [*(a1 + 32) addObjectsFromArray:v4];
    }

    v5 = [*(a1 + 32) allObjects];
    v6 = [v5 mutableCopy];

    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      v9 = @"Sync";
      if (v8 == 200)
      {
        v9 = @"Default";
      }

      if (v8 == 300)
      {
        v10 = @"URGENT";
      }

      else
      {
        v10 = v9;
      }

      *buf = 138412546;
      v20 = v10;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AccountUUIDs with pending %@ messages %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    v11 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100663BDC;
    block[3] = &unk_100BE3570;
    v12 = *(a1 + 48);
    block[4] = *(a1 + 40);
    v16 = v6;
    v17 = v12;
    v18 = *(a1 + 56);
    v13 = v6;
    dispatch_async(v11, block);
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No space in local delivery queues for these messages.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

void sub_100663BDC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _processLocalMessagesWithAccountUUIDs:*(a1 + 40) priority:*(a1 + 48) dataProtectionClass:*(a1 + 56)];

  objc_autoreleasePoolPop(v2);
}

void sub_100664000(uint64_t a1)
{
  v2 = +[IDSUTunDeliveryController sharedInstance];
  v3 = [v2 hasSpaceForCloudMessagesWithPriority:*(a1 + 56) dataProtectionClass:*(a1 + 64)];

  if (v3)
  {
    v4 = [IDSDMessageStore unsentNonUrgentAccountUUIDsRequiringDuetOverrides:*(a1 + 68) priority:*(a1 + 56) dataProtectionClass:*(a1 + 64) withMessageTypes:*(a1 + 32)];
    if ([v4 count])
    {
      [*(a1 + 40) addObjectsFromArray:v4];
    }

    v5 = [*(a1 + 40) allObjects];
    v6 = [v5 mutableCopy];

    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 56);
      v9 = @"Sync";
      if (v8 == 200)
      {
        v9 = @"Default";
      }

      if (v8 == 300)
      {
        v10 = @"URGENT";
      }

      else
      {
        v10 = v9;
      }

      *buf = 138412546;
      v21 = v10;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AccountUUIDs with pending %@ messages %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    v11 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100664338;
    block[3] = &unk_100BE3598;
    v12 = *(a1 + 56);
    block[4] = *(a1 + 48);
    v16 = v6;
    v18 = v12;
    v19 = *(a1 + 64);
    v17 = *(a1 + 32);
    v13 = v6;
    dispatch_async(v11, block);
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No space in local delivery queues for these messages.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

void sub_100664338(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _processLocalMessagesWithAccountUUIDs:*(a1 + 40) priority:*(a1 + 56) dataProtectionClass:*(a1 + 64) messageTypes:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

void sub_100664B9C(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = +[IDSDaemonPriorityQueueController sharedInstance];
  v7 = [v6 queueForPriority:*(a1 + 96)];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100664CF8;
  v11[3] = &unk_100BE3610;
  v11[4] = *(a1 + 32);
  v12 = *(a1 + 64);
  v8 = *(a1 + 72);
  v10 = *(a1 + 88);
  v9 = *(a1 + 96);
  v13 = v8;
  v17 = v9;
  v18 = *(a1 + 104);
  v16 = v10;
  v14 = *(a1 + 80);
  v15 = *(a1 + 56);
  [v2 _performDuetCheckAndSendForServiceIdentifier:v3 serviceDuetIdentifiers:v4 sendParameters:v5 logString:0 fromQueue:v7 completionBlock:v11];
}

void sub_100664CF8(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = objc_opt_class();
    v4 = [*(a1 + 40) uniqueID];
    [v3 _sendLocalDeliveryMessagesForAccountUUID:v4 threadContext:*(a1 + 48) priority:*(a1 + 80) dataProtectionClass:*(a1 + 88)];

    v20 = im_primary_queue();
    dispatch_async(v20, *(a1 + 72));
  }

  else
  {
    v5 = [*(a1 + 32) _messageStoreForDataProtectionClass:{objc_msgSend(*(a1 + 48), "dataProtectionClass")}];
    v6 = [v5 duetIdentifiersOverrideForAccountWithGUID:*(a1 + 56) priority:*(a1 + 80)];

    if ([v6 count])
    {
      v7 = *(a1 + 64);
      v8 = [v6 allObjects];
      [v7 setDuetIdentifiersOverride:v8];

      v9 = objc_opt_class();
      v10 = [*(a1 + 48) serviceIdentifier];
      v11 = [*(a1 + 48) serviceDuetIdentifiers];
      v12 = *(a1 + 64);
      v13 = +[IDSDaemonPriorityQueueController sharedInstance];
      v14 = [v13 queueForPriority:*(a1 + 80)];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100664F54;
      v21[3] = &unk_100BE35E8;
      v15 = *(a1 + 40);
      v21[4] = *(a1 + 32);
      v22 = v15;
      v16 = *(a1 + 48);
      v18 = *(a1 + 72);
      v17 = *(a1 + 80);
      v23 = v16;
      v25 = v17;
      v26 = *(a1 + 88);
      v24 = v18;
      [v9 _performDuetCheckAndSendForServiceIdentifier:v10 serviceDuetIdentifiers:v11 sendParameters:v12 logString:0 fromQueue:v14 completionBlock:v21];
    }

    else
    {
      v19 = im_primary_queue();
      dispatch_async(v19, *(a1 + 72));
    }
  }
}

void sub_100664F54(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = objc_opt_class();
    v4 = [*(a1 + 40) uniqueID];
    [v3 _sendLocalDeliveryMessagesForAccountUUID:v4 threadContext:*(a1 + 48) priority:*(a1 + 64) dataProtectionClass:*(a1 + 72)];
  }

  v5 = im_primary_queue();
  dispatch_async(v5, *(a1 + 56));
}

void sub_100665844(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = +[IDSDaemonPriorityQueueController sharedInstance];
  v7 = [v6 queueForPriority:*(a1 + 104)];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1006659B8;
  v10[3] = &unk_100BE3688;
  v10[4] = *(a1 + 32);
  v11 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 104);
  v12 = v8;
  v17 = v9;
  v13 = *(a1 + 80);
  v18 = *(a1 + 112);
  v16 = *(a1 + 96);
  v14 = *(a1 + 88);
  v15 = *(a1 + 56);
  [v2 _performDuetCheckAndSendForServiceIdentifier:v3 serviceDuetIdentifiers:v4 sendParameters:v5 logString:0 fromQueue:v7 completionBlock:v10];
}

void sub_1006659B8(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = objc_opt_class();
    v4 = [*(a1 + 40) uniqueID];
    [v3 _sendLocalDeliveryMessagesForAccountUUID:v4 threadContext:*(a1 + 48) priority:*(a1 + 88) messageTypes:*(a1 + 56) dataProtectionClass:*(a1 + 96)];

    v20 = im_primary_queue();
    dispatch_async(v20, *(a1 + 80));
  }

  else
  {
    v5 = [*(a1 + 32) _messageStoreForDataProtectionClass:{objc_msgSend(*(a1 + 48), "dataProtectionClass")}];
    v6 = [v5 duetIdentifiersOverrideForAccountWithGUID:*(a1 + 64) priority:*(a1 + 88)];

    if ([v6 count])
    {
      v7 = *(a1 + 72);
      v8 = [v6 allObjects];
      [v7 setDuetIdentifiersOverride:v8];

      v9 = objc_opt_class();
      v10 = [*(a1 + 48) serviceIdentifier];
      v11 = [*(a1 + 48) serviceDuetIdentifiers];
      v12 = *(a1 + 72);
      v13 = +[IDSDaemonPriorityQueueController sharedInstance];
      v14 = [v13 queueForPriority:*(a1 + 88)];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100665C48;
      v22[3] = &unk_100BE3660;
      *v21 = *(a1 + 32);
      v15 = v21[1];
      v16 = *(a1 + 48);
      v26 = *(a1 + 88);
      v17 = *(a1 + 56);
      *&v18 = v16;
      *(&v18 + 1) = v17;
      v23 = *v21;
      v24 = v18;
      v27 = *(a1 + 96);
      v25 = *(a1 + 80);
      [v9 _performDuetCheckAndSendForServiceIdentifier:v10 serviceDuetIdentifiers:v11 sendParameters:v12 logString:0 fromQueue:v14 completionBlock:v22];
    }

    else
    {
      v19 = im_primary_queue();
      dispatch_async(v19, *(a1 + 80));
    }
  }
}

void sub_100665C48(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = objc_opt_class();
    v4 = [*(a1 + 40) uniqueID];
    [v3 _sendLocalDeliveryMessagesForAccountUUID:v4 threadContext:*(a1 + 48) priority:*(a1 + 72) messageTypes:*(a1 + 56) dataProtectionClass:*(a1 + 80)];
  }

  v5 = im_primary_queue();
  dispatch_async(v5, *(a1 + 64));
}

void sub_100668DB8(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {

    objc_end_catch();
    JUMPOUT(0x10066814CLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_100668E70(uint64_t a1)
{
  v2 = [*(a1 + 32) guid];

  if (v2)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) guid];
      *buf = 138412290;
      v33 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deleting non-urgent internet outgoing message with guid %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v26 = [*(a1 + 32) guid];
      _IDSLogV();
    }

    v5 = +[IDSDAccountController sharedInstance];
    v6 = [*(a1 + 32) accountGUID];
    v7 = [v5 accountWithUniqueID:v6];

    v8 = [v7 service];
    v9 = [v8 dataProtectionClass];

    v10 = [*(a1 + 32) guid];
    v11 = [*(a1 + 32) alternateGUID];
    [IDSDMessageStore deleteOutgoingMessageWithGUID:v10 alternateGUID:v11 dataProtectionClass:v9];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = [*(a1 + 32) combinedMessages];
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        v17 = [v16 guid];

        if (v17)
        {
          v18 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v16 guid];
            *buf = 138412290;
            v33 = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Deleting non-urgent internet outgoing combinedMessage with guid %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v26 = [v16 guid];
            _IDSLogV();
          }

          v20 = +[IDSDAccountController sharedInstance];
          v21 = [*(a1 + 32) accountGUID];
          v22 = [v20 accountWithUniqueID:v21];

          v23 = [v22 service];
          v24 = [v23 dataProtectionClass];

          v25 = [v16 guid];
          [IDSDMessageStore deleteOutgoingMessageWithGUID:v25 alternateGUID:0 dataProtectionClass:v24];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v13);
  }
}

void sub_1006692A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 guid];
    *buf = 138412290;
    v31 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending individual non-urgent internet message %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = [v3 guid];
    _IDSLogV();
  }

  v22 = *(a1 + 32);
  v26 = [v3 message];
  v25 = [v3 copySendParameters];
  v24 = [v3 fromID];
  v23 = [v3 destinations];
  v21 = [v3 useDictAsTopLevel];
  v6 = [v3 dataToEncrypt];
  v20 = [v3 encryptPayload];
  v19 = [v3 wantsResponse];
  v7 = [v3 expirationDate];
  v8 = [v3 command];
  v9 = [v3 wantsDeliveryStatus];
  v10 = [v3 wantsCertifiedDelivery];
  v11 = [v3 deliveryStatusContext];
  v12 = [v3 messageUUID];
  v13 = [v3 priority];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1006695C4;
  v27[3] = &unk_100BD8CD8;
  v28 = v3;
  v29 = *(a1 + 32);
  v14 = v3;
  LOWORD(v18) = 0;
  BYTE1(v17) = v10;
  LOBYTE(v17) = v9;
  BYTE1(v16) = v19;
  LOBYTE(v16) = v20;
  [v22 sendMessage:v26 params:v25 bulkedPayload:0 fromID:v24 toDestinations:v23 useDictAsTopLevel:v21 dataToEncrypt:v6 encryptPayload:v16 wantsResponse:v7 expirationDate:v8 command:v17 wantsDeliveryStatus:v11 wantsCertifiedDelivery:v12 deliveryStatusContext:v13 messageUUID:v18 priority:0 localDelivery:v27 disallowRefresh:? willSendBlock:? completionBlock:?];
}

void sub_1006695C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) guid];
    if ([v3 lastCall])
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v7 = [v3 responseError];
    *buf = 138413058;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    v24 = 2048;
    v25 = [v3 idsResponseCode];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Deleting sent non-urgent internet outgoing sole message with guid %@? %@. Error? %@ response code %ld", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v8 = [*(a1 + 32) guid];
    if ([v3 lastCall])
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v16 = [v3 responseError];
    v17 = [v3 idsResponseCode];
    v14 = v8;
    v15 = v9;
    _IDSLogV();
  }

  if ([v3 lastCall])
  {
    v10 = [*(a1 + 40) service];
    v11 = [v10 dataProtectionClass];

    v12 = [*(a1 + 32) guid];
    v13 = [*(a1 + 32) alternateGUID];
    [IDSDMessageStore deleteOutgoingMessageWithGUID:v12 alternateGUID:v13 dataProtectionClass:v11];
  }
}

void sub_100669828(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) guid];
    if ([v3 lastCall])
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v7 = [v3 responseError];
    *buf = 138413058;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    v20 = 2048;
    v21 = [v3 idsResponseCode];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Deleting sent non-urgent internet message with guid %@? %@. Error? %@ response code %ld", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v8 = [*(a1 + 32) guid];
    if ([v3 lastCall])
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v12 = [v3 responseError];
    v13 = [v3 idsResponseCode];
    v10 = v8;
    v11 = v9;
    _IDSLogV();
  }

  if ([v3 lastCall])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10066AC40(uint64_t a1)
{
  v2 = [*(a1 + 32) replayStateCommitter];
  [v2 commitStateForKey:*(a1 + 40)];
}

void sub_10066BE00(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7)
{
  v113 = a2;
  v114 = a4;
  v115 = a5;
  v119 = a6;
  v118 = a7;
  if (_os_feature_enabled_impl() && IDSCommandIsGroupSessionCommand())
  {
    [*(a1 + 32) integerValue];
    kdebug_trace();
  }

  v13 = sub_1005C23F8(v119);
  v111 = [v118 encryptionType];
  v120 = v13;
  if (([v118 usedCachedData] & 1) == 0)
  {
    if (v111 == 4)
    {
      theDict = [NSNumber numberWithBool:a3];
      v105 = v119;
      v14 = [v118 additionalDecryptionResult];
      v15 = [v14 objectForKey:&off_100C3CF58];
      v16 = v15;
      value = v16;
      if (![v16 code])
      {
        v17 = [v16 domain];
        v18 = [v17 isEqualToString:@"com.apple.messageprotection"];

        value = v16;
        if (v18)
        {

          value = 0;
        }
      }

      if (v15)
      {
        v19 = [NSNumber numberWithBool:value == 0];
      }

      else
      {
        v19 = 0;
      }

      v103 = 0;
    }

    else
    {
      if ((v111 & 0xFFFFFFFFFFFFFFFELL) != 4)
      {
        v109 = [NSNumber numberWithBool:a3];
        v103 = v119;
        v105 = 0;
        theDict = 0;
        v19 = 0;
        value = 0;
LABEL_17:
        v20 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(a1 + 32);
          *buf = 138413058;
          *v146 = theDict;
          *&v146[8] = 2112;
          *&v146[10] = v109;
          *&v146[18] = 2112;
          *&v146[20] = v19;
          v147 = 2112;
          v148 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Incoming message - processing metrics {ECSuccess: %@, legacySuccess: %@, secondarySuccess: %@, command: %@}", buf, 0x2Au);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v99 = v19;
          v100 = *(a1 + 32);
          v95 = theDict;
          v97 = v109;
          _IDSLogV();
        }

        v23 = *(a1 + 32);
        v22 = *(a1 + 40);
        v24 = [v118 usedLastResortCache];
        v25 = [*(a1 + 48) prefixedURI];
        v26 = [*(a1 + 56) rawToken];
        v27 = [*(a1 + 64) pushHandlerForAPSDelegatePort];
        v28 = [v27 pushToken];
        LOBYTE(v96) = v24;
        [IDSMessageMetricReporter reportMessageMetricWithMetadata:v22 secondarySuccess:v19 ECSuccess:theDict legacySuccess:v109 command:v23 decryptedEqual:1 triedLastResort:v96 secondaryError:value ECError:v105 legacyError:v103 fromDestination:v25 fromToken:v26 toToken:v28];

        v13 = v120;
        goto LABEL_23;
      }

      value = v119;
      v19 = [NSNumber numberWithBool:a3];
      v103 = 0;
      v105 = 0;
      theDict = 0;
    }

    v109 = 0;
    goto LABEL_17;
  }

LABEL_23:
  if (v13)
  {
    theDicta = [NSError errorWithDomain:IDSGenericErrorDomain code:v13 userInfo:0];
    if ([*(a1 + 64) _shouldForgetCachedPeerTokensForDecryptionErrorType:v120 withOriginalDecryptionError:v119])
    {
      v29 = *(a1 + 64);
      v30 = *(a1 + 48);
      v31 = *(a1 + 88);
      v32 = [*(a1 + 96) queryService];
      LODWORD(v30) = [v29 _shouldRateLimitCacheClearForPeerTokensForDecryptionErrorType:v120 withOriginalDecryptionError:v119 fromURI:v30 toURI:v31 service:v32];

      if (v30)
      {
        v33 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *(a1 + 48);
          *buf = 138412290;
          *v146 = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Already attempted to blow away local peer cache for URI: %@, not trying again", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v95 = *(a1 + 48);
          _IDSLogV();
        }
      }

      else
      {
        v49 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = *(a1 + 48);
          *buf = 138412290;
          *v146 = v50;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Blowing away local peer cache for peer tokens for URI: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v95 = *(a1 + 48);
          _IDSLogV();
        }

        v51 = +[IDSPeerIDManager sharedInstance];
        v52 = *(a1 + 48);
        v53 = *(a1 + 88);
        v54 = [*(a1 + 96) queryService];
        [v51 forgetPeerTokensForURI:v52 fromURI:v53 service:v54 reason:2];
      }
    }

    if ((*(a1 + 192) & 1) != 0 || ![*(a1 + 64) _shouldRetryForDecryptionErrorType:v120])
    {
      v60 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v61 = *(a1 + 72);
        *buf = 67109634;
        *v146 = v120;
        *&v146[4] = 2112;
        *&v146[6] = v61;
        *&v146[14] = 2112;
        *&v146[16] = v119;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "** Had decryption error: %d { guid: %@, error: %@ }", buf, 0x1Cu);
      }

      v62 = os_log_shim_legacy_logging_enabled();
      v63 = v120;
      if (v62)
      {
        v97 = *(a1 + 72);
        v99 = v119;
        v95 = v120;
        _IDSLogEventV();
        v63 = v120;
      }

      sub_1005C2038(v63);
      FTAWDLogIMessageReceived();
      if (v120 == 601)
      {
        v64 = [[IDSMissingMessageMetric alloc] initWithReason:704 guid:*(a1 + 72) service:*(a1 + 80) additionalInformation:0];
        [IDSMissingMessageMetricReporter sendMetric:v64];
      }

      v124[0] = _NSConcreteStackBlock;
      v124[1] = 3221225472;
      v124[2] = sub_10066CFC8;
      v124[3] = &unk_100BE3728;
      v65 = *(a1 + 176);
      v66 = *(a1 + 184);
      v130 = v65;
      v131 = v66;
      v125 = *(a1 + 104);
      v126 = *(a1 + 144);
      v127 = *(a1 + 152);
      theDicta = theDicta;
      v128 = theDicta;
      v129 = *(a1 + 128);
      v110 = objc_retainBlock(v124);
      if (v111 == 5)
      {
        v67 = v119;
      }

      else
      {
        v67 = 0;
      }

      v68 = v67;
      if (v111 == 4)
      {
        v69 = v119;
      }

      else
      {
        v69 = 0;
      }

      v70 = v69;
      if ((v111 & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        v71 = 0;
      }

      else
      {
        v71 = v119;
      }

      v102 = v68;
      v104 = v70;
      v106 = v71;
      v112 = [*(a1 + 64) _failureReasonMessageFromSecondaryError:v68 ECError:v70 andLegacyError:?];
      if ([*(a1 + 64) _shouldReplyWithCertifiedDeliveryReceiptForDecryptionErrorType:v120])
      {
        v72 = *(a1 + 64);
        v73 = *(a1 + 104);
        v74 = *(a1 + 80);
        v75 = [NSNumber numberWithInteger:v120];
        [v72 _sendCertifiedDeliveryReceiptIfNeededForNiceMessage:v73 service:v74 failureReason:v75 failureReasonMessage:v112 generateDeliveryReceipt:0];
      }

      if ([*(a1 + 64) _shouldReplyWithRemoteDecryptionErrorMessageForDecryptionErrorType:{v120, v95, v97, v99}])
      {
        valuea = [*(a1 + 104) pushUUID];
        v101 = [*(a1 + 104) command];
        v76 = objc_alloc_init(NSMutableDictionary);
        v77 = IDSGetUUIDData();
        if (v77)
        {
          CFDictionarySetValue(v76, IDSFailedUUIDKey, v77);
        }

        if (valuea)
        {
          CFDictionarySetValue(v76, IDSFailedMessageIDKey, valuea);
        }

        v78 = [NSNumber numberWithInteger:v120];
        if (v78)
        {
          CFDictionarySetValue(v76, IDSFailureReasonKey, v78);
        }

        if (v112)
        {
          CFDictionarySetValue(v76, IDSFailureReasonMessageKey, v112);
        }

        v79 = [*(a1 + 120) dataRepresentation];
        if (v79)
        {
          CFDictionarySetValue(v76, @"gI", v79);
        }

        v80 = (a1 + 56);
        v81 = [*(a1 + 56) rawToken];
        v82 = [*(a1 + 48) prefixedURI];
        v83 = _IDSCopyIDForTokenWithURI();

        v84 = *(a1 + 64);
        v85 = *(a1 + 88);
        v86 = [NSSet setWithObject:v83];
        v87 = [IDSDestination destinationWithStrings:v86];
        v88 = [*(a1 + 160) uniqueID];
        v89 = [NSNumber numberWithInteger:120];
        v121[0] = _NSConcreteStackBlock;
        v121[1] = 3221225472;
        v121[2] = sub_10066D110;
        v121[3] = &unk_100BE3750;
        v123 = v120;
        v122 = *v80;
        LOBYTE(v98) = 1;
        [v84 _sendErrorMessage:v76 originalCommand:v101 fromURI:v85 toDestinations:v87 usingAccountWithUniqueID:v88 useDictAsTopLevel:1 dataToEncrypt:-1.0 wantsResponse:0 timeout:v98 command:v89 priority:300 sendReasonPathID:10 completionBlock:v121];
      }

      (v110[2])();
    }

    else
    {
      v55 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = *(a1 + 72);
        [*(a1 + 64) _decryptionRetryIntervalForError:v119];
        *buf = 138412546;
        *v146 = v56;
        *&v146[8] = 2048;
        *&v146[10] = v57;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Retrying decryption for message %@ in %f seconds", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v58 = *(a1 + 72);
        [*(a1 + 64) _decryptionRetryIntervalForError:v119];
        v97 = v59;
        v95 = v58;
        _IDSLogV();
      }

      [*(a1 + 64) _decryptionRetryIntervalForError:{v119, v95, v97}];
      v132 = _NSConcreteStackBlock;
      v133 = 3221225472;
      v134 = sub_10066CF84;
      v135 = &unk_100BE3700;
      v136 = *(a1 + 64);
      v137 = *(a1 + 104);
      v138 = *(a1 + 112);
      v139 = *(a1 + 120);
      v140 = *(a1 + 80);
      v141 = *(a1 + 48);
      v142 = *(a1 + 128);
      v143 = *(a1 + 136);
      v144 = *(a1 + 176);
      im_dispatch_after_primary_queue();
    }
  }

  else
  {
    if ([v118 usedLastResortCache])
    {
      [*(a1 + 64) _submitLastResortCacheMetricForGUID:*(a1 + 72) service:*(a1 + 80)];
    }

    if (*(a1 + 184) == 3)
    {
      theDicta = objc_alloc_init(NSMutableDictionary);
      v35 = [*(a1 + 104) rawMessage];
      if (v35)
      {
        CFDictionarySetValue(theDicta, IDSIncomingMessagePushPayloadKey, v35);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092DFD8();
      }

      v90 = *(a1 + 144);
      if (v90)
      {
        CFDictionarySetValue(theDicta, IDSIncomingMessageOriginalEncryptionTypeKey, v90);
      }

      v91 = *(a1 + 152);
      if (v91)
      {
        CFDictionarySetValue(theDicta, IDSIncomingMessageEngramEncryptedDataKey, v91);
      }

      (*(*(a1 + 176) + 16))();
    }

    else
    {
      if (v115)
      {
        v36 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v146 = v115;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Gossip - EncryptedAttributes: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v95 = v115;
          _IDSLogV();
        }

        v37 = [(__CFDictionary *)v115 objectForKeyedSubscript:NGMEncryptedAttributeKTGossipData, v95];

        if (v37)
        {
          v38 = +[IDSKTGossipManager sharedInstance];
          v39 = [(__CFDictionary *)v115 objectForKeyedSubscript:NGMEncryptedAttributeKTGossipData];
          [v38 sthReceivedFromGossipReceipient:v39];
        }
      }

      if (*(a1 + 128))
      {
        v40 = [IDSCertifiedDeliveryContext alloc];
        v41 = [*(a1 + 128) originalGUID];
        v42 = [*(a1 + 128) service];
        v43 = IDSEncryptionTypeFromEncryptionTypeString();
        v44 = [*(a1 + 128) certifiedDeliveryVersion];
        v45 = [*(a1 + 128) certifiedDeliveryRTS];
        v46 = [*(a1 + 128) senderToken];
        v47 = [*(a1 + 128) localURI];
        v48 = [*(a1 + 128) remoteURI];
        theDicta = [v40 initWithGUID:v41 service:v42 encryptionType:v43 certifiedDeliveryVersion:v44 certifiedDeliveryRTS:v45 senderToken:v46 localURI:v47 remoteURI:v48 replayKey:*(a1 + 168)];
      }

      else
      {
        theDicta = 0;
      }

      v92 = objc_alloc_init(NSMutableDictionary);
      v93 = [*(a1 + 104) rawMessage];
      if (v93)
      {
        CFDictionarySetValue(v92, IDSIncomingMessagePushPayloadKey, v93);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092DFD8();
      }

      if (v114)
      {
        CFDictionarySetValue(v92, IDSIncomingMessageDecryptedDataKey, v114);
      }

      v94 = *(a1 + 144);
      if (v94)
      {
        CFDictionarySetValue(v92, IDSIncomingMessageOriginalEncryptionTypeKey, v94);
      }

      (*(*(a1 + 176) + 16))();
    }
  }
}