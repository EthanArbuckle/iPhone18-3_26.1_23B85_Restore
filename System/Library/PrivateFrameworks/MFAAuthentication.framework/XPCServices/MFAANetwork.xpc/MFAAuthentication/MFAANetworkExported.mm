@interface MFAANetworkExported
- (void)addPairingWithToken:(id)token withReply:(id)reply;
- (void)confirmActivationForToken:(id)token withUUID:(id)d withReply:(id)reply;
- (void)getCachedStatusForCertSerial:(id)serial issuerSeq:(id)seq ppid:(id)ppid withReply:(id)reply;
- (void)removePairingWithToken:(id)token withReply:(id)reply;
- (void)requestActivationForToken:(id)token withUUID:(id)d withReply:(id)reply;
- (void)requestMetadataForCertSerial:(id)serial issuerSeq:(id)seq ppid:(id)ppid requestedLocale:(id)locale requestInfo:(id)info withReply:(id)reply;
- (void)requestMetadataForToken:(id)token withUUID:(id)d requestedLocale:(id)locale requestInfo:(id)info withReply:(id)reply;
- (void)validateCertSerial:(id)serial issuerSeq:(id)seq ppid:(id)ppid withReply:(id)reply;
- (void)verifyPairingWithToken:(id)token withReply:(id)reply;
@end

@implementation MFAANetworkExported

- (void)requestMetadataForToken:(id)token withUUID:(id)d requestedLocale:(id)locale requestInfo:(id)info withReply:(id)reply
{
  replyCopy = reply;
  infoCopy = info;
  localeCopy = locale;
  dCopy = d;
  tokenCopy = token;
  v16 = +[MFAANetwork sharedInstance];
  [v16 _requestMetadataForToken:tokenCopy withUUID:dCopy requestedLocale:localeCopy requestInfo:infoCopy withReply:replyCopy];
}

- (void)requestActivationForToken:(id)token withUUID:(id)d withReply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
  tokenCopy = token;
  v10 = +[MFAANetwork sharedInstance];
  [v10 _requestActivationForToken:tokenCopy withUUID:dCopy withReply:replyCopy];
}

- (void)confirmActivationForToken:(id)token withUUID:(id)d withReply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
  tokenCopy = token;
  v10 = +[MFAANetwork sharedInstance];
  [v10 _confirmActivationForToken:tokenCopy withUUID:dCopy withReply:replyCopy];
}

- (void)requestMetadataForCertSerial:(id)serial issuerSeq:(id)seq ppid:(id)ppid requestedLocale:(id)locale requestInfo:(id)info withReply:(id)reply
{
  replyCopy = reply;
  infoCopy = info;
  localeCopy = locale;
  ppidCopy = ppid;
  seqCopy = seq;
  serialCopy = serial;
  v19 = +[MFAANetwork sharedInstance];
  [v19 _requestMetadataForCertSerial:serialCopy issuerSeq:seqCopy ppid:ppidCopy requestedLocale:localeCopy requestInfo:infoCopy withReply:replyCopy];
}

- (void)validateCertSerial:(id)serial issuerSeq:(id)seq ppid:(id)ppid withReply:(id)reply
{
  replyCopy = reply;
  ppidCopy = ppid;
  seqCopy = seq;
  serialCopy = serial;
  v13 = +[MFAANetwork sharedInstance];
  [v13 _validateCertSerial:serialCopy issuerSeq:seqCopy ppid:ppidCopy withReply:replyCopy];
}

- (void)getCachedStatusForCertSerial:(id)serial issuerSeq:(id)seq ppid:(id)ppid withReply:(id)reply
{
  replyCopy = reply;
  ppidCopy = ppid;
  seqCopy = seq;
  serialCopy = serial;
  v13 = +[MFAANetwork sharedInstance];
  [v13 _getCachedStatusForCertSerial:serialCopy issuerSeq:seqCopy ppid:ppidCopy withReply:replyCopy];
}

- (void)addPairingWithToken:(id)token withReply:(id)reply
{
  replyCopy = reply;
  tokenCopy = token;
  v7 = +[MFAANetwork sharedInstance];
  [v7 _addPairingWithToken:tokenCopy withReply:replyCopy];
}

- (void)removePairingWithToken:(id)token withReply:(id)reply
{
  replyCopy = reply;
  tokenCopy = token;
  v7 = +[MFAANetwork sharedInstance];
  [v7 _removePairingWithToken:tokenCopy withReply:replyCopy];
}

- (void)verifyPairingWithToken:(id)token withReply:(id)reply
{
  replyCopy = reply;
  tokenCopy = token;
  v7 = +[MFAANetwork sharedInstance];
  [v7 _verifyPairingWithToken:tokenCopy withReply:replyCopy];
}

@end