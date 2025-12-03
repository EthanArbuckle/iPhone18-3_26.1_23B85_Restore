@interface MRDCreateHostedEndpointRequest
+ (void)createHostedEndpointWithOutputDeviceUIDs:(id)ds timeout:(double)timeout details:(id)details completion:(id)completion;
+ (void)createHostedEndpointWithOutputDeviceUIDs:(id)ds timeout:(double)timeout details:(id)details groupUIDCompletion:(id)completion;
- (void)_createHostedEndpointWithOutputDeviceUIDs:(id)ds timeout:(double)timeout details:(id)details analytics:(id)analytics completion:(id)completion;
- (void)_maybeSendCommandPreviewForOutputDeviceUID:(id)d details:(id)details;
- (void)_searchForBuddyLeaderWithTimeout:(double)timeout details:(id)details completion:(id)completion;
@end

@implementation MRDCreateHostedEndpointRequest

+ (void)createHostedEndpointWithOutputDeviceUIDs:(id)ds timeout:(double)timeout details:(id)details completion:(id)completion
{
  dsCopy = ds;
  detailsCopy = details;
  completionCopy = completion;
  v12 = +[NSDate now];
  requestID = [detailsCopy requestID];
  v14 = [MRDCreateHostedEndpointAnalytics alloc];
  requestID2 = [detailsCopy requestID];
  v16 = [(MRDCreateHostedEndpointAnalytics *)v14 initWithRequestID:requestID2];

  v17 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"CreateHostedEndpointWithOutputDeviceUIDs", requestID];
  v18 = v17;
  if (dsCopy)
  {
    [v17 appendFormat:@" for %@", dsCopy];
  }

  v19 = _MRLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v46 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000BD840;
  v38[3] = &unk_1004BAC98;
  v20 = v16;
  v39 = v20;
  v40 = dsCopy;
  v41 = @"CreateHostedEndpointWithOutputDeviceUIDs";
  v42 = requestID;
  v43 = v12;
  v21 = completionCopy;
  v44 = v21;
  v22 = v12;
  v23 = requestID;
  v24 = dsCopy;
  v25 = objc_retainBlock(v38);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000BDC18;
  v31[3] = &unk_1004BACC0;
  v32 = objc_alloc_init(MRDCreateHostedEndpointRequest);
  v33 = v20;
  timeoutCopy = timeout;
  v34 = detailsCopy;
  v35 = v21;
  v36 = v25;
  v26 = v25;
  v27 = detailsCopy;
  v28 = v20;
  v29 = v21;
  v30 = v32;
  [(MRDCreateHostedEndpointRequest *)v30 _createHostedEndpointWithOutputDeviceUIDs:v24 timeout:v27 details:v28 analytics:v31 completion:timeout];
}

+ (void)createHostedEndpointWithOutputDeviceUIDs:(id)ds timeout:(double)timeout details:(id)details groupUIDCompletion:(id)completion
{
  dsCopy = ds;
  detailsCopy = details;
  completionCopy = completion;
  v12 = +[NSDate now];
  requestID = [detailsCopy requestID];
  v14 = [MRDCreateHostedEndpointAnalytics alloc];
  requestID2 = [detailsCopy requestID];
  v16 = [(MRDCreateHostedEndpointAnalytics *)v14 initWithRequestID:requestID2];

  v17 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"CreateHostedEndpointGroupIDWithOutputDeviceUIDs", requestID];
  v18 = v17;
  if (dsCopy)
  {
    [v17 appendFormat:@" for %@", dsCopy];
  }

  v19 = _MRLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000BE134;
  v31[3] = &unk_1004BACE8;
  v32 = v16;
  v33 = dsCopy;
  v34 = @"CreateHostedEndpointGroupIDWithOutputDeviceUIDs";
  v35 = requestID;
  v36 = v12;
  v37 = completionCopy;
  v20 = completionCopy;
  v21 = v12;
  v22 = requestID;
  v23 = dsCopy;
  v24 = v16;
  v25 = objc_retainBlock(v31);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000BE4BC;
  v28[3] = &unk_1004BAD10;
  v29 = objc_alloc_init(MRDCreateHostedEndpointRequest);
  v30 = v25;
  v26 = v25;
  v27 = v29;
  [(MRDCreateHostedEndpointRequest *)v27 _createHostedEndpointWithOutputDeviceUIDs:v23 timeout:detailsCopy details:v24 analytics:v28 completion:timeout];
}

- (void)_createHostedEndpointWithOutputDeviceUIDs:(id)ds timeout:(double)timeout details:(id)details analytics:(id)analytics completion:(id)completion
{
  dsCopy = ds;
  detailsCopy = details;
  analyticsCopy = analytics;
  completionCopy = completion;
  v14 = +[NSDate now];
  requestID = [detailsCopy requestID];
  v16 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"CreateHostedEndpointWithOutputDeviceUIDs.preform", requestID];
  v17 = v16;
  if (dsCopy)
  {
    [v16 appendFormat:@" for %@", dsCopy];
  }

  v18 = _MRLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v73 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_1000BEA90;
  v66[3] = &unk_1004BAD38;
  v19 = dsCopy;
  v67 = v19;
  v68 = @"CreateHostedEndpointWithOutputDeviceUIDs.preform";
  v47 = requestID;
  v69 = v47;
  v20 = v14;
  v70 = v20;
  v21 = completionCopy;
  v71 = v21;
  v22 = objc_retainBlock(v66);
  v23 = [MRBlockGuard alloc];
  requestReasonID = [detailsCopy requestReasonID];
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_1000BEE08;
  v64[3] = &unk_1004B6FE8;
  v25 = v22;
  v65 = v25;
  v26 = [v23 initWithTimeout:requestReasonID reason:v64 handler:timeout];

  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_1000BEE20;
  v61[3] = &unk_1004BAD10;
  v27 = v26;
  v62 = v27;
  v28 = v25;
  v63 = v28;
  v29 = objc_retainBlock(v61);
  v30 = +[MRUserSettings currentSettings];
  if (![v30 supportMultiplayerHost])
  {

    goto LABEL_12;
  }

  v31 = [v19 count];

  if (!v31)
  {
LABEL_12:
    v38 = [[NSError alloc] initWithMRError:2];
    (v29[2])(v29, 0, v38);

    goto LABEL_15;
  }

  v44 = v20;
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_1000BEE98;
  v56[3] = &unk_1004BADB0;
  v56[4] = self;
  v32 = v19;
  v57 = v32;
  v41 = detailsCopy;
  v58 = v41;
  v40 = v29;
  v60 = v40;
  v33 = analyticsCopy;
  v59 = v33;
  v43 = objc_retainBlock(v56);
  v34 = +[MRDMediaRemoteServer server];
  deviceInfo = [v34 deviceInfo];

  deviceUID = [deviceInfo deviceUID];
  clusterID = [deviceInfo clusterID];
  v42 = deviceUID;
  if ((([v32 containsObject:deviceUID] & 1) != 0 || objc_msgSend(v32, "containsObject:", clusterID)) && ((objc_msgSend(deviceInfo, "clusterType") - 1) & 0xFFFFFFFD) == 0)
  {
    searchForBuddy = [v33 searchForBuddy];
    [searchForBuddy start];

    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_1000BF2F0;
    v49[3] = &unk_1004BAE00;
    v50 = v33;
    v51 = v32;
    timeoutCopy = timeout;
    v52 = v41;
    v53 = v40;
    v37 = v43;
    v54 = v43;
    [(MRDCreateHostedEndpointRequest *)self _searchForBuddyLeaderWithTimeout:v52 details:v49 completion:timeout];
  }

  else
  {
    v37 = v43;
    (v43[2])(v43);
  }

  v20 = v44;

LABEL_15:
}

- (void)_maybeSendCommandPreviewForOutputDeviceUID:(id)d details:(id)details
{
  dCopy = d;
  detailsCopy = details;
  v7 = +[MRDMediaRemoteServer server];
  deviceInfo = [v7 deviceInfo];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = dCopy;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if ([deviceInfo containsDevice:{*(*(&v16 + 1) + 8 * i), v16}])
        {
          v14 = objc_alloc_init(NSMutableDictionary);
          [v14 setObject:@"CreateHostedEndpointWithOutputDeviceUIDs.sendCommandPreview" forKeyedSubscript:kMRMediaRemoteOptionRemoteControlInterfaceIdentifier];
          requestID = [detailsCopy requestID];
          [v14 setObject:requestID forKeyedSubscript:kMRMediaRemoteOptionCommandID];

          [MRDAVOutputContextExternalDevice _sendCommandPreview:0 options:v14 playerPath:0];
          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)_searchForBuddyLeaderWithTimeout:(double)timeout details:(id)details completion:(id)completion
{
  detailsCopy = details;
  completionCopy = completion;
  v8 = +[NSDate now];
  v9 = [NSMutableString alloc];
  requestID = [detailsCopy requestID];
  v11 = [v9 initWithFormat:@"%@<%@>", @"CreateHostedEndpointWithOutputDeviceUIDs.searchForBuddyLeader", requestID];

  v12 = _MRLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v34 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000BF99C;
  v27[3] = &unk_1004B8108;
  v28 = @"CreateHostedEndpointWithOutputDeviceUIDs.searchForBuddyLeader";
  v13 = detailsCopy;
  v29 = v13;
  v14 = v8;
  v30 = v14;
  v15 = completionCopy;
  v31 = v15;
  v16 = objc_retainBlock(v27);
  v17 = +[MRDMediaRemoteServer server];
  deviceInfo = [v17 deviceInfo];

  if ((([deviceInfo clusterType] - 1) & 0xFFFFFFFD) != 0)
  {
    (v16[2])(v16, 0, 0);
  }

  else
  {
    deviceUID = [deviceInfo deviceUID];
    v20 = [MRAVReconnaissanceSession alloc];
    v32 = deviceUID;
    v21 = [NSArray arrayWithObjects:&v32 count:1];
    v22 = [v20 initWithOutputDeviceUIDs:v21 features:8 details:v13];

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000BFBA0;
    v24[3] = &unk_1004BAE28;
    v25 = deviceUID;
    v26 = v16;
    v23 = deviceUID;
    [v22 beginSearchWithTimeout:v24 completion:3.0];
  }
}

@end