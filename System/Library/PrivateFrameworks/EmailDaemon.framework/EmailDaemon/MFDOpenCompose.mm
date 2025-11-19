@interface MFDOpenCompose
+ (OS_os_log)log;
+ (id)endpointInfo;
- (MFDOpenCompose)initWithClient:(id)a3;
- (MFDOpenCompose)initWithClient:(id)a3 store:(id)a4;
- (void)presentNewMailWithContext:(id)a3 delegateEndpoint:(id)a4 completion:(id)a5;
@end

@implementation MFDOpenCompose

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100063318;
  block[3] = &unk_1001562E8;
  block[4] = a1;
  if (qword_100185850 != -1)
  {
    dispatch_once(&qword_100185850, block);
  }

  v2 = qword_100185848;

  return v2;
}

+ (id)endpointInfo
{
  v2 = [a1 exportedInterface];
  v3 = [MFXPCEndpointInfo endpointInfoWithExportedInterface:v2 remoteObjectInterface:0 shouldAcceptClient:&stru_1001587B8 exportedObjectForClient:&stru_1001587D8];

  return v3;
}

- (MFDOpenCompose)initWithClient:(id)a3
{
  v4 = a3;
  v5 = +[MFDOpenComposeDelegateConfigurationStore sharedStore];
  v6 = [(MFDOpenCompose *)self initWithClient:v4 store:v5];

  return v6;
}

- (MFDOpenCompose)initWithClient:(id)a3 store:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MFDOpenCompose;
  v8 = [(MFXPCServer *)&v11 initWithClient:v6];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_store, a4);
    v9->_isEntitledClient = [v6 hasEntitlement:@"com.apple.private.mobilemail.mail-recipient-vetting"];
  }

  return v9;
}

- (void)presentNewMailWithContext:(id)a3 delegateEndpoint:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18 = 0;
  v11 = sub_1000637E4(self, &v18);
  v12 = v18;
  if (v11)
  {
    sub_10006396C(self, v8, v9);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100063DAC;
    v16 = v15[3] = &unk_100158828;
    v17 = v10;
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

    if (v10)
    {
      (*(v10 + 2))(v10, v12);
    }
  }
}

@end