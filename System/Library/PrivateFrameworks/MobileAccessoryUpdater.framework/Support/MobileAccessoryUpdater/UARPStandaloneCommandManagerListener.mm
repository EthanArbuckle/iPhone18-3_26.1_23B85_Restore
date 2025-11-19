@interface UARPStandaloneCommandManagerListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)xpcConnectionHasEntitlement:(id)a3;
- (UARPStandaloneCommandManagerListener)initWithManager:(id)a3 dispatchQueue:(id)a4;
- (void)dynamicAssetSolicitation:(id)a3 modelNumber:(id)a4 notifyService:(id)a5 reply:(id)a6;
- (void)dynamicAssetSolicitation:(id)a3 modelNumbers:(id)a4 notifyService:(id)a5 reply:(id)a6;
@end

@implementation UARPStandaloneCommandManagerListener

- (UARPStandaloneCommandManagerListener)initWithManager:(id)a3 dispatchQueue:(id)a4
{
  v10.receiver = self;
  v10.super_class = UARPStandaloneCommandManagerListener;
  v6 = [(UARPStandaloneCommandManagerListener *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_manager = a3;
    v6->_internalQueue = a4;
    v6->_log = os_log_create("com.apple.accessoryupdater.uarp", "standaloneCommandListener");
    v8 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.accessoryupdater.uarp.standaloneCommandListener"];
    v7->_listener = v8;
    [(NSXPCListener *)v8 setDelegate:v7];
    [(NSXPCListener *)v7->_listener resume];
  }

  return v7;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013C5C;
  block[3] = &unk_1000817B0;
  block[4] = self;
  block[5] = a4;
  block[6] = &v8;
  dispatch_sync(internalQueue, block);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (BOOL)xpcConnectionHasEntitlement:(id)a3
{
  v5 = [a3 valueForEntitlement:@"com.apple.accessoryupdater.uarp.standaloneCommandListener"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v5 BOOLValue])
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      sub_10004AD5C(a3);
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (void)dynamicAssetSolicitation:(id)a3 modelNumber:(id)a4 notifyService:(id)a5 reply:(id)a6
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v14 = 136315906;
    v15 = "[UARPStandaloneCommandManagerListener dynamicAssetSolicitation:modelNumber:notifyService:reply:]";
    v16 = 2112;
    v17 = a3;
    v18 = 2112;
    v19 = a4;
    v20 = 2112;
    v21 = a5;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: requesting asset: %@ for device (with model number: %@). Notify Service: %@", &v14, 0x2Au);
  }

  if ([a3 length] != 4 || (v12 = -[UARPManager dynamicAssetSolicitation:modelNumber:notifyService:](self->_manager, "dynamicAssetSolicitation:modelNumber:notifyService:", objc_msgSend([UARPAssetTag alloc], "initWithChar1:char2:char3:char4:", objc_msgSend(a3, "characterAtIndex:", 0), objc_msgSend(a3, "characterAtIndex:", 1), objc_msgSend(a3, "characterAtIndex:", 2), objc_msgSend(a3, "characterAtIndex:", 3)), a4, a5), v13 = 0, (v12 & 1) == 0))
  {
    v13 = [NSError errorWithDomain:kUARPErrorDomain code:2 userInfo:0];
  }

  (*(a6 + 2))(a6, v13);
}

- (void)dynamicAssetSolicitation:(id)a3 modelNumbers:(id)a4 notifyService:(id)a5 reply:(id)a6
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v14 = 136315906;
    v15 = "[UARPStandaloneCommandManagerListener dynamicAssetSolicitation:modelNumbers:notifyService:reply:]";
    v16 = 2112;
    v17 = a3;
    v18 = 2112;
    v19 = a4;
    v20 = 2112;
    v21 = a5;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: requesting asset: %@ for model numbers: %@, endpoint: %@", &v14, 0x2Au);
  }

  if ([a3 length] != 4 || (v12 = -[UARPManager dynamicAssetSolicitation:modelNumbers:notifyService:](self->_manager, "dynamicAssetSolicitation:modelNumbers:notifyService:", objc_msgSend([UARPAssetTag alloc], "initWithChar1:char2:char3:char4:", objc_msgSend(a3, "characterAtIndex:", 0), objc_msgSend(a3, "characterAtIndex:", 1), objc_msgSend(a3, "characterAtIndex:", 2), objc_msgSend(a3, "characterAtIndex:", 3)), a4, a5), v13 = 0, (v12 & 1) == 0))
  {
    v13 = [NSError errorWithDomain:kUARPErrorDomain code:2 userInfo:0];
  }

  (*(a6 + 2))(a6, &off_100088190, v13);
}

@end