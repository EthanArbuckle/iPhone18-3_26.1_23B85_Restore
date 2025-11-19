@interface MRCommandResult
- (MRCommandResult)initWithData:(id)a3;
- (MRCommandResult)initWithError:(id)a3;
- (MRCommandResult)initWithErrorCode:(int64_t)a3;
- (MRCommandResult)initWithProtobuf:(id)a3;
- (NSArray)handlerReturnStatuses;
- (NSArray)resultStatuses;
- (NSError)error;
- (id)copyWithPlayerPath:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

- (MRCommandResult)initWithData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[_MRSendCommandResultProtobuf alloc] initWithData:v4];

    self = [(MRCommandResult *)self initWithProtobuf:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MRCommandResult)initWithProtobuf:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 statuses];
    v6 = [v5 msv_map:&__block_literal_global_5];
    v7 = [v4 sendError];
    v8 = [MRPlayerPath alloc];
    v9 = [v4 playerPath];
    v10 = [(MRPlayerPath *)v8 initWithProtobuf:v9];
    v11 = [(MRCommandResult *)self initWithResultStatuses:v6 sendError:v7 playerPath:v10];

    v12 = [v4 sendErrorDescription];
    [(MRCommandResult *)v11 setSendErrorDescription:v12];

    v13 = objc_alloc(MEMORY[0x1E696ABC0]);
    v14 = [v4 error];

    v15 = [v13 mr_initWithProtobuf:v14];
    [(MRCommandResult *)v11 setError:v15];

    self = v11;
    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

MRSendCommandResultStatus *__36__MRCommandResult_initWithProtobuf___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRSendCommandResultStatus alloc] initWithProtobuf:v2];

  return v3;
}

- (MRCommandResult)initWithError:(id)a3
{
  v5 = a3;
  if ([v5 mr_isMediaRemoteError] && (objc_msgSend(v5, "isInformational") & 1) == 0)
  {
    v7 = MRMediaRemoteSendErrorFromError(v5, 0);
    v6 = [v5 localizedFailureReason];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = [(MRCommandResult *)self initWithWithSendError:v7 description:v6];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_error, a3);
  }

  return v9;
}

- (MRCommandResult)initWithErrorCode:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:a3];
  v5 = [(MRCommandResult *)self initWithError:v4];

  return v5;
}

- (id)copyWithPlayerPath:(id)a3
{
  v4 = a3;
  v5 = [(MRCommandResult *)self copy];
  [v5 setPlayerPath:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(MRCommandResult *)self resultStatuses];
  v7 = [v6 copyWithZone:a3];
  [v5 setResultStatuses:v7];

  [v5 setSendError:{-[MRCommandResult sendError](self, "sendError")}];
  v8 = [(MRCommandResult *)self error];
  v9 = [v8 copyWithZone:a3];
  [v5 setError:v9];

  v10 = [(MRCommandResult *)self sendErrorDescription];
  v11 = [v10 copyWithZone:a3];
  [v5 setSendErrorDescription:v11];

  v12 = [(MRCommandResult *)self playerPath];
  v13 = [v12 copyWithZone:a3];
  [v5 setPlayerPath:v13];

  [v5 setStartQOS:{-[MRCommandResult startQOS](self, "startQOS")}];
  [v5 setEndQOS:{-[MRCommandResult endQOS](self, "endQOS")}];
  return v5;
}

- (id)protobuf
{
  v3 = objc_alloc_init(_MRSendCommandResultProtobuf);
  [(_MRSendCommandResultProtobuf *)v3 setSendError:[(MRCommandResult *)self sendError]];
  v4 = [(MRCommandResult *)self playerPath];
  v5 = [v4 protobuf];
  [(_MRSendCommandResultProtobuf *)v3 setPlayerPath:v5];

  v6 = [(MRCommandResult *)self resultStatuses];
  v7 = [v6 msv_map:&__block_literal_global_10_1];
  v8 = [v7 mutableCopy];
  [(_MRSendCommandResultProtobuf *)v3 setStatuses:v8];

  v9 = [(MRCommandResult *)self sendErrorDescription];
  [(_MRSendCommandResultProtobuf *)v3 setSendErrorDescription:v9];

  v10 = [(MRCommandResult *)self error];
  v11 = [v10 mr_protobuf];
  [(_MRSendCommandResultProtobuf *)v3 setError:v11];

  return v3;
}

- (id)data
{
  v2 = [(MRCommandResult *)self protobuf];
  v3 = [v2 data];

  return v3;
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
  v2 = [(MRCommandResult *)self resultStatuses];
  v3 = [v2 msv_map:&__block_literal_global_12_1];
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
  v6 = [(MRCommandResult *)self error];
  v7 = [v3 initWithFormat:@"<%@ : %p playerPath=%@, error=%@>", v4, self, playerPath, v6];

  return v7;
}

- (id)debugDescription
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = objc_opt_class();
  v3 = [(MRCommandResult *)self playerPath];
  v4 = [(MRCommandResult *)self error];
  v5 = MRCreateIndentedDebugDescriptionFromObject(v4);
  startQOS = self->_startQOS;
  endQOS = self->_endQOS;
  v8 = MRMediaRemoteSendCommandErrorDescription([(MRCommandResult *)self sendError]);
  v9 = [(MRCommandResult *)self sendErrorDescription];
  v10 = [(MRCommandResult *)self resultStatuses];
  v11 = MRCreateIndentedDebugDescriptionFromArray(v10);
  v12 = [v15 initWithFormat:@"<%@ : %p {\n   playerPath = %@\n   effectiveError = %@\n   qos = %d -> %d\n   sendError = %@ (%@)\n   %@\n}>\n", v14, self, v3, v5, startQOS, endQOS, v8, v9, v11];

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

  v4 = v6;
  v7 = [(MRCommandResult *)self sendErrorDescription];

  if (!v7)
  {
    goto LABEL_3;
  }

  v8 = objc_alloc(MEMORY[0x1E696ABC0]);
  v9 = [v4 code];
  v10 = [(MRCommandResult *)self sendErrorDescription];
  v11 = [v8 initWithMRError:v9 description:v10];

  if (v11)
  {
    v4 = v11;
  }

  else
  {
LABEL_10:
    v12 = [(MRCommandResult *)self resultStatuses];
    v13 = [v12 msv_firstWhere:&__block_literal_global_20];
    v4 = [v13 commandError];

    if (!v4)
    {
      v14 = [(MRCommandResult *)self sendError];
      v15 = [(MRCommandResult *)self handlerReturnStatuses];
      v4 = MRMediaRemoteErrorFromCommandStatuses(v14, v15);

      if (!v4)
      {
        v16 = [(MRCommandResult *)self resultStatuses];
        v17 = [v16 count];

        if (!v17)
        {
          v3 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:44];
LABEL_2:
          v4 = v3;
          goto LABEL_3;
        }

        v4 = 0;
      }
    }
  }

LABEL_3:

  return v4;
}

BOOL __24__MRCommandResult_error__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 commandError];
  v3 = v2 != 0;

  return v3;
}

@end