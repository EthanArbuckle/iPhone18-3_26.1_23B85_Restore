@interface IDSTransparentEndpointViewer
- (id)_cloudKitContainer;
- (void)internal_fetchCurrentDeviceKVSKey:(id)key;
- (void)internal_fetchEndpointCacheStateForServiceIdentifier:(id)identifier localURI:(id)i remoteURI:(id)rI completion:(id)completion;
- (void)internal_fetchTransparentEndpointsForServiceIdentifier:(id)identifier localURI:(id)i remoteURI:(id)rI verifyAgainstTrustCircle:(BOOL)circle completion:(id)completion;
- (void)internal_fetchVerifierKVSTrustedDevicesWithCompletion:(id)completion;
- (void)internal_kickVerificationForServiceIdentifier:(id)identifier localURI:(id)i remoteURI:(id)rI completion:(id)completion;
- (void)internal_nukeTransparencyState:(id)state;
- (void)internal_removeAllKVSTrustedDevices:(id)devices;
- (void)internal_triggerKTCDPAccountStatusNotificationWithAccountStatus:(int64_t)status;
- (void)internal_updateCurrentDeviceInKVS:(id)s;
@end

@implementation IDSTransparentEndpointViewer

- (id)_cloudKitContainer
{
  _verifier = [(IDSTransparentEndpointViewer *)self _verifier];
  keyTransparencyStore = [_verifier keyTransparencyStore];

  return keyTransparencyStore;
}

- (void)internal_fetchEndpointCacheStateForServiceIdentifier:(id)identifier localURI:(id)i remoteURI:(id)rI completion:(id)completion
{
  completionCopy = completion;
  rICopy = rI;
  iCopy = i;
  identifierCopy = identifier;
  v19 = [[IDSPeerIDKey alloc] initWithService:identifierCopy fromURI:iCopy toURI:rICopy];

  _peerIDManager = [(IDSTransparentEndpointViewer *)self _peerIDManager];
  pleaseDontCopyCacheDictionaryRepresentation = [_peerIDManager pleaseDontCopyCacheDictionaryRepresentation];
  v16 = [pleaseDontCopyCacheDictionaryRepresentation objectForKeyedSubscript:v19];

  keyTransparencyContext = [v16 keyTransparencyContext];
  endpoints = [v16 endpoints];
  completionCopy[2](completionCopy, keyTransparencyContext, endpoints, 0);
}

- (void)internal_fetchTransparentEndpointsForServiceIdentifier:(id)identifier localURI:(id)i remoteURI:(id)rI verifyAgainstTrustCircle:(BOOL)circle completion:(id)completion
{
  completionCopy = completion;
  rICopy = rI;
  iCopy = i;
  identifierCopy = identifier;
  v15 = [[IDSPeerIDKey alloc] initWithService:identifierCopy fromURI:iCopy toURI:rICopy];

  _peerIDManager = [(IDSTransparentEndpointViewer *)self _peerIDManager];
  pleaseDontCopyCacheDictionaryRepresentation = [_peerIDManager pleaseDontCopyCacheDictionaryRepresentation];
  v18 = [pleaseDontCopyCacheDictionaryRepresentation objectForKeyedSubscript:v15];

  keyTransparencyContext = [v18 keyTransparencyContext];
  ticket = [keyTransparencyContext ticket];

  v21 = [IDSKeyTransparencyIndex alloc];
  keyTransparencyContext2 = [v18 keyTransparencyContext];
  accountKey = [keyTransparencyContext2 accountKey];
  v24 = [(IDSKeyTransparencyIndex *)v21 initWithServiceIdentifier:identifierCopy accountKey:accountKey URI:rICopy];

  _verifier = [(IDSTransparentEndpointViewer *)self _verifier];
  v26 = [_verifier currentPeerVerificationResultsForQueriedIndex:v24 ticket:ticket];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1006BE86C;
  v28[3] = &unk_100BD9940;
  v29 = completionCopy;
  v27 = completionCopy;
  [v26 registerResultBlock:v28];
}

- (void)internal_kickVerificationForServiceIdentifier:(id)identifier localURI:(id)i remoteURI:(id)rI completion:(id)completion
{
  identifierCopy = identifier;
  iCopy = i;
  rICopy = rI;
  completionCopy = completion;
  v14 = +[IDSDAccountController sharedInstance];
  v15 = +[IDSDServiceController sharedInstance];
  v16 = [v15 serviceWithIdentifier:identifierCopy];
  v17 = [v14 appleIDAccountOnService:v16];

  v26 = [[IDSPeerIDQueryContext alloc] initWithSending:0 forceToServer:1 messaging:0 resultExpected:0 preventNewQuery:0];
  v18 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Performing query for forced verification.", buf, 2u);
  }

  v19 = +[IDSPeerIDManager sharedInstance];
  v34 = rICopy;
  v20 = [NSArray arrayWithObjects:&v34 count:1];
  _registrationCert = [v17 _registrationCert];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1006BEBB8;
  v27[3] = &unk_100BE5340;
  v28 = identifierCopy;
  v29 = iCopy;
  v30 = rICopy;
  selfCopy = self;
  v32 = completionCopy;
  v22 = completionCopy;
  v23 = rICopy;
  v24 = iCopy;
  v25 = identifierCopy;
  [v19 startQueryForURIs:v20 fromIdentity:_registrationCert fromURI:v24 fromService:v25 context:v26 reason:@"KTKickVerification" completionBlock:v27];
}

- (void)internal_fetchVerifierKVSTrustedDevicesWithCompletion:(id)completion
{
  completionCopy = completion;
  _verifier = [(IDSTransparentEndpointViewer *)self _verifier];
  forceSyncKVS = [_verifier forceSyncKVS];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1006BEEDC;
  v8[3] = &unk_100BDBC10;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [forceSyncKVS registerResultBlock:v8];
}

- (void)internal_removeAllKVSTrustedDevices:(id)devices
{
  devicesCopy = devices;
  _verifier = [(IDSTransparentEndpointViewer *)self _verifier];
  [_verifier removeAllKVSEntries];

  _verifier2 = [(IDSTransparentEndpointViewer *)self _verifier];
  forceSyncKVS = [_verifier2 forceSyncKVS];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1006BF068;
  v9[3] = &unk_100BD9940;
  v10 = devicesCopy;
  v8 = devicesCopy;
  [forceSyncKVS registerResultBlock:v9];
}

- (void)internal_fetchCurrentDeviceKVSKey:(id)key
{
  keyCopy = key;
  _verifier = [(IDSTransparentEndpointViewer *)self _verifier];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1006BF1A0;
  v7[3] = &unk_100BDAC88;
  v8 = keyCopy;
  v6 = keyCopy;
  [_verifier fetchCurrentDeviceKVSKey:v7];
}

- (void)internal_updateCurrentDeviceInKVS:(id)s
{
  sCopy = s;
  _verifier = [(IDSTransparentEndpointViewer *)self _verifier];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1006BF3C8;
  v7[3] = &unk_100BDACB0;
  v8 = sCopy;
  v6 = sCopy;
  [_verifier updateCurrentDeviceInKVS:v7];
}

- (void)internal_nukeTransparencyState:(id)state
{
  stateCopy = state;
  _verifier = [(IDSTransparentEndpointViewer *)self _verifier];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1006BF668;
  v7[3] = &unk_100BDA9F0;
  v8 = stateCopy;
  v6 = stateCopy;
  [_verifier nukeKeyTransparencyStateWithCompletion:v7];
}

- (void)internal_triggerKTCDPAccountStatusNotificationWithAccountStatus:(int64_t)status
{
  v5 = [NSNotification alloc];
  v10 = @"accountStatus";
  v6 = [NSNumber numberWithInteger:status];
  v11 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [v5 initWithName:@"TransparencyAccountStatusChanged" object:0 userInfo:v7];

  _verifier = [(IDSTransparentEndpointViewer *)self _verifier];
  [_verifier _handleKTCDPStatusUpdate:v8];
}

@end