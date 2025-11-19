@interface MRPlaybackSessionMigrateEndMessage
- (MRPlaybackSessionMigrateEndMessage)initWithRequest:(id)a3 error:(id)a4 setPlaybackSessionCommandStatus:(id)a5 playerPath:(id)a6;
- (MRPlaybackSessionRequest)request;
- (MRPlayerPath)playerPath;
- (MRSendCommandResultStatus)setPlaybackSessionCommandStatus;
- (NSError)error;
@end

@implementation MRPlaybackSessionMigrateEndMessage

- (MRPlaybackSessionMigrateEndMessage)initWithRequest:(id)a3 error:(id)a4 setPlaybackSessionCommandStatus:(id)a5 playerPath:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = MRPlaybackSessionMigrateEndMessage;
  v14 = [(MRProtocolMessage *)&v21 init];
  if (v14)
  {
    v15 = objc_alloc_init(_MRPlaybackSessionMigrateEndMessageProtobuf);
    v16 = [v10 protobuf];
    [(_MRPlaybackSessionMigrateEndMessageProtobuf *)v15 setRequest:v16];

    -[_MRPlaybackSessionMigrateEndMessageProtobuf setErrorCode:](v15, "setErrorCode:", [v11 code]);
    v17 = [v11 localizedDescription];
    [(_MRPlaybackSessionMigrateEndMessageProtobuf *)v15 setErrorDescription:v17];

    v18 = [v13 protobuf];
    [(_MRPlaybackSessionMigrateEndMessageProtobuf *)v15 setPlayerPath:v18];

    v19 = [v12 protobuf];
    [(_MRPlaybackSessionMigrateEndMessageProtobuf *)v15 setSetPlaybackSessionCommandStatus:v19];

    [(MRProtocolMessage *)v14 setUnderlyingCodableMessage:v15];
  }

  return v14;
}

- (MRPlaybackSessionRequest)request
{
  v3 = [MRPlaybackSessionRequest alloc];
  v4 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v5 = [v4 request];
  v6 = [(MRPlaybackSessionRequest *)v3 initWithProtobuf:v5];

  return v6;
}

- (MRPlayerPath)playerPath
{
  v3 = [MRPlayerPath alloc];
  v4 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v5 = [v4 playerPath];
  v6 = [(MRPlayerPath *)v3 initWithProtobuf:v5];

  return v6;
}

- (MRSendCommandResultStatus)setPlaybackSessionCommandStatus
{
  v3 = [MRSendCommandResultStatus alloc];
  v4 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v5 = [v4 setPlaybackSessionCommandStatus];
  v6 = [(MRSendCommandResultStatus *)v3 initWithProtobuf:v5];

  return v6;
}

- (NSError)error
{
  v3 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v4 = [v3 error];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = [(MRProtocolMessage *)self underlyingCodableMessage];
    v7 = [v6 error];
    v8 = [v5 mr_initWithProtobuf:v7];
LABEL_5:
    v13 = v8;

    goto LABEL_6;
  }

  v9 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v10 = [v9 errorCode];

  if (v10 >= 1)
  {
    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v5 = [(MRProtocolMessage *)self underlyingCodableMessage];
    v12 = [v5 errorCode];
    v6 = [(MRProtocolMessage *)self underlyingCodableMessage];
    v7 = [v6 errorDescription];
    v8 = [v11 initWithMRError:v12 description:v7];
    goto LABEL_5;
  }

  v13 = 0;
LABEL_6:

  return v13;
}

@end