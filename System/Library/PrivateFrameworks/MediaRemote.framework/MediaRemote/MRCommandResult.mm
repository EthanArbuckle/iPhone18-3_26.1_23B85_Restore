@interface MRCommandResult
- (MRCommandResult)initWithData:(id)data;
- (MRCommandResult)initWithError:(id)error;
- (MRCommandResult)initWithErrorCode:(int64_t)code;
- (MRCommandResult)initWithProtobuf:(id)protobuf;
- (NSArray)handlerReturnStatuses;
- (NSArray)resultStatuses;
- (NSError)error;
- (id)copyWithPlayerPath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
- (id)data;
- (id)debugDescription;
- (id)description;
- (id)protobuf;
@end

@implementation MRCommandResult

id __53__MRCommandResult_initWithHandlerStatuses_sendError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = +[MRSendCommandResultStatus statusWithCode:error:](MRSendCommandResultStatus, "statusWithCode:error:", [v2 unsignedIntValue], 0);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MRCommandResult)initWithData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[_MRSendCommandResultProtobuf alloc] initWithData:dataCopy];

    self = [(MRCommandResult *)self initWithProtobuf:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MRCommandResult)initWithProtobuf:(id)protobuf
{
  if (protobuf)
  {
    protobufCopy = protobuf;
    statuses = [protobufCopy statuses];
    v6 = [statuses msv_map:&__block_literal_global_5];
    sendError = [protobufCopy sendError];
    v8 = [MRPlayerPath alloc];
    playerPath = [protobufCopy playerPath];
    v10 = [(MRPlayerPath *)v8 initWithProtobuf:playerPath];
    v11 = [(MRCommandResult *)self initWithResultStatuses:v6 sendError:sendError playerPath:v10];

    sendErrorDescription = [protobufCopy sendErrorDescription];
    [(MRCommandResult *)v11 setSendErrorDescription:sendErrorDescription];

    v13 = objc_alloc(MEMORY[0x1E696ABC0]);
    error = [protobufCopy error];

    v15 = [v13 mr_initWithProtobuf:error];
    [(MRCommandResult *)v11 setError:v15];

    self = v11;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

MRSendCommandResultStatus *__36__MRCommandResult_initWithProtobuf___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRSendCommandResultStatus alloc] initWithProtobuf:v2];

  return v3;
}

- (MRCommandResult)initWithError:(id)error
{
  errorCopy = error;
  if ([errorCopy mr_isMediaRemoteError] && (objc_msgSend(errorCopy, "isInformational") & 1) == 0)
  {
    v7 = MRMediaRemoteSendErrorFromError(errorCopy, 0);
    localizedFailureReason = [errorCopy localizedFailureReason];
  }

  else
  {
    localizedFailureReason = 0;
    v7 = 0;
  }

  v8 = [(MRCommandResult *)self initWithWithSendError:v7 description:localizedFailureReason];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_error, error);
  }

  return v9;
}

- (MRCommandResult)initWithErrorCode:(int64_t)code
{
  v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:code];
  v5 = [(MRCommandResult *)self initWithError:v4];

  return v5;
}

- (id)copyWithPlayerPath:(id)path
{
  pathCopy = path;
  v5 = [(MRCommandResult *)self copy];
  [v5 setPlayerPath:pathCopy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  resultStatuses = [(MRCommandResult *)self resultStatuses];
  v7 = [resultStatuses copyWithZone:zone];
  [v5 setResultStatuses:v7];

  [v5 setSendError:{-[MRCommandResult sendError](self, "sendError")}];
  error = [(MRCommandResult *)self error];
  v9 = [error copyWithZone:zone];
  [v5 setError:v9];

  sendErrorDescription = [(MRCommandResult *)self sendErrorDescription];
  v11 = [sendErrorDescription copyWithZone:zone];
  [v5 setSendErrorDescription:v11];

  playerPath = [(MRCommandResult *)self playerPath];
  v13 = [playerPath copyWithZone:zone];
  [v5 setPlayerPath:v13];

  [v5 setStartQOS:{-[MRCommandResult startQOS](self, "startQOS")}];
  [v5 setEndQOS:{-[MRCommandResult endQOS](self, "endQOS")}];
  return v5;
}

- (id)protobuf
{
  v3 = objc_alloc_init(_MRSendCommandResultProtobuf);
  [(_MRSendCommandResultProtobuf *)v3 setSendError:[(MRCommandResult *)self sendError]];
  playerPath = [(MRCommandResult *)self playerPath];
  protobuf = [playerPath protobuf];
  [(_MRSendCommandResultProtobuf *)v3 setPlayerPath:protobuf];

  resultStatuses = [(MRCommandResult *)self resultStatuses];
  v7 = [resultStatuses msv_map:&__block_literal_global_10_1];
  v8 = [v7 mutableCopy];
  [(_MRSendCommandResultProtobuf *)v3 setStatuses:v8];

  sendErrorDescription = [(MRCommandResult *)self sendErrorDescription];
  [(_MRSendCommandResultProtobuf *)v3 setSendErrorDescription:sendErrorDescription];

  error = [(MRCommandResult *)self error];
  mr_protobuf = [error mr_protobuf];
  [(_MRSendCommandResultProtobuf *)v3 setError:mr_protobuf];

  return v3;
}

- (id)data
{
  protobuf = [(MRCommandResult *)self protobuf];
  data = [protobuf data];

  return data;
}

- (NSArray)resultStatuses
{
  if (self->_resultStatuses)
  {
    return self->_resultStatuses;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (NSArray)handlerReturnStatuses
{
  resultStatuses = [(MRCommandResult *)self resultStatuses];
  v3 = [resultStatuses msv_map:&__block_literal_global_12_1];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

uint64_t __40__MRCommandResult_handlerReturnStatuses__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 statusCode];

  return [v2 numberWithUnsignedInt:v3];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  playerPath = self->_playerPath;
  error = [(MRCommandResult *)self error];
  v7 = [v3 initWithFormat:@"<%@ : %p playerPath=%@, error=%@>", v4, self, playerPath, error];

  return v7;
}

- (id)debugDescription
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = objc_opt_class();
  playerPath = [(MRCommandResult *)self playerPath];
  error = [(MRCommandResult *)self error];
  v5 = MRCreateIndentedDebugDescriptionFromObject(error);
  startQOS = self->_startQOS;
  endQOS = self->_endQOS;
  v8 = MRMediaRemoteSendCommandErrorDescription([(MRCommandResult *)self sendError]);
  sendErrorDescription = [(MRCommandResult *)self sendErrorDescription];
  resultStatuses = [(MRCommandResult *)self resultStatuses];
  v11 = MRCreateIndentedDebugDescriptionFromArray(resultStatuses);
  v12 = [v15 initWithFormat:@"<%@ : %p {\n   playerPath = %@\n   effectiveError = %@\n   qos = %d -> %d\n   sendError = %@ (%@)\n   %@\n}>\n", v14, self, playerPath, v5, startQOS, endQOS, v8, sendErrorDescription, v11];

  return v12;
}

- (NSError)error
{
  v3 = self->_error;
  if (v3)
  {
    goto LABEL_2;
  }

  v6 = MRMediaRemoteErrorFromCommandStatuses([(MRCommandResult *)self sendError], 0);
  if (!v6)
  {
    goto LABEL_10;
  }

  commandError = v6;
  sendErrorDescription = [(MRCommandResult *)self sendErrorDescription];

  if (!sendErrorDescription)
  {
    goto LABEL_3;
  }

  v8 = objc_alloc(MEMORY[0x1E696ABC0]);
  code = [commandError code];
  sendErrorDescription2 = [(MRCommandResult *)self sendErrorDescription];
  v11 = [v8 initWithMRError:code description:sendErrorDescription2];

  if (v11)
  {
    commandError = v11;
  }

  else
  {
LABEL_10:
    resultStatuses = [(MRCommandResult *)self resultStatuses];
    v13 = [resultStatuses msv_firstWhere:&__block_literal_global_20];
    commandError = [v13 commandError];

    if (!commandError)
    {
      sendError = [(MRCommandResult *)self sendError];
      handlerReturnStatuses = [(MRCommandResult *)self handlerReturnStatuses];
      commandError = MRMediaRemoteErrorFromCommandStatuses(sendError, handlerReturnStatuses);

      if (!commandError)
      {
        resultStatuses2 = [(MRCommandResult *)self resultStatuses];
        v17 = [resultStatuses2 count];

        if (!v17)
        {
          v3 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:44];
LABEL_2:
          commandError = v3;
          goto LABEL_3;
        }

        commandError = 0;
      }
    }
  }

LABEL_3:

  return commandError;
}

BOOL __24__MRCommandResult_error__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 commandError];
  v3 = v2 != 0;

  return v3;
}

@end