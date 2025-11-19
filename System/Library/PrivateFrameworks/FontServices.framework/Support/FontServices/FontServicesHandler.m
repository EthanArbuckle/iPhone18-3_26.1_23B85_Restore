@interface FontServicesHandler
- (FontServicesHandler)initWithFontServivesDaemon:(id)a3;
- (void)addWebContentProcessConnection:(id)a3;
- (void)checkin:(id)a3 reply:(id)a4;
- (void)checkinForFontPicker:(id)a3;
- (void)checkinForWebKitProcess:(id)a3 reply:(id)a4;
- (void)dealloc;
- (void)fontChanged:(id)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation FontServicesHandler

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  FSLog_Debug();
  v4.receiver = self;
  v4.super_class = FontServicesHandler;
  [(FontServicesHandler *)&v4 dealloc];
}

- (FontServicesHandler)initWithFontServivesDaemon:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FontServicesHandler;
  v6 = [(FontServicesHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_server, a3);
  }

  return v7;
}

- (void)checkin:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22 = 0u;
  v23 = 0u;
  v8 = +[NSXPCConnection currentConnection];
  v9 = v8;
  if (v8)
  {
    [v8 auditToken];
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  server = self->_server;
  v21 = 0;
  v19 = v22;
  v20 = v23;
  [(FontServicesDaemon *)server capabilitiesFor:&v19 allowEnumerate:&self->_hasEnumerationEntitlement allowUserFonts:&self->_hasFontAccessEntitlement allowInstallation:&self->_isFontProvider andIdentifier:&v21];
  v11 = v21;
  v12 = v21;
  if ([(FontServicesHandler *)self isProcessIdentifierToIgnore:v12])
  {
    v7[2](v7, 0);
  }

  else
  {
    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:self selector:"fontChanged:" name:@"fontChanged" object:0];

    v14 = self->_server;
    hasEnumerationEntitlement = self->_hasEnumerationEntitlement;
    hasFontAccessEntitlement = self->_hasFontAccessEntitlement;
    isFontProvider = self->_isFontProvider;
    v19 = v22;
    v20 = v23;
    v18[0] = v22;
    v18[1] = v23;
    [(FontServicesDaemon *)v14 setupUserInstalledFontsFor:&v19 withCapabilitiesFor:v18 hasEnumeration:hasEnumerationEntitlement hasFontAccess:hasFontAccessEntitlement isFontProvider:isFontProvider processIdentifier:v12 options:v6 compat:&self->_inCompatMode reply:v7];
    FSLog_Debug();
    if (self->_isFontProvider)
    {
      objc_storeStrong(&self->_processIdentifier, v11);
    }
  }
}

- (void)checkinForFontPicker:(id)a3
{
  v4 = a3;
  if ([(FontServicesDaemon *)self->_server isCurrentConnectionFontPicker])
  {
    v12 = 0u;
    v13 = 0u;
    v5 = +[NSXPCConnection currentConnection];
    v6 = v5;
    if (v5)
    {
      [v5 auditToken];
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    v7 = [(FontServicesDaemon *)self->_server mainHandlerQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000A9F4;
    v8[3] = &unk_100018C98;
    v8[4] = self;
    v10 = v12;
    v11 = v13;
    v9 = v4;
    dispatch_sync(v7, v8);
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (void)fontChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"added"];
  v61 = [v6 BOOLValue];

  v7 = [v5 objectForKey:@"kind"];
  v8 = [v7 intValue];

  v56 = v5;
  v57 = v4;
  if (v8)
  {
    v9 = [(NSXPCConnection *)self->_clientConnection remoteObjectProxyWithErrorHandler:&stru_100018CD8];
    v10 = objc_opt_new();
    v11 = objc_opt_new();
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v12 = [v5 objectForKey:@"urls"];
    v13 = [v12 countByEnumeratingWithState:&v65 objects:v78 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v66;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v66 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v65 + 1) + 8 * i);
          v18 = [NSURL URLWithString:v17];
          if (v18)
          {
            [v11 addObject:v17];
            v19 = [v18 path];
            [v10 addObject:v19];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v65 objects:v78 count:16];
      }

      while (v14);
    }

    if (v61)
    {
      v20 = +[FSUserFontManager profileFontsInfo];
      v21 = objc_opt_new();
      v62[0] = _NSConcreteStackBlock;
      v62[1] = 3221225472;
      v62[2] = sub_10000B294;
      v62[3] = &unk_100018B90;
      v10 = v10;
      v63 = v10;
      v64 = v21;
      v22 = v21;
      [v20 enumerateKeysAndObjectsUsingBlock:v62];
      v76 = @"fontsInfo";
      v77 = v22;
      v23 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
      v24 = v11;
      [v9 fontAddedInfo:v23 addedURLStrings:v11 removedURLStrings:0];
    }

    else
    {
      v24 = v11;
      [v9 fontAddedInfo:0 addedURLStrings:0 removedURLStrings:v11];
    }

    v5 = v56;
    v4 = v57;
LABEL_60:

    goto LABEL_61;
  }

  if (self->_hasEnumerationEntitlement || self->_isFontProvider || self->_hasFontAccessEntitlement || !(v61 & 1 | !self->_inCompatMode))
  {
    v58 = self;
    v55 = objc_opt_new();
    v10 = objc_opt_new();
    v59 = objc_opt_new();
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    obj = [v5 objectForKey:@"urls"];
    v25 = [obj countByEnumeratingWithState:&v72 objects:v79 count:16];
    if (!v25)
    {
      v24 = 0;
LABEL_44:

      if ([v10 count])
      {
        v5 = v56;
        v4 = v57;
        v9 = v55;
        if (v61)
        {
          clientConnection = v58->_clientConnection;
          server = v58->_server;
          if (clientConnection)
          {
            [(NSXPCConnection *)clientConnection auditToken];
          }

          else
          {
            v70 = 0u;
            v71 = 0u;
          }

          hasFontAccessEntitlement = v58->_hasFontAccessEntitlement;
          hasEnumerationEntitlement = v58->_hasEnumerationEntitlement;
          isFontProvider = v58->_isFontProvider;
          processIdentifier = v58->_processIdentifier;
          v69 = 0;
          v48 = [(FontServicesDaemon *)server fontInfoForAuditToken:&v70 withFontAccess:hasFontAccessEntitlement enumuration:hasEnumerationEntitlement installation:isFontProvider identifier:processIdentifier andFileFilters:v10 foundFontDirectoryName:&v69];
          v49 = v69;
          [v55 setObject:v48 forKey:@"fontsInfo"];
          if (v49)
          {
            v50 = v58->_clientConnection;
            v51 = v58->_server;
            if (v50)
            {
              [(NSXPCConnection *)v50 auditToken];
            }

            else
            {
              v70 = 0u;
              v71 = 0u;
            }

            v52 = [(FontServicesDaemon *)v51 sandboxExtensionForProvider:&v70 withDirectoryName:v49];
            if (v52)
            {
              [v55 setObject:v52 forKey:@"extension.provider"];
            }
          }

          v43 = 0;
          v42 = v59;
        }

        else
        {
          v42 = 0;
          v43 = v59;
        }

        v53 = [(NSXPCConnection *)v58->_clientConnection remoteObjectProxyWithErrorHandler:&stru_100018CB8, v54];
        [v53 fontAddedInfo:v55 addedURLStrings:v42 removedURLStrings:v43];
      }

      else
      {

        v5 = v56;
        v4 = v57;
        v9 = v55;
      }

      goto LABEL_60;
    }

    v26 = v25;
    v24 = 0;
    v27 = *v73;
    v28 = self;
LABEL_19:
    v29 = 0;
    while (1)
    {
      if (*v73 != v27)
      {
        objc_enumerationMutation(obj);
      }

      v30 = *(*(&v72 + 1) + 8 * v29);
      v31 = [NSURL URLWithString:v30, v54];
      v32 = v31;
      if (!v31)
      {
        goto LABEL_29;
      }

      v33 = [v31 path];
      v35 = v33;
      if (v61)
      {
        if ((sub_10000BAF8(v33, v34) & 1) == 0 && !sub_10000BB04(v35))
        {
          v54 = v35;
          FSLog_Error();
          goto LABEL_28;
        }

        if (!v28->_hasEnumerationEntitlement)
        {
          if (!v28->_isFontProvider)
          {
            goto LABEL_64;
          }

          if (!v24)
          {
            v24 = [FSUserFontManager directoryNameFromIdentifier:v28->_processIdentifier];
          }

          v36 = [v32 URLByDeletingLastPathComponent];
          [v36 lastPathComponent];
          v38 = v37 = v24;

          LOBYTE(v36) = [v38 isEqualToString:v37];
          v24 = v37;
          v28 = v58;
          if ((v36 & 1) == 0)
          {
LABEL_64:
            if (!v28->_hasFontAccessEntitlement || !sub_10000BB04(v35))
            {
              goto LABEL_28;
            }
          }
        }
      }

      [v59 addObject:v30];
      [v10 addObject:v35];
LABEL_28:

LABEL_29:
      if (v26 == ++v29)
      {
        v39 = [obj countByEnumeratingWithState:&v72 objects:v79 count:16];
        v26 = v39;
        if (!v39)
        {
          goto LABEL_44;
        }

        goto LABEL_19;
      }
    }
  }

LABEL_61:
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  [v4 selector];
  server = self->_server;
  if (objc_opt_respondsToSelector())
  {
    [v4 invokeWithTarget:self->_server];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = FontServicesHandler;
    [(FontServicesHandler *)&v6 forwardInvocation:v4];
  }
}

- (void)addWebContentProcessConnection:(id)a3
{
  v7 = a3;
  if (self->_webcontentProcessConnections)
  {
    v4 = objc_opt_new();
    webcontentProcessConnections = self->_webcontentProcessConnections;
    self->_webcontentProcessConnections = v4;

    v6 = self->_webcontentProcessConnections;
  }

  else
  {
    v6 = 0;
  }

  [(NSMutableArray *)v6 addObject:v7];
}

- (void)checkinForWebKitProcess:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30 = 0u;
  v31 = 0u;
  v8 = +[NSXPCConnection currentConnection];
  v9 = v8;
  if (v8)
  {
    [v8 auditToken];
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v10 = [[NSXPCConnection alloc] initWithListenerEndpoint:v6];
  [(FontServicesHandler *)self addWebContentProcessConnection:v10];
  objc_initWeak(&location, v10);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10000B684;
  v27[3] = &unk_100018D00;
  objc_copyWeak(&v28, &location);
  v27[4] = self;
  [v10 setInvalidationHandler:v27];
  [v10 setInterruptionHandler:&stru_100018D20];
  v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FontServicesWebKitSupportServerProtocol];
  [v10 setRemoteObjectInterface:v11];
  [v10 resume];
  v12 = [v10 remoteObjectProxyWithErrorHandler:&stru_100018D40];
  NSLog(@"FSWebKit calling ping2");
  v13 = *&self->_hasEnumerationEntitlement;
  isFontProvider = self->_isFontProvider;
  v15 = self->_processIdentifier;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000B74C;
  v19[3] = &unk_100018D90;
  v19[4] = self;
  v23 = v30;
  v24 = v31;
  v25 = v13;
  v26 = isFontProvider;
  v16 = v15;
  v20 = v16;
  v17 = v12;
  v21 = v17;
  v18 = v7;
  v22 = v18;
  [v17 ping:v19];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

@end