@interface IXSRemoteMessageHandler
+ (BOOL)_setHandlerIfNotExistingForIdentifier:(id)identifier messageHandler:(id)handler withError:(id *)error;
+ (id)_currentRemoteConnections;
+ (id)_handlerForIdentifier;
+ (id)_handlerForIdentifier:(id)identifier byRemovingEntry:(BOOL)entry;
+ (id)_sharedHandlerAccessQueue;
+ (void)_addToCurrentConnections:(id)connections;
+ (void)_cancelAndRemoveTrackedRemoteConnection:(id)connection;
+ (void)_handleInstallBeginMessage:(id)message forRemoteConnection:(id)connection;
+ (void)_handleQueryMessage:(id)message forRemoteConnection:(id)connection;
+ (void)_handleRevertStashMessage:(id)message forRemoteConnection:(id)connection;
+ (void)_handleUninstallMessage:(id)message forRemoteConnection:(id)connection;
+ (void)_removeFromCurrentConnections:(id)connections;
+ (void)_sendInstallError:(id)error forRemoteConnection:(id)connection;
+ (void)_sendQueryError:(id)error forRemoteConnection:(id)connection;
+ (void)_sendRevertError:(id)error forRemoteConnection:(id)connection;
+ (void)_sendUninstallError:(id)error forRemoteConnection:(id)connection;
+ (void)handleMessageFromPeer:(id)peer;
- (id)_initWithConnection:(id)connection remoteInstallAction:(id)action;
- (void)remoteInstaller:(id)installer canceledWithReason:(id)reason;
- (void)remoteInstaller:(id)installer completedWithInstallResult:(id)result;
- (void)remoteInstaller:(id)installer didUpdateProgress:(double)progress forPhase:(unsigned __int8)phase overallProgress:(double)overallProgress;
- (void)remoteReverter:(id)reverter canceledWithError:(id)error;
- (void)remoteReverter:(id)reverter completedWithResult:(id)result;
- (void)remoteUninstaller:(id)uninstaller completedWithError:(id)error;
@end

@implementation IXSRemoteMessageHandler

+ (id)_handlerForIdentifier
{
  if (qword_100026BB8 != -1)
  {
    sub_100010ED8();
  }

  v3 = qword_100026BB0;

  return v3;
}

+ (id)_currentRemoteConnections
{
  if (qword_100026BC8 != -1)
  {
    sub_100010EEC();
  }

  v3 = qword_100026BC0;

  return v3;
}

+ (void)_addToCurrentConnections:(id)connections
{
  connectionsCopy = connections;
  _sharedHandlerAccessQueue = [self _sharedHandlerAccessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002D08;
  v7[3] = &unk_100020760;
  v8 = connectionsCopy;
  selfCopy = self;
  v6 = connectionsCopy;
  dispatch_sync(_sharedHandlerAccessQueue, v7);
}

+ (void)_removeFromCurrentConnections:(id)connections
{
  connectionsCopy = connections;
  _sharedHandlerAccessQueue = [self _sharedHandlerAccessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002E10;
  v7[3] = &unk_100020760;
  v8 = connectionsCopy;
  selfCopy = self;
  v6 = connectionsCopy;
  dispatch_sync(_sharedHandlerAccessQueue, v7);
}

+ (id)_sharedHandlerAccessQueue
{
  if (qword_100026BD8 != -1)
  {
    sub_100010F00();
  }

  v3 = qword_100026BD0;

  return v3;
}

+ (BOOL)_setHandlerIfNotExistingForIdentifier:(id)identifier messageHandler:(id)handler withError:(id *)error
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100003084;
  v24 = sub_100003094;
  v25 = 0;
  _sharedHandlerAccessQueue = [self _sharedHandlerAccessQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000309C;
  v15[3] = &unk_1000207A8;
  selfCopy = self;
  v11 = identifierCopy;
  v16 = v11;
  v12 = handlerCopy;
  v17 = v12;
  v18 = &v20;
  dispatch_sync(_sharedHandlerAccessQueue, v15);

  if (error)
  {
    *error = v21[5];
  }

  v13 = v21[5] == 0;

  _Block_object_dispose(&v20, 8);
  return v13;
}

+ (id)_handlerForIdentifier:(id)identifier byRemovingEntry:(BOOL)entry
{
  identifierCopy = identifier;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100003084;
  v20 = sub_100003094;
  v21 = 0;
  _sharedHandlerAccessQueue = [self _sharedHandlerAccessQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100003314;
  v11[3] = &unk_1000207D0;
  v13 = &v16;
  selfCopy = self;
  v12 = identifierCopy;
  entryCopy = entry;
  v8 = identifierCopy;
  dispatch_sync(_sharedHandlerAccessQueue, v11);

  v9 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v9;
}

+ (void)_cancelAndRemoveTrackedRemoteConnection:(id)connection
{
  connectionCopy = connection;
  [connectionCopy cancel];
  [self _removeFromCurrentConnections:connectionCopy];
}

+ (void)_sendInstallError:(id)error forRemoteConnection:(id)connection
{
  connectionCopy = connection;
  v6 = sub_1000053D4(error);
  [connectionCopy sendMessage:v6];
}

+ (void)_handleInstallBeginMessage:(id)message forRemoteConnection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  if (sub_10000609C(messageCopy) == 1)
  {
    v8 = sub_100005B04(messageCopy);
    v9 = sub_100005B10(messageCopy);
    v11 = sub_10000547C(messageCopy);
    if (v11 && v8)
    {
      v12 = sub_10000C504(off_100026A70);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v27 = "+[IXSRemoteMessageHandler _handleInstallBeginMessage:forRemoteConnection:]";
        v28 = 2112;
        v29 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Handling kIXRemoteRequestTypeInstall with options: %@", buf, 0x16u);
      }

      v25 = 0;
      v13 = [[IXSRemoteInstaller alloc] initWithRemoteInstallOptions:v11 xpcAssetStream:v8 assetSize:v9 error:&v25];
      v14 = v25;
      v15 = v14;
      if (v13)
      {
        v23 = v8;
        v16 = [[IXSRemoteMessageHandler alloc] _initWithConnection:connectionCopy remoteInstallAction:v13];
        [(IXSRemoteInstaller *)v13 setDelegate:v16];
        bundleID = [(IXSRemoteInstaller *)v13 bundleID];
        v24 = v15;
        v18 = [self _setHandlerIfNotExistingForIdentifier:bundleID messageHandler:v16 withError:&v24];
        v19 = v24;

        if (v18)
        {
          [(IXSRemoteInstaller *)v13 beginTransferAndInstall];
          v15 = v19;
          v8 = v23;
LABEL_20:

          goto LABEL_21;
        }

        v15 = v19;
        v8 = v23;
        if (!v19)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = 0;
        if (!v14)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      v15 = sub_100006524("+[IXSRemoteMessageHandler _handleInstallBeginMessage:forRemoteConnection:]", 145, @"IXRemoteErrorDomain", 2, 0, 0, @"Failed to create configuration required to install from the incoming message", v10, v22);
      v16 = 0;
      v13 = 0;
      if (!v15)
      {
        goto LABEL_20;
      }
    }

    v21 = sub_10000C504(off_100026A70);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10001104C(v11);
    }

    [self _sendInstallError:v15 forRemoteConnection:connectionCopy];
    goto LABEL_20;
  }

  v20 = sub_10000C504(off_100026A70);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_100010FD0();
  }

  [self _cancelAndRemoveTrackedRemoteConnection:connectionCopy];
LABEL_21:
}

+ (void)_sendUninstallError:(id)error forRemoteConnection:(id)connection
{
  connectionCopy = connection;
  v6 = sub_100005C48(error);
  [connectionCopy sendMessage:v6];
}

+ (void)_sendQueryError:(id)error forRemoteConnection:(id)connection
{
  connectionCopy = connection;
  v6 = sub_100005E98(0, error);
  [connectionCopy sendMessage:v6];
}

+ (void)_handleUninstallMessage:(id)message forRemoteConnection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  if (sub_10000609C(messageCopy) == 1)
  {
    v24 = 0;
    v25 = 0;
    sub_100005B1C(messageCopy, &v25, &v24);
    v8 = v25;
    v9 = v24;
    v11 = v9;
    if (v8)
    {
      if (!v9)
      {
        v20 = sub_10000C504(off_100026A70);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v27 = "+[IXSRemoteMessageHandler _handleUninstallMessage:forRemoteConnection:]";
          v28 = 2112;
          v29 = v8;
          v30 = 2112;
          v31 = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: Handling kIXRemoteRequestTypeUninstall for bundleID %@, path: %@", buf, 0x20u);
        }

        v17 = [[IXSRemoteUninstaller alloc] initWithBundleID:v8];
        v19 = v8;
        v18 = [[IXSRemoteMessageHandler alloc] _initWithConnection:connectionCopy remoteInstallAction:v17];
        v23 = 0;
        v21 = [self _setHandlerIfNotExistingForIdentifier:v19 messageHandler:v18 withError:&v23];
        v16 = v23;
        if (v21)
        {
          [(IXSRemoteUninstaller *)v17 setDelegate:v18];
          [(IXSRemoteUninstaller *)v17 beginUninstall];
LABEL_12:

          goto LABEL_13;
        }

LABEL_10:
        if (v16)
        {
          [self _sendUninstallError:v16 forRemoteConnection:connectionCopy];
        }

        goto LABEL_12;
      }

      v12 = @"Uninstall can only be performed by specifiying only bundleID on embedded platforms";
      v13 = 225;
      v14 = 3;
    }

    else
    {
      v12 = @"Missing bundleID while performing uninstall on an embedded platform";
      v13 = 220;
      v14 = 2;
    }

    v16 = sub_100006524("+[IXSRemoteMessageHandler _handleUninstallMessage:forRemoteConnection:]", v13, @"IXRemoteErrorDomain", v14, 0, 0, v12, v10, v22);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_10;
  }

  v15 = sub_10000C504(off_100026A70);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_1000110FC();
  }

  [self _cancelAndRemoveTrackedRemoteConnection:connectionCopy];
LABEL_13:
}

+ (void)_sendRevertError:(id)error forRemoteConnection:(id)connection
{
  connectionCopy = connection;
  v6 = sub_100006154(0, error);
  [connectionCopy sendMessage:v6];
}

+ (void)_handleRevertStashMessage:(id)message forRemoteConnection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  if (sub_10000609C(messageCopy) == 1)
  {
    v9 = sub_1000060C0(messageCopy);
    if (v9)
    {
      v10 = [[IXSRemoteReverter alloc] initWithBundleID:v9];
      v11 = [[IXSRemoteMessageHandler alloc] _initWithConnection:connectionCopy remoteInstallAction:v10];
      [(IXSRemoteReverter *)v10 setDelegate:v11];
      v16 = 0;
      v12 = [self _setHandlerIfNotExistingForIdentifier:v9 messageHandler:v11 withError:&v16];
      v13 = v16;
      if (v12)
      {
        [(IXSRemoteReverter *)v10 beginRevert];
        goto LABEL_11;
      }
    }

    else
    {
      v13 = sub_100006524("+[IXSRemoteMessageHandler _handleRevertStashMessage:forRemoteConnection:]", 284, @"IXRemoteErrorDomain", 2, 0, 0, @"bundleID unspecified while requesting to perform revert", v8, v15);
      v10 = 0;
      v11 = 0;
    }

    if (!v13)
    {
LABEL_12:

      goto LABEL_13;
    }

    [self _sendRevertError:v13 forRemoteConnection:connectionCopy];
LABEL_11:

    goto LABEL_12;
  }

  v14 = sub_10000C504(off_100026A70);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_100011178();
  }

  [self _cancelAndRemoveTrackedRemoteConnection:connectionCopy];
LABEL_13:
}

+ (void)_handleQueryMessage:(id)message forRemoteConnection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  if (sub_10000609C(messageCopy) == 1)
  {
    v38 = 0;
    v39 = 0;
    v37 = 0;
    sub_100005CF8(messageCopy, &v39, &v38, &v37);
    v8 = v39;
    v9 = v38;
    v10 = v37;
    v12 = v10;
    if (v8)
    {
      if (!(v9 | v10))
      {
        v35 = v10;
        v19 = sub_10000C504(off_100026A70);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          path = [0 path];
          *buf = 136315650;
          v41 = "+[IXSRemoteMessageHandler _handleQueryMessage:forRemoteConnection:]";
          v42 = 2112;
          v43 = v8;
          v44 = 2112;
          v45 = path;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s: Handling kIXRemoteRequestTypeQuery for bundleID %@, path: %@", buf, 0x20u);
        }

        v36 = 0;
        v18 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v8 allowPlaceholder:0 error:&v36];
        v17 = v36;
        if (v18)
        {
          v33 = v8;
          v34 = v9;
          v32 = [IXRemoteInstallResult alloc];
          databaseUUID = [v18 databaseUUID];
          v22 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v18 sequenceNumber]);
          v23 = [v18 URL];
          persistentIdentifier = [v18 persistentIdentifier];
          v25 = [(IXRemoteInstallResult *)v32 initWithDBUUID:databaseUUID dbSequenceNumber:v22 URLOfInstalledApp:v23 persistentIdentifier:persistentIdentifier];

          if (v25)
          {
            v26 = sub_100005E98(v25, 0);
            [connectionCopy sendMessage:v26];

            v9 = v34;
            v12 = v35;
            v8 = v33;
            goto LABEL_11;
          }

          v9 = v34;
          v12 = v35;
          v8 = v33;
        }

        else
        {
          v27 = sub_10000C504(off_100026A70);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_100011270();
          }

          path2 = [0 path];
          v29 = sub_100006524("+[IXSRemoteMessageHandler _handleQueryMessage:forRemoteConnection:]", 355, @"IXRemoteErrorDomain", 5, v17, 0, @"LaunchServices did not have a record for bundleID %@, path : %@", v28, v8);

          v18 = 0;
          v17 = v29;
          v12 = v35;
        }

LABEL_10:
        [self _sendQueryError:v17 forRemoteConnection:connectionCopy];
LABEL_11:

        goto LABEL_12;
      }

      v13 = @"Query must be done by bundle ID and may not specify a path or bundle name on embedded platforms";
      v14 = 342;
      v15 = 3;
    }

    else
    {
      v13 = @"Missing bundleID while performing query on an embedded platform";
      v14 = 339;
      v15 = 2;
    }

    v17 = sub_100006524("+[IXSRemoteMessageHandler _handleQueryMessage:forRemoteConnection:]", v14, @"IXRemoteErrorDomain", v15, 0, 0, v13, v11, v30);
    v18 = 0;
    goto LABEL_10;
  }

  v16 = sub_10000C504(off_100026A70);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_1000111F4();
  }

  [self _cancelAndRemoveTrackedRemoteConnection:connectionCopy];
LABEL_12:
}

+ (void)handleMessageFromPeer:(id)peer
{
  peerCopy = peer;
  objc_initWeak(&location, peerCopy);
  [self _addToCurrentConnections:peerCopy];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000041E4;
  v5[3] = &unk_1000207F8;
  objc_copyWeak(v6, &location);
  v6[1] = self;
  [peerCopy setEventHandler:v5];
  [peerCopy activate];
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

- (id)_initWithConnection:(id)connection remoteInstallAction:(id)action
{
  connectionCopy = connection;
  actionCopy = action;
  v11.receiver = self;
  v11.super_class = IXSRemoteMessageHandler;
  v8 = [(IXSRemoteMessageHandler *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(IXSRemoteMessageHandler *)v8 setRemoteConnection:connectionCopy];
    [(IXSRemoteMessageHandler *)v9 setRemoteInstallAction:actionCopy];
  }

  return v9;
}

- (void)remoteInstaller:(id)installer completedWithInstallResult:(id)result
{
  resultCopy = result;
  installerCopy = installer;
  v7 = objc_opt_class();
  bundleID = [installerCopy bundleID];

  v9 = [v7 _handlerForIdentifier:bundleID byRemovingEntry:1];
  remoteConnection = [v9 remoteConnection];

  if (remoteConnection)
  {
    v11 = sub_1000051B4(resultCopy);
    [remoteConnection sendMessage:v11];
  }

  else
  {
    v11 = sub_10000C504(off_100026A70);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000114C0();
    }
  }
}

- (void)remoteInstaller:(id)installer canceledWithReason:(id)reason
{
  installerCopy = installer;
  reasonCopy = reason;
  v7 = sub_10000C504(off_100026A70);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = [installerCopy bundleID];
    v14 = 136315650;
    v15 = "[IXSRemoteMessageHandler remoteInstaller:canceledWithReason:]";
    v16 = 2112;
    v17 = bundleID;
    v18 = 2112;
    v19 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Failed to install %@ - getting back to the client : %@", &v14, 0x20u);
  }

  v9 = objc_opt_class();
  bundleID2 = [installerCopy bundleID];
  v11 = [v9 _handlerForIdentifier:bundleID2 byRemovingEntry:1];
  remoteConnection = [v11 remoteConnection];

  if (remoteConnection)
  {
    v13 = sub_1000053D4(reasonCopy);
    [remoteConnection sendMessage:v13];
  }

  else
  {
    v13 = sub_10000C504(off_100026A70);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100011540();
    }
  }
}

- (void)remoteInstaller:(id)installer didUpdateProgress:(double)progress forPhase:(unsigned __int8)phase overallProgress:(double)overallProgress
{
  phaseCopy = phase;
  installerCopy = installer;
  v10 = sub_10000C504(off_100026A70);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1000115C0(installerCopy, v10, overallProgress);
  }

  v11 = objc_opt_class();
  bundleID = [installerCopy bundleID];
  v13 = [v11 _handlerForIdentifier:bundleID byRemovingEntry:0];
  remoteConnection = [v13 remoteConnection];

  if (remoteConnection)
  {
    v15 = sub_10000531C(phaseCopy, progress, overallProgress);
    [remoteConnection sendMessage:v15];
  }

  else
  {
    v15 = sub_10000C504(off_100026A70);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10001167C();
    }
  }
}

- (void)remoteUninstaller:(id)uninstaller completedWithError:(id)error
{
  errorCopy = error;
  bundleID = [uninstaller bundleID];
  v7 = [objc_opt_class() _handlerForIdentifier:bundleID byRemovingEntry:1];
  remoteConnection = [v7 remoteConnection];

  if (remoteConnection)
  {
    v9 = sub_100005C48(errorCopy);
    [remoteConnection sendMessage:v9];
  }

  else
  {
    v9 = sub_10000C504(off_100026A70);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000116FC();
    }
  }
}

- (void)remoteReverter:(id)reverter canceledWithError:(id)error
{
  errorCopy = error;
  reverterCopy = reverter;
  v7 = objc_opt_class();
  bundleID = [reverterCopy bundleID];

  v9 = [v7 _handlerForIdentifier:bundleID byRemovingEntry:1];
  remoteConnection = [v9 remoteConnection];

  if (remoteConnection)
  {
    v11 = sub_100006154(0, errorCopy);
    [remoteConnection sendMessage:v11];
  }

  else
  {
    v11 = sub_10000C504(off_100026A70);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10001177C();
    }
  }
}

- (void)remoteReverter:(id)reverter completedWithResult:(id)result
{
  resultCopy = result;
  reverterCopy = reverter;
  v7 = objc_opt_class();
  bundleID = [reverterCopy bundleID];

  v9 = [v7 _handlerForIdentifier:bundleID byRemovingEntry:1];
  remoteConnection = [v9 remoteConnection];

  if (remoteConnection)
  {
    v11 = sub_100006154(resultCopy, 0);
    [remoteConnection sendMessage:v11];
  }

  else
  {
    v11 = sub_10000C504(off_100026A70);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000117FC();
    }
  }
}

@end