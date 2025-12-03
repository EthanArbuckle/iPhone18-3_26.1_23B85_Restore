@interface PKPaymentWebServiceProxyTargetDeviceDebugHelper
+ (id)webServiceWithProxiedTargetDevice:(id)device;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (PKPaymentWebServiceProxyTargetDeviceDebugHelper)initWithWebService:(id)service;
- (void)dealloc;
@end

@implementation PKPaymentWebServiceProxyTargetDeviceDebugHelper

+ (id)webServiceWithProxiedTargetDevice:(id)device
{
  deviceCopy = device;
  v4 = [[PKPaymentWebServiceProxyTargetDeviceDebugHelper alloc] initWithWebService:deviceCopy];
  localProxyTargetDevice = [(PKPaymentWebServiceProxyTargetDeviceDebugHelper *)v4 localProxyTargetDevice];
  v6 = [PKPaymentWebService alloc];
  context = [localProxyTargetDevice context];
  context2 = context;
  if (!context)
  {
    context2 = [deviceCopy context];
  }

  v9 = +[PKPaymentService paymentService];
  v10 = [(PKPaymentWebService *)v6 initWithContext:context2 targetDevice:localProxyTargetDevice archiver:localProxyTargetDevice tapToRadarDelegate:v9];

  if (!context)
  {
  }

  objc_setAssociatedObject(v10, &PKPaymentWebServiceProxyTargetDeviceDebugHelperKey, v4, 0x301);
  return v10;
}

- (PKPaymentWebServiceProxyTargetDeviceDebugHelper)initWithWebService:(id)service
{
  serviceCopy = service;
  v18.receiver = self;
  v18.super_class = PKPaymentWebServiceProxyTargetDeviceDebugHelper;
  v6 = [(PKPaymentWebServiceProxyTargetDeviceDebugHelper *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_webService, service);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    remoteTargets = v7->_remoteTargets;
    v7->_remoteTargets = v8;

    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    remoteListener = v7->_remoteListener;
    v7->_remoteListener = anonymousListener;

    [(NSXPCListener *)v7->_remoteListener setDelegate:v7];
    [(NSXPCListener *)v7->_remoteListener resume];
    v12 = objc_alloc(MEMORY[0x1E696B0B8]);
    endpoint = [(NSXPCListener *)v7->_remoteListener endpoint];
    v14 = [v12 initWithListenerEndpoint:endpoint];

    v15 = [[PKPaymentWebServiceLocalProxyTargetDevice alloc] initWithConnection:v14];
    localTarget = v7->_localTarget;
    v7->_localTarget = v15;
  }

  return v7;
}

- (void)dealloc
{
  v3 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKPaymentWebServiceProxyTargetDeviceDebugHelper dealloc'd.", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = PKPaymentWebServiceProxyTargetDeviceDebugHelper;
  [(PKPaymentWebServiceProxyTargetDeviceDebugHelper *)&v4 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v11 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v6 = [[PKPaymentWebServiceRemoteProxyTargetDevice alloc] initWithWebService:self->_webService connection:connectionCopy];
  v7 = PKLogFacilityTypeGetObject(5uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = connectionCopy;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_INFO, "PKPaymentWebServiceRemoteProxyTargetDevice connection added %@.", &v9, 0xCu);
  }

  [(NSMutableArray *)self->_remoteTargets addObject:v6];
  return 1;
}

@end