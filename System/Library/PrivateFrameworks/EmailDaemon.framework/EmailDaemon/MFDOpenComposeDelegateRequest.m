@interface MFDOpenComposeDelegateRequest
+ (OS_os_log)log;
+ (id)endpointInfo;
- (MFDOpenComposeDelegateRequest)initWithClient:(id)a3;
- (MFDOpenComposeDelegateRequest)initWithClient:(id)a3 store:(id)a4;
- (void)checkInComposeWithIdentifier:(id)a3 completion:(id)a4;
@end

@implementation MFDOpenComposeDelegateRequest

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100064740;
  block[3] = &unk_1001562E8;
  block[4] = a1;
  if (qword_100185870 != -1)
  {
    dispatch_once(&qword_100185870, block);
  }

  v2 = qword_100185868;

  return v2;
}

+ (id)endpointInfo
{
  v2 = [a1 exportedInterface];
  v3 = [MFXPCEndpointInfo endpointInfoWithExportedInterface:v2 remoteObjectInterface:0 shouldAcceptClient:0 exportedObjectForClient:&stru_100158868];

  return v3;
}

- (MFDOpenComposeDelegateRequest)initWithClient:(id)a3
{
  v4 = a3;
  v5 = +[MFDOpenComposeDelegateConfigurationStore sharedStore];
  v6 = [(MFDOpenComposeDelegateRequest *)self initWithClient:v4 store:v5];

  return v6;
}

- (MFDOpenComposeDelegateRequest)initWithClient:(id)a3 store:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MFDOpenComposeDelegateRequest;
  v8 = [(MFXPCServer *)&v11 initWithClient:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_store, a4);
  }

  return v9;
}

- (void)checkInComposeWithIdentifier:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (self)
  {
    store = self->_store;
  }

  else
  {
    store = 0;
  }

  v8 = [(MFDOpenComposeDelegateConfigurationStore *)store consumeConfigurationWithIdentifier:v12];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 delegateEndpoint];
    v6[2](v6, v10, [v9 isEntitledDelegate], 0);
  }

  else
  {
    v10 = [NSString stringWithFormat:@"Could not find configuration for identifier: %@", v12];
    v11 = [NSError em_internalErrorWithReason:v10];
    (v6)[2](v6, 0, 0, v11);
  }
}

@end