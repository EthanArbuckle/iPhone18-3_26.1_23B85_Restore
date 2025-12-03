@interface MFDOpenCompose
+ (OS_os_log)log;
+ (id)endpointInfo;
- (MFDOpenCompose)initWithClient:(id)client;
- (MFDOpenCompose)initWithClient:(id)client store:(id)store;
- (void)presentNewMailWithContext:(id)context delegateEndpoint:(id)endpoint completion:(id)completion;
@end

@implementation MFDOpenCompose

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100063318;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_100185850 != -1)
  {
    dispatch_once(&qword_100185850, block);
  }

  v2 = qword_100185848;

  return v2;
}

+ (id)endpointInfo
{
  exportedInterface = [self exportedInterface];
  v3 = [MFXPCEndpointInfo endpointInfoWithExportedInterface:exportedInterface remoteObjectInterface:0 shouldAcceptClient:&stru_1001587B8 exportedObjectForClient:&stru_1001587D8];

  return v3;
}

- (MFDOpenCompose)initWithClient:(id)client
{
  clientCopy = client;
  v5 = +[MFDOpenComposeDelegateConfigurationStore sharedStore];
  v6 = [(MFDOpenCompose *)self initWithClient:clientCopy store:v5];

  return v6;
}

- (MFDOpenCompose)initWithClient:(id)client store:(id)store
{
  clientCopy = client;
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = MFDOpenCompose;
  v8 = [(MFXPCServer *)&v11 initWithClient:clientCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_store, store);
    v9->_isEntitledClient = [clientCopy hasEntitlement:@"com.apple.private.mobilemail.mail-recipient-vetting"];
  }

  return v9;
}

- (void)presentNewMailWithContext:(id)context delegateEndpoint:(id)endpoint completion:(id)completion
{
  contextCopy = context;
  endpointCopy = endpoint;
  completionCopy = completion;
  v18 = 0;
  v11 = sub_1000637E4(self, &v18);
  v12 = v18;
  if (v11)
  {
    sub_10006396C(self, contextCopy, endpointCopy);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100063DAC;
    v16 = v15[3] = &unk_100158828;
    v17 = completionCopy;
    v13 = v16;
    [v13 _createUserActivityDataWithOptions:0 completionHandler:v15];
  }

  else
  {
    v14 = +[MFDOpenCompose log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [v12 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1000D41B0();
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v12);
    }
  }
}

@end