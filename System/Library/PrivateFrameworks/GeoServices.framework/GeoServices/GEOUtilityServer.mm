@interface GEOUtilityServer
- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id;
- (BOOL)handleIncomingPairedDeviceMessage:(id)message completionHandler:(id)handler;
- (GEOUtilityServer)initWithDaemon:(id)daemon;
- (void)_checkinWithPairedDevice:(id)device;
- (void)checkinWithPairedDeviceMessage:(id)message completionHandler:(id)handler;
- (void)checkinWithPairedDeviceWithRequest:(id)request;
- (void)currentServicesStateWithMessage:(id)message;
- (void)getCurrentPairedDeviceClientInfo:(id)info;
- (void)getGeoServicesCacheDirectoryWithMessage:(id)message;
- (void)getHomeDirectoryWithMessage:(id)message;
- (void)getMapsDefaultNavigationStateWithRequest:(id)request;
- (void)heartbeatWithMessage:(id)message;
@end

@implementation GEOUtilityServer

- (BOOL)handleIncomingPairedDeviceMessage:(id)message completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  if ([messageCopy type] == 1)
  {
    checkin = [messageCopy checkin];
    v9 = checkin != 0;
    if (checkin)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000149DC;
      v11[3] = &unk_100081CB0;
      v12 = handlerCopy;
      [(GEOUtilityServer *)self checkinWithPairedDeviceMessage:checkin completionHandler:v11];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id
{
  messageCopy = message;
  objectCopy = object;
  peerCopy = peer;
  v13 = sub_100001334(messageCopy);
  v14 = 0;
  if (v13 > 2325)
  {
    switch(v13)
    {
      case 2326:
        v20 = objc_opt_class();
        v21 = sub_100001388(@"utility", messageCopy, objectCopy, v20, peerCopy);
        v16 = v21;
        if (v21)
        {
          [v21 setSignpostId:id];
          [(GEOUtilityServer *)self checkinWithPairedDeviceWithRequest:v16];
          goto LABEL_21;
        }

        goto LABEL_25;
      case 2856:
        v23 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
        v16 = v23;
        if (v23)
        {
          [v23 setSignpostId:id];
          [(GEOUtilityServer *)self getGeoServicesCacheDirectoryWithMessage:v16];
          goto LABEL_21;
        }

        goto LABEL_25;
      case 2983:
        v17 = objc_opt_class();
        v18 = sub_100001388(@"utility", messageCopy, objectCopy, v17, peerCopy);
        v16 = v18;
        if (v18)
        {
          [v18 setSignpostId:id];
          [(GEOUtilityServer *)self getMapsDefaultNavigationStateWithRequest:v16];
          goto LABEL_21;
        }

LABEL_25:
        v14 = 0;
        goto LABEL_22;
    }
  }

  else
  {
    switch(v13)
    {
      case 944:
        v19 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
        v16 = v19;
        if (v19)
        {
          [v19 setSignpostId:id];
          [(GEOUtilityServer *)self heartbeatWithMessage:v16];
          goto LABEL_21;
        }

        goto LABEL_25;
      case 1662:
        v22 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
        v16 = v22;
        if (v22)
        {
          [v22 setSignpostId:id];
          [(GEOUtilityServer *)self getHomeDirectoryWithMessage:v16];
          goto LABEL_21;
        }

        goto LABEL_25;
      case 2120:
        if (!sub_100001B78(peerCopy, objectCopy, @"utility", messageCopy, &off_100088F28, 0))
        {
          v14 = 1;
          break;
        }

        v15 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
        v16 = v15;
        if (v15)
        {
          [v15 setSignpostId:id];
          [(GEOUtilityServer *)self currentServicesStateWithMessage:v16];
LABEL_21:
          v14 = 1;
LABEL_22:

          break;
        }

        goto LABEL_25;
    }
  }

  return v14;
}

- (void)getMapsDefaultNavigationStateWithRequest:(id)request
{
  requestCopy = request;
  v4 = [[GEOUtilityDefaultNavigationStateReply alloc] initWithRequest:requestCopy];

  if (!sub_10003CDE0())
  {
    v14 = @"CoreServices unavailable";
    v15 = -6;
LABEL_10:
    v11 = [NSError GEOErrorWithCode:v15 reason:v14];
    v13 = 0;
    goto LABEL_11;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v5 = qword_1000960F0;
  v25 = qword_1000960F0;
  if (!qword_1000960F0)
  {
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_10003D064;
    v20 = &unk_1000830D0;
    v21 = &v22;
    sub_10003D064(&v17);
    v5 = v23[3];
  }

  v6 = v5;
  _Block_object_dispose(&v22, 8);
  if (![v6 hasDatabaseAccess])
  {
    v14 = @"Unable to access LS database";
    v15 = -5;
    goto LABEL_10;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v7 = qword_1000960E8;
  v25 = qword_1000960E8;
  if (!qword_1000960E8)
  {
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_10003CFF4;
    v20 = &unk_1000830D0;
    v21 = &v22;
    sub_10003CFF4(&v17);
    v7 = v23[3];
  }

  v8 = v7;
  _Block_object_dispose(&v22, 8);
  defaultWorkspace = [v8 defaultWorkspace];
  v16 = 0;
  v10 = [defaultWorkspace defaultApplicationForCategory:5 error:&v16];
  v11 = v16;

  bundleIdentifier = [v10 bundleIdentifier];
  v13 = [bundleIdentifier isEqualToString:MapsAppBundleId];

LABEL_11:
  [v4 setError:v11];
  [v4 setIsAppleMapsDefaultNavigation:v13];
  [v4 send];
}

- (void)checkinWithPairedDeviceMessage:(id)message completionHandler:(id)handler
{
  handlerCopy = handler;
  clientInfo = [message clientInfo];
  [(geo_object_isolater *)self->_safePairedDeviceClientInfo setValue:clientInfo];

  v10 = objc_alloc_init(GEOPairedDeviceCheckinReply);
  daemon = [(GEOUtilityServer *)self daemon];
  v9 = sub_10001A314(daemon);
  [v10 setClientInfo:v9];

  handlerCopy[2](handlerCopy, v10, 0);
}

- (void)checkinWithPairedDeviceWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOUtilityCheckinWithPairedDeviceReply alloc] initWithRequest:requestCopy];
  forced = [requestCopy forced];

  if ((forced & 1) != 0 || ([(geo_object_isolater *)self->_safePairedDeviceClientInfo value], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100047438;
    v9[3] = &unk_1000835E8;
    v10 = v5;
    [(GEOUtilityServer *)self _checkinWithPairedDevice:v9];
  }

  else
  {
    v8 = v7;
    [v5 setClientInfo:v7];
    [v5 send];
  }
}

- (void)_checkinWithPairedDevice:(id)device
{
  deviceCopy = device;
  v5 = objc_alloc_init(GEOPairedDeviceCheckinRequest);
  daemon = [(GEOUtilityServer *)self daemon];
  v7 = sub_10001A314(daemon);
  [v5 setClientInfo:v7];

  v8 = +[GEOPairedDeviceConnection sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000475A8;
  v10[3] = &unk_1000835C0;
  v10[4] = self;
  v11 = deviceCopy;
  v9 = deviceCopy;
  [v8 sendCheckin:v5 withReply:v10];
}

- (void)getCurrentPairedDeviceClientInfo:(id)info
{
  safePairedDeviceClientInfo = self->_safePairedDeviceClientInfo;
  infoCopy = info;
  value = [(geo_object_isolater *)safePairedDeviceClientInfo value];
  v7 = value;
  if (value)
  {
    infoCopy[2](infoCopy, value, 0);
  }

  else
  {
    [(GEOUtilityServer *)self _checkinWithPairedDevice:infoCopy];
  }
}

- (void)currentServicesStateWithMessage:(id)message
{
  messageCopy = message;
  v4 = objc_alloc_init(GEOServicesState);
  [v4 setBogusFieldForTestingPurposes:@"Valid looking state field"];
  v7 = @"state";
  data = [v4 data];
  v8 = data;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  [messageCopy sendReply:v6];
}

- (void)getGeoServicesCacheDirectoryWithMessage:(id)message
{
  v6 = @"path";
  messageCopy = message;
  v4 = +[GEOFilePaths _internal_geoServicesCacheDirectoryPath];
  v7 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  [messageCopy sendReply:v5];
}

- (void)getHomeDirectoryWithMessage:(id)message
{
  v6 = @"path";
  messageCopy = message;
  v4 = +[GEOFilePaths _internal_homeDirectory];
  v7 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  [messageCopy sendReply:v5];
}

- (void)heartbeatWithMessage:(id)message
{
  messageCopy = message;
  v6 = +[NSNotificationCenter defaultCenter];
  v4 = GEOPeerHeartbeatNotification;
  peer = [messageCopy peer];

  [v6 postNotificationName:v4 object:peer];
}

- (GEOUtilityServer)initWithDaemon:(id)daemon
{
  v8.receiver = self;
  v8.super_class = GEOUtilityServer;
  v3 = [(GEOUtilityServer *)&v8 initWithDaemon:daemon];
  if (v3)
  {
    v4 = geo_object_isolater_create();
    safePairedDeviceClientInfo = v3->_safePairedDeviceClientInfo;
    v3->_safePairedDeviceClientInfo = v4;

    objc_storeStrong(&qword_100096158, v3);
    v6 = v3;
  }

  return v3;
}

@end