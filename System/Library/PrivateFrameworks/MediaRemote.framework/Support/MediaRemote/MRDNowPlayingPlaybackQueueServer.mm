@interface MRDNowPlayingPlaybackQueueServer
- (id)_resolveRequest:(id)request withCapabilities:(unint64_t)capabilities;
- (unsigned)_cachingPolicyForRequest:(id)request;
- (void)handlePlaybackQueueRequest:(id)request fromClient:(id)client;
- (void)relayArtworkRequest:(id)request forContentItems:(id)items withMessage:(id)message fromNowPlayingClient:(id)client andNotifyXPCClient:(id)cClient;
- (void)relayPlaybackQueueRequest:(id)request withMessage:(id)message toNowPlayingClient:(id)client backToXpcClient:(id)xpcClient completion:(id)completion;
- (void)sendPlaybackQueueResponse:(id)response forRequest:(id)request withMessage:(id)message fromNowPlayingClient:(id)client toXpcClient:(id)xpcClient;
@end

@implementation MRDNowPlayingPlaybackQueueServer

- (void)handlePlaybackQueueRequest:(id)request fromClient:(id)client
{
  requestCopy = request;
  clientCopy = client;
  v8 = MRCreatePlaybackQueueRequestFromXPCMessage();
  v9 = +[NSDate now];
  v10 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"handlePlaybackQueueRequest", v8];
  v11 = _MRLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v46 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1000E5550;
  v43[3] = &unk_1004BC070;
  v12 = v9;
  v44 = v12;
  v13 = objc_retainBlock(v43);
  v14 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v14 nowPlayingServer];
  v16 = [nowPlayingServer queryExistingPlayerPathForXPCMessage:requestCopy forClient:clientCopy];

  if ([v16 error])
  {
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000E596C;
    v41[3] = &unk_1004B6E08;
    v17 = v16;
    v42 = v17;
    sub_100008278(requestCopy, v41);
    v18 = [[NSError alloc] initWithMRError:{objc_msgSend(v17, "error")}];
    unresolvedPlayerPath = [v17 unresolvedPlayerPath];
    (v13[2])(v13, v8, unresolvedPlayerPath, 0, @"now playing result", v18);

    v20 = v42;
  }

  else
  {
    v34 = v12;
    playerClient = [v16 playerClient];
    v33 = v8;
    v20 = -[MRDNowPlayingPlaybackQueueServer _resolveRequest:withCapabilities:](self, "_resolveRequest:withCapabilities:", v8, [playerClient playbackQueueCapabilities]);

    [clientCopy setHasRequestedLegacyNowPlayingInfo:{objc_msgSend(v20, "isLegacyNowPlayingInfoRequest") | objc_msgSend(clientCopy, "hasRequestedLegacyNowPlayingInfo")}];
    playbackQueueRequests = [clientCopy playbackQueueRequests];
    [v16 playerPath];
    v24 = v23 = self;
    v25 = [playbackQueueRequests subscriptionControllerForPlayerPath:v24];

    [v25 addRequest:v20];
    playerClient2 = [v16 playerClient];
    playerPath = [playerClient2 playerPath];

    v32 = v23;
    v28 = [(MRDNowPlayingPlaybackQueueServer *)v23 _cachingPolicyForRequest:v20];
    playerClient3 = [v16 playerClient];
    v40 = 0;
    v30 = [playerClient3 playbackQueueForRequest:v20 cachingPolicy:v28 playerPath:playerPath partiallyCachedItems:&v40];
    v31 = v40;

    if (v30)
    {
      [(MRDNowPlayingPlaybackQueueServer *)v32 sendPlaybackQueueResponse:v30 forRequest:v20 withMessage:requestCopy fromNowPlayingClient:v16 toXpcClient:clientCopy];
      (v13[2])(v13, v20, playerPath, v30, @"playback queue cache", 0);
      if ([v31 count])
      {
        [(MRDNowPlayingPlaybackQueueServer *)v32 relayArtworkRequest:v20 forContentItems:v31 withMessage:requestCopy fromNowPlayingClient:v16 andNotifyXPCClient:clientCopy];
      }
    }

    else
    {
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1000E59C4;
      v35[3] = &unk_1004BC098;
      v36 = v25;
      v37 = v20;
      v39 = v13;
      v38 = playerPath;
      [(MRDNowPlayingPlaybackQueueServer *)v32 relayPlaybackQueueRequest:v37 withMessage:requestCopy toNowPlayingClient:v16 backToXpcClient:clientCopy completion:v35];
    }

    v12 = v34;
    v8 = v33;
  }
}

- (void)sendPlaybackQueueResponse:(id)response forRequest:(id)request withMessage:(id)message fromNowPlayingClient:(id)client toXpcClient:(id)xpcClient
{
  responseCopy = response;
  clientCopy = client;
  messageCopy = message;
  requestCopy = request;
  playbackQueueRequests = [xpcClient playbackQueueRequests];
  playerPath = [clientCopy playerPath];

  v17 = [playbackQueueRequests subscriptionControllerForPlayerPath:playerPath];

  [v17 subscribeToPlaybackQueue:responseCopy forRequest:requestCopy];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000E5B78;
  v19[3] = &unk_1004B6E08;
  v20 = responseCopy;
  v18 = responseCopy;
  sub_100008278(messageCopy, v19);
}

- (void)relayPlaybackQueueRequest:(id)request withMessage:(id)message toNowPlayingClient:(id)client backToXpcClient:(id)xpcClient completion:(id)completion
{
  requestCopy = request;
  clientCopy = client;
  completionCopy = completion;
  xpcClientCopy = xpcClient;
  messageCopy = message;
  v16 = +[NSDate now];
  requestCopy = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"relayPlaybackQueueRequest", requestCopy];
  xpcClient = [clientCopy xpcClient];
  displayName = [xpcClient displayName];

  if (displayName)
  {
    xpcClient2 = [clientCopy xpcClient];
    displayName2 = [xpcClient2 displayName];
    [requestCopy appendFormat:@" for %@", displayName2];
  }

  v22 = _MRLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v47 = requestCopy;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1000E5F08;
  v41[3] = &unk_1004BC0C0;
  v23 = clientCopy;
  v42 = v23;
  v24 = requestCopy;
  v43 = v24;
  v44 = v16;
  v45 = completionCopy;
  v35 = completionCopy;
  v25 = v16;
  v26 = objc_retainBlock(v41);
  playerPath = [v23 playerPath];
  playbackQueueRequests = [xpcClientCopy playbackQueueRequests];

  v29 = [playbackQueueRequests subscriptionControllerForPlayerPath:playerPath];

  xpc_dictionary_set_uint64(messageCopy, "MRXPC_MESSAGE_ID_KEY", 0x700000000000002uLL);
  MRAddPlayerPathToXPCMessage();
  MRAddPlaybackQueueRequestToXPCMessage();
  xpcClient3 = [v23 xpcClient];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000E6330;
  v36[3] = &unk_1004BC0E8;
  v37 = v29;
  v38 = v24;
  v39 = v23;
  v40 = v26;
  v31 = v26;
  v32 = v23;
  v33 = v24;
  v34 = v29;
  [xpcClient3 relayXPCMessage:messageCopy andReply:1 resultCallback:v36];
}

- (void)relayArtworkRequest:(id)request forContentItems:(id)items withMessage:(id)message fromNowPlayingClient:(id)client andNotifyXPCClient:(id)cClient
{
  requestCopy = request;
  messageCopy = message;
  clientCopy = client;
  cClientCopy = cClient;
  itemsCopy = items;
  v14 = +[NSDate now];
  [clientCopy playerPath];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000E67CC;
  v15 = v39[3] = &unk_1004BC110;
  v40 = v15;
  v16 = requestCopy;
  v41 = v16;
  v17 = v14;
  v42 = v17;
  v18 = objc_retainBlock(v39);
  v19 = [itemsCopy msv_map:&stru_1004BC150];

  v20 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"requestArtworkForContentItems", v16];
  v21 = v20;
  if (v15)
  {
    [v20 appendFormat:@" for %@", v15];
  }

  if (v19)
  {
    [v21 appendFormat:@" because %@", v19];
  }

  v22 = _MRLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v44 = v21;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  if ([v19 count])
  {
    v23 = [[MRPlaybackQueueRequest alloc] initWithIdentifiers:v19];
    [v16 artworkWidth];
    [v23 setArtworkWidth:?];
    [v16 artworkHeight];
    [v23 setArtworkHeight:?];
    v24 = +[NSUUID UUID];
    uUIDString = [v24 UUIDString];
    [v23 setRequestIdentifier:uUIDString];

    v26 = [NSString alloc];
    label = [v16 label];
    requestIdentifier = [v16 requestIdentifier];
    v29 = [v26 initWithFormat:@"ArtworkRequest for %@<%@>", label, requestIdentifier];
    [v23 setLabel:v29];

    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000E6B50;
    v35[3] = &unk_1004BC1B8;
    v36 = v15;
    v30 = cClientCopy;
    v37 = cClientCopy;
    v38 = v18;
    v31 = messageCopy;
    [(MRDNowPlayingPlaybackQueueServer *)self relayPlaybackQueueRequest:v23 withMessage:messageCopy toNowPlayingClient:clientCopy backToXpcClient:v37 completion:v35];
  }

  else
  {
    (v18[2])(v18, 0, 0);
    v30 = cClientCopy;
    v31 = messageCopy;
  }
}

- (unsigned)_cachingPolicyForRequest:(id)request
{
  result = [request cachingPolicy];
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (id)_resolveRequest:(id)request withCapabilities:(unint64_t)capabilities
{
  requestCopy = request;
  v6 = requestCopy;
  v7 = requestCopy;
  if (!capabilities)
  {
    v7 = [requestCopy copy];
    if ([v7 rangeContainsNowPlayingItem])
    {
      if ([v7 location])
      {
        [v7 setLocation:0];
      }

      if (![v7 length])
      {
        goto LABEL_12;
      }

      v8 = 1;
    }

    else
    {
      if ([v7 hasLocation])
      {
        [v7 setLocation:0];
      }

      if (![v7 hasLength])
      {
        goto LABEL_12;
      }

      v8 = 0;
    }

    [v7 setLength:v8];
LABEL_12:
  }

  return v7;
}

@end