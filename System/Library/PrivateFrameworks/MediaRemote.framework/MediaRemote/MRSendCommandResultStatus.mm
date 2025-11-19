@interface MRSendCommandResultStatus
+ (id)successStatus;
- (MRSendCommandResultStatus)initWithProtobuf:(id)a3;
- (MRSendCommandResultStatus)initWithStatusType:(int64_t)a3 statusCode:(unsigned int)a4 dialog:(id)a5 customData:(id)a6 customDataType:(id)a7 error:(id)a8;
- (_MRSendCommandResultStatusProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MRSendCommandResultStatus

+ (id)successStatus
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__MRSendCommandResultStatus_successStatus__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (successStatus_onceToken != -1)
  {
    dispatch_once(&successStatus_onceToken, block);
  }

  v2 = successStatus_successStatus;

  return v2;
}

void __42__MRSendCommandResultStatus_successStatus__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithStatusType:1 statusCode:0 dialog:0 customData:0 customDataType:0 error:0];
  v2 = successStatus_successStatus;
  successStatus_successStatus = v1;
}

- (MRSendCommandResultStatus)initWithStatusType:(int64_t)a3 statusCode:(unsigned int)a4 dialog:(id)a5 customData:(id)a6 customDataType:(id)a7 error:(id)a8
{
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v22.receiver = self;
  v22.super_class = MRSendCommandResultStatus;
  v18 = [(MRSendCommandResultStatus *)&v22 init];
  v19 = v18;
  if (v18)
  {
    v18->_statusType = a3;
    v18->_statusCode = a4;
    objc_storeStrong(&v18->_dialog, a5);
    objc_storeStrong(&v19->_customData, a6);
    objc_storeStrong(&v19->_customDataType, a7);
    objc_storeStrong(&v19->_commandError, a8);
  }

  return v19;
}

- (MRSendCommandResultStatus)initWithProtobuf:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 type];
    v7 = [v5 statusCode];
    v8 = v7;
    if (v6 != 1 || v7)
    {
      v19 = v6;
      v10 = [MRSendCommandHandlerDialog alloc];
      v11 = [v5 dialog];
      v12 = [(MRSendCommandHandlerDialog *)v10 initWithProtobuf:v11];
      v13 = [v5 customData];
      v14 = [v5 customDataType];
      v15 = objc_alloc(MEMORY[0x1E696ABC0]);
      v16 = [v5 error];
      v17 = [v15 mr_initWithProtobuf:v16];
      self = [(MRSendCommandResultStatus *)self initWithStatusType:v19 statusCode:v8 dialog:v12 customData:v13 customDataType:v14 error:v17];

      v9 = self;
    }

    else
    {
      v9 = [objc_opt_class() successStatus];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (_MRSendCommandResultStatusProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRSendCommandResultStatusProtobuf);
  [(_MRSendCommandResultStatusProtobuf *)v3 setType:[(MRSendCommandResultStatus *)self statusType]];
  [(_MRSendCommandResultStatusProtobuf *)v3 setStatusCode:[(MRSendCommandResultStatus *)self statusCode]];
  v4 = [(MRSendCommandResultStatus *)self dialog];
  v5 = [v4 protobuf];
  [(_MRSendCommandResultStatusProtobuf *)v3 setDialog:v5];

  v6 = [(MRSendCommandResultStatus *)self customData];
  [(_MRSendCommandResultStatusProtobuf *)v3 setCustomData:v6];

  v7 = [(MRSendCommandResultStatus *)self customDataType];
  [(_MRSendCommandResultStatusProtobuf *)v3 setCustomDataType:v7];

  v8 = [(MRSendCommandResultStatus *)self commandError];
  v9 = [v8 mr_protobuf];
  [(_MRSendCommandResultStatusProtobuf *)v3 setError:v9];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() successStatus];

  if (v4 == self)
  {

    return self;
  }

  else
  {
    v17 = [objc_opt_class() allocWithZone:a3];
    v5 = [(MRSendCommandResultStatus *)self statusType];
    v6 = [(MRSendCommandResultStatus *)self statusCode];
    v7 = [(MRSendCommandResultStatus *)self dialog];
    v8 = [v7 copyWithZone:a3];
    v9 = [(MRSendCommandResultStatus *)self customData];
    v10 = [v9 copyWithZone:a3];
    v11 = [(MRSendCommandResultStatus *)self customDataType];
    v12 = [v11 copyWithZone:a3];
    v13 = [(MRSendCommandResultStatus *)self commandError];
    v14 = [v13 copyWithZone:a3];
    v15 = [v17 initWithStatusType:v5 statusCode:v6 dialog:v8 customData:v10 customDataType:v12 error:v14];

    return v15;
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  v4 = MRMediaRemoteCopyCommandHandlerStatusDescription([(MRSendCommandResultStatus *)self statusCode]);
  v5 = v4;
  if (v4)
  {
    [v3 appendFormat:@" code=%@", v4];
  }

  else
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", -[MRSendCommandResultStatus statusCode](self, "statusCode")];
    [v3 appendFormat:@" code=%@", v6];
  }

  v7 = [(MRSendCommandResultStatus *)self statusType];
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        [v3 appendFormat:@" type=Code"];
      }
    }

    else
    {
      [v3 appendString:@" type=Unknown"];
    }
  }

  else
  {
    if (v7 != 2)
    {
      if (v7 != 3)
      {
        if (v7 != 999)
        {
          goto LABEL_18;
        }

        [v3 appendFormat:@" type=Custom"];
        v8 = [(MRSendCommandResultStatus *)self customDataType];
        [v3 appendFormat:@" customDataType=%@", v8];

        v9 = [(MRSendCommandResultStatus *)self customData];
        [v3 appendFormat:@" customData.length=%ld", objc_msgSend(v9, "length")];
        goto LABEL_16;
      }

      [v3 appendFormat:@" type=Error"];
LABEL_15:
      v9 = [(MRSendCommandResultStatus *)self commandError];
      v13 = [v9 msv_treeDescription];
      [v3 appendFormat:@" error=%@", v13];

LABEL_16:
      goto LABEL_18;
    }

    [v3 appendFormat:@" type=Dialog"];
    v10 = [(MRSendCommandResultStatus *)self dialog];
    v11 = [v10 description];
    [v3 appendFormat:@" dialog=%@", v11];

    v12 = [(MRSendCommandResultStatus *)self commandError];

    if (v12)
    {
      goto LABEL_15;
    }
  }

LABEL_18:
  [v3 appendString:@">"];

  return v3;
}

@end