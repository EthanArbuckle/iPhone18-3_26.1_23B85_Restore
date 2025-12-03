@interface MRDBrowsableContentServer
- (BOOL)_takeProcessAssertionForClient:(id)client withReason:(id)reason;
- (BOOL)isClient:(id)client allowedNowPlayingAccessFor:(id)for;
- (MRDBrowsableContentServer)init;
- (void)_clearQueuedBeginLoadingMessagesForApp:(id)app;
- (void)_clientDidRegisterCanBeNowPlaying:(id)playing;
- (void)_clientDidUnregisterCanBeNowPlaying:(id)playing;
- (void)_enqueueCompletion:(id)completion forUnavailableDestinationApp:(id)app;
- (void)_handleBeginLoadingBrowsableContentMessage:(id)message fromClient:(id)client;
- (void)_handleBrowsableContentDidFinishLoadingFromClient:(id)client indexPath:(id)path withError:(id)error;
- (void)_handleGetAppsSupportingBrowsableContentAPIsMessage:(id)message fromClient:(id)client;
- (void)_handleGetSupportedBrowsableContentAPIsMessage:(id)message fromClient:(id)client;
- (void)_handleRequestPlaybackInitializationMessage:(id)message fromClient:(id)client;
- (void)_handleSetSupportedBrowsableContentAPIsMessage:(id)message fromClient:(id)client;
- (void)_handleSupportedAPIsDidChangeForClient:(id)client;
- (void)_relayMessage:(id)message fromClient:(id)client toClientWithBundleIDAndReply:(id)reply;
- (void)_scheduleEndProcessAssertionForClient:(id)client;
- (void)_sendInitiatePlaybackMessage:(id)message;
- (void)_sendQueuedBeginLoadingMessagesForAvailableApp:(id)app;
- (void)handleXPCMessage:(id)message fromClient:(id)client;
@end

@implementation MRDBrowsableContentServer

- (MRDBrowsableContentServer)init
{
  v14.receiver = self;
  v14.super_class = MRDBrowsableContentServer;
  v2 = [(MRDBrowsableContentServer *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    queuedInitiatePlaybackMessages = v2->_queuedInitiatePlaybackMessages;
    v2->_queuedInitiatePlaybackMessages = v3;

    v5 = objc_alloc_init(NSMutableArray);
    queuedRelayableMessages = v2->_queuedRelayableMessages;
    v2->_queuedRelayableMessages = v5;

    v7 = objc_alloc_init(MRDBrowsableContentAPICoordinator);
    apiCoordinator = v2->_apiCoordinator;
    v2->_apiCoordinator = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    queuedBeginLoadingBlocks = v2->_queuedBeginLoadingBlocks;
    v2->_queuedBeginLoadingBlocks = v9;

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v2 selector:"_clientDidRegisterCanBeNowPlaying:" name:kMRMediaRemoteNowPlayingApplicationDidRegisterCanBeNowPlaying object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v2 selector:"_clientDidUnregisterCanBeNowPlaying:" name:kMRMediaRemoteNowPlayingApplicationDidUnregisterCanBeNowPlaying object:0];
  }

  return v2;
}

- (void)handleXPCMessage:(id)message fromClient:(id)client
{
  xdict = message;
  clientCopy = client;
  uint64 = xpc_dictionary_get_uint64(xdict, "MRXPC_MESSAGE_ID_KEY");
  if (uint64 > 0x500000000000005)
  {
    if (uint64 <= 0x500000000000007)
    {
      if (uint64 == 0x500000000000006)
      {
        [(MRDBrowsableContentServer *)self _handleRequestPlaybackInitializationMessage:xdict fromClient:clientCopy];
      }

      else
      {
        [(MRDBrowsableContentServer *)self _handleGetSupportedBrowsableContentAPIsMessage:xdict fromClient:clientCopy];
      }
    }

    else
    {
      switch(uint64)
      {
        case 0x500000000000008:
          [(MRDBrowsableContentServer *)self _handleSetSupportedBrowsableContentAPIsMessage:xdict fromClient:clientCopy];
          break;
        case 0x500000000000009:
          [(MRDBrowsableContentServer *)self _handleGetAppsSupportingBrowsableContentAPIsMessage:xdict fromClient:clientCopy];
          break;
        case 0x50000000000000ALL:
          goto LABEL_3;
      }
    }
  }

  else
  {
    if ((uint64 - 0x500000000000002) < 4)
    {
LABEL_3:
      v8 = MRCreateStringFromXPCMessage();
      [(MRDBrowsableContentServer *)self _relayMessage:xdict fromClient:clientCopy toClientWithBundleIDAndReply:v8];

      goto LABEL_4;
    }

    if (uint64 == 0x500000000000001)
    {
      [(MRDBrowsableContentServer *)self _handleBeginLoadingBrowsableContentMessage:xdict fromClient:clientCopy];
    }
  }

LABEL_4:
}

- (void)_handleBeginLoadingBrowsableContentMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v8 = MRCreateStringFromXPCMessage();
  v9 = +[MRDMediaRemoteServer server];
  v10 = v9;
  if (v8)
  {
    [v9 clientForBundleIdentifier:v8];
  }

  else
  {
    [v9 localNowPlayingClient];
  }
  v11 = ;

  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100094CE8;
  v20 = &unk_1004B9708;
  v21 = messageCopy;
  selfCopy = self;
  v12 = messageCopy;
  v13 = objc_retainBlock(&v17);
  if (v11 && [v11 canBeNowPlaying])
  {
    bundleIdentifier = [v11 bundleIdentifier];
    [(MRDBrowsableContentServer *)self _clearQueuedBeginLoadingMessagesForApp:bundleIdentifier];

    (v13[2])(v13, v11);
  }

  else
  {
    bundleIdentifier2 = [v11 bundleIdentifier];

    if (bundleIdentifier2)
    {
      Error = [v11 bundleIdentifier];
      [(MRDBrowsableContentServer *)self _enqueueCompletion:v13 forUnavailableDestinationApp:Error];
    }

    else
    {
      Error = MRMediaRemoteCreateError();
      [(MRDBrowsableContentServer *)self _handleBrowsableContentDidFinishLoadingFromClient:clientCopy indexPath:0 withError:0, Error];
    }
  }
}

- (void)_enqueueCompletion:(id)completion forUnavailableDestinationApp:(id)app
{
  appCopy = app;
  completionCopy = completion;
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = appCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Client %@ not available. Enqueuing beginLoading message", &v12, 0xCu);
  }

  queuedBeginLoadingBlocks = self->_queuedBeginLoadingBlocks;
  v10 = [completionCopy copy];

  v11 = objc_retainBlock(v10);
  [(NSMutableDictionary *)queuedBeginLoadingBlocks setObject:v11 forKey:appCopy];
}

- (void)_sendQueuedBeginLoadingMessagesForAvailableApp:(id)app
{
  appCopy = app;
  v5 = [(NSMutableDictionary *)self->_queuedBeginLoadingBlocks objectForKey:appCopy];
  if (v5)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = appCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Client %@ now available. Dequeuing beginLoading message", &v10, 0xCu);
    }

    v7 = +[MRDMediaRemoteServer server];
    v8 = [v7 clientForBundleIdentifier:appCopy];

    if (v8)
    {
      (v5)[2](v5, v8);
    }

    else
    {
      v9 = _MRLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = appCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Client %@ not available even though it can be now playing app", &v10, 0xCu);
      }
    }
  }

  [(MRDBrowsableContentServer *)self _clearQueuedBeginLoadingMessagesForApp:appCopy];
}

- (void)_clearQueuedBeginLoadingMessagesForApp:(id)app
{
  appCopy = app;
  v5 = [(NSMutableDictionary *)self->_queuedBeginLoadingBlocks objectForKey:appCopy];

  if (v5)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = appCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Clearing beginLoading message for client %@", &v7, 0xCu);
    }

    [(NSMutableDictionary *)self->_queuedBeginLoadingBlocks removeObjectForKey:appCopy];
  }
}

- (void)_clientDidRegisterCanBeNowPlaying:(id)playing
{
  userInfo = [playing userInfo];
  v7 = MRGetPlayerPathFromUserInfo();

  if ([v7 isLocal])
  {
    client = [v7 client];
    bundleIdentifier = [client bundleIdentifier];
    [(MRDBrowsableContentServer *)self _sendQueuedBeginLoadingMessagesForAvailableApp:bundleIdentifier];
  }
}

- (void)_clientDidUnregisterCanBeNowPlaying:(id)playing
{
  userInfo = [playing userInfo];
  v7 = MRGetPlayerPathFromUserInfo();

  if ([v7 isLocal])
  {
    client = [v7 client];
    bundleIdentifier = [client bundleIdentifier];
    [(MRDBrowsableContentServer *)self _clearQueuedBeginLoadingMessagesForApp:bundleIdentifier];
  }
}

- (void)_handleRequestPlaybackInitializationMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v8 = MRCreateDataFromXPCMessage();
  v9 = MRCreateStringFromXPCMessage();
  if (!v9)
  {
    v10 = +[MRDMediaRemoteServer server];
    localNowPlayingClient = [v10 localNowPlayingClient];

    bundleIdentifier = [localNowPlayingClient bundleIdentifier];
    v9 = [bundleIdentifier copy];
  }

  v13 = [[MRDInitiatePlaybackMessage alloc] initWithBundleID:v9 indexPathData:v8];

  bundleID = [(MRDInitiatePlaybackMessage *)v13 bundleID];
  if ([(MRDBrowsableContentServer *)self isClient:clientCopy allowedNowPlayingAccessFor:bundleID])
  {
    if (bundleID)
    {
      if (sub_10019D8DC(bundleID))
      {
        [(MRDBrowsableContentServer *)self _sendInitiatePlaybackMessage:v13];
      }

      else
      {
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100095644;
        v18[3] = &unk_1004B8690;
        v18[4] = self;
        v19 = v13;
        v20 = bundleID;
        sub_10019DA18(v20, 0, v18);
      }
    }

    else
    {
      v16 = _MRLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Warning: cannot handle initiate playback message without a bundle ID.", v17, 2u);
      }
    }
  }

  else
  {
    v15 = _MRLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1003A64EC(bundleID, clientCopy);
    }

    sub_10000F9E4(messageCopy, 3u);
  }
}

- (void)_handleGetSupportedBrowsableContentAPIsMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v6 = MRCreateStringFromXPCMessage();
  sub_10000BEE0(messageCopy, "MRXPC_CONTENT_API_MASK_KEY", 1, [(MRDBrowsableContentAPICoordinator *)self->_apiCoordinator supportedAPIsForApplication:v6], 0);
}

- (void)_handleSetSupportedBrowsableContentAPIsMessage:(id)message fromClient:(id)client
{
  clientCopy = client;
  messageCopy = message;
  bundleIdentifier = [clientCopy bundleIdentifier];
  [(MRDBrowsableContentAPICoordinator *)self->_apiCoordinator setSupportedAPIs:xpc_dictionary_get_uint64(messageCopy forApplication:"MRXPC_CONTENT_API_MASK_KEY"), bundleIdentifier];
  sub_10000F9E4(messageCopy, 0);

  [(MRDBrowsableContentServer *)self _handleSupportedAPIsDidChangeForClient:clientCopy];
}

- (void)_handleGetAppsSupportingBrowsableContentAPIsMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v7 = [(MRDBrowsableContentAPICoordinator *)self->_apiCoordinator applicationsSupportingAPIs:xpc_dictionary_get_uint64(messageCopy, "MRXPC_CONTENT_API_MASK_KEY")];
  v6 = [NSPropertyListSerialization dataWithPropertyList:v7 format:200 options:0 error:0];
  sub_10001673C(messageCopy, "MRXPC_BUNDLE_ID_ARRAY_DATA_KEY", v6, 0);
}

- (BOOL)isClient:(id)client allowedNowPlayingAccessFor:(id)for
{
  clientCopy = client;
  forCopy = for;
  if ([clientCopy isEntitledFor:512] & 1) != 0 || (objc_msgSend(clientCopy, "isEntitledFor:", 1024))
  {
    v7 = 1;
  }

  else
  {
    bundleIdentifier = [clientCopy bundleIdentifier];
    v7 = [bundleIdentifier isEqual:forCopy];
  }

  return v7;
}

- (void)_relayMessage:(id)message fromClient:(id)client toClientWithBundleIDAndReply:(id)reply
{
  messageCopy = message;
  clientCopy = client;
  replyCopy = reply;
  if ([(MRDBrowsableContentServer *)self isClient:clientCopy allowedNowPlayingAccessFor:replyCopy])
  {
    v11 = +[MRDMediaRemoteServer server];
    v12 = v11;
    if (replyCopy)
    {
      [v11 clientForBundleIdentifier:replyCopy];
    }

    else
    {
      [v11 localNowPlayingClient];
    }
    v14 = ;

    if (v14)
    {
      if ([(MRDBrowsableContentServer *)self _messageRequiresMediaServerBlessing:messageCopy])
      {
        bundleIdentifier = [v14 bundleIdentifier];
        v16 = sub_10019FC4C(bundleIdentifier);

        if ((v16 & 1) == 0)
        {
          v17 = _MRLogForCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v29 = v14;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Error preparing client %{public}@ for browsable content message relay.", buf, 0xCu);
          }
        }

        v18 = _MRLogForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v29 = v14;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Beginning task assertion for client %@ in preparation for playback initiated by the browsable content system.", buf, 0xCu);
        }

        v19 = [MRDTaskAssertion alloc];
        v20 = [v14 pid];
        bundleIdentifier2 = [v14 bundleIdentifier];
        v22 = [(MRDTaskAssertion *)v19 initWithType:3 pid:v20 bundleID:bundleIdentifier2 name:@"BrowsableContent playback initiated"];

        [(MRDTaskAssertion *)v22 invalidateInDuration:5.0];
      }

      [v14 relayXPCMessage:messageCopy andReply:1];
    }

    else
    {
      v23 = [(MRDBrowsableContentServer *)self _messageCanLaunchApp:messageCopy];
      if (replyCopy && v23)
      {
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_100095CD8;
        v25[3] = &unk_1004B8690;
        v25[4] = self;
        v26 = messageCopy;
        v27 = replyCopy;
        sub_10019DA18(v27, 0, v25);
      }

      else
      {
        v24 = _MRLogForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_1003A658C(replyCopy, v24);
        }

        sub_10000F9E4(messageCopy, 4u);
      }
    }
  }

  else
  {
    v13 = _MRLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1003A64EC(replyCopy, clientCopy);
    }

    sub_10000F9E4(messageCopy, 3u);
  }
}

- (void)_sendInitiatePlaybackMessage:(id)message
{
  messageCopy = message;
  bundleID = [messageCopy bundleID];
  if ((sub_10019FC4C(bundleID) & 1) == 0)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = bundleID;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Error preparing client %@ for playback initialization.", &v14, 0xCu);
    }
  }

  v7 = +[MRDMediaRemoteServer server];
  v8 = [v7 clientForBundleIdentifier:bundleID];

  if (v8)
  {
    [(MRDBrowsableContentServer *)self _takeProcessAssertionForClient:v8 withReason:@"Sending initiatePlaybackMessage"];
    indexPathData = [messageCopy indexPathData];
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "MRXPC_MESSAGE_ID_KEY", 0x500000000000006uLL);
    bundleID2 = [messageCopy bundleID];
    xpc_dictionary_set_string(v10, "MRXPC_BUNDLE_ID_KEY", [bundleID2 UTF8String]);

    xpc_dictionary_set_data(v10, "MRXPC_INDEXPATH_DATA_KEY", [indexPathData bytes], [indexPathData length]);
    connection = [v8 connection];
    v12Connection = [connection connection];
    xpc_connection_send_message(v12Connection, v10);

    [(MRDBrowsableContentServer *)self _scheduleEndProcessAssertionForClient:v8];
  }

  else
  {
    indexPathData = _MRLogForCategory();
    if (os_log_type_enabled(indexPathData, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = bundleID;
      _os_log_impl(&_mh_execute_header, indexPathData, OS_LOG_TYPE_DEFAULT, "Warning: no client found for bundle ID %@. Dropping initiate playback message.", &v14, 0xCu);
    }
  }
}

- (void)_handleBrowsableContentDidFinishLoadingFromClient:(id)client indexPath:(id)path withError:(id)error
{
  var1 = path.var1;
  var0 = path.var0;
  clientCopy = client;
  errorCopy = error;
  var1 = [[NSData alloc] initWithBytes:var0 length:8 * var1];
  v19 = kMRMediaRemoteIndexPathDataUserInfoKey;
  v20 = var1;
  v11 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v12 = [v11 mutableCopy];

  if (errorCopy)
  {
    localizedDescription = [errorCopy localizedDescription];
    if (localizedDescription)
    {
      [v12 setObject:localizedDescription forKey:kMRMediaRemoteBrowsableContentErrorLocalizedDescriptionKey];
    }

    domain = [errorCopy domain];
    if (domain)
    {
      [v12 setObject:domain forKey:kMRMediaRemoteBrowsableContentErrorDomainKey];
      v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
      [v12 setObject:v15 forKey:kMRMediaRemoteBrowsableContentErrorCodeKey];
    }
  }

  bundleIdentifier = [clientCopy bundleIdentifier];

  if (bundleIdentifier)
  {
    bundleIdentifier2 = [clientCopy bundleIdentifier];
    [v12 setObject:bundleIdentifier2 forKey:kMRMediaRemoteBrowsableContentBundleIdentifierUserInfoKey];
  }

  v18 = +[MRDMediaRemoteServer server];
  [v18 postClientNotificationNamed:kMRMediaRemoteApplicationFinishedLoadingContentNotification userInfo:v12];
}

- (void)_handleSupportedAPIsDidChangeForClient:(id)client
{
  clientCopy = client;
  bundleIdentifier = [clientCopy bundleIdentifier];
  v5 = [(NSMutableArray *)self->_queuedInitiatePlaybackMessages copy];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v33;
    *&v7 = 138412546;
    v25 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        bundleID = [v11 bundleID];
        v13 = [bundleID isEqualToString:bundleIdentifier];

        if (v13)
        {
          v14 = _MRLogForCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v25;
            v38 = v11;
            v39 = 2112;
            v40 = clientCopy;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending queued initiate playback message %@ to client %@.", buf, 0x16u);
          }

          [(MRDBrowsableContentServer *)self _sendInitiatePlaybackMessage:v11];
          [(NSMutableArray *)self->_queuedInitiatePlaybackMessages removeObject:v11];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v8);
  }

  v15 = [(NSMutableArray *)self->_queuedRelayableMessages copy];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v29;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v28 + 1) + 8 * j);
        v22 = MRCreateStringFromXPCMessage();
        if ([v22 isEqualToString:bundleIdentifier])
        {
          v23 = _MRLogForCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v38 = v21;
            v39 = 2112;
            v40 = bundleIdentifier;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Sending queued relayable message %@ to client %@", buf, 0x16u);
          }

          [(MRDBrowsableContentServer *)self _relayMessage:v21 fromClient:clientCopy toClientWithBundleIDAndReply:bundleIdentifier];
          [(NSMutableArray *)self->_queuedRelayableMessages removeObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v18);
  }

  v24 = +[MRDMediaRemoteServer server];
  [v24 postClientNotificationNamed:kMRMediaRemoteBrowsableContentAPIChangedNotification userInfo:0];
}

- (BOOL)_takeProcessAssertionForClient:(id)client withReason:(id)reason
{
  clientCopy = client;
  reasonCopy = reason;
  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [clientCopy bundleIdentifier];
    v17 = 138412290;
    v18 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Browsable Content Server: Taking process assertion for %@.", &v17, 0xCu);
  }

  v9 = [MRDTaskAssertion alloc];
  v10 = [clientCopy pid];
  bundleIdentifier2 = [clientCopy bundleIdentifier];
  v12 = [(MRDTaskAssertion *)v9 initWithType:3 pid:v10 bundleID:bundleIdentifier2 name:reasonCopy];

  isValid = [(MRDTaskAssertion *)v12 isValid];
  if (isValid)
  {
    [clientCopy setCurrentTaskAssertion:v12];
  }

  else
  {
    v14 = _MRLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier3 = [clientCopy bundleIdentifier];
      v17 = 138412290;
      v18 = bundleIdentifier3;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Unable to take task assertion for %@.", &v17, 0xCu);
    }
  }

  return isValid;
}

- (void)_scheduleEndProcessAssertionForClient:(id)client
{
  currentTaskAssertion = [client currentTaskAssertion];
  [currentTaskAssertion invalidateInDuration:10.0];
}

@end