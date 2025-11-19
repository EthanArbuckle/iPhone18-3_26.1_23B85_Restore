@interface MFAANetworkExported
- (void)addPairingWithToken:(id)a3 withReply:(id)a4;
- (void)confirmActivationForToken:(id)a3 withUUID:(id)a4 withReply:(id)a5;
- (void)getCachedStatusForCertSerial:(id)a3 issuerSeq:(id)a4 ppid:(id)a5 withReply:(id)a6;
- (void)removePairingWithToken:(id)a3 withReply:(id)a4;
- (void)requestActivationForToken:(id)a3 withUUID:(id)a4 withReply:(id)a5;
- (void)requestMetadataForCertSerial:(id)a3 issuerSeq:(id)a4 ppid:(id)a5 requestedLocale:(id)a6 requestInfo:(id)a7 withReply:(id)a8;
- (void)requestMetadataForToken:(id)a3 withUUID:(id)a4 requestedLocale:(id)a5 requestInfo:(id)a6 withReply:(id)a7;
- (void)validateCertSerial:(id)a3 issuerSeq:(id)a4 ppid:(id)a5 withReply:(id)a6;
- (void)verifyPairingWithToken:(id)a3 withReply:(id)a4;
@end

@implementation MFAANetworkExported

- (void)requestMetadataForToken:(id)a3 withUUID:(id)a4 requestedLocale:(id)a5 requestInfo:(id)a6 withReply:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = +[MFAANetwork sharedInstance];
  [v16 _requestMetadataForToken:v15 withUUID:v14 requestedLocale:v13 requestInfo:v12 withReply:v11];
}

- (void)requestActivationForToken:(id)a3 withUUID:(id)a4 withReply:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[MFAANetwork sharedInstance];
  [v10 _requestActivationForToken:v9 withUUID:v8 withReply:v7];
}

- (void)confirmActivationForToken:(id)a3 withUUID:(id)a4 withReply:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[MFAANetwork sharedInstance];
  [v10 _confirmActivationForToken:v9 withUUID:v8 withReply:v7];
}

- (void)requestMetadataForCertSerial:(id)a3 issuerSeq:(id)a4 ppid:(id)a5 requestedLocale:(id)a6 requestInfo:(id)a7 withReply:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = +[MFAANetwork sharedInstance];
  [v19 _requestMetadataForCertSerial:v18 issuerSeq:v17 ppid:v16 requestedLocale:v15 requestInfo:v14 withReply:v13];
}

- (void)validateCertSerial:(id)a3 issuerSeq:(id)a4 ppid:(id)a5 withReply:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = +[MFAANetwork sharedInstance];
  [v13 _validateCertSerial:v12 issuerSeq:v11 ppid:v10 withReply:v9];
}

- (void)getCachedStatusForCertSerial:(id)a3 issuerSeq:(id)a4 ppid:(id)a5 withReply:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = +[MFAANetwork sharedInstance];
  [v13 _getCachedStatusForCertSerial:v12 issuerSeq:v11 ppid:v10 withReply:v9];
}

- (void)addPairingWithToken:(id)a3 withReply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[MFAANetwork sharedInstance];
  [v7 _addPairingWithToken:v6 withReply:v5];
}

- (void)removePairingWithToken:(id)a3 withReply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[MFAANetwork sharedInstance];
  [v7 _removePairingWithToken:v6 withReply:v5];
}

- (void)verifyPairingWithToken:(id)a3 withReply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[MFAANetwork sharedInstance];
  [v7 _verifyPairingWithToken:v6 withReply:v5];
}

@end