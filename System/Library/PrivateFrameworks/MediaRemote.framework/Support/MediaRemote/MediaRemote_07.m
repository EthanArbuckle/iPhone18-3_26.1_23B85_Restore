id sub_100161F0C(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id sub_100161F50(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_100161F94(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100162044;
  v6[3] = &unk_1004B6E30;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  sub_100008278(v4, v6);
}

void sub_100162044(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) protobufData];
  MRAddDataToXPCMessage();

  if (*(a1 + 40))
  {
    MRAddClientErrorToXPCMessage();
  }
}

void sub_100162190(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MRCreatePropertyListFromXPCMessage();
  v4 = *(a1 + 32);
  v5 = MRCreateRequestDetailsFromXPCMessage();
  if (!v5)
  {
    v6 = [MRRequestDetails alloc];
    v7 = MRRequestDetailsInitiatorInfer;
    v8 = [*(a1 + 40) bundleIdentifier];
    v5 = [v6 initWithInitiator:v7 requestID:0 reason:@"RoutingServer.handleCreateDirectEndpointForDevices" userInitiated:0 originatingBundleID:v8];
  }

  v9 = *(a1 + 48);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001622C0;
  v12[3] = &unk_1004BF718;
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v13 = v10;
  v14 = v11;
  [v9 createEndpointForOutputDeviceIDs:v3 details:v5 completion:v12];
}

void sub_1001622C0(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100162368;
  v9[3] = &unk_1004B7558;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v12 = a3;
  v8 = v5;
  sub_100008278(v7, v9);
}

void sub_100162368(uint64_t a1, void *a2)
{
  v10 = a2;
  if (*(a1 + 32))
  {
    v3 = [MRAVDistantEndpoint alloc];
    v4 = [*(a1 + 32) descriptor];
    v5 = [v3 initWithDescriptor:v4];

    v6 = [*(*(a1 + 40) + 160) hostedRoutingController];
    v7 = [v5 uniqueIdentifier];
    v8 = [v6 externalDeviceForEndpoint:v7];
    v9 = [v8 externalDeviceListenerEndpoint];
    [v5 setExternalDeviceListenerEndpoint:v9];

    MRAddDistantEndpointToXPCMessage();
  }

  if (*(a1 + 48))
  {
    MRAddErrorToXPCMessage();
  }
}

void sub_10016253C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MRCreatePropertyListFromXPCMessage();
  v4 = *(a1 + 32);
  v5 = MRCreateRequestDetailsFromXPCMessage();
  if (!v5)
  {
    v6 = [MRRequestDetails alloc];
    v7 = MRRequestDetailsInitiatorInfer;
    v8 = [*(a1 + 40) bundleIdentifier];
    v5 = [v6 initWithInitiator:v7 requestID:0 reason:@"RoutingServer.handleGroupDevicesAndSendCommand" userInitiated:0 originatingBundleID:v8];
  }

  v9 = *(a1 + 48);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100162668;
  v10[3] = &unk_1004BF790;
  v11 = *(a1 + 32);
  [v9 createEndpointForOutputDeviceIDs:v3 details:v5 completion:v10];
}

void sub_100162668(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  if (a3 && !MRMediaRemoteErrorCodeIsInformational())
  {
    sub_10000F9E4(*(a1 + 32), a3);
  }

  else
  {
    v11 = MREndpointConnectionReasonUserInfoKey;
    v12 = @"groupDevicesAndSendCommand";
    v6 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001627AC;
    v7[3] = &unk_1004BF768;
    v8 = *(a1 + 32);
    v9 = v5;
    v10 = a3;
    [v9 connectToExternalDeviceWithUserInfo:v6 completion:v7];
  }
}

void sub_1001627AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v3)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100162A18;
    v23[3] = &unk_1004B6E08;
    v24 = v3;
    sub_100008278(v5, v23);
    v6 = v24;
  }

  else
  {
    xpc_dictionary_get_uint64(*(a1 + 32), "MRXPC_COMMAND_KEY");
    v7 = *(a1 + 32);
    v6 = MRCreatePlayerPathFromXPCMessage();
    v8 = *(a1 + 32);
    v9 = MRCreatePropertyListFromXPCMessage();
    v10 = *(a1 + 40);
    MRAVEndpointGetExternalDevice();
    v11 = MRExternalDeviceCopyCustomOrigin();
    [v6 setOrigin:v11];
    v12 = +[MRDMediaRemoteServer server];
    v13 = [v12 nowPlayingServer];
    v14 = [v13 queryExistingPlayerPath:v6];

    v15 = [v6 client];
    v16 = [v14 originClient];
    v17 = [v16 deviceInfo];
    [v15 resolvePlaceholdersForDeviceInfo:v17];

    v18 = [v9 objectForKeyedSubscript:kMRMediaRemoteOptionSendOptionsNumber];
    [v18 intValue];

    v19 = dispatch_get_global_queue(0, 0);
    v20 = *(a1 + 40);
    v21 = *(a1 + 32);
    v22 = *(a1 + 48);
    MRMediaRemoteSendCommandToPlayerWithResult();
  }
}

void sub_100162A28(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 sendError])
  {
    v4 = *(a1 + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100162C20;
    v10[3] = &unk_1004B6E08;
    v5 = &v11;
    v11 = v3;
    v6 = v3;
    sub_100008278(v4, v10);
  }

  else
  {
    v7 = *(a1 + 32);
    MRAVEndpointUpdateActiveSystemEndpointWithReason();
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100162B6C;
    v12[3] = &unk_1004B7558;
    v5 = &v13;
    v13 = v3;
    v8 = *(a1 + 40);
    v14 = *(a1 + 32);
    v15 = *(a1 + 48);
    v9 = v3;
    sub_100008278(v8, v12);
  }
}

void sub_100162B6C(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  MRAddCommandResultToXPCMessage();
  v4 = [*(a1 + 40) designatedGroupLeader];
  v5 = [v4 uid];
  MRAddPropertyListToXPCMessage();

  v6 = [*(a1 + 32) error];
  if (v6)
  {
  }

  else if (*(a1 + 48))
  {
    MRAddErrorToXPCMessage();
  }
}

void sub_100162CF4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MRCreatePropertyListFromXPCMessage();
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100162EA4;
  v17[3] = &unk_1004BCEA0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v18 = v4;
  v19 = v5;
  v6 = objc_retainBlock(v17);
  v7 = *(a1 + 32);
  v8 = MRCreateRequestDetailsFromXPCMessage();
  if (!v8)
  {
    v9 = [MRRequestDetails alloc];
    v10 = MRRequestDetailsInitiatorInfer;
    v11 = [*(a1 + 48) bundleIdentifier];
    v8 = [v9 initWithInitiator:v10 requestID:0 reason:@"RoutingServer.handleCreateHostedEndpointForDevices" userInitiated:0 originatingBundleID:v11];
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100163080;
  v14[3] = &unk_1004BF7B8;
  v15 = v8;
  v16 = v6;
  v12 = v8;
  v13 = v6;
  [MRDCreateHostedEndpointRequest createHostedEndpointWithOutputDeviceUIDs:v3 timeout:v12 details:v14 completion:0.0];
}

void sub_100162EA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100162F68;
  v11[3] = &unk_1004B7508;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = v5;
  v13 = v7;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  sub_100008278(v8, v11);
}

void sub_100162F68(uint64_t a1, void *a2)
{
  v11 = a2;
  if (*(a1 + 32))
  {
    v3 = [MRAVDistantEndpoint alloc];
    v4 = [*(a1 + 32) descriptor];
    v5 = [v3 initWithDescriptor:v4];

    v6 = [*(*(a1 + 40) + 160) hostedRoutingController];
    v7 = [v5 uniqueIdentifier];
    v8 = [v6 externalDeviceForEndpoint:v7];
    v9 = [v8 externalDeviceListenerEndpoint];
    [v5 setExternalDeviceListenerEndpoint:v9];

    MRAddDistantEndpointToXPCMessage();
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    [v10 code];
    MRAddErrorToXPCMessage();
  }
}

void sub_100163080(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v12[0] = @"createHostedEndpointForDevices";
    v11[0] = MREndpointConnectionReasonUserInfoKey;
    v11[1] = MREndpointConnectionCorrelationIDUserInfoKey;
    v6 = [*(a1 + 32) requestID];
    v12[1] = v6;
    v7 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001631E4;
    v8[3] = &unk_1004B9DE8;
    v10 = *(a1 + 40);
    v9 = v5;
    [v9 connectToExternalDeviceWithUserInfo:v7 completion:v8];
  }
}

uint64_t sub_1001631E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    return (*(v3 + 16))(v3, 0, a2);
  }

  else
  {
    return (*(v3 + 16))(v3, *(a1 + 32));
  }
}

void sub_1001632D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MRCreatePropertyListFromXPCMessage();
  v4 = *(a1 + 32);
  v5 = MRCreateRequestDetailsFromXPCMessage();
  if (!v5)
  {
    v6 = [MRRequestDetails alloc];
    v7 = MRRequestDetailsInitiatorInfer;
    v8 = [*(a1 + 40) bundleIdentifier];
    v5 = [v6 initWithInitiator:v7 requestID:0 reason:@"RoutingServer.handlePredictGroupLeader" userInitiated:0 originatingBundleID:v8];
  }

  v9 = [*(a1 + 48) _predictGroupLeaderForOutputDeviceIDs:v3 options:0 details:v5];
  v10 = *(a1 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100163414;
  v12[3] = &unk_1004B6E08;
  v13 = v9;
  v11 = v9;
  sub_100008278(v10, v12);
}

void sub_100163414(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 uid];
  MRAddPropertyListToXPCMessage();
}

void sub_1001635CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100163664;
  v6[3] = &unk_1004B6E08;
  v7 = v3;
  v5 = v3;
  sub_100008278(v4, v6);
}

void sub_100163764(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.mediaremote.routingServer.getExternalDevice", v3);
  v2 = qword_100529580;
  qword_100529580 = v1;
}

void sub_1001637D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MRCreateStringFromXPCMessage();
  v4 = [*(*(a1 + 40) + 160) hostedRoutingController];
  v5 = [v4 externalDeviceForEndpoint:v3];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [[NSError alloc] initWithMRError:127];
  }

  v7 = [v5 externalDeviceListenerEndpoint];
  v8 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100163904;
  v11[3] = &unk_1004B6E30;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  sub_100008278(v8, v11);
}

void sub_100163904(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  MRAddClientErrorToXPCMessage();
  v5 = [*(a1 + 40) _endpoint];
  xpc_dictionary_set_value(v4, "MRXPC_EXTERNAL_DEVICE_LISTENER_KEY", v5);
}

void sub_100163A1C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MRCreateDataFromXPCMessage();
  v4 = [[MRGroupTopologyModificationRequest alloc] initWithData:v3];
  v5 = *(a1 + 32);
  v6 = MRCreateStringFromXPCMessage();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100163C74;
  v18[3] = &unk_1004B6FC0;
  v19 = *(a1 + 32);
  v7 = objc_retainBlock(v18);
  v8 = +[MRUserSettings currentSettings];
  v9 = [v8 supportMultiplayerHost];

  if (!v9)
  {
    v12 = [MRAVConcreteOutputContext createOutputContextWithUniqueIdentifier:v6];
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = [[NSError alloc] initWithMRError:32 format:{@"Failed to create output context with UID=%@", v6}];
    (v7[2])(v7, v13);
    goto LABEL_6;
  }

  v10 = +[MRDAVOutputContextManager sharedManager];
  v11 = [v10 outputContexts];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100163D1C;
  v16[3] = &unk_1004B9290;
  v17 = v6;
  v12 = [v11 msv_firstWhere:v16];

  if (!v12)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = [[MRDOutputContextModification alloc] initWithRequest:v4];
  v14 = qos_class_self();
  v15 = dispatch_get_global_queue(v14, 0);
  [(MRDOutputContextModification *)v13 modifyWithOutputContext:v12 queue:v15 completion:v7];

LABEL_6:
}

void sub_100163C74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100163D0C;
  v6[3] = &unk_1004B6E08;
  v7 = v3;
  v5 = v3;
  sub_100008278(v4, v6);
}

id sub_100163D1C(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_100163DF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100163E74;
  v2[3] = &unk_1004B6E08;
  v3 = v1;
  sub_100008278(v3, v2);
}

void sub_100163E74(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = MRCreatePropertyListFromXPCMessage();
  v4 = +[MRDStreamCapacityManager sharedManager];
  xpc_dictionary_set_BOOL(v3, "MRXPC_BOOL_RESULT_KEY", [v4 willStartingPlaybackToOutputDevicesInterrupt:v5]);
}

void sub_10016403C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9 = MRCreateStringFromXPCMessage();
  v3 = *(a1 + 32);
  v4 = MRCreateStringFromXPCMessage();
  v5 = [v4 isEqualToString:@"auto"];
  v6 = [v4 isEqualToString:@"cta"];
  if ([v4 isEqualToString:@"carplay"])
  {
    [*(*(a1 + 40) + 184) displayCarPlayVideoConnectedBannerWithCompletion:0];
  }

  else
  {
    v7 = 2;
    if (!v6)
    {
      v7 = 3;
    }

    if (v5)
    {
      v8 = 4;
    }

    else
    {
      v8 = v7;
    }

    [*(*(a1 + 40) + 176) ingestMockedRecommendation:v9 classification:v8 isCallToAction:v6];
  }
}

void sub_1001643B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10016444C;
  v6[3] = &unk_1004B6E08;
  v7 = v3;
  v5 = v3;
  sub_100008278(v4, v6);
}

void sub_1001644F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MRCreateStringFromXPCMessage();
  v4 = xpc_dictionary_get_double(*(a1 + 32), "timeout");
  v5 = *(a1 + 32);
  v6 = MRCreateRequestDetailsFromXPCMessage();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100164604;
  v10[3] = &unk_1004BCEA0;
  v9 = *(a1 + 32);
  v7 = v9.i64[0];
  v11 = vextq_s8(v9, v9, 8uLL);
  v8 = objc_retainBlock(v10);
  [*(a1 + 40) searchEndpointsForOutputDeviceUID:v3 timeout:v6 details:*(*(a1 + 40) + 64) queue:v8 completion:v4];
}

void sub_100164604(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 160) hostedRoutingController];
  v8 = [v7 availableDistantEndpoints];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100164768;
  v17[3] = &unk_1004BF820;
  v18 = v5;
  v9 = v5;
  v10 = [v8 msv_firstWhere:v17];

  v11 = *(a1 + 40);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001647CC;
  v14[3] = &unk_1004B6E30;
  v15 = v10;
  v16 = v6;
  v12 = v6;
  v13 = v10;
  sub_100008278(v11, v14);
}

id sub_100164768(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

void sub_1001647CC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  MRAddDistantEndpointToXPCMessage();
  v4 = *(a1 + 40);
  MRAddClientErrorToXPCMessage();
}

void sub_100164E20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) resolvedAvailableEndpoints];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1001652B0;
  v39[3] = &unk_1004B9698;
  v8 = v5;
  v40 = v8;
  v9 = [v7 msv_firstWhere:v39];

  if (!v6)
  {
    v18 = [v9 debugName];

    v19 = *(a1 + 40);
    v11 = _MRLogForCategory();
    v20 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v19)
      {
        if (!v20)
        {
          goto LABEL_21;
        }

        v21 = *(a1 + 48);
        v14 = [*(a1 + 56) requestID];
        v16 = [v9 debugName];
        v22 = *(a1 + 40);
        v23 = +[NSDate date];
        [v23 timeIntervalSinceDate:*(a1 + 64)];
        *buf = 138544386;
        v42 = v21;
        v43 = 2114;
        v44 = v14;
        v45 = 2112;
        v46 = v16;
        v47 = 2114;
        v48 = v22;
        v49 = 2048;
        v50 = v24;
        v25 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v26 = v11;
        v27 = 52;
      }

      else
      {
        if (!v20)
        {
          goto LABEL_21;
        }

        v34 = *(a1 + 48);
        v14 = [*(a1 + 56) requestID];
        v16 = [v9 debugName];
        v23 = +[NSDate date];
        [v23 timeIntervalSinceDate:*(a1 + 64)];
        *buf = 138544130;
        v42 = v34;
        v43 = 2114;
        v44 = v14;
        v45 = 2112;
        v46 = v16;
        v47 = 2048;
        v48 = v35;
        v25 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
        v26 = v11;
        v27 = 42;
      }

      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
    }

    else
    {
      if (v19)
      {
        if (!v20)
        {
          goto LABEL_21;
        }

        v28 = *(a1 + 48);
        v14 = [*(a1 + 56) requestID];
        v29 = *(a1 + 40);
        v16 = +[NSDate date];
        [v16 timeIntervalSinceDate:*(a1 + 64)];
        *buf = 138544130;
        v42 = v28;
        v43 = 2114;
        v44 = v14;
        v45 = 2114;
        v46 = v29;
        v47 = 2048;
        v48 = v30;
        v31 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v32 = v11;
        v33 = 42;
      }

      else
      {
        if (!v20)
        {
          goto LABEL_21;
        }

        v36 = *(a1 + 48);
        v14 = [*(a1 + 56) requestID];
        v16 = +[NSDate date];
        [v16 timeIntervalSinceDate:*(a1 + 64)];
        *buf = 138543874;
        v42 = v36;
        v43 = 2114;
        v44 = v14;
        v45 = 2048;
        v46 = v37;
        v31 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v32 = v11;
        v33 = 32;
      }

      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
    }

    goto LABEL_20;
  }

  v10 = *(a1 + 40);
  v11 = _MRLogForCategory();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
  if (v10)
  {
    if (!v12)
    {
      goto LABEL_21;
    }

    v13 = *(a1 + 48);
    v14 = [*(a1 + 56) requestID];
    v15 = *(a1 + 40);
    v16 = +[NSDate date];
    [v16 timeIntervalSinceDate:*(a1 + 64)];
    *buf = 138544386;
    v42 = v13;
    v43 = 2114;
    v44 = v14;
    v45 = 2114;
    v46 = v6;
    v47 = 2114;
    v48 = v15;
    v49 = 2048;
    v50 = v17;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:

    goto LABEL_21;
  }

  if (v12)
  {
    sub_1003AB2D0();
  }

LABEL_21:

  v38 = *(a1 + 72);
  if (v38)
  {
    (*(v38 + 16))(v38, v9, v6);
  }
}

id sub_1001652B0(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

void sub_100165320(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = [*(a1 + 40) requestID];
      v6 = 138543874;
      v7 = v4;
      v8 = 2114;
      v9 = v5;
      v10 = 2112;
      v11 = @"Endpoint failed to connect";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v6, 0x20u);
    }
  }
}

void sub_100165408(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 64) + 16))();
  v4 = [*(a1 + 32) availableEndpoints];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100165560;
  v11[3] = &unk_1004BECE0;
  v12 = v3;
  v5 = v3;
  v6 = [v4 msv_firstWhere:v11];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001655C4;
  v8[3] = &unk_1004B9C80;
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  [v6 connectToExternalDeviceWithUserInfo:v7 completion:v8];
}

id sub_100165560(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void sub_1001655C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = [*(a1 + 40) requestID];
      v6 = 138543874;
      v7 = v4;
      v8 = 2114;
      v9 = v5;
      v10 = 2112;
      v11 = @"Endpoint failed to connect";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v6, 0x20u);
    }
  }
}

void sub_100165744(uint64_t a1)
{
  uint64 = xpc_dictionary_get_uint64(*(a1 + 32), "command");
  v3 = *(a1 + 32);
  v4 = MRCreatePropertyListFromXPCMessage();
  v5 = *(a1 + 32);
  v6 = MRCreatePropertyListFromXPCMessage();
  v7 = xpc_dictionary_get_double(*(a1 + 32), "timeout");
  v8 = [MRRequestDetails alloc];
  v9 = [v4 objectForKeyedSubscript:kMRMediaRemoteOptionCommandID];
  v10 = [v4 objectForKeyedSubscript:kMRMediaRemoteOptionRemoteControlInterfaceIdentifier];
  v11 = [v8 initWithName:@"RoutingServer.sendCommandToEachEndpointContainingOutputDeviceUIDs" requestID:v9 reason:v10];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001658D4;
  v12[3] = &unk_1004BF8B0;
  v13 = *(a1 + 32);
  [MRDSendCommandToOutputDevicesRequest sendCommand:uint64 withOptions:v4 toEachEndpointContainingOutputDeviceUIDs:v6 timeout:v11 details:v12 completion:v7];
}

void sub_1001658D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100165994;
  v10[3] = &unk_1004B6E30;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  sub_100008278(v7, v10);
}

void sub_100165994(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  MRAddArrayToXPCMessage();
  v4 = *(a1 + 40);
  MRAddClientErrorToXPCMessage();
}

void sub_100165AA0(uint64_t a1)
{
  uint64 = xpc_dictionary_get_uint64(*(a1 + 32), "command");
  v3 = *(a1 + 32);
  v4 = MRCreatePropertyListFromXPCMessage();
  v5 = *(a1 + 32);
  v6 = MRCreatePropertyListFromXPCMessage();
  v7 = *(a1 + 32);
  v8 = MRCreatePlayerPathFromXPCMessage();
  v9 = xpc_dictionary_get_double(*(a1 + 32), "timeout");
  v10 = [MRRequestDetails alloc];
  v11 = [v4 objectForKeyedSubscript:kMRMediaRemoteOptionCommandID];
  v12 = [v4 objectForKeyedSubscript:kMRMediaRemoteOptionRemoteControlInterfaceIdentifier];
  v13 = [v10 initWithName:@"RoutingServer.sendCommandToNewGroupContainingOutputDeviceUIDs" requestID:v11 reason:v12];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100165C58;
  v16[3] = &unk_1004BF8D8;
  v15 = *(a1 + 32);
  v14 = v15.i64[0];
  v17 = vextq_s8(v15, v15, 8uLL);
  [MRDSendCommandToOutputDevicesRequest sendCommand:uint64 withOptions:v4 toNewEndpointContainingOutputDeviceUIDs:v6 playerPath:v8 timeout:v13 details:v16 completion:v9];
}

void sub_100165C58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) hostedRoutingService];
  v8 = [v7 hostedRoutingController];
  v9 = [v8 availableDistantEndpoints];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100165DD0;
  v18[3] = &unk_1004BF820;
  v19 = v5;
  v10 = v5;
  v11 = [v9 msv_firstWhere:v18];

  v12 = *(a1 + 40);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100165E34;
  v15[3] = &unk_1004B6E30;
  v16 = v6;
  v17 = v11;
  v13 = v11;
  v14 = v6;
  sub_100008278(v12, v15);
}

id sub_100165DD0(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

void sub_100165E34(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  MRAddCommandResultToXPCMessage();
  v4 = *(a1 + 40);
  MRAddDistantEndpointToXPCMessage();
}

void sub_100165F28(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MRCreateStringFromXPCMessage();
  v4 = xpc_dictionary_get_double(*(a1 + 32), "timeout");
  v5 = *(a1 + 32);
  v6 = MRCreateRequestDetailsFromXPCMessage();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100166014;
  v8[3] = &unk_1004BD478;
  v7 = *(a1 + 40);
  v9 = *(a1 + 32);
  [v7 searchEndpointsForRoutingContextUID:v3 timeout:v6 details:v8 completion:v4];
}

void sub_100166014(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001660D4;
  v10[3] = &unk_1004B6E30;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  sub_100008278(v7, v10);
}

void sub_1001660D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  MRAddDistantEndpointToXPCMessage();
  v4 = *(a1 + 40);
  MRAddClientErrorToXPCMessage();
}

void sub_1001661C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MRCreatePropertyListFromXPCMessage();
  v4 = *(a1 + 32);
  v5 = MRCreatePlayerPathFromXPCMessage();
  v6 = xpc_dictionary_get_double(*(a1 + 32), "timeout");
  v7 = *(a1 + 32);
  v8 = MRCreateRequestDetailsFromXPCMessage();
  v9 = [v5 client];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001662FC;
  v12[3] = &unk_1004BCEA0;
  v11 = *(a1 + 32);
  v10 = v11.i64[0];
  v13 = vextq_s8(v11, v11, 8uLL);
  [MRDPrepareGroupForPlaybackRequest prepareGroupForPlaybackWithOutputDeviceUIDs:v3 nowPlayingClient:v9 timeout:v8 details:v12 completion:v6];
}

void sub_1001662FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) hostedRoutingService];
  v8 = [v7 hostedRoutingController];
  v9 = [v8 availableDistantEndpoints];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100166474;
  v18[3] = &unk_1004BF820;
  v19 = v5;
  v10 = v5;
  v11 = [v9 msv_firstWhere:v18];

  v12 = *(a1 + 40);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001664D8;
  v15[3] = &unk_1004B6E30;
  v16 = v6;
  v17 = v11;
  v13 = v11;
  v14 = v6;
  sub_100008278(v12, v15);
}

id sub_100166474(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

void sub_1001664D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  MRAddClientErrorToXPCMessage();
  v4 = *(a1 + 40);
  MRAddDistantEndpointToXPCMessage();
}

void sub_1001669F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15 = [v5 debugName];

    v16 = *(a1 + 32);
    v8 = _MRLogForCategory();
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!v15)
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v25 = *(a1 + 40);
        v11 = [*(a1 + 48) requestID];
        v26 = *(a1 + 32);
        v13 = +[NSDate date];
        [v13 timeIntervalSinceDate:*(a1 + 56)];
        v36 = 138544130;
        v37 = v25;
        v38 = 2114;
        v39 = v11;
        v40 = 2114;
        v41 = v26;
        v42 = 2048;
        v43 = v27;
        v28 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v29 = v8;
        v30 = 42;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v33 = *(a1 + 40);
        v11 = [*(a1 + 48) requestID];
        v13 = +[NSDate date];
        [v13 timeIntervalSinceDate:*(a1 + 56)];
        v36 = 138543874;
        v37 = v33;
        v38 = 2114;
        v39 = v11;
        v40 = 2048;
        v41 = v34;
        v28 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v29 = v8;
        v30 = 32;
      }

      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v28, &v36, v30);
      goto LABEL_20;
    }

    if (v16)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v18 = *(a1 + 40);
      v11 = [*(a1 + 48) requestID];
      v13 = [v5 debugName];
      v19 = *(a1 + 32);
      v20 = +[NSDate date];
      [v20 timeIntervalSinceDate:*(a1 + 56)];
      v36 = 138544386;
      v37 = v18;
      v38 = 2114;
      v39 = v11;
      v40 = 2112;
      v41 = v13;
      v42 = 2114;
      v43 = v19;
      v44 = 2048;
      v45 = v21;
      v22 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v23 = v8;
      v24 = 52;
    }

    else
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v31 = *(a1 + 40);
      v11 = [*(a1 + 48) requestID];
      v13 = [v5 debugName];
      v20 = +[NSDate date];
      [v20 timeIntervalSinceDate:*(a1 + 56)];
      v36 = 138544130;
      v37 = v31;
      v38 = 2114;
      v39 = v11;
      v40 = 2112;
      v41 = v13;
      v42 = 2048;
      v43 = v32;
      v22 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v23 = v8;
      v24 = 42;
    }

    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v22, &v36, v24);

    goto LABEL_20;
  }

  v7 = *(a1 + 32);
  v8 = _MRLogForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v9)
    {
      v10 = *(a1 + 40);
      v11 = [*(a1 + 48) requestID];
      v12 = *(a1 + 32);
      v13 = +[NSDate date];
      [v13 timeIntervalSinceDate:*(a1 + 56)];
      v36 = 138544386;
      v37 = v10;
      v38 = 2114;
      v39 = v11;
      v40 = 2114;
      v41 = v6;
      v42 = 2114;
      v43 = v12;
      v44 = 2048;
      v45 = v14;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v36, 0x34u);
LABEL_20:
    }
  }

  else if (v9)
  {
    sub_1003AB3A0();
  }

LABEL_21:

  v35 = +[NSNotificationCenter defaultCenter];
  [v35 removeObserver:*(*(*(a1 + 72) + 8) + 40)];

  (*(*(a1 + 64) + 16))();
}

uint64_t sub_100166E28(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void sub_100166E48(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 160) hostedRoutingController];
  v3 = [v2 availableExternalDevices];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100166FD0;
  v12[3] = &unk_1004BF928;
  v13 = *(a1 + 40);
  v4 = [v3 msv_firstWhere:v12];
  v5 = [v4 second];
  v6 = [v5 endpoint];

  if (v6 && [*(a1 + 48) disarm])
  {
    v7 = [MRAVDistantEndpoint alloc];
    v8 = [v6 descriptor];
    v9 = [v4 second];
    v10 = [v9 externalDeviceListenerEndpoint];
    v11 = [v7 initWithDescriptor:v8 xpcEndpointListener:v10];

    (*(*(a1 + 56) + 16))();
  }
}

id sub_100166FD0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 externalDevice];
  v5 = [v4 deviceInfo];
  v6 = [v5 routingContextID];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  return v7;
}

void sub_100167DC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) name];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Custom authorization callback returned for route %{public}@", &v6, 0xCu);
  }

  [*(a1 + 40) respondWithAuthorizationToken:v3];
}

void sub_100167EA0(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 buttonIdentifier];
  if (!v4 || v4 == 2)
  {
    v13[0] = &off_1004E0AE8;
    v12[0] = kMRMediaRemoteRouteStatusUserInfoKey;
    v12[1] = kMRMediaRemoteRouteDescriptionUserInfoKey;
    v8 = [a1[5] dictionary];
    v13[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
    v10 = [NSMutableDictionary dictionaryWithDictionary:v9];

    [a1[4] cancel];
    v11 = +[MRDMediaRemoteServer server];
    [v11 postClientNotificationNamed:kMRMediaRemoteRouteStatusDidChangeNotification userInfo:v10];
  }

  else if (v4 == 1)
  {
    v5 = a1[4];
    v6 = [v3 textFieldValues];
    v7 = [v6 firstObject];
    [v5 respondWithAuthorizationToken:v7];
  }

  [a1[6] setActivePasswordDialog:0];
}

void sub_100168CDC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_100168D0C(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = _MRLogForCategory();
  v6 = v5;
  if (!v3)
  {
    v12 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (!v12)
      {
        goto LABEL_14;
      }

      v14 = a1[4];
      v13 = a1[5];
      v10 = +[NSDate date];
      [v10 timeIntervalSinceDate:a1[6]];
      v22 = 138544130;
      v23 = @"Dialog.handleClusterErrorStatus";
      v24 = 2114;
      v25 = v13;
      v26 = 2114;
      v27 = v14;
      v28 = 2048;
      v29 = v15;
      v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v17 = v6;
      v18 = 42;
    }

    else
    {
      if (!v12)
      {
        goto LABEL_14;
      }

      v19 = a1[5];
      v10 = +[NSDate date];
      [v10 timeIntervalSinceDate:a1[6]];
      v22 = 138543874;
      v23 = @"Dialog.handleClusterErrorStatus";
      v24 = 2114;
      v25 = v19;
      v26 = 2048;
      v27 = v20;
      v16 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v17 = v6;
      v18 = 32;
    }

    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, &v22, v18);
    goto LABEL_13;
  }

  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (v7)
    {
      v9 = a1[4];
      v8 = a1[5];
      v10 = +[NSDate date];
      [v10 timeIntervalSinceDate:a1[6]];
      v22 = 138544386;
      v23 = @"Dialog.handleClusterErrorStatus";
      v24 = 2114;
      v25 = v8;
      v26 = 2114;
      v27 = v3;
      v28 = 2114;
      v29 = v9;
      v30 = 2048;
      v31 = v11;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v22, 0x34u);
LABEL_13:
    }
  }

  else if (v7)
  {
    sub_1003AB558();
  }

LABEL_14:

  [*(*(a1[7] + 8) + 40) dismiss];
  v21 = +[NSNotificationCenter defaultCenter];
  [v21 removeObserver:*(*(a1[8] + 8) + 40)];
}

void sub_100168F98(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_100169010(uint64_t a1, void *a2)
{
  v3 = [a2 buttonIdentifier];
  if (v3 == 1)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = 0;
  }

  else if (v3 == 2)
  {
    [*(a1 + 32) _launchTVClusterSettings];
  }

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

void sub_100169144(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Failed to open TVSettings: %{public}@", &v4, 0xCu);
    }
  }
}

void sub_100169EF0(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([v9 buttonIdentifier] == 1)
  {
    v3 = [v9 textFieldValues];
    v4 = [v3 firstObject];

    v5 = [v4 length];
    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = [*(a1 + 40) dictionary];
      v8 = [v6 setPickedRoute:v7 withPassword:v4 options:*(a1 + 48)];

      if (v8)
      {
        [*(a1 + 32) _storePassword:v4 forRoute:*(a1 + 40)];
      }
    }

    else
    {
      [v6[19] userCancelledPickingRoute:*(a1 + 40)];
      notify_post("com.apple.mediaplayer.airPlayPasswordAlertDidCancel");
    }
  }

  [*(a1 + 32) setActivePasswordDialog:0];
}

uint64_t sub_10016A440()
{
  v3[0] = 0;
  if (!qword_100529590)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10016B92C;
    v3[4] = &unk_1004B82A0;
    v3[5] = v3;
    v4 = off_1004BFAE8;
    v5 = 0;
    qword_100529590 = _sl_dlopen();
  }

  v0 = qword_100529590;
  v1 = v3[0];
  if (!qword_100529590)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_10016A5F4(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  (*(v4 + 16))(v4, v5, [a3 code]);
}

id sub_10016AA3C(uint64_t a1, void *a2)
{
  v3 = [a2 uid];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t sub_10016AFBC(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = *(*(*(a1 + 56) + 8) + 40);
  v4 = _MRLogForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1003AB708(a1, v2, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) requestID];
    v7 = +[NSDate date];
    [v7 timeIntervalSinceDate:*(a1 + 40)];
    v10 = 138543874;
    v11 = @"removeOutputDeviceUIDsFromParentGroup";
    v12 = 2114;
    v13 = v6;
    v14 = 2048;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", &v10, 0x20u);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(*(*v2 + 8) + 40));
  }

  return result;
}

void sub_10016B11C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_10016B17C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3 && !MRMediaRemoteErrorCodeIsInformational())
  {
    v8 = [[NSError alloc] initWithMRError:a3];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    dispatch_group_enter(*(a1 + 32));
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10016B280;
    v11[3] = &unk_1004B69F8;
    v13 = *(a1 + 56);
    v12 = *(a1 + 32);
    [v5 removeOutputDeviceFromParentGroup:v6 queue:v7 completion:v11];
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10016B280(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_10016B654(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([v3 containsUID:{*(*(&v9 + 1) + 8 * i), v9}])
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

uint64_t sub_10016B92C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100529590 = result;
  return result;
}

void *sub_10016B9A0(uint64_t a1)
{
  v2 = sub_10016A440();
  result = dlsym(v2, "APReceiverMediaRemoteXPCClient_CopyProperty");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100529598 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10016BCD8(uint64_t a1, void *a2)
{
  v3 = [a2 msv_firstWhere:&stru_1004BFB90];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) _retargetWithReason:@"Removed DUGL"];
    v3 = v4;
  }
}

void sub_10016F688(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:kMRMediaRemoteActiveEndpointTypeUserInfoKey];
  v4 = [v3 intValue];

  if (v4 == 1)
  {
    v7 = +[MRUserSettings currentSettings];
    v8 = [v7 sendProactivePFSQOnProactiveASEChange];

    if (!v8)
    {
      return;
    }

LABEL_6:
    v9 = [*(a1 + 40) systemMediaAppPlayerPathForNotification:*(a1 + 32)];
    active = MRMediaRemoteActiveEndpointTypeCopyDescription();
    v11 = [NSString stringWithFormat:@"%@ ASE Change", active];

    v12 = [*(a1 + 32) userInfo];
    v13 = [v12 objectForKeyedSubscript:kMRMediaRemoteActiveEndpointReasonUserInfoKey];

    v14 = _MRLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v27 = v11;
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[MRDPPFSQS] %@ - Reported reason: %@", buf, 0x16u);
    }

    v15 = [v9 origin];
    if (v15)
    {
      v16 = v15;
      v17 = [v9 origin];
      if ([v17 isLocal])
      {
      }

      else
      {
        v18 = [v9 isSystemMediaApplication];

        if (v18)
        {
          v19 = _MRLogForCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v27 = v9;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[MRDPPFSQS] Will send PPFSQ to <%@>", buf, 0xCu);
          }

          [*(a1 + 40) _onQueue_sendPrepareForSetQueueTo:v9 reason:v11 type:2];
          goto LABEL_20;
        }
      }
    }

    v20 = [*(a1 + 32) userInfo];
    v21 = [v20 objectForKeyedSubscript:kMRAVEndpointOutputDeviceIdentifierUserInfoKey];

    v22 = _MRLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v9 origin];
      v24 = [v23 isLocal];
      v25 = @"NO";
      *buf = 138412802;
      v27 = v21;
      v28 = 2112;
      if (v24)
      {
        v25 = @"YES";
      }

      v29 = v9;
      v30 = 2112;
      v31 = v25;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[MRDPPFSQS] Won't send PFSQ for ASE change - endpoint: <%@>, playerPath:<%@>, isLocal:<%@>", buf, 0x20u);
    }

LABEL_20:
    return;
  }

  if (!v4)
  {
    v5 = +[MRUserSettings currentSettings];
    v6 = [v5 sendProactivePFSQOnUserSelectedASEChange];

    if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_10016FB98(uint64_t a1)
{
  v7 = +[MRDMediaRemoteServer server];
  if ([v7 isFirstLaunchAfterBoot])
  {
    v2 = +[MRUserSettings currentSettings];
    v3 = [v2 sendProactivePFSQAfterBoot];

    if (v3)
    {
      if (MSVDeviceIsAudioAccessory())
      {
        v4 = *(a1 + 32);
        v5 = *(v4 + 8);
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_10016FCE4;
        v9[3] = &unk_1004B6D08;
        v9[4] = v4;
        sub_10019FEE8(v5, v9);
      }

      else
      {
        v6 = _MRLogForCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDPPFSQS] First MRD launch after boot, device is not an AudioAccessory", buf, 2u);
        }
      }
    }
  }

  else
  {
  }
}

void sub_10016FCE4(uint64_t a1)
{
  v2 = kMRMediaRemoteSystemMediaApplicationDisplayIdentifier;
  v3 = [MRPlayerPath alloc];
  v4 = +[MROrigin localOrigin];
  v5 = [[MRClient alloc] initWithBundleIdentifier:v2];
  v9 = [v3 initWithOrigin:v4 client:v5 player:0];

  [*(a1 + 32) _onQueue_sendPrepareForSetQueueTo:v9 reason:@"AudioAccessory Boot" type:1];
  v6 = [MRPlayerPath alloc];
  v7 = +[MROrigin localOrigin];
  v8 = [v6 initWithOrigin:v7 bundleIdentifier:kMRMediaRemoteSystemPodcastApplicationDisplayIdentifier player:0];

  [*(a1 + 32) _onQueue_sendPrepareForSetQueueTo:v8 reason:@"AudioAccessory Boot" type:1];
}

void sub_100170054(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];
  if (v4)
  {
  }

  else
  {
    v10 = [v3 resultStatuses];

    if (v10)
    {
      v11 = [v3 playerPath];

      v8 = _MRLogForCategory();
      v12 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (!v12)
        {
          goto LABEL_23;
        }

        v13 = *(a1 + 32);
        v14 = [v3 resultStatuses];
        v15 = [v3 playerPath];
        v16 = +[NSDate date];
        [v16 timeIntervalSinceDate:*(a1 + 40)];
        v26 = 138544386;
        v27 = @"proactivePrepareForSetQueue";
        v28 = 2114;
        v29 = v13;
        v30 = 2112;
        v31 = v14;
        v32 = 2114;
        v33 = v15;
        v34 = 2048;
        v35 = v17;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds", &v26, 0x34u);

        goto LABEL_21;
      }

      if (!v12)
      {
        goto LABEL_23;
      }

      v24 = *(a1 + 32);
      v14 = [v3 resultStatuses];
      v15 = +[NSDate date];
      [v15 timeIntervalSinceDate:*(a1 + 40)];
      v26 = 138544130;
      v27 = @"proactivePrepareForSetQueue";
      v28 = 2114;
      v29 = v24;
      v30 = 2112;
      v31 = v14;
      v32 = 2048;
      v33 = v25;
      v21 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v21, &v26, 0x2Au);
LABEL_21:

      goto LABEL_22;
    }
  }

  v5 = [v3 error];

  v6 = [v3 playerPath];

  v7 = _MRLogForCategory();
  v8 = v7;
  if (!v5)
  {
    v18 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (!v6)
    {
      if (!v18)
      {
        goto LABEL_23;
      }

      v22 = *(a1 + 32);
      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:*(a1 + 40)];
      v26 = 138543874;
      v27 = @"proactivePrepareForSetQueue";
      v28 = 2114;
      v29 = v22;
      v30 = 2048;
      v31 = v23;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", &v26, 0x20u);
LABEL_22:

      goto LABEL_23;
    }

    if (!v18)
    {
      goto LABEL_23;
    }

    v19 = *(a1 + 32);
    v14 = [v3 playerPath];
    v15 = +[NSDate date];
    [v15 timeIntervalSinceDate:*(a1 + 40)];
    v26 = 138544130;
    v27 = @"proactivePrepareForSetQueue";
    v28 = 2114;
    v29 = v19;
    v30 = 2114;
    v31 = v14;
    v32 = 2048;
    v33 = v20;
    v21 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_20;
  }

  v9 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v9)
    {
      sub_1003AB80C(a1, v3, v8);
    }
  }

  else if (v9)
  {
    sub_1003AB928(a1, v3, v8);
  }

LABEL_23:
}

void sub_1001705B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1001705D4(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _frontmostApplicationDidChange:v5];
  }
}

id sub_100170638(uint64_t a1)
{
  [*(a1 + 32) _reloadCachedNowPlayingClients];
  v2 = *(a1 + 32);

  return [v2 _reloadCachedNowPlayingItem];
}

void sub_100170948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100170BDC(uint64_t a1)
{
  [*(a1 + 32) setCachedNowPlayingClients:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _notifyDelegateNowPlayingApplicationDidChange];
}

id sub_100170CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = MRPlaybackQueueCopyContentItems();
    v5 = v4;
    if (v4)
    {
      v6 = [v4 firstObject];
      [*(a1 + 32) setCachedNowPlayingContentItem:v6];
    }

LABEL_7:

    return [*(a1 + 32) _notifyDelegateNowPlayingPlaybackStateDidChange];
  }

  if (a3)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[iOSSim Data Source] Failed to load playback queue: %{public}@", &v9, 0xCu);
    }

    goto LABEL_7;
  }

  return [*(a1 + 32) _notifyDelegateNowPlayingPlaybackStateDidChange];
}

void sub_100170E2C(uint64_t a1)
{
  v2 = [*(a1 + 32) observersForSelector:"nowPlayingDataSourceNowPlayingApplicationDidChange:"];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
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

        [*(*(&v7 + 1) + 8 * v6) nowPlayingDataSourceNowPlayingApplicationDidChange:*(a1 + 32)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_100170FA0(uint64_t a1)
{
  v2 = [*(a1 + 32) observersForSelector:"nowPlayingDataSourceNowPlayingApplicationPlaybackStateDidChange:"];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
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

        [*(*(&v7 + 1) + 8 * v6) nowPlayingDataSourceNowPlayingApplicationPlaybackStateDidChange:*(a1 + 32)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_100171368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001713A8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100171EAC(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = @"MRDApplicationConnectionInvalidationReasonKey";
  v7 = v3;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"MRDApplicationConnectionDidInvalidateNotification" object:v4 userInfo:v5];
}

void sub_100172890(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100172980;
  block[3] = &unk_1004BFC38;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v9 = v7;
  v10 = v6;
  v11 = *(a1 + 64);
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_100172980(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = _MRLogForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      v5 = +[NSDate date];
      [v5 timeIntervalSinceDate:*(a1 + 48)];
      v8 = 138543874;
      v9 = v3;
      v10 = 2114;
      v11 = v4;
      v12 = 2048;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "POWER: Responding to power callback %{public}@-%{public}@ in %lf seconds", &v8, 0x20u);
    }
  }

  return IOAllowPowerChange([*(a1 + 56) connection], *(a1 + 64));
}

void sub_100172C50(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1003ABBD0(v5, v6);
    }
  }

  else
  {
    [*(a1 + 32) setFirewall:a2];
    v7 = [*(a1 + 32) allowedDestinations];

    if (v7)
    {
      v8 = *(a1 + 32);
      v9 = [v8 allowedDestinations];
      [v8 _updateAllowedDestinations:v9];
    }
  }
}

id sub_100173358(id a1, NSString *a2)
{
  v2 = a2;
  v3 = [[IDSURI alloc] initWithPrefixedURI:v2];

  if (v3)
  {
    v4 = [[IDSFirewallEntry alloc] initWithURI:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1001733D8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1003ABC48(v3, v4);
    }

    v5 = [*(a1 + 32) errorHandler];
    (v5)[2](v5, v3);
  }
}

void sub_1001737E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100173818(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v5 && ([v5 isValid] & 1) != 0)
    {
      v8 = [MRDTaskAssertion alloc];
      v9 = [v5 pid];
      v10 = [v5 bundleIdentifier];
      v11 = [(MRDTaskAssertion *)v8 initWithType:4 pid:v9 bundleID:v10 name:@"NowPlayingCap"];

      [(MRDTaskAssertion *)v11 invalidateInDuration:10.0];
      if ([WeakRetained options])
      {
        [WeakRetained _monitorForTermination:{objc_msgSend(v5, "pid")}];
      }

      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v16 = 138543362;
        v17 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Launched %{public}@", &v16, 0xCu);
      }
    }

    else
    {
      v14 = _MRLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        v16 = 138543618;
        v17 = v15;
        v18 = 2114;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Failed to open %{public}@: %{public}@", &v16, 0x16u);
      }

      [WeakRetained _cleanup];
      [WeakRetained _submitLaunchFailure];
    }
  }
}

void sub_100173BBC(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Suspended %{public}@", &v4, 0xCu);
  }
}

void sub_100174038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100174064(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [WeakRetained bundleIdentifier];
      v8 = [v4 status];
      v9 = [v8 error];
      v14 = 138543618;
      v15 = v7;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Process %{public}@ did terminate: %{public}@", &v14, 0x16u);
    }

    [WeakRetained _cleanup];
    v10 = [v4 status];
    [WeakRetained _submitTerminationEvent:{objc_msgSend(v10, "code")}];

    v11 = [v4 status];
    if ([v11 isCrash])
    {

LABEL_7:
      [WeakRetained _relaunch];
      goto LABEL_8;
    }

    v12 = [v4 status];
    v13 = [v12 isJetsam];

    if (v13)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
}

void sub_100174384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001743B0(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _nowPlayingPlaybackStateDidChange:v5];
  }
}

void sub_100174810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100174848(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = +[MRDMediaRemoteServer server];
    v4 = [v3 nowPlayingServer];

    v5 = [v4 queryExistingPlayerPath:*(a1 + 32)];
    v6 = [v5 playerClient];
    v7 = [v6 playbackState];

    if (*(a1 + 56) != v7)
    {
      [MSVAutoBugCapture snapshotWithDomain:@"MediaRemote" type:@"NowPlayingLauncher" subType:@"PlaybackStateDidChange" context:@"Notification and server states diverge" triggerThresholdValues:*(a1 + 40) events:0 completion:0];
      v8 = _MRLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [WeakRetained bundleIdentifier];
        v10 = *(a1 + 56);
        v12 = *(a1 + 32);
        v11 = *(a1 + 40);
        *buf = 138544386;
        v14 = v9;
        v15 = 2114;
        v16 = v11;
        v17 = 1026;
        v18 = v10;
        v19 = 1026;
        v20 = v7;
        v21 = 2114;
        v22 = v12;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ received PlaybackStateDidChangeNotification (%{public}@) with playback state %{public}d, expected %{public}d for %{public}@.", buf, 0x2Cu);
      }
    }
  }
}

id sub_100174A9C(uint64_t a1)
{
  v4[0] = @"type";
  v4[1] = @"bundleID";
  v1 = *(a1 + 32);
  v5[0] = &off_1004E0B00;
  v5[1] = v1;
  v4[2] = @"error";
  v5[2] = &__kCFBooleanTrue;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

id sub_100174BF0(uint64_t a1)
{
  v5[0] = @"type";
  v5[1] = @"bundleID";
  v1 = *(a1 + 32);
  v6[0] = &off_1004E0B18;
  v6[1] = v1;
  v5[2] = @"relaunching";
  v2 = [NSNumber numberWithBool:*(a1 + 40)];
  v6[2] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:3];

  return v3;
}

id sub_100174D68(uint64_t a1)
{
  v6[0] = @"type";
  v6[1] = @"bundleID";
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v7[0] = &off_1004E0B30;
  v7[1] = v2;
  v6[2] = @"exitCode";
  v3 = [NSNumber numberWithUnsignedLongLong:v1];
  v7[2] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

void sub_100175208(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 hostedExternalDeviceManagerDidUpdateExternalDeviceMapping:*(a1 + 32)];
}

id sub_1001753C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 outputDeviceUID];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

void sub_100175590(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100175664;
  v10[3] = &unk_1004B9698;
  v8 = v5;
  v11 = v8;
  v9 = [v7 msv_firstWhere:v10];
  if (!v9)
  {
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v8];
  }
}

id sub_100175664(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_1001756A8(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = [v5 externalDevice];
  if (([v6 disconnectWhenUndiscoverable] & 1) == 0)
  {
    v7 = [v5 externalDevice];
    if ([v7 connectionState] != 3)
    {
      v12 = [v5 endpoint];
      v13 = [v12 groupLeader];
      v14 = [v13 transportType];

      if (v14 != 6)
      {
        goto LABEL_8;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  v8 = [[NSError alloc] initWithMRError:24 description:@"undiscoverable"];
  v9 = [v5 externalDevice];
  v10 = [v9 disconnectWhenUndiscoverable];

  if (v10)
  {
    v11 = [v5 externalDevice];
    [v11 disconnect:v8];
  }

  [*(a1 + 32) _removeExternalDeviceWithEndpointIdentifier:v15 error:v8];
  [*(a1 + 40) addObject:v5];

LABEL_8:
}

void sub_10017599C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 hostedExternalDeviceManagerDidUpdateExternalDeviceMapping:*(a1 + 32)];
}

void sub_100175BAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 outputDeviceUID];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    v9 = MRLogCategoryDiscovery();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = 138543874;
      v13 = v6;
      v14 = 2114;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDHostedExternalDeviceManager] Removing hostedExternalDevice=%{public}@, outputDeviceIdentifier=%{public}@ reason=%{public}@", &v12, 0x20u);
    }

    [*(a1 + 48) addObject:v5];
  }
}

void sub_100175DB4(id a1)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_UTILITY, 0);
  v2 = dispatch_queue_create("com.apple.mediaremote.HostedExternalDeviceManager.graveYardQueue", v1);
  v3 = qword_1005295A8;
  qword_1005295A8 = v2;
}

void sub_100175E38(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(*(a1 + 32) + 8) removeObjectIdenticalTo:*(a1 + 40)];
  objc_sync_exit(obj);
}

void sub_10017605C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v7);
  _Unwind_Resume(a1);
}

void sub_100176080(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v8 = [a3 externalDevice];
  v9 = *(a1 + 32);

  if (v8 == v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_100176324(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100176460(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001765A0(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 deviceID] == *(a1 + 48))
        {
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_10017675C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 owningClient];
        v10 = *(a1 + 40);

        if (v9 == v10)
        {
          [*(*(a1 + 32) + 16) removeObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

void sub_10017692C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (*(*(&v8 + 1) + 8 * v7) == *(a1 + 40))
        {
          [*(*(a1 + 32) + 8) removeObject:v8];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

id sub_100176C1C(uint64_t a1)
{
  [*(a1 + 32) setRecordingEndpointClients:*(*(a1 + 40) + 8)];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);

  return [v2 setRegisteredVirtualAudioDevices:v3];
}

void sub_100176D58(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v9 + 1) + 8 * v6) data];
        [v7 addObject:v8];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_100177410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100177448(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v9 + 1) + 8 * v6);
      if ([v7 deviceID] == *(a1 + 48))
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v8 = v7;
    *(*(*(a1 + 40) + 8) + 24) = 1;

    if (!v8)
    {
      return;
    }

    [*(*(a1 + 32) + 16) removeObject:v8];
    v2 = v8;
  }

LABEL_12:
}

id sub_1001778AC(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    result = [*(*(a1 + 32) + 8) indexOfObject:*(a1 + 40)];
    if (result == 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = *(a1 + 40);
      v4 = *(*(a1 + 32) + 8);

      return [v4 addObject:v3];
    }

    if (*(a1 + 48))
    {
      return result;
    }
  }

  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 8);

  return [v6 removeObject:v5];
}

id sub_100177E00(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = v3;
  if (*(a1 + 32))
  {
    [v3 setMetadata:0];
  }

  return v4;
}

void sub_1001796A0(id a1, NSString *a2, NSMutableDictionary *a3, BOOL *a4)
{
  v8 = a3;
  v4 = [(NSMutableDictionary *)v8 allKeys];
  v5 = [v4 msv_filter:&stru_1004BFF10];
  v6 = [v5 sortedArrayUsingComparator:&stru_1004BFF30];

  if ([v6 count] >= 2)
  {
    v7 = [v6 lastObject];
    [(NSMutableDictionary *)v8 setObject:0 forKeyedSubscript:v7];
  }
}

BOOL sub_10017975C(id a1, MRDPlaybackQueueArtworkCacheSize *a2)
{
  v2 = a2;
  v3 = +[MRDPlaybackQueueArtworkCacheSize defaultSize];
  v4 = [(MRDPlaybackQueueArtworkCacheSize *)v2 isEqual:v3];

  return v4 ^ 1;
}

void sub_100179AF4(id a1)
{
  v1 = [[MRDPlaybackQueueArtworkCacheSize alloc] initWithW:600.0 h:600.0];
  v2 = qword_1005295B8;
  qword_1005295B8 = v1;
}

void sub_100179C70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[6];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100179D04;
  block[3] = &unk_1004B6D08;
  v4 = v1;
  dispatch_async(v2, block);
}

void sub_100179E68(uint64_t a1)
{
  v21 = [NSString alloc];
  v2 = *(a1 + 32);
  v20 = objc_opt_class();
  v3 = *(a1 + 32);
  v4 = *(v3 + 44);
  v22 = MRMediaRemoteVolumeControlCapabilitiesDescription();
  v5 = *(a1 + 32);
  v6 = *(v5 + 36);
  v7 = *(v5 + 40);
  v8 = [v5 _mediaServerController];
  v9 = [v8 currentRouteHasVolumeControl];
  [*(a1 + 32) pbsVolumeControlCapabilities];
  v10 = MRMediaRemoteVolumeControlCapabilitiesDescription();
  v11 = +[MRUserSettings currentSettings];
  v12 = [v11 hasSystemVolumeCapabilitiesOverride];
  if (v12)
  {
    v19 = +[MRUserSettings currentSettings];
    [v19 systemVolumeCapabilitiesOverride];
    v13 = MRMediaRemoteVolumeControlCapabilitiesDescription();
  }

  else
  {
    v13 = @"-1";
  }

  v14 = +[MRUserSettings currentSettings];
  [v14 systemVolumeOverride];
  v16 = [v21 initWithFormat:@"<%@:%p = {\n  capabilities=%@\n  volume=%lf\n  muted=%u\n  AVSC.currentRouteHasVolumeControl=%u\n  PBS.capabilities=%@\n  volumeCapabilitiesOverride=%@  volumeOverride=%lf\n}>", v20, v3, v22, *&v6, v7, v9, v10, v13, v15];
  v17 = *(*(a1 + 40) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  if (v12)
  {
  }
}

id sub_10017A0C4(uint64_t a1)
{
  result = [*(a1 + 32) _initVolumeDataIfNeccessary];
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 44);
  return result;
}

float sub_10017A1B8(uint64_t a1)
{
  [*(a1 + 32) _initVolumeDataIfNeccessary];
  result = *(*(a1 + 32) + 36);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_10017A2AC(uint64_t a1)
{
  result = [*(a1 + 32) _initVolumeDataIfNeccessary];
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 40);
  return result;
}

void sub_10017A3DC(uint64_t a1, double a2)
{
  LODWORD(a2) = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  [v2 _onQueue_setVolume:&obj error:a2];
  objc_storeStrong((v3 + 40), obj);
}

void sub_10017A5D4(uint64_t a1)
{
  v1 = [*(a1 + 32) volumeCategoryForAudioCategory:@"MediaPlayback"];
  v2 = qword_1005295C8;
  qword_1005295C8 = v1;
}

void sub_10017A708(uint64_t a1, double a2)
{
  v2 = *(a1 + 32);
  *&a2 = v2[9] + *(a1 + 48);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  [v2 _onQueue_setVolume:&obj error:a2];
  objc_storeStrong((v3 + 40), obj);
}

void sub_10017A858(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 48))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MRDVolumeController] Setting AVSC isMuted to %@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) _mediaServerController];
  v5 = [NSNumber numberWithBool:*(a1 + 48)];
  v7 = *(a1 + 40);
  v6 = a1 + 40;
  v8 = *(v7 + 8);
  obj = *(v8 + 40);
  [v4 setAttribute:v5 forKey:AVSystemController_FullMuteAttribute error:&obj];
  objc_storeStrong((v8 + 40), obj);

  if (*(*(*v6 + 8) + 40))
  {
    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1003AC130(v6, v9);
    }
  }
}

void sub_10017AB80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017AC24;
  v7[3] = &unk_1004B68F0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_10017AC24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) name];
  [v1 _reloadVolumeDataWithReason:v2];
}

void sub_10017AC78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017AD1C;
  v7[3] = &unk_1004B68F0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_10017AD1C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) name];
  [v1 _reloadVolumeDataWithReason:v2];
}

void sub_10017B104(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:AVSystemController_AudioCategoryNotificationParameter];

  if (([v3 isEqualToString:@"MediaPlayback"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"Audio/Video"))
  {
    [*(a1 + 40) _updateVolumeValueCache];
  }
}

void sub_10017B23C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) name];
  [v1 _reloadVolumeDataWithReason:v2];
}

void sub_10017B330(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) name];
  [v1 _reloadVolumeDataWithReason:v2];
}

void sub_10017B478(uint64_t a1)
{
  [*(a1 + 32) _tearDownNotifications];
  [*(a1 + 32) _setupNotifications];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) name];
  [v2 _reloadVolumeDataWithReason:v3];
}

void sub_10017B580(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) name];
  [v1 _reloadVolumeDataWithReason:v2];
}

void sub_10017B6D0(uint64_t a1)
{
  if (*(a1 + 64) == off_100520F20)
  {
    v5 = *(a1 + 32);
    v6 = NSStringFromSelector("volumeControlCapabilities");
    LODWORD(v5) = [v5 isEqualToString:v6];

    if (v5)
    {
      v7 = *(a1 + 40);
      v8 = [[NSString alloc] initWithFormat:@"PBS.%@", *(a1 + 32)];
      [v7 _reloadVolumeDataWithReason:v8];
    }
  }

  else
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v9.receiver = *(a1 + 40);
    v9.super_class = MRDMediaServerVolumeController;
    objc_msgSendSuper2(&v9, "observeValueForKeyPath:ofObject:change:context:", v2, v3, v4);
  }
}

void sub_10017BD9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = MREndpointConnectionReasonUserInfoKey;
  v11 = @"Media.Route Biome Stream Donation";
  v4 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017BEBC;
  v7[3] = &unk_1004B8690;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v6 connectToExternalDeviceWithUserInfo:v4 completion:v7];
}

void sub_10017BEBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  if (v3)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v6 = *(a1 + 48);
      v8 = [*(a1 + 32) activeSystemEndpoint];
      v13 = 138413058;
      v14 = v7;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v3;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC].AMRBD Failed to connect to active system endpoint %@<%@> with error %@. Reset to %@.", &v13, 0x2Au);
    }
  }

  else
  {
    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v10 = *(a1 + 48);
      v12 = [*(a1 + 32) activeSystemEndpoint];
      v13 = 138412802;
      v14 = v11;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDRRC].AMRBD Setting active system endpoint to %@<%@> (old value: %@)", &v13, 0x20u);
    }

    [*(a1 + 32) setActiveSystemEndpoint:*(a1 + 40)];
  }

  objc_sync_exit(v4);
}

id sub_10017C288(id a1, MRAVOutputDevice *a2)
{
  v2 = a2;
  v3 = [(MRAVOutputDevice *)v2 localizedName];
  v4 = [(MRAVOutputDevice *)v2 uid];

  v5 = [NSString stringWithFormat:@"%@-%@", v3, v4];

  return v5;
}

id sub_10017C31C(id a1, MRAVOutputDevice *a2)
{
  v2 = a2;
  v3 = [(MRAVOutputDevice *)v2 localizedName];
  v4 = [(MRAVOutputDevice *)v2 uid];

  v5 = [NSString stringWithFormat:@"%@-%@", v3, v4];

  return v5;
}

void sub_10017C694(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 32);
    v3 = [v2 activeSystemEndpoint];
    v4 = [v2 mediaRouteEventForType:1 endpoint:v3];

    v5 = [*(a1 + 32) lastASEEvent];
    v6 = v5;
    if (v5 == v4)
    {
    }

    else
    {
      v7 = [v5 isEqual:v4];

      if ((v7 & 1) == 0)
      {
        v8 = BiomeLibrary();
        v9 = [v8 Media];
        v10 = [v9 Route];

        v11 = [v10 source];
        [v11 sendEvent:v4];
        [*(a1 + 32) setLastASEEvent:v4];
        v12 = _MRLogForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 138412290;
          v14 = v4;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDRRC].AMRBD donated ASE event %@", &v13, 0xCu);
        }

LABEL_10:
        return;
      }
    }

    v10 = _MRLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MRDRRC].AMRBD dropping duplicated ASE event %@", &v13, 0xCu);
    }

    goto LABEL_10;
  }
}

BMMediaRouteOutputDevice *__cdecl sub_10017C960(id a1, MRAVOutputDevice *a2)
{
  v2 = a2;
  v3 = [(MRAVOutputDevice *)v2 deviceType];
  v4 = [(MRAVOutputDevice *)v2 deviceSubtype];
  v5 = [(MRAVOutputDevice *)v2 clusterType];
  if (v5)
  {
    v6 = [(MRAVOutputDevice *)v2 clusterCompositionOutputDevices];
    v7 = [v6 msv_map:&stru_1004C0058];
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  v8 = [BMMediaRouteOutputDevice alloc];
  v9 = [(MRAVOutputDevice *)v2 uid];
  v10 = [v8 initWithOutputDeviceID:v9 type:v3 subType:v4 + 1 clusterType:v5 flattenedClusterLeafMembers:v7];

  return v10;
}

BMMediaRouteOutputDeviceClusterMember *__cdecl sub_10017CA54(id a1, MRAVOutputDevice *a2)
{
  v2 = a2;
  v3 = [BMMediaRouteOutputDeviceClusterMember alloc];
  v4 = [(MRAVOutputDevice *)v2 uid];
  v5 = [(MRAVOutputDevice *)v2 deviceType];
  v6 = [(MRAVOutputDevice *)v2 deviceSubtype];

  v7 = [v3 initWithOutputDeviceID:v4 type:v5 subType:v6 + 1];

  return v7;
}

void sub_10017DFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id location)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&a32);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10017E03C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSString alloc];
  v5 = *(a1 + 32);
  v6 = [v4 initWithFormat:@"com.apple.mediaremote.%@.%@.%@-%d", objc_opt_class(), v3, v5[6], objc_msgSend(v5, "pid")];

  v7 = [v6 UTF8String];
  return v7;
}

void sub_10017E0D8(uint64_t a1)
{
  v2 = [NSString alloc];
  v3 = *(a1 + 32);
  v4 = [v2 initWithFormat:@"com.apple.mediaremote.%@.xpcTargetQueue", objc_opt_class()];
  v5 = [v4 UTF8String];
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create(v5, v6);
  v8 = qword_1005295E0;
  qword_1005295E0 = v7;

  v9 = [NSString alloc];
  v10 = *(a1 + 32);
  v16 = [v9 initWithFormat:@"com.apple.mediaremote.%@.workerQueue", objc_opt_class()];
  v11 = v16;
  v12 = [v16 UTF8String];
  v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v14 = dispatch_queue_create(v12, v13);
  v15 = qword_1005295D8;
  qword_1005295D8 = v14;
}

void sub_10017E208(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleXPCMessage:v3];
}

void sub_10017E264(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidate];
}

void sub_10017E920(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10017EA04(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10017EB38(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 200);
  if (!v2)
  {
    v3 = objc_alloc_init(MRDPairingHandler);
    v4 = *(a1 + 32);
    v5 = *(v4 + 200);
    *(v4 + 200) = v3;

    v2 = *(*(a1 + 32) + 200);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

void sub_10017EDC8(void *a1)
{
  if (!*(a1[4] + 88))
  {
    v2 = objc_alloc_init(NSMutableDictionary);
    v3 = a1[4];
    v4 = *(v3 + 88);
    *(v3 + 88) = v2;
  }

  v8 = [[MSVPair alloc] initWithFirst:a1[5] second:a1[6]];
  v5 = a1[5];
  v6 = *(a1[4] + 88);
  v7 = [v5 requestIdentifier];
  [v6 setObject:v8 forKeyedSubscript:v7];
}

void sub_10017EF38(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  v3 = [*(a1 + 40) requestIdentifier];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = *(*(a1 + 32) + 88);
    v6 = [*(a1 + 40) requestIdentifier];
    [v5 setObject:0 forKeyedSubscript:v6];

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_10017F1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10017F1E8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 88);

  return [v5 removeAllObjects];
}

void sub_10017F48C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10017F4A8(id *a1, int a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained && a2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v6 = *(a1[4] + 2);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10017F5BC;
    block[3] = &unk_1004BA9B8;
    block[4] = WeakRetained;
    v9 = &v10;
    v8 = a1[5];
    dispatch_sync(v6, block);
    if (*(v11 + 24) == 1)
    {
      [a1[4] _postNotification:a1[5]];
    }

    _Block_object_dispose(&v10, 8);
  }
}

void sub_10017F5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_10017F5BC(void *result)
{
  v1 = result[4];
  if (*(v1 + 112))
  {
    return [*(v1 + 120) addObject:result[5]];
  }

  *(*(result[6] + 8) + 24) = 1;
  return result;
}

id sub_10017F734(uint64_t a1)
{
  result = [*(*(a1 + 32) + 96) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

void sub_10017F80C(uint64_t a1)
{
  v2 = [*(a1 + 40) mutableCopy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 96);
  *(v3 + 96) = v2;
}

void sub_10017FA14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_10017FA3C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[2];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10017FAF4;
    v7[3] = &unk_1004B68F0;
    v7[4] = WeakRetained;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void sub_10017FB00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = WeakRetained[8];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (!v5)
    {
      goto LABEL_14;
    }

    v6 = v5;
    v7 = *v15;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 type] == *(a1 + 56))
        {
          v10 = [v9 name];
          if ([v10 isEqualToString:*(a1 + 32)])
          {
            [v9 remainingDuration];
            v12 = v11;
            v13 = *(a1 + 64);

            if (v12 >= v13)
            {
              continue;
            }

            v10 = [[NSString alloc] initWithFormat:@"Replaced by %@", *(a1 + 32)];
            [v9 invalidateWithReason:v10];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (!v6)
      {
LABEL_14:

        [v3[8] addObject:*(a1 + 40)];
        break;
      }
    }
  }
}

void sub_10017FE64(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [a1[4] UUIDString];
      *buf = 138412290;
      v23 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Claiming critical section for requestID: %@", buf, 0xCu);
    }

    v5 = [NSString alloc];
    v6 = [a1[4] UUIDString];
    v7 = [v5 initWithFormat:@"Starting playback for %@", v6];

    v8 = [MRDTaskAssertion alloc];
    v9 = [a1[5] pid];
    v10 = [a1[5] bundleIdentifier];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1001800B4;
    v18 = &unk_1004C0160;
    v19 = WeakRetained;
    v20 = a1[4];
    v21 = a1[6];
    v11 = [(MRDTaskAssertion *)v8 initWithType:8 pid:v9 bundleID:v10 name:v7 invalidationHandler:&v15];

    [(MRDTaskAssertion *)v11 invalidateInDuration:20.0];
    v12 = [WeakRetained[16] objectForKey:a1[4]];
    if (v12)
    {
      v13 = [NSString alloc];
      v14 = [v13 initWithFormat:@"Replaced by %@", v7, v15, v16, v17, v18, v19, v20];
      [v12 invalidateWithReason:v14];
    }

    [WeakRetained[16] setObject:v11 forKeyedSubscript:a1[4]];
  }
}

void sub_1001800B4(void *a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = a1[4];
  if (v6)
  {
    [*(v6 + 128) removeObjectForKey:a1[5]];
    v7 = a1[6];
    if (v7)
    {
      (*(v7 + 16))();
    }
  }
}

void sub_1001801FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v4 = (a1 + 32);
    v6 = [WeakRetained[16] objectForKeyedSubscript:v5];
    v7 = _MRLogForCategory();
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*v4 UUIDString];
        *buf = 138412290;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Releasing critical section claimed for requestID: %@", buf, 0xCu);
      }

      v10 = [NSString alloc];
      v8 = [*v4 UUIDString];
      v11 = [v10 initWithFormat:@"exited the critical section for requestID: %@", v8];
      [v6 invalidateWithReason:v11];
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1003AC2A4(v4, v8);
    }
  }
}

void sub_100180DE8(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 error];

  v4 = [v3 error];

  v5 = [v3 playerPath];

  v6 = _MRLogForCategory();
  v7 = v6;
  if (v4)
  {
    v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      if (v8)
      {
        sub_1003AC340(a1, v3, v7);
      }
    }

    else if (v8)
    {
      sub_1003AC45C(a1, v3, v7);
    }
  }

  else
  {
    v9 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (!v9)
      {
        goto LABEL_13;
      }

      v10 = [*(a1 + 32) commandID];
      v11 = [v3 playerPath];
      v12 = +[NSDate date];
      [v12 timeIntervalSinceDate:*(a1 + 40)];
      v16 = 138544130;
      v17 = @"sendRemoteControlCommand";
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      v22 = 2048;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds", &v16, 0x2Au);
    }

    else
    {
      if (!v9)
      {
        goto LABEL_13;
      }

      v10 = [*(a1 + 32) commandID];
      v11 = +[NSDate date];
      [v11 timeIntervalSinceDate:*(a1 + 40)];
      v16 = 138543874;
      v17 = @"sendRemoteControlCommand";
      v18 = 2114;
      v19 = v10;
      v20 = 2048;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", &v16, 0x20u);
    }
  }

LABEL_13:

  v15 = *(a1 + 48);
  if (v15)
  {
    (*(v15 + 16))(v15, v3);
  }

  [*(*(*(a1 + 56) + 8) + 40) invalidate];
}

void sub_100181044(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MRCommandResult alloc] initWithError:v3];

  (*(*(a1 + 32) + 16))();
}

void sub_1001810C4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100181128(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [RBSProcessPredicate predicateMatchingHandle:v3];
  v9 = v5;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  [v4 setPredicates:v6];

  [v4 setEvents:1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100181254;
  v7[3] = &unk_1004C01B0;
  v8 = *(a1 + 40);
  [v4 setUpdateHandler:v7];
}

void sub_100181254(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = a4;
  v5 = [v13 exitEvent];

  if (v5)
  {
    v6 = [MRCommandResult alloc];
    v7 = [v13 exitEvent];
    v8 = [v7 context];
    v9 = [v8 status];
    v10 = [v9 error];
    v11 = [v10 description];
    v12 = [v6 initWithWithSendError:19 description:v11];

    (*(*(a1 + 32) + 16))();
  }
}

void sub_100181354(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[2];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10018140C;
    v7[3] = &unk_1004B68F0;
    v7[4] = WeakRetained;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void sub_100181418(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[8] addObject:*(a1 + 32)];
}

void sub_10018146C(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  v4 = _MRLogForCategory();
  v5 = [*(a1 + 32) commandID];
  v6 = [v5 hash];

  if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v6, "SendCommandXPCResultFromApp", "", buf, 2u);
  }

  v7 = MRCreateCommandResultFromXPCMessage();

  if ([v7 sendError] == 11)
  {
    v8 = dispatch_time(0, 1000000000);
    v9 = *(*(a1 + 40) + 24);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100181618;
    v10[3] = &unk_1004B8B50;
    v12 = *(a1 + 48);
    v11 = v7;
    dispatch_after(v8, v9, v10);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_100181740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10018175C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    [*(a1 + 32) _relayXPCMessage:*(a1 + 40) andReply:*(a1 + 64) resultCallback:*(a1 + 48)];
  }

  else
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      uint64 = xpc_dictionary_get_uint64(*(a1 + 40), "MRXPC_MESSAGE_ID_KEY");
      v5 = 134217984;
      v6 = uint64;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unable to relay message with id %lu", &v5, 0xCu);
    }
  }
}

void sub_100181B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100181B64(uint64_t a1)
{
  [*(*(a1 + 32) + 64) addObject:*(a1 + 40)];
  if ((byte_1005295F0 & 1) == 0 && [*(*(a1 + 32) + 64) count] == 100)
  {
    v2 = +[MRUserSettings currentSettings];
    v3 = [v2 excessiveTaskAssertionsABC];

    if (v3)
    {
      v4 = *(*(a1 + 32) + 48);
      v5 = dispatch_get_global_queue(-2, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100181C7C;
      block[3] = &unk_1004B6D08;
      v8 = v4;
      v6 = v4;
      dispatch_async(v5, block);

      byte_1005295F0 = 1;
    }
  }
}

void sub_100181CD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  if (*(a1 + 64) == 1)
  {
    v5 = xpc_dictionary_get_remote_connection(*(a1 + 32));
    if (v5)
    {
      reply = xpc_dictionary_create_reply(*(a1 + 32));
      v7 = reply;
      if (reply)
      {
        if (v3 == &_xpc_error_connection_invalid || v3 == &_xpc_error_connection_interrupted)
        {
          xpc_dictionary_set_uint64(reply, "MRXPC_ERROR_CODE_KEY", 1uLL);
        }

        else
        {
          sub_10001FCC8(reply, v3);
        }

        xpc_connection_send_message(v5, v7);
      }
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    [*(a1 + 40) invalidateWithReason:@"Request Returned"];
    v9 = WeakRetained[2];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100181E48;
    v10[3] = &unk_1004B68F0;
    v11 = WeakRetained;
    v12 = *(a1 + 40);
    dispatch_sync(v9, v10);
  }
}

void sub_10018206C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MRGetPlayerPathFromUserInfo();
  v8 = +[MRUserSettings currentSettings];
  v9 = [v8 verboseMRDMediaRemoteClientLogging];

  if (v7)
  {
    if (!v9)
    {
      goto LABEL_10;
    }

    v10 = _MRLogForCategory();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v11 = [*(a1 + 32) bundleIdentifier];
    *v26 = 138412802;
    *&v26[4] = v11;
    *&v26[12] = 2112;
    *&v26[14] = v5;
    *&v26[22] = 2112;
    v27 = v7;
    v12 = "[MRDMediaRemoteClient] Restoring connection to <%@> with notification <%@> for <%@>";
    v13 = v10;
    v14 = 32;
    goto LABEL_8;
  }

  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = _MRLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 32) bundleIdentifier];
    *v26 = 138412546;
    *&v26[4] = v11;
    *&v26[12] = 2112;
    *&v26[14] = v5;
    v12 = "[MRDMediaRemoteClient] Restoring connection to <%@> with notification <%@>";
    v13 = v10;
    v14 = 22;
LABEL_8:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, v26, v14);
  }

LABEL_9:

LABEL_10:
  v15 = [MRUserSettings currentSettings:*v26];
  v16 = [v15 verboseMRDMediaRemoteClientLogging];

  if (v16)
  {
    v17 = _MRLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = MRMediaRemoteCopyReadableDictionaryDescription();
      *v26 = 138412290;
      *&v26[4] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[MRDMediaRemoteClient] Restoring connection with notification userInfo %@", v26, 0xCu);
    }
  }

  if (v6)
  {
    v19 = [v6 mutableCopy];
  }

  else
  {
    v19 = [[NSMutableDictionary alloc] initWithCapacity:1];
  }

  v20 = v19;
  v21 = +[MRDMediaRemoteServer server];
  v22 = [v21 nowPlayingServer];
  v23 = [v22 augmentedUserInfoForPlayerPath:v7];
  [v20 addEntriesFromDictionary:v23];

  [v20 setObject:&__kCFBooleanTrue forKeyedSubscript:_MRMediaRemoteIsRestoringClientStateUserInfoKey];
  v24 = *(a1 + 32);
  v25 = [[MRNotification alloc] initWithNotification:v5 userInfo:v20];
  [v24 _postNotification:v25];
}

uint64_t sub_1001828C4(void *a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = +[NSDate date];
    [v4 timeIntervalSinceDate:a1[5]];
    v7 = 138543874;
    v8 = @"MRDMediaRemoteClient.waitForNativeEndpointWithTimeout";
    v9 = 2114;
    v10 = v3;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", &v7, 0x20u);
  }

  return (*(a1[6] + 16))();
}

void sub_1001829C8(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 removeObserver:*(*(*(a1 + 40) + 8) + 40)];
}

void sub_100182A38(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  if (v3)
  {
    v5 = v3;
    if ([*(a1 + 32) disarm])
    {
      (*(*(a1 + 40) + 16))();
    }

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:*(*(*(a1 + 48) + 8) + 40)];

    v3 = v5;
  }
}

void sub_100182C80(uint64_t a1)
{
  v2 = +[MRDMediaRemoteServer server];
  v3 = [v2 routingServer];
  v4 = [v3 hostedRoutingService];
  v19 = [v4 hostedRoutingController];

  v5 = [v19 discoverySession];
  v6 = [v5 localEndpointConnection];

  if (v6)
  {
    v7 = [v19 nativeEndpoint];

    if (v7)
    {
      v8 = *(a1 + 40);
      [*(a1 + 32) commandType];
      v9 = [*(a1 + 32) options];
      v10 = *(a1 + 48);
      MRServiceClientRemoteCommandCallback();
      goto LABEL_12;
    }

    v9 = [[NSError alloc] initWithMRError:138];
    v18 = [[MRCommandResult alloc] initWithError:v9];
    (*(*(a1 + 48) + 16))();
    if (qword_100529600 != -1)
    {
      sub_1003AC55C();
    }
  }

  else
  {
    v9 = [[NSError alloc] initWithMRError:131];
    v11 = +[NSProcessInfo processInfo];
    [v11 systemUptime];
    v13 = v12;

    v14 = +[MRDSettings currentSettings];
    [v14 recentlyRebootedInterval];
    v16 = v15;

    if (v13 > v16)
    {
      v17 = [[NSError alloc] initWithMRError:140];

      v9 = v17;
    }

    v18 = [[MRCommandResult alloc] initWithError:v9];
    (*(*(a1 + 48) + 16))();
    if ([*(a1 + 32) shouldReportNoLocalEndpointConnectionABCFailures] && qword_1005295F8 != -1)
    {
      sub_1003AC570();
    }
  }

LABEL_12:
}

void sub_100183054(id a1)
{
  v1 = objc_alloc_init(MRDSettings);
  v2 = qword_100529610;
  qword_100529610 = v1;
}

id sub_1001832FC(uint64_t a1)
{
  result = [*(a1 + 32) _doubleValueForKey:@"RecentlyRebootedInterval" usingDefaultValue:140.0];
  qword_100529618 = v2;
  return result;
}

id sub_1001833C0(uint64_t a1)
{
  result = [*(a1 + 32) _doubleValueForKey:@"NativeEndpointWaitInterval" usingDefaultValue:2.0];
  qword_100529628 = v2;
  return result;
}

void sub_1001834F8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) stringForKey:@"RecentGroupSessionParticipantsPepper"];
  v3 = qword_100529640;
  qword_100529640 = v2;

  if (!qword_100529640)
  {
    v4 = MSVNanoIDCreateTaggedPointer();
    v5 = qword_100529640;
    qword_100529640 = v4;

    v6 = *(*(a1 + 32) + 16);
    v7 = qword_100529640;

    [v6 setObject:v7 forKey:@"RecentGroupSessionParticipantsPepper"];
  }
}

void sub_100183D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100183D34(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    [v8 MRHIDTouchEventValue];
  }

  v10 = *(*(*(a1 + 40) + 8) + 24);
  *(*(*(a1 + 32) + 8) + 6 * v10 + 32) = v10 + 1;
  *(*(*(a1 + 32) + 8) + 6 * *(*(*(a1 + 40) + 8) + 24) + 33) = 0;
  *(*(*(a1 + 32) + 8) + 6 * *(*(*(a1 + 40) + 8) + 24) + 34) = 0.0;
  *(*(*(a1 + 32) + 8) + 6 * (*(*(*(a1 + 40) + 8) + 24))++ + 36) = 0.0;
  if (*(*(*(a1 + 40) + 8) + 24) >= 2u)
  {
    *a4 = 1;
  }
}

void sub_100184048(id a1)
{
  v1 = objc_alloc_init(MRDDisplayMonitor);
  v2 = qword_100529658;
  qword_100529658 = v1;
}

void sub_100184150(uint64_t a1)
{
  v2 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
  objc_initWeak(&location, *(a1 + 32));
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100003360;
  v9 = &unk_1004C0380;
  objc_copyWeak(&v10, &location);
  [v2 setTransitionHandler:&v6];
  v3 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v2, v6, v7, v8, v9];
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = v3;

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void sub_100184234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100184388(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"MRDisplayMonitorDisplayDidChangeNotification" object:*(a1 + 32)];
}

void sub_100184FEC(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 24));
  *(*(a1 + 32) + 16) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 24));
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"MRDisplayMonitorLayoutDidChangeNotification" object:*(a1 + 32)];
}

void sub_100185B7C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    LODWORD(v4) = *(a1 + 80);
    v13 = [NSNumber numberWithFloat:v4];

    v14 = *(a1 + 32);
    v6 = _MRLogForCategory();
    v15 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (!v13)
    {
      if (v14)
      {
        if (!v15)
        {
          goto LABEL_21;
        }

        v24 = *(a1 + 40);
        v9 = [*(a1 + 48) requestID];
        v25 = *(a1 + 32);
        v11 = +[NSDate date];
        [v11 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544130;
        v42 = v24;
        v43 = 2114;
        v44 = v9;
        v45 = 2114;
        v46 = v25;
        v47 = 2048;
        v48 = v26;
        v27 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v28 = v6;
        v29 = 42;
      }

      else
      {
        if (!v15)
        {
          goto LABEL_21;
        }

        v33 = *(a1 + 40);
        v9 = [*(a1 + 48) requestID];
        v11 = +[NSDate date];
        [v11 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138543874;
        v42 = v33;
        v43 = 2114;
        v44 = v9;
        v45 = 2048;
        v46 = v34;
        v27 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v28 = v6;
        v29 = 32;
      }

      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v27, buf, v29);
      goto LABEL_20;
    }

    if (v14)
    {
      if (!v15)
      {
        goto LABEL_21;
      }

      v16 = *(a1 + 40);
      v9 = [*(a1 + 48) requestID];
      LODWORD(v17) = *(a1 + 80);
      v11 = [NSNumber numberWithFloat:v17];
      v18 = *(a1 + 32);
      v19 = +[NSDate date];
      [v19 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544386;
      v42 = v16;
      v43 = 2114;
      v44 = v9;
      v45 = 2112;
      v46 = v11;
      v47 = 2114;
      v48 = v18;
      v49 = 2048;
      v50 = v20;
      v21 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v22 = v6;
      v23 = 52;
    }

    else
    {
      if (!v15)
      {
        goto LABEL_21;
      }

      v30 = *(a1 + 40);
      v9 = [*(a1 + 48) requestID];
      LODWORD(v31) = *(a1 + 80);
      v11 = [NSNumber numberWithFloat:v31];
      v19 = +[NSDate date];
      [v19 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v42 = v30;
      v43 = 2114;
      v44 = v9;
      v45 = 2112;
      v46 = v11;
      v47 = 2048;
      v48 = v32;
      v21 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v22 = v6;
      v23 = 42;
    }

    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);

    goto LABEL_20;
  }

  v5 = *(a1 + 32);
  v6 = _MRLogForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 48) requestID];
      v10 = *(a1 + 32);
      v11 = +[NSDate date];
      [v11 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544386;
      v42 = v8;
      v43 = 2114;
      v44 = v9;
      v45 = 2114;
      v46 = v3;
      v47 = 2114;
      v48 = v10;
      v49 = 2048;
      v50 = v12;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:
    }
  }

  else if (v7)
  {
    sub_1003AC5DC();
  }

LABEL_21:

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100185FD8;
  v38[3] = &unk_1004B8B50;
  v35 = *(a1 + 64);
  v36 = *(a1 + 72);
  v39 = v3;
  v40 = v36;
  v37 = v3;
  dispatch_async(v35, v38);
}

id sub_100185FEC(uint64_t a1, void *a2, double a3)
{
  if (!a2)
  {
    return (*(*(a1 + 56) + 16))();
  }

  LODWORD(a3) = *(a1 + 64);
  return [a2 setOutputDeviceVolume:*(a1 + 32) outputDevice:*(a1 + 40) details:*(a1 + 48) queue:*(a1 + 56) completion:a3];
}

void sub_1001862E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v12 = *(a1 + 80);
    v13 = MRMediaRemoteVolumeControlAdjustmentDescription();

    v14 = *(a1 + 32);
    v5 = _MRLogForCategory();
    v15 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (!v13)
    {
      if (v14)
      {
        if (!v15)
        {
          goto LABEL_21;
        }

        v26 = *(a1 + 40);
        v8 = [*(a1 + 48) requestID];
        v27 = *(a1 + 32);
        v10 = +[NSDate date];
        [v10 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544130;
        v44 = v26;
        v45 = 2114;
        v46 = v8;
        v47 = 2114;
        v48 = v27;
        v49 = 2048;
        v50 = v28;
        v29 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v30 = v5;
        v31 = 42;
      }

      else
      {
        if (!v15)
        {
          goto LABEL_21;
        }

        v35 = *(a1 + 40);
        v8 = [*(a1 + 48) requestID];
        v10 = +[NSDate date];
        [v10 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138543874;
        v44 = v35;
        v45 = 2114;
        v46 = v8;
        v47 = 2048;
        v48 = v36;
        v29 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v30 = v5;
        v31 = 32;
      }

      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v29, buf, v31);
      goto LABEL_20;
    }

    if (v14)
    {
      if (!v15)
      {
        goto LABEL_21;
      }

      v16 = *(a1 + 40);
      v17 = [*(a1 + 48) requestID];
      v18 = *(a1 + 80);
      v19 = MRMediaRemoteVolumeControlAdjustmentDescription();
      v20 = *(a1 + 32);
      v21 = +[NSDate date];
      [v21 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544386;
      v44 = v16;
      v45 = 2114;
      v46 = v17;
      v47 = 2112;
      v48 = v19;
      v49 = 2114;
      v50 = v20;
      v51 = 2048;
      v52 = v22;
      v23 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v24 = v5;
      v25 = 52;
    }

    else
    {
      if (!v15)
      {
        goto LABEL_21;
      }

      v32 = *(a1 + 40);
      v17 = [*(a1 + 48) requestID];
      v33 = *(a1 + 80);
      v19 = MRMediaRemoteVolumeControlAdjustmentDescription();
      v21 = +[NSDate date];
      [v21 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v44 = v32;
      v45 = 2114;
      v46 = v17;
      v47 = 2112;
      v48 = v19;
      v49 = 2048;
      v50 = v34;
      v23 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v24 = v5;
      v25 = 42;
    }

    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);

    goto LABEL_21;
  }

  v4 = *(a1 + 32);
  v5 = _MRLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 40);
      v8 = [*(a1 + 48) requestID];
      v9 = *(a1 + 32);
      v10 = +[NSDate date];
      [v10 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544386;
      v44 = v7;
      v45 = 2114;
      v46 = v8;
      v47 = 2114;
      v48 = v3;
      v49 = 2114;
      v50 = v9;
      v51 = 2048;
      v52 = v11;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:
    }
  }

  else if (v6)
  {
    sub_1003AC5DC();
  }

LABEL_21:

  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100186738;
  v40[3] = &unk_1004B8B50;
  v37 = *(a1 + 64);
  v38 = *(a1 + 72);
  v41 = v3;
  v42 = v38;
  v39 = v3;
  dispatch_async(v37, v40);
}

id sub_10018674C(void *a1, void *a2)
{
  if (a2)
  {
    return [a2 adjustOutputDeviceVolume:a1[8] outputDevice:a1[4] details:a1[5] queue:a1[6] completion:a1[7]];
  }

  else
  {
    return (*(a1[7] + 16))();
  }
}

void sub_100186A44(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v12 = [NSNumber numberWithBool:*(a1 + 80)];

    v13 = *(a1 + 32);
    v5 = _MRLogForCategory();
    v14 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (!v12)
    {
      if (v13)
      {
        if (!v14)
        {
          goto LABEL_21;
        }

        v22 = *(a1 + 40);
        v8 = [*(a1 + 48) requestID];
        v23 = *(a1 + 32);
        v10 = +[NSDate date];
        [v10 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544130;
        v39 = v22;
        v40 = 2114;
        v41 = v8;
        v42 = 2114;
        v43 = v23;
        v44 = 2048;
        v45 = v24;
        v25 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v26 = v5;
        v27 = 42;
      }

      else
      {
        if (!v14)
        {
          goto LABEL_21;
        }

        v30 = *(a1 + 40);
        v8 = [*(a1 + 48) requestID];
        v10 = +[NSDate date];
        [v10 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138543874;
        v39 = v30;
        v40 = 2114;
        v41 = v8;
        v42 = 2048;
        v43 = v31;
        v25 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v26 = v5;
        v27 = 32;
      }

      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
      goto LABEL_20;
    }

    if (v13)
    {
      if (!v14)
      {
        goto LABEL_21;
      }

      v15 = *(a1 + 40);
      v8 = [*(a1 + 48) requestID];
      v10 = [NSNumber numberWithBool:*(a1 + 80)];
      v16 = *(a1 + 32);
      v17 = +[NSDate date];
      [v17 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544386;
      v39 = v15;
      v40 = 2114;
      v41 = v8;
      v42 = 2112;
      v43 = v10;
      v44 = 2114;
      v45 = v16;
      v46 = 2048;
      v47 = v18;
      v19 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v20 = v5;
      v21 = 52;
    }

    else
    {
      if (!v14)
      {
        goto LABEL_21;
      }

      v28 = *(a1 + 40);
      v8 = [*(a1 + 48) requestID];
      v10 = [NSNumber numberWithBool:*(a1 + 80)];
      v17 = +[NSDate date];
      [v17 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v39 = v28;
      v40 = 2114;
      v41 = v8;
      v42 = 2112;
      v43 = v10;
      v44 = 2048;
      v45 = v29;
      v19 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v20 = v5;
      v21 = 42;
    }

    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);

    goto LABEL_20;
  }

  v4 = *(a1 + 32);
  v5 = _MRLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 40);
      v8 = [*(a1 + 48) requestID];
      v9 = *(a1 + 32);
      v10 = +[NSDate date];
      [v10 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544386;
      v39 = v7;
      v40 = 2114;
      v41 = v8;
      v42 = 2114;
      v43 = v3;
      v44 = 2114;
      v45 = v9;
      v46 = 2048;
      v47 = v11;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:
    }
  }

  else if (v6)
  {
    sub_1003AC5DC();
  }

LABEL_21:

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100186EA0;
  v35[3] = &unk_1004B8B50;
  v32 = *(a1 + 64);
  v33 = *(a1 + 72);
  v36 = v3;
  v37 = v33;
  v34 = v3;
  dispatch_async(v32, v35);
}

id sub_100186EB4(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 muteOutputDeviceVolume:*(a1 + 64) outputDevice:*(a1 + 32) details:*(a1 + 40) queue:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    return (*(*(a1 + 56) + 16))();
  }
}

void sub_1001878DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = _MRLogForCategory();
  v6 = v5;
  if (!v3)
  {
    v14 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (!v14)
      {
        goto LABEL_14;
      }

      v15 = *(a1 + 40);
      v9 = [*(a1 + 48) requestDetails];
      v10 = [v9 requestID];
      v16 = *(a1 + 32);
      v12 = +[NSDate date];
      [v12 timeIntervalSinceDate:*(a1 + 56)];
      v23 = 138544130;
      v24 = v15;
      v25 = 2114;
      v26 = v10;
      v27 = 2114;
      v28 = v16;
      v29 = 2048;
      v30 = v17;
      v18 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v19 = v6;
      v20 = 42;
    }

    else
    {
      if (!v14)
      {
        goto LABEL_14;
      }

      v21 = *(a1 + 40);
      v9 = [*(a1 + 48) requestDetails];
      v10 = [v9 requestID];
      v12 = +[NSDate date];
      [v12 timeIntervalSinceDate:*(a1 + 56)];
      v23 = 138543874;
      v24 = v21;
      v25 = 2114;
      v26 = v10;
      v27 = 2048;
      v28 = v22;
      v18 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v19 = v6;
      v20 = 32;
    }

    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, &v23, v20);
    goto LABEL_13;
  }

  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 48) requestDetails];
      v10 = [v9 requestID];
      v11 = *(a1 + 32);
      v12 = +[NSDate date];
      [v12 timeIntervalSinceDate:*(a1 + 56)];
      v23 = 138544386;
      v24 = v8;
      v25 = 2114;
      v26 = v10;
      v27 = 2114;
      v28 = v3;
      v29 = 2114;
      v30 = v11;
      v31 = 2048;
      v32 = v13;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v23, 0x34u);
LABEL_13:
    }
  }

  else if (v7)
  {
    sub_1003AC688(a1, v3, v6);
  }

LABEL_14:

  (*(*(a1 + 64) + 16))();
}

void sub_100187B88(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100187BF0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100187C58(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100188304(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 80);
  v5 = qos_class_self();
  if (!v3 && v4 < v5)
  {
    v6 = [[NSString alloc] initWithFormat:@"qos: %u->%u", *(a1 + 80), qos_class_self()];
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      *buf = 138543874;
      v36 = v8;
      v37 = 2114;
      v38 = v9;
      v39 = 2112;
      v40 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    goto LABEL_10;
  }

  if (!v3)
  {
LABEL_10:
    v18 = *(a1 + 48);
    v11 = _MRLogForCategory();
    v19 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (!v19)
      {
        goto LABEL_19;
      }

      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      v22 = *(a1 + 48);
      v16 = +[NSDate date];
      [v16 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v36 = v20;
      v37 = 2114;
      v38 = v21;
      v39 = 2114;
      v40 = v22;
      v41 = 2048;
      v42 = v23;
      v24 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v25 = v11;
      v26 = 42;
    }

    else
    {
      if (!v19)
      {
        goto LABEL_19;
      }

      v27 = *(a1 + 32);
      v28 = *(a1 + 40);
      v16 = +[NSDate date];
      [v16 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138543874;
      v36 = v27;
      v37 = 2114;
      v38 = v28;
      v39 = 2048;
      v40 = v29;
      v24 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v25 = v11;
      v26 = 32;
    }

    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
    goto LABEL_16;
  }

  v10 = *(a1 + 48);
  v11 = _MRLogForCategory();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
  if (v10)
  {
    if (!v12)
    {
      goto LABEL_19;
    }

    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v16 = +[NSDate date];
    [v16 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544386;
    v36 = v13;
    v37 = 2114;
    v38 = v14;
    v39 = 2114;
    v40 = v3;
    v41 = 2114;
    v42 = v15;
    v43 = 2048;
    v44 = v17;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_16:

    goto LABEL_19;
  }

  if (v12)
  {
    sub_1003AC794();
  }

LABEL_19:

  v30 = *(a1 + 72);
  if (v30)
  {
    v31 = *(a1 + 64);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100188690;
    block[3] = &unk_1004B8B50;
    v34 = v30;
    v33 = v3;
    dispatch_async(v31, block);
  }
}

void sub_10018A144(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15 = [v5 debugName];

    v16 = *(a1 + 32);
    v8 = _MRLogForCategory();
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!v15)
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v25 = *(a1 + 40);
        v11 = [*(a1 + 48) requestID];
        v26 = *(a1 + 32);
        v13 = +[NSDate date];
        [v13 timeIntervalSinceDate:*(a1 + 56)];
        v35 = 138544130;
        v36 = v25;
        v37 = 2114;
        v38 = v11;
        v39 = 2114;
        v40 = v26;
        v41 = 2048;
        v42 = v27;
        v28 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v29 = v8;
        v30 = 42;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v33 = *(a1 + 40);
        v11 = [*(a1 + 48) requestID];
        v13 = +[NSDate date];
        [v13 timeIntervalSinceDate:*(a1 + 56)];
        v35 = 138543874;
        v36 = v33;
        v37 = 2114;
        v38 = v11;
        v39 = 2048;
        v40 = v34;
        v28 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v29 = v8;
        v30 = 32;
      }

      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v28, &v35, v30);
      goto LABEL_20;
    }

    if (v16)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v18 = *(a1 + 40);
      v11 = [*(a1 + 48) requestID];
      v13 = [v5 debugName];
      v19 = *(a1 + 32);
      v20 = +[NSDate date];
      [v20 timeIntervalSinceDate:*(a1 + 56)];
      v35 = 138544386;
      v36 = v18;
      v37 = 2114;
      v38 = v11;
      v39 = 2112;
      v40 = v13;
      v41 = 2114;
      v42 = v19;
      v43 = 2048;
      v44 = v21;
      v22 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v23 = v8;
      v24 = 52;
    }

    else
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v31 = *(a1 + 40);
      v11 = [*(a1 + 48) requestID];
      v13 = [v5 debugName];
      v20 = +[NSDate date];
      [v20 timeIntervalSinceDate:*(a1 + 56)];
      v35 = 138544130;
      v36 = v31;
      v37 = 2114;
      v38 = v11;
      v39 = 2112;
      v40 = v13;
      v41 = 2048;
      v42 = v32;
      v22 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v23 = v8;
      v24 = 42;
    }

    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v22, &v35, v24);

    goto LABEL_20;
  }

  v7 = *(a1 + 32);
  v8 = _MRLogForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v9)
    {
      v10 = *(a1 + 40);
      v11 = [*(a1 + 48) requestID];
      v12 = *(a1 + 32);
      v13 = +[NSDate date];
      [v13 timeIntervalSinceDate:*(a1 + 56)];
      v35 = 138544386;
      v36 = v10;
      v37 = 2114;
      v38 = v11;
      v39 = 2114;
      v40 = v6;
      v41 = 2114;
      v42 = v12;
      v43 = 2048;
      v44 = v14;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v35, 0x34u);
LABEL_20:
    }
  }

  else if (v9)
  {
    sub_1003AC5DC();
  }

LABEL_21:

  (*(*(a1 + 64) + 16))();
}

void sub_10018AB08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10018AB24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleDidReceiveResetConnectionRequest];
}

void sub_10018AF78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v15);
  _Unwind_Resume(a1);
}

void sub_10018AFAC(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleIncomingMessage:v18 type:v17 destination:v16 session:v15 messageID:v14 replyID:v13];
}

void sub_10018B934(uint64_t a1)
{
  v2 = [*(a1 + 32) invalidationHandler];

  if (v2)
  {
    v3 = [[NSError alloc] initWithMRError:105 format:@"Device Connection was manually reset by the peer"];
    v4 = [*(a1 + 32) invalidationHandler];
    (v4)[2](v4, v3);
  }

  if ([*(a1 + 32) isConnected])
  {
    v5 = [*(a1 + 32) connectionHandler];

    if (v5)
    {
      v6 = [*(a1 + 32) connectionHandler];
      v6[2]();
    }
  }
}

void sub_10018C104(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  if (*(a1 + 40))
  {
    v3 = [[NSError alloc] initWithMRError:105 format:@"Device fell out of IDS service"];
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10018C7D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _MRLogForCategory();
  v8 = v7;
  if (!v5 || v6)
  {
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1003AC8EC();
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v10 = [*(a1 + 40) requestID];
      v11 = +[NSDate date];
      [v11 timeIntervalSinceDate:*(a1 + 48)];
      v20 = 138543874;
      v21 = v16;
      v22 = 2114;
      v23 = v10;
      v24 = 2048;
      v25 = v17;
      v13 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v14 = v8;
      v15 = 32;
      goto LABEL_10;
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) requestID];
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:*(a1 + 48)];
    v20 = 138544130;
    v21 = v9;
    v22 = 2114;
    v23 = v10;
    v24 = 2112;
    v25 = v5;
    v26 = 2048;
    v27 = v12;
    v13 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v14 = v8;
    v15 = 42;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, &v20, v15);
  }

  [*(a1 + 56) trackWithError:v6];
  (*(*(a1 + 64) + 16))(*(a1 + 64), v5, v6, *(a1 + 56), v18, v19);
}

void sub_10018C9E8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = *(a1 + 56);
    v8 = *(v7 + 16);
    v9 = v6;
    v8(v7, 0, a3);
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = v6;
    v12 = [v10 searchForGroupUID];
    [v12 start];

    v9 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
    v13 = *(a1 + 64);
    v14 = [*(a1 + 48) requestID];
    v15 = qos_class_self();
    v16 = dispatch_get_global_queue(v15, 0);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10018CB60;
    v17[3] = &unk_1004B7BA0;
    v18 = *(a1 + 40);
    v19 = *(a1 + 56);
    [v9 searchEndpointsForGroupUID:v5 timeout:v14 reason:v16 queue:v17 completion:v13];
  }
}

void sub_10018CB60(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 searchForGroupUID];
  [v8 endWithError:v6];

  v9 = *(a1 + 40);
  v10 = [v6 mr_errorByEnvelopingWithMRError:129];

  (*(v9 + 16))(v9, v7, v10);
}

void sub_10018CEF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _MRLogForCategory();
  v8 = v7;
  if (!v5 || v6)
  {
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1003AC8EC();
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v10 = [*(a1 + 40) requestID];
      v11 = +[NSDate date];
      [v11 timeIntervalSinceDate:*(a1 + 48)];
      v20 = 138543874;
      v21 = v16;
      v22 = 2114;
      v23 = v10;
      v24 = 2048;
      v25 = v17;
      v13 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v14 = v8;
      v15 = 32;
      goto LABEL_10;
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) requestID];
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:*(a1 + 48)];
    v20 = 138544130;
    v21 = v9;
    v22 = 2114;
    v23 = v10;
    v24 = 2112;
    v25 = v5;
    v26 = 2048;
    v27 = v12;
    v13 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v14 = v8;
    v15 = 42;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, &v20, v15);
  }

  [*(a1 + 56) trackWithError:v6];
  (*(*(a1 + 64) + 16))(*(a1 + 64), v5, v6, *(a1 + 56), v18, v19);
}

void sub_10018D948(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _MRLogForCategory();
  v8 = v7;
  if (v5 && !v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) requestID];
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:*(a1 + 48)];
    v19 = 138544130;
    v20 = v9;
    v21 = 2114;
    v22 = v10;
    v23 = 2112;
    v24 = v5;
    v25 = 2048;
    v26 = v12;
    v13 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v14 = v8;
    v15 = 42;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, &v19, v15);

    goto LABEL_11;
  }

  if (!v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v16 = *(a1 + 32);
    v10 = [*(a1 + 40) requestID];
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:*(a1 + 48)];
    v19 = 138543874;
    v20 = v16;
    v21 = 2114;
    v22 = v10;
    v23 = 2048;
    v24 = v17;
    v13 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v14 = v8;
    v15 = 32;
    goto LABEL_10;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1003AC8EC();
  }

LABEL_11:

  v18 = *(a1 + 56);
  if (v18)
  {
    (*(v18 + 16))(v18, v5, v6);
  }
}

void sub_10018DB68(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10018DBE0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = a2;
  v7 = [v5 createHostedEndpoint];
  [v7 endWithError:v6];

  (*(*(a1 + 40) + 16))();
}

void sub_10018DC74(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = a2;
  v7 = [v5 createRemoteHostedEndpoint];
  [v7 endWithError:v6];

  (*(*(a1 + 40) + 16))();
}

void sub_10018DD08(uint64_t a1)
{
  v2 = [*(a1 + 32) removeFromParent];
  [v2 endWithError:0];

  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void sub_10018DD58(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v5 = a2;
  v4 = [*(a1 + 32) modifyOutputContext];
  [v4 endWithError:v5];

  dispatch_group_leave(*(a1 + 40));
}

void sub_10018DDD4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) deviceInfo];
  v3 = [v4 senderDefaultGroupUID];
  (*(v2 + 16))(v2, v3, *(*(*(a1 + 48) + 8) + 40));
}

void sub_10018E1E4(uint64_t a1)
{
  [*(a1 + 32) _onIDSQueue_initializeDiscoveryChannel];
  v2 = *(a1 + 32);
  v3 = [v2 discoveryChannel];
  [v2 _onIDSQueue_connectDiscoveryChannel:v3];
}

void sub_10018E7D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 discoveryChannel];
  [v1 _onIDSQueue_connectDiscoveryChannel:v2];
}

id sub_10018E90C(id a1, MRAVOutputDevice *a2)
{
  v2 = [(MRAVOutputDevice *)a2 descriptor];
  [v2 setTransportType:3];
  v3 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:v2];

  return v3;
}

void sub_10018EF10(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.mediaremote.MRIDSCompanionDiscoverySession.discoveryChannelClientQueue", v3);
  v2 = qword_100529660;
  qword_100529660 = v1;
}

void sub_10018F674(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qos_class_self();
  if (!v3)
  {
    if (*(a1 + 80) < v4)
    {
      v13 = [[NSString alloc] initWithFormat:@"priority degraded from %u -> %u", *(a1 + 80), v4];
      v14 = _MRLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        v16 = *(a1 + 40);
        *buf = 138543874;
        v31 = v15;
        v32 = 2114;
        v33 = v16;
        v34 = 2112;
        v35 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }
    }

    v17 = [*(a1 + 48) contextID];

    v6 = _MRLogForCategory();
    v18 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (!v17)
    {
      if (!v18)
      {
        goto LABEL_18;
      }

      v22 = *(a1 + 32);
      v23 = *(a1 + 40);
      v10 = +[NSDate date];
      [v10 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138543874;
      v31 = v22;
      v32 = 2114;
      v33 = v23;
      v34 = 2048;
      v35 = v24;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
      goto LABEL_17;
    }

    if (!v18)
    {
      goto LABEL_18;
    }

    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v10 = [*(a1 + 48) contextID];
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544130;
    v31 = v19;
    v32 = 2114;
    v33 = v20;
    v34 = 2114;
    v35 = v10;
    v36 = 2048;
    v37 = v21;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds", buf, 0x2Au);
LABEL_12:

LABEL_17:
    goto LABEL_18;
  }

  v5 = [*(a1 + 48) contextID];

  v6 = _MRLogForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = [*(a1 + 48) contextID];
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544386;
    v31 = v8;
    v32 = 2114;
    v33 = v9;
    v34 = 2114;
    v35 = v3;
    v36 = 2114;
    v37 = v10;
    v38 = 2048;
    v39 = v12;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
    goto LABEL_12;
  }

  if (v7)
  {
    sub_1003AF8D0();
  }

LABEL_18:

  v25 = *(a1 + 72);
  if (v25)
  {
    v26 = *(a1 + 64);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10018FA2C;
    block[3] = &unk_1004B8B50;
    v29 = v25;
    v28 = v3;
    dispatch_async(v26, block);
  }
}

void sub_10018FA40(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, v5);
  sub_1003ACB7C(*(a1 + 32), *(a1 + 40), *(a1 + 56), v5);
}

void sub_100190128(uint64_t a1)
{
  if ([*(a1 + 32) count] || (objc_msgSend(*(*(a1 + 40) + 8), "outputDeviceUIDs"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, !v6))
  {
    if ([*(a1 + 48) type] == 1 && (objc_msgSend(*(a1 + 32), "mr_filter:", &stru_1004C0608), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "count"), v2, v3))
    {
      v29 = [[MRDOutputContextModification alloc] initWithRequest:*(*(a1 + 40) + 8)];
      v4 = +[MRAVConcreteOutputContext sharedSystemAudioContext];
      [(MRDOutputContextModification *)v29 modifyWithOutputContext:v4 queue:*(a1 + 56) completion:*(a1 + 72)];
    }

    else
    {
      sub_1003AD1B8(*(a1 + 40), *(a1 + 48));
      objc_storeStrong((*(a1 + 40) + 16), *(a1 + 32));
      v13 = *(*(a1 + 40) + 16);
      v14 = objc_alloc_init(NSMutableArray);
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v36;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v36 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [*(*(&v35 + 1) + 8 * i) avOutputDevice];
            [v14 addObject:v20];
          }

          v17 = [v15 countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v17);
      }

      v21 = *(a1 + 40);
      v22 = *(v21 + 24);
      *(v21 + 24) = v14;

      v23 = *(a1 + 40);
      v24 = *(a1 + 48);
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1001904F8;
      v30[3] = &unk_1004C0630;
      v25 = *(a1 + 56);
      v31 = *(a1 + 64);
      v26 = *(a1 + 72);
      v27 = *(a1 + 40);
      v28 = *(a1 + 48);
      v34 = v26;
      v32 = v27;
      v33 = v28;
      sub_1003AD548(v23, v24, v25, v30);
    }
  }

  else
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1003AF98C((a1 + 40), v7);
    }

    v8 = *(a1 + 72);
    v9 = [NSError alloc];
    v10 = *(a1 + 32);
    v11 = [*(*(a1 + 40) + 8) outputDeviceUIDs];
    v12 = [v9 initWithMRError:47 format:{@"Failed to discover all output devices involved in modification: discovered=%@ vs requested=%@", v10, v11}];
    (*(v8 + 16))(v8, v12);
  }
}

BOOL sub_1001904A8(id a1, MRAVConcreteOutputDevice *a2)
{
  v2 = a2;
  v3 = [(MRAVConcreteOutputDevice *)v2 deviceType]== 4 && [(MRAVConcreteOutputDevice *)v2 deviceSubtype]== 4;

  return v3;
}

void sub_1001904F8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setDiscoveryMode:0];
  (*(*(a1 + 56) + 16))();
  sub_1003AD364(*(a1 + 40), *(a1 + 48), v4);
}

void sub_10019056C(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) addObject:*(*(&v16 + 1) + 8 * i)];
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v8 = *(a1 + 56);
  switch(v8)
  {
    case 3:
      v9 = _MRLogForCategory();
      v14 = [*(a1 + 40) hash];
      if ((v14 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_21;
      }

      v11 = v14;
      if (!os_signpost_enabled(v9))
      {
        goto LABEL_21;
      }

      *v15 = 0;
      v12 = "SetOutputDevices.discover";
      goto LABEL_20;
    case 2:
      v9 = _MRLogForCategory();
      v13 = [*(a1 + 40) hash];
      if ((v13 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_21;
      }

      v11 = v13;
      if (!os_signpost_enabled(v9))
      {
        goto LABEL_21;
      }

      *v15 = 0;
      v12 = "RemoveOutputDevices.discover";
      goto LABEL_20;
    case 1:
      v9 = _MRLogForCategory();
      v10 = [*(a1 + 40) hash];
      if ((v10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_21;
      }

      v11 = v10;
      if (!os_signpost_enabled(v9))
      {
        goto LABEL_21;
      }

      *v15 = 0;
      v12 = "AddOutputDevices.discover";
LABEL_20:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v11, v12, "", v15, 2u);
LABEL_21:

      break;
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48));
}

void sub_10019079C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v40 = a3;
  v39 = a4;
  if (a1)
  {
    v8 = +[NSDate now];
    v9 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"waitForOutputContextModificationVerification", v40];
    v10 = [v7 uniqueIdentifier];

    if (v10)
    {
      v11 = [v7 uniqueIdentifier];
      [v9 appendFormat:@" for %@", v11];
    }

    v12 = _MRLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v70 = 0x3032000000;
    v71 = sub_10003526C;
    v72 = sub_100035AEC;
    v73 = 0;
    v63 = 0;
    v64 = &v63;
    v65 = 0x3032000000;
    v66 = sub_10003526C;
    v67 = sub_100035AEC;
    v68 = 0;
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100190D94;
    v56[3] = &unk_1004C06A8;
    p_buf = &buf;
    v62 = &v63;
    v13 = v7;
    v57 = v13;
    v14 = v40;
    v58 = v14;
    v38 = v8;
    v59 = v38;
    v60 = v39;
    v15 = objc_retainBlock(v56);
    v16 = [MRBlockGuard alloc];
    v17 = [[NSString alloc] initWithFormat:@"waitForOutputContextModificationVerification<%@>", v14];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_1001910B4;
    v52[3] = &unk_1004B9840;
    v18 = v13;
    v53 = v18;
    v19 = v14;
    v54 = v19;
    v20 = v15;
    v55 = v20;
    v21 = [v16 initWithTimeout:v17 reason:v52 handler:7.0];

    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100191260;
    v49[3] = &unk_1004B7978;
    v22 = v18;
    v50 = v22;
    v51 = v19;
    v23 = objc_retainBlock(v49);
    v24 = +[NSNotificationCenter defaultCenter];
    v25 = MRAVOutputContextOutputDevicesDidChangeNotification;
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1001915FC;
    v45[3] = &unk_1004C0730;
    v26 = v23;
    v47 = v26;
    v27 = v21;
    v46 = v27;
    v28 = v20;
    v48 = v28;
    v29 = [v24 addObserverForName:v25 object:v22 queue:0 usingBlock:v45];
    v30 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v29;

    v31 = +[NSNotificationCenter defaultCenter];
    v32 = MRAVOutputContextOutputDeviceDidChangeNotification;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100191668;
    v41[3] = &unk_1004C0730;
    v33 = v26;
    v43 = v33;
    v34 = v27;
    v42 = v34;
    v35 = v28;
    v44 = v35;
    v36 = [v31 addObserverForName:v32 object:v22 queue:0 usingBlock:v41];
    v37 = v64[5];
    v64[5] = v36;

    if (v33[2](v33) && [v34 disarm])
    {
      (v35[2])(v35, 0);
    }

    _Block_object_dispose(&v63, 8);
    _Block_object_dispose(&buf, 8);
  }
}

void sub_100190D64(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_100190D94(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:*(*(*(a1 + 64) + 8) + 40)];

    v5 = *(*(a1 + 64) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }

  if (*(*(*(a1 + 72) + 8) + 40))
  {
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 removeObserver:*(*(*(a1 + 72) + 8) + 40)];

    v8 = *(*(a1 + 72) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }

  v10 = [*(a1 + 32) uniqueIdentifier];

  v11 = _MRLogForCategory();
  v12 = v11;
  if (!v3)
  {
    v18 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (!v10)
    {
      if (!v18)
      {
        goto LABEL_18;
      }

      v21 = *(a1 + 40);
      v15 = +[NSDate date];
      [v15 timeIntervalSinceDate:*(a1 + 48)];
      v24 = 138543874;
      v25 = @"waitForOutputContextModificationVerification";
      v26 = 2114;
      v27 = v21;
      v28 = 2048;
      v29 = v22;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", &v24, 0x20u);
      goto LABEL_17;
    }

    if (!v18)
    {
      goto LABEL_18;
    }

    v19 = *(a1 + 40);
    v15 = [*(a1 + 32) uniqueIdentifier];
    v16 = +[NSDate date];
    [v16 timeIntervalSinceDate:*(a1 + 48)];
    v24 = 138544130;
    v25 = @"waitForOutputContextModificationVerification";
    v26 = 2114;
    v27 = v19;
    v28 = 2114;
    v29 = v15;
    v30 = 2048;
    v31 = v20;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds", &v24, 0x2Au);
LABEL_12:

LABEL_17:
    goto LABEL_18;
  }

  v13 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
  if (v10)
  {
    if (!v13)
    {
      goto LABEL_18;
    }

    v14 = *(a1 + 40);
    v15 = [*(a1 + 32) uniqueIdentifier];
    v16 = +[NSDate date];
    [v16 timeIntervalSinceDate:*(a1 + 48)];
    v24 = 138544386;
    v25 = @"waitForOutputContextModificationVerification";
    v26 = 2114;
    v27 = v14;
    v28 = 2114;
    v29 = v3;
    v30 = 2114;
    v31 = v15;
    v32 = 2048;
    v33 = v17;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v24, 0x34u);
    goto LABEL_12;
  }

  if (v13)
  {
    sub_1003AFA08();
  }

LABEL_18:

  v23 = *(a1 + 56);
  if (v23)
  {
    (*(v23 + 16))(v23, v3);
  }
}

uint64_t sub_1001910B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [NSString alloc];
    v4 = [*(a1 + 32) outputDevices];
    v5 = [*(a1 + 32) avOutputContext];
    v6 = [v5 outputDevices];
    v7 = [v3 initWithFormat:@"Timed out waiting for verification %@ vs %@", v4, v6];

    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      *buf = 138543874;
      v13 = @"waitForOutputContextModificationVerification";
      v14 = 2114;
      v15 = v9;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v10 = dword_100529670++;
    if (v10 <= 4)
    {
      [MSVAutoBugCapture snapshotWithDomain:MSVAutoBugCaptureDomainMediaRemote type:@"OutputContext" subType:@"Modification" context:@"FailedVerification" triggerThresholdValues:0 events:0 completion:0];
    }
  }

  return (*(*(a1 + 48) + 16))();
}

uint64_t sub_100191260(uint64_t a1)
{
  v2 = [*(a1 + 32) concreteOutputDevices];
  v3 = [NSSet alloc];
  v4 = [v2 msv_compactMap:&stru_1004C06C8];
  v5 = [v3 initWithArray:v4];

  v6 = [*(a1 + 32) avOutputContext];
  v7 = [v6 outputDevices];
  v8 = [NSSet alloc];
  v9 = [v7 msv_compactMap:&stru_1004C0708];
  v10 = [v8 initWithArray:v9];

  v11 = [v5 isEqualToSet:v10];
  if (v11 && (+[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 canHostMultiplayerStream], v12, v13))
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100191598;
    v24[3] = &unk_1004B9608;
    v25 = v6;
    v14 = [v2 msv_firstWhere:v24];
    v15 = v14 == 0;
    if (v14)
    {
      v22 = [NSString alloc];
      v21 = [v14 debugName];
      v20 = [v14 groupID];
      v16 = [*(a1 + 32) contextID];
      v23 = [v22 initWithFormat:@"OutputDevice still waiting for outputContextID sync for <%@>: <%@> != <%@>", v21, v20, v16];

      v17 = _MRLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 40);
        *buf = 138543874;
        v27 = @"waitForOutputContextModificationVerification";
        v28 = 2114;
        v29 = v18;
        v30 = 2112;
        v31 = v23;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v15 = 1;
  }

  return v11 & v15;
}

id sub_100191540(id a1, MRAVConcreteOutputDevice *a2)
{
  v2 = [(MRAVConcreteOutputDevice *)a2 avOutputDevice];
  v3 = [v2 ID];

  return v3;
}

uint64_t sub_100191598(uint64_t a1, void *a2)
{
  v3 = [a2 groupID];
  v4 = [*(a1 + 32) contextID];
  v5 = [v3 containsString:v4];

  return v5 ^ 1;
}

id sub_1001915FC(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    result = [*(a1 + 32) disarm];
    if (result)
    {
      v3 = *(*(a1 + 48) + 16);

      return v3();
    }
  }

  return result;
}

id sub_100191668(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    result = [*(a1 + 32) disarm];
    if (result)
    {
      v3 = *(*(a1 + 48) + 16);

      return v3();
    }
  }

  return result;
}

void sub_1001916D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSString alloc];
  v5 = [*(a1 + 32) outputDevices];
  v6 = [v4 initWithFormat:@"Final devices in context %@", v5];

  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    *buf = 138543874;
    v36 = v8;
    v37 = 2114;
    v38 = v9;
    v39 = 2112;
    v40 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1001919B4;
  v30[3] = &unk_1004BC930;
  v10 = *(a1 + 56);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 64);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v31 = v15;
  v32 = v14;
  v34 = *(a1 + 96);
  v33 = *(a1 + 72);
  v16 = objc_retainBlock(v30);
  v17 = v16;
  if (v3)
  {
    (v16[2])(v16, v3);
  }

  else
  {
    v19 = *(a1 + 80);
    v18 = *(a1 + 88);
    v20 = *(a1 + 48);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100191C80;
    v23[3] = &unk_1004C0758;
    v24 = v18;
    v25 = *(a1 + 40);
    v21 = *(a1 + 48);
    v22 = *(a1 + 104);
    v26 = v21;
    v29 = v22;
    v27 = 0;
    v28 = v17;
    sub_10019079C(v19, v24, v20, v23);
  }
}

void sub_1001919B4(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = _MRLogForCategory();
  v6 = v5;
  if (!v3)
  {
    v13 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v15 = a1[5];
      v14 = a1[6];
      v16 = a1[4];
      v11 = +[NSDate date];
      [v11 timeIntervalSinceDate:a1[7]];
      *buf = 138544130;
      v30 = v15;
      v31 = 2114;
      v32 = v14;
      v33 = 2114;
      v34 = v16;
      v35 = 2048;
      v36 = v17;
      v18 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v19 = v6;
      v20 = 42;
    }

    else
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v21 = a1[5];
      v22 = a1[6];
      v11 = +[NSDate date];
      [v11 timeIntervalSinceDate:a1[7]];
      *buf = 138543874;
      v30 = v21;
      v31 = 2114;
      v32 = v22;
      v33 = 2048;
      v34 = v23;
      v18 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v19 = v6;
      v20 = 32;
    }

    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    goto LABEL_13;
  }

  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v9 = a1[5];
    v8 = a1[6];
    v10 = a1[4];
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:a1[7]];
    *buf = 138544386;
    v30 = v9;
    v31 = 2114;
    v32 = v8;
    v33 = 2114;
    v34 = v3;
    v35 = 2114;
    v36 = v10;
    v37 = 2048;
    v38 = v12;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_13:

    goto LABEL_14;
  }

  if (v7)
  {
    sub_1003AFACC();
  }

LABEL_14:

  v24 = a1[9];
  if (v24)
  {
    v25 = a1[8];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100191C6C;
    v26[3] = &unk_1004B8B50;
    v28 = v24;
    v27 = v3;
    dispatch_async(v25, v26);
  }
}

void sub_100191C80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSString alloc];
  v5 = [*(a1 + 32) outputDevices];
  v6 = [v4 initWithFormat:@"Final devices in context %@", v5];

  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    *buf = 138543874;
    v19 = v8;
    v20 = 2114;
    v21 = v9;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  v10 = *(a1 + 72);
  if (v10 == 3)
  {
    v11 = _MRLogForCategory();
    v16 = [*(a1 + 48) hash];
    if ((v16 - 1) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_16;
    }

    v13 = v16;
    if (!os_signpost_enabled(v11))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v14 = "SetOutputDevices.perform";
    goto LABEL_15;
  }

  if (v10 == 2)
  {
    v11 = _MRLogForCategory();
    v15 = [*(a1 + 48) hash];
    if ((v15 - 1) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_16;
    }

    v13 = v15;
    if (!os_signpost_enabled(v11))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v14 = "RemoveOutputDevices.perform";
    goto LABEL_15;
  }

  if (v10 != 1)
  {
    goto LABEL_17;
  }

  v11 = _MRLogForCategory();
  v12 = [*(a1 + 48) hash];
  if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      v14 = "AddOutputDevices.perform";
LABEL_15:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v13, v14, "", buf, 2u);
    }
  }

LABEL_16:

LABEL_17:
  if (*(a1 + 56))
  {
    v17 = *(a1 + 56);
  }

  else
  {
    v17 = v3;
  }

  (*(*(a1 + 64) + 16))(*(a1 + 64), v17);
}

void sub_100191EE8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = v4;
  if ([v4 code] == 26)
  {
    v3 = [[NSError alloc] initWithMRError:125 format:{@"%@OutputContextModification timedout after %lf seconds", *(a1 + 32), 0x404E000000000000}];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100191F8C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100192008(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v6 = [*(a1 + 32) outputDevices];
    v7 = [v6 countByEnumeratingWithState:&v43 objects:v55 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v44;
      v10 = 1;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v44 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v43 + 1) + 8 * i);
          v13 = [*(*(a1 + 40) + 8) outputDeviceUIDs];
          v14 = [v12 uid];
          v15 = [v13 containsObject:v14];

          v10 &= v15;
        }

        v8 = [v6 countByEnumeratingWithState:&v43 objects:v55 count:16];
      }

      while (v8);
    }

    else
    {
      v10 = 1;
    }

    v16 = [v5 deviceUID];
    v17 = [v16 length];

    v18 = [v5 isProxyGroupPlayer];
    v19 = [*(*(a1 + 40) + 8) copy];
    [v19 setShouldNotPauseIfLastDeviceRemoved:1];
    v20 = [[MRDOutputContextModification alloc] initWithRequest:v19];
    if (v10 && v17 && v18)
    {
      v53 = kMRMediaRemoteOptionRemoteControlInterfaceIdentifier;
      v54 = @"No devices on output context";
      v21 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      v22 = qos_class_self();
      v23 = dispatch_get_global_queue(v22, 0);
      v24 = _MRLogForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a1 + 48);
        v26 = *(a1 + 56);
        *buf = 138543874;
        v48 = v25;
        v49 = 2114;
        v50 = v26;
        v51 = 2112;
        v52 = @"pausing now playing app before removing last output device...";
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      v27 = +[MROrigin localOrigin];
      v35 = _NSConcreteStackBlock;
      v36 = 3221225472;
      v37 = sub_1003AE97C;
      v38 = &unk_1004C07C8;
      v39 = v20;
      v40 = *(a1 + 32);
      v41 = *(a1 + 64);
      v42 = *(a1 + 72);
      MRMediaRemoteSendCommandForOriginWithReply();
    }

    else
    {
      v28 = _MRLogForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(a1 + 48);
        v30 = *(a1 + 56);
        *buf = 138543874;
        v48 = v29;
        v49 = 2114;
        v50 = v30;
        v51 = 2112;
        v52 = @"removing last output device...";
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      v31 = *(a1 + 32);
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100192480;
      v33[3] = &unk_1004B6FE8;
      v32 = *(a1 + 64);
      v34 = *(a1 + 72);
      sub_1003ACD74(v20, v31, v32, v33);
      v21 = v34;
    }
  }
}

BOOL sub_100192490(id a1, MRAVConcreteOutputDevice *a2)
{
  v2 = a2;
  if (([(MRAVConcreteOutputDevice *)v2 isLocalDevice]& 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = [(MRAVConcreteOutputDevice *)v2 isPrimaryLocalDevice];
  }

  return v3;
}

id sub_1001924D8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uid];
  v4 = [v2 containsObject:v3];

  return v4;
}

id sub_100192520(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uid];
  v4 = [v2 containsObject:v3];

  return v4;
}

id sub_100192568(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uid];
  v4 = [v2 containsObject:v3];

  return v4;
}

void sub_100192AE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  v5 = [*(a1 + 32) hash];
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v6, "AVOutputContext.setOutputDevices", "", buf, 2u);
    }
  }

  v7 = qos_class_self();
  if (v3)
  {
    v8 = [*(a1 + 48) contextID];

    v9 = _MRLogForCategory();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!v8)
    {
      if (!v10)
      {
        goto LABEL_21;
      }

      v26 = *(a1 + 32);
      v25 = *(a1 + 40);
      v13 = +[NSDate date];
      [v13 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v37 = v25;
      v38 = 2114;
      v39 = v26;
      v40 = 2114;
      v41 = v3;
      v42 = 2048;
      v43 = v27;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", buf, 0x2Au);
      goto LABEL_20;
    }

    if (!v10)
    {
      goto LABEL_21;
    }

    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = [*(a1 + 48) contextID];
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544386;
    v37 = v11;
    v38 = 2114;
    v39 = v12;
    v40 = 2114;
    v41 = v3;
    v42 = 2114;
    v43 = v13;
    v44 = 2048;
    v45 = v15;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
    goto LABEL_15;
  }

  if (v7 < *(a1 + 80))
  {
    v16 = [[NSString alloc] initWithFormat:@"priority degraded from %u -> %u", *(a1 + 80), v7];
    v17 = _MRLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v18 = *(a1 + 40);
      *buf = 138543874;
      v37 = v18;
      v38 = 2114;
      v39 = v19;
      v40 = 2112;
      v41 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }
  }

  v20 = [*(a1 + 48) contextID];

  v9 = _MRLogForCategory();
  v21 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    if (!v21)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 32);
    v22 = *(a1 + 40);
    v13 = [*(a1 + 48) contextID];
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544130;
    v37 = v22;
    v38 = 2114;
    v39 = v23;
    v40 = 2114;
    v41 = v13;
    v42 = 2048;
    v43 = v24;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds", buf, 0x2Au);
LABEL_15:

    goto LABEL_20;
  }

  if (!v21)
  {
    goto LABEL_21;
  }

  v29 = *(a1 + 32);
  v28 = *(a1 + 40);
  v13 = +[NSDate date];
  [v13 timeIntervalSinceDate:*(a1 + 56)];
  *buf = 138543874;
  v37 = v28;
  v38 = 2114;
  v39 = v29;
  v40 = 2048;
  v41 = v30;
  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
LABEL_20:

LABEL_21:
  v31 = *(a1 + 72);
  if (v31)
  {
    v32 = *(a1 + 64);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100192F6C;
    block[3] = &unk_1004B8B50;
    v35 = v31;
    v34 = v3;
    dispatch_async(v32, block);
  }
}

void sub_100192F90(uint64_t a1, uint64_t a2)
{
  v3 = [AVOutputContext errorFromResult:a2];
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v7 = 138543874;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      v11 = 2112;
      v12 = @"Completion after timeout";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v7, 0x20u);
    }
  }
}

void sub_100193510(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  v5 = [*(a1 + 32) hash];
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v6, "AVOutputContext.setOutputDevice", "", buf, 2u);
    }
  }

  v7 = qos_class_self();
  if (v3)
  {
    v8 = [*(a1 + 48) contextID];

    v9 = _MRLogForCategory();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!v8)
    {
      if (!v10)
      {
        goto LABEL_21;
      }

      v26 = *(a1 + 32);
      v25 = *(a1 + 40);
      v13 = +[NSDate date];
      [v13 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v37 = v25;
      v38 = 2114;
      v39 = v26;
      v40 = 2114;
      v41 = v3;
      v42 = 2048;
      v43 = v27;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", buf, 0x2Au);
      goto LABEL_20;
    }

    if (!v10)
    {
      goto LABEL_21;
    }

    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = [*(a1 + 48) contextID];
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544386;
    v37 = v11;
    v38 = 2114;
    v39 = v12;
    v40 = 2114;
    v41 = v3;
    v42 = 2114;
    v43 = v13;
    v44 = 2048;
    v45 = v15;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
    goto LABEL_15;
  }

  if (v7 < *(a1 + 80))
  {
    v16 = [[NSString alloc] initWithFormat:@"priority degraded from %u -> %u", *(a1 + 80), v7];
    v17 = _MRLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v18 = *(a1 + 40);
      *buf = 138543874;
      v37 = v18;
      v38 = 2114;
      v39 = v19;
      v40 = 2112;
      v41 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }
  }

  v20 = [*(a1 + 48) contextID];

  v9 = _MRLogForCategory();
  v21 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    if (!v21)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 32);
    v22 = *(a1 + 40);
    v13 = [*(a1 + 48) contextID];
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544130;
    v37 = v22;
    v38 = 2114;
    v39 = v23;
    v40 = 2114;
    v41 = v13;
    v42 = 2048;
    v43 = v24;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds", buf, 0x2Au);
LABEL_15:

    goto LABEL_20;
  }

  if (!v21)
  {
    goto LABEL_21;
  }

  v29 = *(a1 + 32);
  v28 = *(a1 + 40);
  v13 = +[NSDate date];
  [v13 timeIntervalSinceDate:*(a1 + 56)];
  *buf = 138543874;
  v37 = v28;
  v38 = 2114;
  v39 = v29;
  v40 = 2048;
  v41 = v30;
  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
LABEL_20:

LABEL_21:
  v31 = *(a1 + 72);
  if (v31)
  {
    v32 = *(a1 + 64);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100193998;
    block[3] = &unk_1004B8B50;
    v35 = v31;
    v34 = v3;
    dispatch_async(v32, block);
  }
}

void sub_1001939BC(uint64_t a1, uint64_t a2)
{
  v3 = [AVOutputContext errorFromResult:a2];
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v7 = 138543874;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      v11 = 2112;
      v12 = @"Completion after timeout";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v7, 0x20u);
    }
  }
}

void sub_10019414C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  v5 = [*(a1 + 32) hash];
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v6, "AVOutputContext.addOutputDevices", "", buf, 2u);
    }
  }

  v7 = qos_class_self();
  if (v3)
  {
    v8 = [*(a1 + 48) contextID];

    v9 = _MRLogForCategory();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!v8)
    {
      if (!v10)
      {
        goto LABEL_21;
      }

      v26 = *(a1 + 32);
      v25 = *(a1 + 40);
      v13 = +[NSDate date];
      [v13 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v33 = v25;
      v34 = 2114;
      v35 = v26;
      v36 = 2114;
      v37 = v3;
      v38 = 2048;
      v39 = v27;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", buf, 0x2Au);
      goto LABEL_20;
    }

    if (!v10)
    {
      goto LABEL_21;
    }

    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = [*(a1 + 48) contextID];
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544386;
    v33 = v11;
    v34 = 2114;
    v35 = v12;
    v36 = 2114;
    v37 = v3;
    v38 = 2114;
    v39 = v13;
    v40 = 2048;
    v41 = v15;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
    goto LABEL_15;
  }

  if (v7 < *(a1 + 72))
  {
    v16 = [[NSString alloc] initWithFormat:@"priority degraded from %u -> %u", *(a1 + 72), v7];
    v17 = _MRLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v18 = *(a1 + 40);
      *buf = 138543874;
      v33 = v18;
      v34 = 2114;
      v35 = v19;
      v36 = 2112;
      v37 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }
  }

  v20 = [*(a1 + 48) contextID];

  v9 = _MRLogForCategory();
  v21 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    if (!v21)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 32);
    v22 = *(a1 + 40);
    v13 = [*(a1 + 48) contextID];
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544130;
    v33 = v22;
    v34 = 2114;
    v35 = v23;
    v36 = 2114;
    v37 = v13;
    v38 = 2048;
    v39 = v24;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds", buf, 0x2Au);
LABEL_15:

    goto LABEL_20;
  }

  if (!v21)
  {
    goto LABEL_21;
  }

  v29 = *(a1 + 32);
  v28 = *(a1 + 40);
  v13 = +[NSDate date];
  [v13 timeIntervalSinceDate:*(a1 + 56)];
  *buf = 138543874;
  v33 = v28;
  v34 = 2114;
  v35 = v29;
  v36 = 2048;
  v37 = v30;
  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
LABEL_20:

LABEL_21:
  v31 = *(a1 + 64);
  if (v31)
  {
    (*(v31 + 16))(v31, v3);
  }
}

void sub_100194580(uint64_t a1, void *a2)
{
  v7 = a2;
  v4 = *(*(a1 + 40) + 8);
  v6 = *(v4 + 40);
  v5 = (v4 + 40);
  if (!v6)
  {
    objc_storeStrong(v5, a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1001945E8(uint64_t a1)
{
  if ([*(a1 + 32) disarm])
  {
    v2 = *(*(*(a1 + 64) + 8) + 40);
    v3 = *(*(a1 + 56) + 16);

    v3();
  }

  else
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v7 = 138543874;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      v11 = 2112;
      v12 = @"Completion after timeout";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v7, 0x20u);
    }
  }
}

void sub_100194B9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  v5 = [*(a1 + 32) hash];
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v6, "AVOutputContext.addOutputDevice", "", buf, 2u);
    }
  }

  v7 = qos_class_self();
  if (v3)
  {
    v8 = [*(a1 + 48) contextID];

    v9 = _MRLogForCategory();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!v8)
    {
      if (!v10)
      {
        goto LABEL_21;
      }

      v26 = *(a1 + 32);
      v25 = *(a1 + 40);
      v13 = +[NSDate date];
      [v13 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v37 = v25;
      v38 = 2114;
      v39 = v26;
      v40 = 2114;
      v41 = v3;
      v42 = 2048;
      v43 = v27;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", buf, 0x2Au);
      goto LABEL_20;
    }

    if (!v10)
    {
      goto LABEL_21;
    }

    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = [*(a1 + 48) contextID];
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544386;
    v37 = v11;
    v38 = 2114;
    v39 = v12;
    v40 = 2114;
    v41 = v3;
    v42 = 2114;
    v43 = v13;
    v44 = 2048;
    v45 = v15;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
    goto LABEL_15;
  }

  if (v7 < *(a1 + 80))
  {
    v16 = [[NSString alloc] initWithFormat:@"priority degraded from %u -> %u", *(a1 + 80), v7];
    v17 = _MRLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v18 = *(a1 + 40);
      *buf = 138543874;
      v37 = v18;
      v38 = 2114;
      v39 = v19;
      v40 = 2112;
      v41 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }
  }

  v20 = [*(a1 + 48) contextID];

  v9 = _MRLogForCategory();
  v21 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    if (!v21)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 32);
    v22 = *(a1 + 40);
    v13 = [*(a1 + 48) contextID];
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544130;
    v37 = v22;
    v38 = 2114;
    v39 = v23;
    v40 = 2114;
    v41 = v13;
    v42 = 2048;
    v43 = v24;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds", buf, 0x2Au);
LABEL_15:

    goto LABEL_20;
  }

  if (!v21)
  {
    goto LABEL_21;
  }

  v29 = *(a1 + 32);
  v28 = *(a1 + 40);
  v13 = +[NSDate date];
  [v13 timeIntervalSinceDate:*(a1 + 56)];
  *buf = 138543874;
  v37 = v28;
  v38 = 2114;
  v39 = v29;
  v40 = 2048;
  v41 = v30;
  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
LABEL_20:

LABEL_21:
  v31 = *(a1 + 72);
  if (v31)
  {
    v32 = *(a1 + 64);
    if (v32)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10019503C;
      block[3] = &unk_1004B8B50;
      v35 = v31;
      v34 = v3;
      dispatch_async(v32, block);
    }

    else
    {
      (v31)[2](v31, v3);
    }
  }
}

void sub_100195060(uint64_t a1, uint64_t a2)
{
  v3 = [AVOutputContext errorFromResult:a2];
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v7 = 138543874;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      v11 = 2112;
      v12 = @"Completion after timeout";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v7, 0x20u);
    }
  }
}

void sub_1001957F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  v5 = [*(a1 + 32) hash];
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v6, "AVOutputContext.removeOutputDevices", "", buf, 2u);
    }
  }

  v7 = qos_class_self();
  if (v3)
  {
    v8 = [*(a1 + 48) contextID];

    v9 = _MRLogForCategory();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!v8)
    {
      if (!v10)
      {
        goto LABEL_21;
      }

      v26 = *(a1 + 32);
      v25 = *(a1 + 40);
      v13 = +[NSDate date];
      [v13 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v33 = v25;
      v34 = 2114;
      v35 = v26;
      v36 = 2114;
      v37 = v3;
      v38 = 2048;
      v39 = v27;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", buf, 0x2Au);
      goto LABEL_20;
    }

    if (!v10)
    {
      goto LABEL_21;
    }

    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = [*(a1 + 48) contextID];
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544386;
    v33 = v11;
    v34 = 2114;
    v35 = v12;
    v36 = 2114;
    v37 = v3;
    v38 = 2114;
    v39 = v13;
    v40 = 2048;
    v41 = v15;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
    goto LABEL_15;
  }

  if (v7 < *(a1 + 72))
  {
    v16 = [[NSString alloc] initWithFormat:@"priority degraded from %u -> %u", *(a1 + 72), v7];
    v17 = _MRLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v18 = *(a1 + 40);
      *buf = 138543874;
      v33 = v18;
      v34 = 2114;
      v35 = v19;
      v36 = 2112;
      v37 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }
  }

  v20 = [*(a1 + 48) contextID];

  v9 = _MRLogForCategory();
  v21 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    if (!v21)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 32);
    v22 = *(a1 + 40);
    v13 = [*(a1 + 48) contextID];
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544130;
    v33 = v22;
    v34 = 2114;
    v35 = v23;
    v36 = 2114;
    v37 = v13;
    v38 = 2048;
    v39 = v24;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds", buf, 0x2Au);
LABEL_15:

    goto LABEL_20;
  }

  if (!v21)
  {
    goto LABEL_21;
  }

  v29 = *(a1 + 32);
  v28 = *(a1 + 40);
  v13 = +[NSDate date];
  [v13 timeIntervalSinceDate:*(a1 + 56)];
  *buf = 138543874;
  v33 = v28;
  v34 = 2114;
  v35 = v29;
  v36 = 2048;
  v37 = v30;
  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
LABEL_20:

LABEL_21:
  v31 = *(a1 + 64);
  if (v31)
  {
    (*(v31 + 16))(v31, v3);
  }
}

void sub_100195C24(uint64_t a1, void *a2)
{
  v7 = a2;
  v4 = *(*(a1 + 40) + 8);
  v6 = *(v4 + 40);
  v5 = (v4 + 40);
  if (!v6)
  {
    objc_storeStrong(v5, a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100195C8C(uint64_t a1)
{
  if ([*(a1 + 32) disarm])
  {
    v2 = *(*(*(a1 + 64) + 8) + 40);
    v3 = *(*(a1 + 56) + 16);

    v3();
  }

  else
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v7 = 138543874;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      v11 = 2112;
      v12 = @"Completion after timeout";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v7, 0x20u);
    }
  }
}

void sub_100196240(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  v5 = [*(a1 + 32) hash];
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v6, "AVOutputContext.removeOutputDevice", "", buf, 2u);
    }
  }

  v7 = qos_class_self();
  if (v3)
  {
    v8 = [*(a1 + 48) contextID];

    v9 = _MRLogForCategory();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!v8)
    {
      if (!v10)
      {
        goto LABEL_21;
      }

      v26 = *(a1 + 32);
      v25 = *(a1 + 40);
      v13 = +[NSDate date];
      [v13 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v37 = v25;
      v38 = 2114;
      v39 = v26;
      v40 = 2114;
      v41 = v3;
      v42 = 2048;
      v43 = v27;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", buf, 0x2Au);
      goto LABEL_20;
    }

    if (!v10)
    {
      goto LABEL_21;
    }

    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = [*(a1 + 48) contextID];
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544386;
    v37 = v11;
    v38 = 2114;
    v39 = v12;
    v40 = 2114;
    v41 = v3;
    v42 = 2114;
    v43 = v13;
    v44 = 2048;
    v45 = v15;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
    goto LABEL_15;
  }

  if (v7 < *(a1 + 80))
  {
    v16 = [[NSString alloc] initWithFormat:@"priority degraded from %u -> %u", *(a1 + 80), v7];
    v17 = _MRLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v18 = *(a1 + 40);
      *buf = 138543874;
      v37 = v18;
      v38 = 2114;
      v39 = v19;
      v40 = 2112;
      v41 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }
  }

  v20 = [*(a1 + 48) contextID];

  v9 = _MRLogForCategory();
  v21 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    if (!v21)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 32);
    v22 = *(a1 + 40);
    v13 = [*(a1 + 48) contextID];
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544130;
    v37 = v22;
    v38 = 2114;
    v39 = v23;
    v40 = 2114;
    v41 = v13;
    v42 = 2048;
    v43 = v24;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds", buf, 0x2Au);
LABEL_15:

    goto LABEL_20;
  }

  if (!v21)
  {
    goto LABEL_21;
  }

  v29 = *(a1 + 32);
  v28 = *(a1 + 40);
  v13 = +[NSDate date];
  [v13 timeIntervalSinceDate:*(a1 + 56)];
  *buf = 138543874;
  v37 = v28;
  v38 = 2114;
  v39 = v29;
  v40 = 2048;
  v41 = v30;
  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
LABEL_20:

LABEL_21:
  v31 = *(a1 + 72);
  if (v31)
  {
    v32 = *(a1 + 64);
    if (v32)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001966E0;
      block[3] = &unk_1004B8B50;
      v35 = v31;
      v34 = v3;
      dispatch_async(v32, block);
    }

    else
    {
      (v31)[2](v31, v3);
    }
  }
}

void sub_100196704(uint64_t a1, uint64_t a2)
{
  v3 = [AVOutputContext errorFromResult:a2];
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v7 = 138543874;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      v11 = 2112;
      v12 = @"Completion after timeout";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v7, 0x20u);
    }
  }
}

void sub_1001968E4(float a1)
{
  *(v2 - 160) = a1;
  *(v2 - 156) = v1;
  *(v2 - 148) = 2114;
}

void sub_100196918(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, OS_LOG_TYPE_DEFAULT, a4, (v5 - 160), 0x20u);
}

void sub_100196990(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x16u);
}

void sub_1001969B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v7, OS_SIGNPOST_INTERVAL_BEGIN, v6, a5, a6, (v8 - 160), 2u);
}

void sub_1001969E0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x16u);
}

id sub_100196A24()
{

  return [v1 setObject:v0 forKeyedSubscript:?];
}

id sub_100196A58(void *a1, const char *a2, uint64_t a3)
{

  return [a1 postNotificationName:a3 object:v3 userInfo:v4];
}

id sub_100196A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{

  return [a10 setObject:v10 forKeyedSubscript:?];
}

id sub_100196AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{

  return [a10 setObject:v10 forKeyedSubscript:?];
}

id sub_100196AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  return [v20 setObject:a20 forKeyedSubscript:?];
}

BOOL sub_100196AE0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_100196B28(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

id sub_100196B40()
{

  return [v0 setObject:v1 forKeyedSubscript:?];
}

void sub_100196CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100196CD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSuggestionCountIfNeeded];
}

void sub_100196EF4(uint64_t a1)
{
  v2 = [[MRMediaSuggestionRequest alloc] initWithBlock:&stru_1004C0A48];
  v3 = [*(a1 + 32) suggestionPreferences];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100196FC0;
  v4[3] = &unk_1004C0A70;
  v4[4] = *(a1 + 32);
  [v2 performWithPreferences:v3 completion:v4];
}

void sub_100196FC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1003AFBCC(v6, v7);
  }

  if (v6)
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDLockScreenContentController] Failed to retrieve suggestions with error %@", &v11, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v8 = [v5 objectForKeyedSubscript:MRSuggestionContextHomeScreen];
    v9 = [v8 count];
  }

  os_unfair_lock_lock((*(a1 + 32) + 12));
  v10 = [*(a1 + 32) suggestionCount];
  [*(a1 + 32) setSuggestionCount:v9];
  [*(a1 + 32) setIsQuerying:0];
  os_unfair_lock_unlock((*(a1 + 32) + 12));
  if (v9 != v10)
  {
    [*(a1 + 32) _notifyDelegate];
  }
}

void sub_1001975D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10019769C;
  v6[3] = &unk_1004B68F0;
  v7 = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_10019769C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) name];
  [v1 _reevaluateWithReason:v2];
}

void sub_100197744(id a1)
{
  v1 = [[MRDPreemptiveRemoteControlConnectionManager alloc] _init];
  v2 = qword_100529678;
  qword_100529678 = v1;
}

id sub_100197880(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 32))
  {
    [*(a1 + 40) appendFormat:@"    previousGroupID = %@\n", *(v2 + 32)];
    v2 = *(a1 + 32);
  }

  if ([*(v2 + 40) operationCount])
  {
    [*(a1 + 40) appendFormat:@"    groupLeaderOperationsCount = %ld\n", objc_msgSend(*(*(a1 + 32) + 40), "operationCount")];
  }

  v3 = *(a1 + 32);
  if (*(v3 + 8))
  {
    [*(a1 + 40) appendFormat:@"    groupLeaderEndpoint = %@\n", *(v3 + 8)];
    v3 = *(a1 + 32);
  }

  if (*(v3 + 48))
  {
    [*(a1 + 40) appendFormat:@"    previousClusterLeaderID = %@\n", *(v3 + 48)];
    v3 = *(a1 + 32);
  }

  result = [*(v3 + 56) operationCount];
  if (result)
  {
    result = [*(a1 + 40) appendFormat:@"    clusterLeaderOperationsCount = %ld\n", objc_msgSend(*(*(a1 + 32) + 56), "operationCount")];
  }

  if (*(*(a1 + 32) + 16))
  {
    return [*(a1 + 40) appendFormat:@"    clusterLeaderEndpoint = %@\n", *(*(a1 + 32) + 16)];
  }

  return result;
}

void sub_100197A3C(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];

  if (!v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    [*(a1 + 32) setObservers:v3];
  }

  v4 = [*(a1 + 32) observers];
  [v4 addObject:*(a1 + 40)];
}

void sub_100197B80(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

void sub_100198030(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 preemptiveRemoteControlConnectionManager:*(a1 + 40) didConnectToGroupLeader:{*(a1 + 48), v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1001985AC(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 preemptiveRemoteControlConnectionManager:*(a1 + 40) didConnectToPreferredClusterLeader:{*(a1 + 48), v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_100198970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100198990(uint64_t a1)
{
  if ([*(a1 + 32) isAirPlayActive])
  {
    v2 = [*(a1 + 32) parentGroupContainsDiscoverableGroupLeader];
    v3 = [MRResultReason alloc];
    if (v2)
    {
      v4 = @"airplayActive with discoverableGroupLeader";
      v5 = 1;
      goto LABEL_7;
    }

    v4 = @"parentGroupContainsDiscoverableGroupLeader=YES";
  }

  else
  {
    v3 = [MRResultReason alloc];
    v4 = @"airplayActive=NO";
  }

  v5 = 0;
LABEL_7:
  v6 = [v3 initWithResult:v5 reason:v4];

  return v6;
}

id sub_100198A20(uint64_t a1)
{
  v2 = [*(a1 + 32) previousGroupID];
  v3 = [*(a1 + 40) groupUID];
  v4 = v3;
  if (v2 == v3)
  {

LABEL_5:
    v8 = [*(a1 + 32) groupLeaderOperations];
    v9 = [v8 operationCount];

    if (v9)
    {
      v6 = [MRResultReason alloc];
      v7 = @"operationInProgress";
    }

    else
    {
      v10 = [*(a1 + 32) groupLeader];

      v6 = [MRResultReason alloc];
      if (!v10)
      {
        v7 = @"Unknown";
        goto LABEL_11;
      }

      v7 = @"exisitingConnection";
    }

    v11 = 0;
    goto LABEL_12;
  }

  v5 = [v2 isEqual:v3];

  if (v5)
  {
    goto LABEL_5;
  }

  v6 = [MRResultReason alloc];
  v7 = @"groupLeaderChanged";
LABEL_11:
  v11 = 1;
LABEL_12:
  v12 = [v6 initWithResult:v11 reason:v7];

  return v12;
}

void sub_100198B38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained endpoint];

  v4 = [*(a1 + 32) queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100198C04;
  v6[3] = &unk_1004B68F0;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_sync(v4, v6);
}

void sub_100198E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100198EA4(uint64_t a1)
{
  if (![*(a1 + 32) clusterType])
  {
    v5 = [MRResultReason alloc];
    v6 = @"clusterType=None";
    goto LABEL_5;
  }

  v2 = [*(a1 + 32) preferredClusterLeaderID];
  v3 = [*(a1 + 32) deviceUID];
  v4 = [v2 isEqualToString:v3];

  v5 = [MRResultReason alloc];
  if (v4)
  {
    v6 = @"isClusterLeader=YES";
LABEL_5:
    v7 = 0;
    goto LABEL_7;
  }

  v6 = @"isClusterLeader=NO";
  v7 = 1;
LABEL_7:
  v8 = [v5 initWithResult:v7 reason:v6];

  return v8;
}

id sub_100198F68(uint64_t a1)
{
  v2 = [*(a1 + 32) previousClusterLeaderID];
  v3 = [*(a1 + 40) preferredClusterLeaderID];
  v4 = v3;
  if (v2 == v3)
  {

LABEL_5:
    v8 = [*(a1 + 32) clusterLeaderOperations];
    v9 = [v8 operationCount];

    if (v9)
    {
      v6 = [MRResultReason alloc];
      v7 = @"operationInProgress";
    }

    else
    {
      v10 = [*(a1 + 32) preferredClusterLeader];

      v6 = [MRResultReason alloc];
      if (!v10)
      {
        v7 = @"Unknown";
        goto LABEL_11;
      }

      v7 = @"exisitingConnection";
    }

    v11 = 0;
    goto LABEL_12;
  }

  v5 = [v2 isEqual:v3];

  if (v5)
  {
    goto LABEL_5;
  }

  v6 = [MRResultReason alloc];
  v7 = @"clusterLeaderChanged";
LABEL_11:
  v11 = 1;
LABEL_12:
  v12 = [v6 initWithResult:v11 reason:v7];

  return v12;
}

void sub_100199080(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained endpoint];

  v4 = [*(a1 + 32) queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10019914C;
  v6[3] = &unk_1004B68F0;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_sync(v4, v6);
}

void sub_100199664(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) isCancelled])
  {
    v7 = *(a1 + 32);
    v8 = [[NSError alloc] initWithMRError:25];
    v9 = v7;
  }

  else
  {
    if (!v6)
    {
      v10 = *(a1 + 32);
      v11 = *(v10 + 8);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10019978C;
      v12[3] = &unk_1004B8690;
      v12[4] = v10;
      v13 = v5;
      v14 = 0;
      [v13 connectToExternalDeviceWithOptions:0 details:v11 completion:v12];

      goto LABEL_6;
    }

    v8 = [v6 mr_errorByEnvelopingWithMRError:47];
    v9 = *(a1 + 32);
  }

  [v9 finishWithError:v8];

LABEL_6:
}

void sub_10019978C(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) isCancelled])
  {
    v4 = *(a1 + 32);
    v5 = [[NSError alloc] initWithMRError:25];
    v8 = v5;
    v6 = v4;
LABEL_5:
    [v6 finishWithError:v5];

    return;
  }

  if (a2)
  {
    v5 = [*(a1 + 48) mr_errorByEnvelopingWithMRError:100];
    v8 = v5;
    v6 = *(a1 + 32);
    goto LABEL_5;
  }

  [*(a1 + 32) setEndpoint:*(a1 + 40)];
  v7 = *(a1 + 32);

  [v7 finish];
}

void sub_10019A00C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([*(a1 + 32) isCancelled])
  {
    v5 = *(a1 + 32);
    v6 = [[NSError alloc] initWithMRError:25];
    [v5 finishWithError:v6];
  }

  else
  {
    if (v4)
    {
      v7 = [v4 mr_errorByEnvelopingWithMRError:47];
      [*(a1 + 32) finishWithError:v7];
    }

    else
    {
      v8 = +[MRDMediaRemoteServer server];
      v9 = [v8 routingServer];
      v7 = [v9 createTransientEndpointForOutputDeviceUID:*(*(a1 + 32) + 16) details:*(*(a1 + 32) + 8)];

      if (v7)
      {
        v10 = *(a1 + 32);
        v11 = *(v10 + 8);
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_10019A1AC;
        v13[3] = &unk_1004B8690;
        v13[4] = v10;
        v14 = v7;
        v15 = 0;
        [v14 connectToExternalDeviceWithOptions:0 details:v11 completion:v13];
      }

      else
      {
        v12 = [0 mr_errorByEnvelopingWithMRError:39];
        [*(a1 + 32) finishWithError:v12];
      }
    }
  }
}

void sub_10019A1AC(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) isCancelled])
  {
    v4 = *(a1 + 32);
    v5 = [[NSError alloc] initWithMRError:25];
    v8 = v5;
    v6 = v4;
LABEL_5:
    [v6 finishWithError:v5];

    return;
  }

  if (a2)
  {
    v5 = [*(a1 + 48) mr_errorByEnvelopingWithMRError:100];
    v8 = v5;
    v6 = *(a1 + 32);
    goto LABEL_5;
  }

  [*(a1 + 32) setEndpoint:*(a1 + 40)];
  v7 = *(a1 + 32);

  [v7 finish];
}

void sub_10019A7DC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Au);
}

void sub_10019B01C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 route:*(a1 + 40) endpoint:*(a1 + 48) bundleIdentifier:*(a1 + 56) emittedEvent:*(a1 + 64)];
}

id sub_10019B64C(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = [v3 destination];
    v6 = *(a1 + 48);
    v8 = 138413058;
    v9 = v4;
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MRDRRC].NPM %@ - endpoint was nil, trying again - %@ (%@), response: %@", &v8, 0x2Au);
  }

  return [*(a1 + 32) onQueue_controller:*(a1 + 40) didLoadResponse:*(a1 + 48) retry:0];
}

void sub_10019B8B4(uint64_t a1)
{
  v2 = [*(a1 + 32) destination];
  v6 = [v2 endpoint];

  v3 = [*(a1 + 32) destination];
  v4 = [v3 client];
  v5 = [v4 representedBundleID];

  [*(a1 + 40) onQueue_setLastPlaybackState:*(a1 + 48) bundleIdentifier:v5 forEndpoint:v6];
}

void sub_10019C7B0(void *a1, void *a2)
{
  v3 = a2;
  v11 = MREndpointConnectionReasonUserInfoKey;
  v12 = @"activeSystemEndpointDidChange";
  v4 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10019C8D4;
  v7[3] = &unk_1004BE9B8;
  v5 = a1[5];
  v7[4] = a1[4];
  v8 = v5;
  v9 = v3;
  v10 = a1[6];
  v6 = v3;
  [v6 connectToExternalDeviceWithUserInfo:v4 completion:v7];
}

void sub_10019C8D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = [*(a1 + 32) activeSystemEndpointOutputDeviceUID];
  v6 = *(a1 + 40);
  v7 = v5;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    v10 = [v7 isEqual:v8];

    if (!v10)
    {
      v11 = _MRLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        v13 = [*(a1 + 32) activeSystemEndpointOutputDeviceUID];
        v22 = 138412546;
        v23 = v12;
        v24 = 2112;
        v25 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[MRDProactiveRecommendedPlayerController] Ignoring activeSystemEndpointDidChange for %@ because a new change for %@ was received", &v22, 0x16u);
      }

      goto LABEL_12;
    }
  }

  if (v3)
  {
    v14 = _MRLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 40);
      v22 = 138412546;
      v23 = v15;
      v24 = 2112;
      v25 = v3;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[MRDProactiveRecommendedPlayerController] Failed to connect to proactive endpoint %@ with error %@. Reset to local.", &v22, 0x16u);
    }

    v16 = &_dispatch_main_q;
    MRAVEndpointUpdateActiveSystemEndpointWithReason();
  }

  else
  {
    v17 = [*(a1 + 48) origin];
    v18 = *(a1 + 32);
    v19 = +[MRDMediaRemoteServer server];
    v20 = [v19 nowPlayingServer];
    v21 = [v20 originClientForOrigin:v17];
    [v18 setOriginClient:v21 withChangeType:*(a1 + 56)];
  }

LABEL_12:
  objc_sync_exit(v4);
}

__CFString *sub_10019CF04(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1004C0B30[a1];
  }
}

id sub_10019CF24(void *a1)
{
  v1 = a1[5];
  v2 = a1[7];
  v3 = a1[8];
  v4 = a1[6];
  return [*(a1[4] + 96) proactiveRecommendedPlayerController:? proactiveRecommendedPlayerDidChange:? change:? event:? reason:?];
}