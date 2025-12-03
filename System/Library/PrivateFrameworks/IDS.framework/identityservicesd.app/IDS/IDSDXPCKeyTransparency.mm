@interface IDSDXPCKeyTransparency
- (IDSDXPCKeyTransparency)initWithQueue:(id)queue connection:(id)connection;
- (IDSDXPCKeyTransparency)initWithQueue:(id)queue connection:(id)connection transparencyVerifier:(id)verifier;
- (void)cacheClearRequest:(id)request;
- (void)dealloc;
- (void)fetchPeerVerificationInfoForApplication:(id)application forURIs:(id)is withCompletion:(id)completion;
- (void)setupKeyTransparencyManager:(id)manager uuid:(id)uuid;
@end

@implementation IDSDXPCKeyTransparency

- (IDSDXPCKeyTransparency)initWithQueue:(id)queue connection:(id)connection transparencyVerifier:(id)verifier
{
  queueCopy = queue;
  connectionCopy = connection;
  verifierCopy = verifier;
  if ([connectionCopy hasEntitlement:kIDSKeyTransparencyOptInCheckEntitlement])
  {
    v17.receiver = self;
    v17.super_class = IDSDXPCKeyTransparency;
    v12 = [(IDSDXPCKeyTransparency *)&v17 init];
    p_isa = &v12->super.isa;
    if (v12)
    {
      objc_storeStrong(&v12->_queue, queue);
      objc_storeStrong(p_isa + 2, verifier);
      objc_storeStrong(p_isa + 3, connection);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v15 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Missing KT Opt-In Check entitlement -- failing creation of IDSDXPCRegistration collaborator {connection: %@}", buf, 0xCu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (IDSDXPCKeyTransparency)initWithQueue:(id)queue connection:(id)connection
{
  connectionCopy = connection;
  queueCopy = queue;
  v8 = +[IDSKeyTransparencyVerifier sharedInstance];
  v9 = [(IDSDXPCKeyTransparency *)self initWithQueue:queueCopy connection:connectionCopy transparencyVerifier:v8];

  return v9;
}

- (void)dealloc
{
  if (self->_uuid)
  {
    transparencyVerifier = self->_transparencyVerifier;
    uuid = [(IDSDXPCKeyTransparency *)self uuid];
    [(IDSKeyTransparencyVerifier *)transparencyVerifier removeKeyTransparencyManagerClient:uuid];
  }

  v5.receiver = self;
  v5.super_class = IDSDXPCKeyTransparency;
  [(IDSDXPCKeyTransparency *)&v5 dealloc];
}

- (void)fetchPeerVerificationInfoForApplication:(id)application forURIs:(id)is withCompletion:(id)completion
{
  completionCopy = completion;
  applicationCopy = application;
  v10 = [is __imArrayByApplyingBlock:&stru_100BDA720];
  [(IDSKeyTransparencyVerifier *)self->_transparencyVerifier fetchPeerVerificationInfoForApplication:applicationCopy forURIs:v10 withCompletion:completionCopy];
}

- (void)cacheClearRequest:(id)request
{
  requestCopy = request;
  p_connection = &self->_connection;
  if (([(IDSXPCConnection *)self->_connection hasEntitlement:kIDSKeyTransparencyCacheClearRequestEntitlement]& 1) != 0)
  {
    [(IDSKeyTransparencyVerifier *)self->_transparencyVerifier cacheClearRequest:requestCopy];
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

- (void)setupKeyTransparencyManager:(id)manager uuid:(id)uuid
{
  managerCopy = manager;
  uuidCopy = uuid;
  remoteObjectProxy = [managerCopy remoteObjectProxy];
  [(IDSDXPCKeyTransparency *)self setUuid:uuidCopy];
  objc_initWeak(&location, self);
  connection = self->_connection;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1003D8BEC;
  v12[3] = &unk_100BDA6B0;
  objc_copyWeak(&v14, &location);
  v10 = uuidCopy;
  v13 = v10;
  [(IDSXPCConnection *)connection setClientInvalidationHandler:v12];
  transparencyVerifier = self->_transparencyVerifier;
  if (remoteObjectProxy)
  {
    [(IDSKeyTransparencyVerifier *)transparencyVerifier addKeyTransparencyManagerClient:remoteObjectProxy uuid:v10];
  }

  else
  {
    [(IDSKeyTransparencyVerifier *)transparencyVerifier removeKeyTransparencyManagerClient:v10];
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

@end