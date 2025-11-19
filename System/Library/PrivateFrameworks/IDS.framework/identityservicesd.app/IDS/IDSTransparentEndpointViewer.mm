@interface IDSTransparentEndpointViewer
- (id)_cloudKitContainer;
- (void)internal_fetchCurrentDeviceKVSKey:(id)a3;
- (void)internal_fetchEndpointCacheStateForServiceIdentifier:(id)a3 localURI:(id)a4 remoteURI:(id)a5 completion:(id)a6;
- (void)internal_fetchTransparentEndpointsForServiceIdentifier:(id)a3 localURI:(id)a4 remoteURI:(id)a5 verifyAgainstTrustCircle:(BOOL)a6 completion:(id)a7;
- (void)internal_fetchVerifierKVSTrustedDevicesWithCompletion:(id)a3;
- (void)internal_kickVerificationForServiceIdentifier:(id)a3 localURI:(id)a4 remoteURI:(id)a5 completion:(id)a6;
- (void)internal_nukeTransparencyState:(id)a3;
- (void)internal_removeAllKVSTrustedDevices:(id)a3;
- (void)internal_triggerKTCDPAccountStatusNotificationWithAccountStatus:(int64_t)a3;
- (void)internal_updateCurrentDeviceInKVS:(id)a3;
@end

@implementation IDSTransparentEndpointViewer

- (id)_cloudKitContainer
{
  v2 = [(IDSTransparentEndpointViewer *)self _verifier];
  v3 = [v2 keyTransparencyStore];

  return v3;
}

- (void)internal_fetchEndpointCacheStateForServiceIdentifier:(id)a3 localURI:(id)a4 remoteURI:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v19 = [[IDSPeerIDKey alloc] initWithService:v13 fromURI:v12 toURI:v11];

  v14 = [(IDSTransparentEndpointViewer *)self _peerIDManager];
  v15 = [v14 pleaseDontCopyCacheDictionaryRepresentation];
  v16 = [v15 objectForKeyedSubscript:v19];

  v17 = [v16 keyTransparencyContext];
  v18 = [v16 endpoints];
  v10[2](v10, v17, v18, 0);
}

- (void)internal_fetchTransparentEndpointsForServiceIdentifier:(id)a3 localURI:(id)a4 remoteURI:(id)a5 verifyAgainstTrustCircle:(BOOL)a6 completion:(id)a7
{
  v11 = a7;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [[IDSPeerIDKey alloc] initWithService:v14 fromURI:v13 toURI:v12];

  v16 = [(IDSTransparentEndpointViewer *)self _peerIDManager];
  v17 = [v16 pleaseDontCopyCacheDictionaryRepresentation];
  v18 = [v17 objectForKeyedSubscript:v15];

  v19 = [v18 keyTransparencyContext];
  v20 = [v19 ticket];

  v21 = [IDSKeyTransparencyIndex alloc];
  v22 = [v18 keyTransparencyContext];
  v23 = [v22 accountKey];
  v24 = [(IDSKeyTransparencyIndex *)v21 initWithServiceIdentifier:v14 accountKey:v23 URI:v12];

  v25 = [(IDSTransparentEndpointViewer *)self _verifier];
  v26 = [v25 currentPeerVerificationResultsForQueriedIndex:v24 ticket:v20];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1006BE86C;
  v28[3] = &unk_100BD9940;
  v29 = v11;
  v27 = v11;
  [v26 registerResultBlock:v28];
}

- (void)internal_kickVerificationForServiceIdentifier:(id)a3 localURI:(id)a4 remoteURI:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[IDSDAccountController sharedInstance];
  v15 = +[IDSDServiceController sharedInstance];
  v16 = [v15 serviceWithIdentifier:v10];
  v17 = [v14 appleIDAccountOnService:v16];

  v26 = [[IDSPeerIDQueryContext alloc] initWithSending:0 forceToServer:1 messaging:0 resultExpected:0 preventNewQuery:0];
  v18 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Performing query for forced verification.", buf, 2u);
  }

  v19 = +[IDSPeerIDManager sharedInstance];
  v34 = v12;
  v20 = [NSArray arrayWithObjects:&v34 count:1];
  v21 = [v17 _registrationCert];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1006BEBB8;
  v27[3] = &unk_100BE5340;
  v28 = v10;
  v29 = v11;
  v30 = v12;
  v31 = self;
  v32 = v13;
  v22 = v13;
  v23 = v12;
  v24 = v11;
  v25 = v10;
  [v19 startQueryForURIs:v20 fromIdentity:v21 fromURI:v24 fromService:v25 context:v26 reason:@"KTKickVerification" completionBlock:v27];
}

- (void)internal_fetchVerifierKVSTrustedDevicesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSTransparentEndpointViewer *)self _verifier];
  v6 = [v5 forceSyncKVS];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1006BEEDC;
  v8[3] = &unk_100BDBC10;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 registerResultBlock:v8];
}

- (void)internal_removeAllKVSTrustedDevices:(id)a3
{
  v4 = a3;
  v5 = [(IDSTransparentEndpointViewer *)self _verifier];
  [v5 removeAllKVSEntries];

  v6 = [(IDSTransparentEndpointViewer *)self _verifier];
  v7 = [v6 forceSyncKVS];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1006BF068;
  v9[3] = &unk_100BD9940;
  v10 = v4;
  v8 = v4;
  [v7 registerResultBlock:v9];
}

- (void)internal_fetchCurrentDeviceKVSKey:(id)a3
{
  v4 = a3;
  v5 = [(IDSTransparentEndpointViewer *)self _verifier];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1006BF1A0;
  v7[3] = &unk_100BDAC88;
  v8 = v4;
  v6 = v4;
  [v5 fetchCurrentDeviceKVSKey:v7];
}

- (void)internal_updateCurrentDeviceInKVS:(id)a3
{
  v4 = a3;
  v5 = [(IDSTransparentEndpointViewer *)self _verifier];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1006BF3C8;
  v7[3] = &unk_100BDACB0;
  v8 = v4;
  v6 = v4;
  [v5 updateCurrentDeviceInKVS:v7];
}

- (void)internal_nukeTransparencyState:(id)a3
{
  v4 = a3;
  v5 = [(IDSTransparentEndpointViewer *)self _verifier];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1006BF668;
  v7[3] = &unk_100BDA9F0;
  v8 = v4;
  v6 = v4;
  [v5 nukeKeyTransparencyStateWithCompletion:v7];
}

- (void)internal_triggerKTCDPAccountStatusNotificationWithAccountStatus:(int64_t)a3
{
  v5 = [NSNotification alloc];
  v10 = @"accountStatus";
  v6 = [NSNumber numberWithInteger:a3];
  v11 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [v5 initWithName:@"TransparencyAccountStatusChanged" object:0 userInfo:v7];

  v9 = [(IDSTransparentEndpointViewer *)self _verifier];
  [v9 _handleKTCDPStatusUpdate:v8];
}

@end