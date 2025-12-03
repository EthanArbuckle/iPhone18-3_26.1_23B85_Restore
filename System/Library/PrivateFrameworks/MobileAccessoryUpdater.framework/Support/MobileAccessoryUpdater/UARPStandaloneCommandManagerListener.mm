@interface UARPStandaloneCommandManagerListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)xpcConnectionHasEntitlement:(id)entitlement;
- (UARPStandaloneCommandManagerListener)initWithManager:(id)manager dispatchQueue:(id)queue;
- (void)dynamicAssetSolicitation:(id)solicitation modelNumber:(id)number notifyService:(id)service reply:(id)reply;
- (void)dynamicAssetSolicitation:(id)solicitation modelNumbers:(id)numbers notifyService:(id)service reply:(id)reply;
@end

@implementation UARPStandaloneCommandManagerListener

- (UARPStandaloneCommandManagerListener)initWithManager:(id)manager dispatchQueue:(id)queue
{
  v10.receiver = self;
  v10.super_class = UARPStandaloneCommandManagerListener;
  v6 = [(UARPStandaloneCommandManagerListener *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_manager = manager;
    v6->_internalQueue = queue;
    v6->_log = os_log_create("com.apple.accessoryupdater.uarp", "standaloneCommandListener");
    v8 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.accessoryupdater.uarp.standaloneCommandListener"];
    v7->_listener = v8;
    [(NSXPCListener *)v8 setDelegate:v7];
    [(NSXPCListener *)v7->_listener resume];
  }

  return v7;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
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
  block[5] = connection;
  block[6] = &v8;
  dispatch_sync(internalQueue, block);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (BOOL)xpcConnectionHasEntitlement:(id)entitlement
{
  v5 = [entitlement valueForEntitlement:@"com.apple.accessoryupdater.uarp.standaloneCommandListener"];
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
      sub_10004AD5C(entitlement);
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (void)dynamicAssetSolicitation:(id)solicitation modelNumber:(id)number notifyService:(id)service reply:(id)reply
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v14 = 136315906;
    v15 = "[UARPStandaloneCommandManagerListener dynamicAssetSolicitation:modelNumber:notifyService:reply:]";
    v16 = 2112;
    solicitationCopy = solicitation;
    v18 = 2112;
    numberCopy = number;
    v20 = 2112;
    serviceCopy = service;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: requesting asset: %@ for device (with model number: %@). Notify Service: %@", &v14, 0x2Au);
  }

  if ([solicitation length] != 4 || (v12 = -[UARPManager dynamicAssetSolicitation:modelNumber:notifyService:](self->_manager, "dynamicAssetSolicitation:modelNumber:notifyService:", objc_msgSend([UARPAssetTag alloc], "initWithChar1:char2:char3:char4:", objc_msgSend(solicitation, "characterAtIndex:", 0), objc_msgSend(solicitation, "characterAtIndex:", 1), objc_msgSend(solicitation, "characterAtIndex:", 2), objc_msgSend(solicitation, "characterAtIndex:", 3)), number, service), v13 = 0, (v12 & 1) == 0))
  {
    v13 = [NSError errorWithDomain:kUARPErrorDomain code:2 userInfo:0];
  }

  (*(reply + 2))(reply, v13);
}

- (void)dynamicAssetSolicitation:(id)solicitation modelNumbers:(id)numbers notifyService:(id)service reply:(id)reply
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v14 = 136315906;
    v15 = "[UARPStandaloneCommandManagerListener dynamicAssetSolicitation:modelNumbers:notifyService:reply:]";
    v16 = 2112;
    solicitationCopy = solicitation;
    v18 = 2112;
    numbersCopy = numbers;
    v20 = 2112;
    serviceCopy = service;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: requesting asset: %@ for model numbers: %@, endpoint: %@", &v14, 0x2Au);
  }

  if ([solicitation length] != 4 || (v12 = -[UARPManager dynamicAssetSolicitation:modelNumbers:notifyService:](self->_manager, "dynamicAssetSolicitation:modelNumbers:notifyService:", objc_msgSend([UARPAssetTag alloc], "initWithChar1:char2:char3:char4:", objc_msgSend(solicitation, "characterAtIndex:", 0), objc_msgSend(solicitation, "characterAtIndex:", 1), objc_msgSend(solicitation, "characterAtIndex:", 2), objc_msgSend(solicitation, "characterAtIndex:", 3)), numbers, service), v13 = 0, (v12 & 1) == 0))
  {
    v13 = [NSError errorWithDomain:kUARPErrorDomain code:2 userInfo:0];
  }

  (*(reply + 2))(reply, &off_100088190, v13);
}

@end