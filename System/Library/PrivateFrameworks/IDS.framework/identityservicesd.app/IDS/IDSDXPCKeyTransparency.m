@interface IDSDXPCKeyTransparency
- (IDSDXPCKeyTransparency)initWithQueue:(id)a3 connection:(id)a4;
- (IDSDXPCKeyTransparency)initWithQueue:(id)a3 connection:(id)a4 transparencyVerifier:(id)a5;
- (void)cacheClearRequest:(id)a3;
- (void)dealloc;
- (void)fetchPeerVerificationInfoForApplication:(id)a3 forURIs:(id)a4 withCompletion:(id)a5;
- (void)setupKeyTransparencyManager:(id)a3 uuid:(id)a4;
@end

@implementation IDSDXPCKeyTransparency

- (IDSDXPCKeyTransparency)initWithQueue:(id)a3 connection:(id)a4 transparencyVerifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v10 hasEntitlement:kIDSKeyTransparencyOptInCheckEntitlement])
  {
    v17.receiver = self;
    v17.super_class = IDSDXPCKeyTransparency;
    v12 = [(IDSDXPCKeyTransparency *)&v17 init];
    p_isa = &v12->super.isa;
    if (v12)
    {
      objc_storeStrong(&v12->_queue, a3);
      objc_storeStrong(p_isa + 2, a5);
      objc_storeStrong(p_isa + 3, a4);
    }

    self = p_isa;
    v14 = self;
  }

  else
  {
    v15 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Missing KT Opt-In Check entitlement -- failing creation of IDSDXPCRegistration collaborator {connection: %@}", buf, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

- (IDSDXPCKeyTransparency)initWithQueue:(id)a3 connection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[IDSKeyTransparencyVerifier sharedInstance];
  v9 = [(IDSDXPCKeyTransparency *)self initWithQueue:v7 connection:v6 transparencyVerifier:v8];

  return v9;
}

- (void)dealloc
{
  if (self->_uuid)
  {
    transparencyVerifier = self->_transparencyVerifier;
    v4 = [(IDSDXPCKeyTransparency *)self uuid];
    [(IDSKeyTransparencyVerifier *)transparencyVerifier removeKeyTransparencyManagerClient:v4];
  }

  v5.receiver = self;
  v5.super_class = IDSDXPCKeyTransparency;
  [(IDSDXPCKeyTransparency *)&v5 dealloc];
}

- (void)fetchPeerVerificationInfoForApplication:(id)a3 forURIs:(id)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [a4 __imArrayByApplyingBlock:&stru_100BDA720];
  [(IDSKeyTransparencyVerifier *)self->_transparencyVerifier fetchPeerVerificationInfoForApplication:v9 forURIs:v10 withCompletion:v8];
}

- (void)cacheClearRequest:(id)a3
{
  v4 = a3;
  p_connection = &self->_connection;
  if (([(IDSXPCConnection *)self->_connection hasEntitlement:kIDSKeyTransparencyCacheClearRequestEntitlement]& 1) != 0)
  {
    [(IDSKeyTransparencyVerifier *)self->_transparencyVerifier cacheClearRequest:v4];
  }

  else
  {
    v6 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10091B3F4(p_connection, v6);
    }
  }
}

- (void)setupKeyTransparencyManager:(id)a3 uuid:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 remoteObjectProxy];
  [(IDSDXPCKeyTransparency *)self setUuid:v7];
  objc_initWeak(&location, self);
  connection = self->_connection;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1003D8BEC;
  v12[3] = &unk_100BDA6B0;
  objc_copyWeak(&v14, &location);
  v10 = v7;
  v13 = v10;
  [(IDSXPCConnection *)connection setClientInvalidationHandler:v12];
  transparencyVerifier = self->_transparencyVerifier;
  if (v8)
  {
    [(IDSKeyTransparencyVerifier *)transparencyVerifier addKeyTransparencyManagerClient:v8 uuid:v10];
  }

  else
  {
    [(IDSKeyTransparencyVerifier *)transparencyVerifier removeKeyTransparencyManagerClient:v10];
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

@end