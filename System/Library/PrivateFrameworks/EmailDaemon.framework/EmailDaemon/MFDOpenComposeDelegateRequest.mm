@interface MFDOpenComposeDelegateRequest
+ (OS_os_log)log;
+ (id)endpointInfo;
- (MFDOpenComposeDelegateRequest)initWithClient:(id)client;
- (MFDOpenComposeDelegateRequest)initWithClient:(id)client store:(id)store;
- (void)checkInComposeWithIdentifier:(id)identifier completion:(id)completion;
@end

@implementation MFDOpenComposeDelegateRequest

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100064740;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_100185870 != -1)
  {
    dispatch_once(&qword_100185870, block);
  }

  v2 = qword_100185868;

  return v2;
}

+ (id)endpointInfo
{
  exportedInterface = [self exportedInterface];
  v3 = [MFXPCEndpointInfo endpointInfoWithExportedInterface:exportedInterface remoteObjectInterface:0 shouldAcceptClient:0 exportedObjectForClient:&stru_100158868];

  return v3;
}

- (MFDOpenComposeDelegateRequest)initWithClient:(id)client
{
  clientCopy = client;
  v5 = +[MFDOpenComposeDelegateConfigurationStore sharedStore];
  v6 = [(MFDOpenComposeDelegateRequest *)self initWithClient:clientCopy store:v5];

  return v6;
}

- (MFDOpenComposeDelegateRequest)initWithClient:(id)client store:(id)store
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = MFDOpenComposeDelegateRequest;
  v8 = [(MFXPCServer *)&v11 initWithClient:client];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_store, store);
  }

  return v9;
}

- (void)checkInComposeWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (self)
  {
    store = self->_store;
  }

  else
  {
    store = 0;
  }

  v8 = [(MFDOpenComposeDelegateConfigurationStore *)store consumeConfigurationWithIdentifier:identifierCopy];
  v9 = v8;
  if (v8)
  {
    delegateEndpoint = [v8 delegateEndpoint];
    completionCopy[2](completionCopy, delegateEndpoint, [v9 isEntitledDelegate], 0);
  }

  else
  {
    delegateEndpoint = [NSString stringWithFormat:@"Could not find configuration for identifier: %@", identifierCopy];
    v11 = [NSError em_internalErrorWithReason:delegateEndpoint];
    (completionCopy)[2](completionCopy, 0, 0, v11);
  }
}

@end