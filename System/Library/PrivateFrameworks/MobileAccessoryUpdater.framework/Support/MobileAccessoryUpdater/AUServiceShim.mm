@interface AUServiceShim
- (AUServiceShim)initWithDeviceClass:(id)a3 delegate:(id)delegate info:(id *)a5 options:(id)a6;
- (void)applyFirmwareWithOptions:(id)a3;
- (void)bootstrapWithOptions:(id)a3;
- (void)closeXPCConnection;
- (void)connectToServer;
- (void)dealloc;
- (void)didApply:(BOOL)a3 info:(id)a4 error:(id)a5;
- (void)didBootstrap:(BOOL)a3 info:(id)a4 error:(id)a5;
- (void)didDownload:(BOOL)a3 info:(id)a4 error:(id)a5;
- (void)didFinish:(BOOL)a3 info:(id)a4 error:(id)a5;
- (void)didPrepare:(BOOL)a3 info:(id)a4 error:(id)a5;
- (void)downloadFirmwareWithOptions:(id)a3;
- (void)finishWithOptions:(id)a3;
- (void)handleServiceDisconnect;
- (void)issueNotification:(id)a3;
- (void)personalizationResponse:(id)a3 response:(id)a4 status:(id)a5;
- (void)prepareFirmwareWithOptions:(id)a3;
- (void)queryDeviceList:(id *)a3;
@end

@implementation AUServiceShim

- (AUServiceShim)initWithDeviceClass:(id)a3 delegate:(id)delegate info:(id *)a5 options:(id)a6
{
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3052000000;
  v32 = sub_100006AF8;
  v33 = sub_100006B08;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v10 = objc_opt_class();
  [delegate log:7 format:{@"Initializing Plugin %@ for DeviceClass %@ with options %@", NSStringFromClass(v10), a3, a6}];
  v24.receiver = self;
  v24.super_class = AUServiceShim;
  v11 = [(AUServiceShim *)&v24 init];
  v12 = v11;
  v13 = @"Init Failure";
  v14 = 7;
  if (!delegate || !a3 || !v11)
  {
    goto LABEL_21;
  }

  v11->_deviceClass = a3;
  v11->_delegate = delegate;
  v11->_currentState = 2;
  v11->_inTeardown = 0;
  v11->_queue = dispatch_queue_create([a3 UTF8String], 0);
  v15 = [a6 objectForKey:@"AUServiceName"];
  v12->_xpcServiceName = v15;
  if (!v15)
  {
    v13 = @"Couldn't find XPCService name in options";
LABEL_20:
    delegate = v12->_delegate;
    v14 = 3;
LABEL_21:
    [delegate log:v14 format:v13];
    goto LABEL_18;
  }

  if (*(v26 + 24) == 1)
  {
    v16 = -4;
    while (1)
    {
      v17 = v16;
      [(AUServiceShim *)v12 connectToServer];
      xpcServiceConn = v12->_xpcServiceConn;
      if (!xpcServiceConn)
      {
        break;
      }

      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100006B14;
      v23[3] = &unk_1000812C0;
      v23[4] = v12;
      v23[5] = a3;
      v23[6] = &v35;
      v23[7] = &v25;
      v19 = [(NSXPCConnection *)xpcServiceConn synchronousRemoteObjectProxyWithErrorHandler:v23];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100006B94;
      v22[3] = &unk_1000812E8;
      v22[6] = &v35;
      v22[7] = &v25;
      v22[8] = &v29;
      v22[4] = v12;
      v22[5] = a3;
      [v19 deviceClassAttached:a3 options:a6 withReply:v22];
      if (*(v26 + 24) == 1)
      {
        [(AUServiceShim *)v12 closeXPCConnection];
        [NSThread sleepForTimeInterval:0.5];
      }

      if ((v36[3] & 1) == 0)
      {
        [(AUServiceShim *)v12 closeXPCConnection];
        goto LABEL_15;
      }

      if (*(v26 + 24) == 1)
      {
        v16 = v17 + 1;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    v13 = @"Could not connect to XPCService";
    goto LABEL_20;
  }

LABEL_15:
  if (v36[3])
  {
    *a5 = v30[5];
  }

  else
  {

    v12 = 0;
  }

LABEL_18:
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);
  return v12;
}

- (void)handleServiceDisconnect
{
  currentState = self->_currentState;
  delegate = self->_delegate;
  if (currentState > 7)
  {
    switch(currentState)
    {
      case 8:

        [(FudPluginDelegate *)delegate didPrepare:0 info:0 error:0];
        break;
      case 9:

        [(FudPluginDelegate *)delegate didApply:0 info:0 error:0];
        break;
      case 0xA:

        [(FudPluginDelegate *)delegate didFinish:0 info:0 error:0];
        break;
      default:
        goto LABEL_20;
    }
  }

  else
  {
    switch(currentState)
    {
      case 3:

        [(FudPluginDelegate *)delegate didBootstrap:0 info:0 error:0];
        break;
      case 5:

        [(FudPluginDelegate *)delegate didFind:0 info:0 updateAvailable:0 needsDownload:0 error:0];
        break;
      case 7:

        [(FudPluginDelegate *)delegate didDownload:0 info:0 error:0];
        return;
      default:
LABEL_20:
        [(FudPluginDelegate *)delegate log:3 format:@"XPC disconnected during unknown state: %d", currentState];
        return;
    }
  }
}

- (void)connectToServer
{
  if (!self->_xpcServiceConn)
  {
    v3 = [[NSXPCConnection alloc] initWithServiceName:self->_xpcServiceName];
    self->_xpcServiceConn = v3;
    if (v3)
    {
      v4 = objc_opt_class();
      v5 = objc_opt_class();
      v6 = [NSSet setWithObjects:v4, v5, objc_opt_class(), 0];
      [(NSXPCConnection *)self->_xpcServiceConn setRemoteObjectInterface:[NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AUServiceProtocol]];
      [(NSXPCInterface *)[(NSXPCConnection *)self->_xpcServiceConn remoteObjectInterface] setClasses:v6 forSelector:"queryDeviceList:" argumentIndex:0 ofReply:1];
      [(NSXPCConnection *)self->_xpcServiceConn setExportedInterface:[NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AUDaemonProtocol]];
      [(NSXPCConnection *)self->_xpcServiceConn setExportedObject:self];
      v9[0] = 0;
      v9[1] = v9;
      v9[2] = 0x3052000000;
      v9[3] = sub_100006AF8;
      v9[4] = sub_100006B08;
      v9[5] = self;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100006F5C;
      v8[3] = &unk_100081310;
      v8[4] = self;
      v8[5] = v9;
      [(NSXPCConnection *)self->_xpcServiceConn setInvalidationHandler:v8];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100006FCC;
      v7[3] = &unk_100081310;
      v7[4] = self;
      v7[5] = v9;
      [(NSXPCConnection *)self->_xpcServiceConn setInterruptionHandler:v7];
      [(NSXPCConnection *)self->_xpcServiceConn resume];
      _Block_object_dispose(v9, 8);
    }

    else
    {
      sub_100047F34(self);
    }
  }
}

- (void)bootstrapWithOptions:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_100006AF8;
  v14 = sub_100006B08;
  v15 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  xpcServiceConn = self->_xpcServiceConn;
  if (!xpcServiceConn)
  {
    v9 = 0;
    goto LABEL_3;
  }

  self->_currentState = 3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000071A0;
  v5[3] = &unk_100081338;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = &v10;
  [objc_msgSend(-[NSXPCConnection remoteObjectProxy](xpcServiceConn "remoteObjectProxy")];
  if ((v7[3] & 1) == 0)
  {
LABEL_3:
    [(FudPluginDelegate *)self->_delegate didBootstrap:0 info:0 error:v11[5]];
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
}

- (void)downloadFirmwareWithOptions:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_100006AF8;
  v14 = sub_100006B08;
  v15 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  xpcServiceConn = self->_xpcServiceConn;
  if (!xpcServiceConn)
  {
    v9 = 0;
    goto LABEL_3;
  }

  self->_currentState = 7;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100007568;
  v5[3] = &unk_100081338;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = &v10;
  [-[NSXPCConnection remoteObjectProxyWithErrorHandler:](xpcServiceConn remoteObjectProxyWithErrorHandler:{v5), "downloadFirmwareWithOptions:", a3}];
  if ((v7[3] & 1) == 0)
  {
LABEL_3:
    [(FudPluginDelegate *)self->_delegate didDownload:0 info:0 error:v11[5]];
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
}

- (void)prepareFirmwareWithOptions:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_100006AF8;
  v14 = sub_100006B08;
  v15 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  xpcServiceConn = self->_xpcServiceConn;
  if (!xpcServiceConn)
  {
    v9 = 0;
    goto LABEL_3;
  }

  self->_currentState = 8;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100007740;
  v5[3] = &unk_100081338;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = &v10;
  [-[NSXPCConnection remoteObjectProxyWithErrorHandler:](xpcServiceConn remoteObjectProxyWithErrorHandler:{v5), "prepareFirmwareWithOptions:", a3}];
  if ((v7[3] & 1) == 0)
  {
LABEL_3:
    [(FudPluginDelegate *)self->_delegate didPrepare:0 info:0 error:v11[5]];
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
}

- (void)applyFirmwareWithOptions:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_100006AF8;
  v14 = sub_100006B08;
  v15 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  xpcServiceConn = self->_xpcServiceConn;
  if (!xpcServiceConn)
  {
    v9 = 0;
    goto LABEL_3;
  }

  self->_currentState = 9;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100007918;
  v5[3] = &unk_100081338;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = &v10;
  [-[NSXPCConnection remoteObjectProxyWithErrorHandler:](xpcServiceConn remoteObjectProxyWithErrorHandler:{v5), "applyFirmwareWithOptions:", a3}];
  if ((v7[3] & 1) == 0)
  {
LABEL_3:
    [(FudPluginDelegate *)self->_delegate didApply:0 info:0 error:v11[5]];
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
}

- (void)finishWithOptions:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_100006AF8;
  v14 = sub_100006B08;
  v15 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  xpcServiceConn = self->_xpcServiceConn;
  if (!xpcServiceConn)
  {
    v9 = 0;
    goto LABEL_3;
  }

  self->_currentState = 10;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100007AE4;
  v5[3] = &unk_100081338;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = &v10;
  [-[NSXPCConnection remoteObjectProxyWithErrorHandler:](xpcServiceConn remoteObjectProxyWithErrorHandler:{v5), "finishWithOptions:", a3}];
  if ((v7[3] & 1) == 0)
  {
LABEL_3:
    [(FudPluginDelegate *)self->_delegate didFinish:0 info:0 error:v11[5]];
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
}

- (void)queryDeviceList:(id *)a3
{
  v5 = &v10;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_100006AF8;
  v14 = sub_100006B08;
  v15 = 0;
  xpcServiceConn = self->_xpcServiceConn;
  if (xpcServiceConn)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100007CB8;
    v9[3] = &unk_100081360;
    v9[4] = self;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100007D14;
    v8[3] = &unk_100081388;
    v8[4] = &v10;
    [-[NSXPCConnection synchronousRemoteObjectProxyWithErrorHandler:](xpcServiceConn synchronousRemoteObjectProxyWithErrorHandler:{v9), "queryDeviceList:", v8}];
    v5 = v11;
    v7 = v11[5];
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  if (![v5[5] count])
  {
    [(AUServiceShim *)self closeXPCConnection];
  }

  _Block_object_dispose(&v10, 8);
}

- (void)closeXPCConnection
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007DB8;
  block[3] = &unk_100080FC8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)dealloc
{
  [(AUServiceShim *)self setInTeardown:1];
  [(AUServiceShim *)self closeXPCConnection];
  dispatch_release(self->_queue);
  v3.receiver = self;
  v3.super_class = AUServiceShim;
  [(AUServiceShim *)&v3 dealloc];
}

- (void)personalizationResponse:(id)a3 response:(id)a4 status:(id)a5
{
  xpcServiceConn = self->_xpcServiceConn;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100007F18;
  v6[3] = &unk_100081360;
  v6[4] = self;
  [-[NSXPCConnection synchronousRemoteObjectProxyWithErrorHandler:](xpcServiceConn synchronousRemoteObjectProxyWithErrorHandler:{v6), "personalizationResponse:response:status:", a3, a4, a5}];
}

- (void)issueNotification:(id)a3
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v6 = self->_delegate;

    [(FudPluginDelegate *)v6 issueNotification:a3];
  }
}

- (void)didBootstrap:(BOOL)a3 info:(id)a4 error:(id)a5
{
  if (self->_currentState == 3)
  {
    v9 = a3 & ~[(NSString *)self->_xpcServiceName containsString:@"AppleSTDP2700Bootstrap"];
    if ((v9 & 1) == 0)
    {
      [(AUServiceShim *)self closeXPCConnection];
    }

    delegate = self->_delegate;

    [(FudPluginDelegate *)delegate didBootstrap:v9 info:a4 error:a5];
  }
}

- (void)didDownload:(BOOL)a3 info:(id)a4 error:(id)a5
{
  if (self->_currentState == 7)
  {
    sub_10000806C();
    if ((v7 & 1) == 0)
    {
      [v5 closeXPCConnection];
    }

    v8 = sub_100008080();

    [v8 didDownload:? info:? error:?];
  }
}

- (void)didPrepare:(BOOL)a3 info:(id)a4 error:(id)a5
{
  if (self->_currentState == 8)
  {
    sub_10000806C();
    if ((v7 & 1) == 0)
    {
      [v5 closeXPCConnection];
    }

    v8 = sub_100008080();

    [v8 didPrepare:? info:? error:?];
  }
}

- (void)didApply:(BOOL)a3 info:(id)a4 error:(id)a5
{
  if (self->_currentState == 9)
  {
    sub_10000806C();
    if ((v7 & 1) == 0)
    {
      [v5 closeXPCConnection];
    }

    v8 = sub_100008080();

    [v8 didApply:? info:? error:?];
  }
}

- (void)didFinish:(BOOL)a3 info:(id)a4 error:(id)a5
{
  if (self->_currentState == 10)
  {
    sub_10000806C();
    [v6 closeXPCConnection];
    v7 = sub_100008080();

    [v7 didFinish:? info:? error:?];
  }
}

@end