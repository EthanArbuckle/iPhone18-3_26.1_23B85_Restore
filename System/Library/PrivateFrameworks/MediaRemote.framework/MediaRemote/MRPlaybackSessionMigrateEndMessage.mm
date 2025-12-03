@interface MRPlaybackSessionMigrateEndMessage
- (MRPlaybackSessionMigrateEndMessage)initWithRequest:(id)request error:(id)error setPlaybackSessionCommandStatus:(id)status playerPath:(id)path;
- (MRPlaybackSessionRequest)request;
- (MRPlayerPath)playerPath;
- (MRSendCommandResultStatus)setPlaybackSessionCommandStatus;
- (NSError)error;
@end

@implementation MRPlaybackSessionMigrateEndMessage

- (MRPlaybackSessionMigrateEndMessage)initWithRequest:(id)request error:(id)error setPlaybackSessionCommandStatus:(id)status playerPath:(id)path
{
  requestCopy = request;
  errorCopy = error;
  statusCopy = status;
  pathCopy = path;
  v21.receiver = self;
  v21.super_class = MRPlaybackSessionMigrateEndMessage;
  v14 = [(MRProtocolMessage *)&v21 init];
  if (v14)
  {
    v15 = objc_alloc_init(_MRPlaybackSessionMigrateEndMessageProtobuf);
    protobuf = [requestCopy protobuf];
    [(_MRPlaybackSessionMigrateEndMessageProtobuf *)v15 setRequest:protobuf];

    -[_MRPlaybackSessionMigrateEndMessageProtobuf setErrorCode:](v15, "setErrorCode:", [errorCopy code]);
    localizedDescription = [errorCopy localizedDescription];
    [(_MRPlaybackSessionMigrateEndMessageProtobuf *)v15 setErrorDescription:localizedDescription];

    protobuf2 = [pathCopy protobuf];
    [(_MRPlaybackSessionMigrateEndMessageProtobuf *)v15 setPlayerPath:protobuf2];

    protobuf3 = [statusCopy protobuf];
    [(_MRPlaybackSessionMigrateEndMessageProtobuf *)v15 setSetPlaybackSessionCommandStatus:protobuf3];

    [(MRProtocolMessage *)v14 setUnderlyingCodableMessage:v15];
  }

  return v14;
}

- (MRPlaybackSessionRequest)request
{
  v3 = [MRPlaybackSessionRequest alloc];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  request = [underlyingCodableMessage request];
  v6 = [(MRPlaybackSessionRequest *)v3 initWithProtobuf:request];

  return v6;
}

- (MRPlayerPath)playerPath
{
  v3 = [MRPlayerPath alloc];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  playerPath = [underlyingCodableMessage playerPath];
  v6 = [(MRPlayerPath *)v3 initWithProtobuf:playerPath];

  return v6;
}

- (MRSendCommandResultStatus)setPlaybackSessionCommandStatus
{
  v3 = [MRSendCommandResultStatus alloc];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  setPlaybackSessionCommandStatus = [underlyingCodableMessage setPlaybackSessionCommandStatus];
  v6 = [(MRSendCommandResultStatus *)v3 initWithProtobuf:setPlaybackSessionCommandStatus];

  return v6;
}

- (NSError)error
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  error = [underlyingCodableMessage error];

  if (error)
  {
    underlyingCodableMessage4 = objc_alloc(MEMORY[0x1E696ABC0]);
    underlyingCodableMessage2 = [(MRProtocolMessage *)self underlyingCodableMessage];
    error2 = [underlyingCodableMessage2 error];
    v8 = [underlyingCodableMessage4 mr_initWithProtobuf:error2];
LABEL_5:
    v13 = v8;

    goto LABEL_6;
  }

  underlyingCodableMessage3 = [(MRProtocolMessage *)self underlyingCodableMessage];
  errorCode = [underlyingCodableMessage3 errorCode];

  if (errorCode >= 1)
  {
    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    underlyingCodableMessage4 = [(MRProtocolMessage *)self underlyingCodableMessage];
    errorCode2 = [underlyingCodableMessage4 errorCode];
    underlyingCodableMessage2 = [(MRProtocolMessage *)self underlyingCodableMessage];
    error2 = [underlyingCodableMessage2 errorDescription];
    v8 = [v11 initWithMRError:errorCode2 description:error2];
    goto LABEL_5;
  }

  v13 = 0;
LABEL_6:

  return v13;
}

@end