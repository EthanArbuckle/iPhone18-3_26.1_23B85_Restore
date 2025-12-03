@interface MRSendCommandResultStatus
+ (id)successStatus;
- (MRSendCommandResultStatus)initWithProtobuf:(id)protobuf;
- (MRSendCommandResultStatus)initWithStatusType:(int64_t)type statusCode:(unsigned int)code dialog:(id)dialog customData:(id)data customDataType:(id)dataType error:(id)error;
- (_MRSendCommandResultStatusProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MRSendCommandResultStatus

+ (id)successStatus
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__MRSendCommandResultStatus_successStatus__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (MRSendCommandResultStatus)initWithStatusType:(int64_t)type statusCode:(unsigned int)code dialog:(id)dialog customData:(id)data customDataType:(id)dataType error:(id)error
{
  dialogCopy = dialog;
  dataCopy = data;
  dataTypeCopy = dataType;
  errorCopy = error;
  v22.receiver = self;
  v22.super_class = MRSendCommandResultStatus;
  v18 = [(MRSendCommandResultStatus *)&v22 init];
  v19 = v18;
  if (v18)
  {
    v18->_statusType = type;
    v18->_statusCode = code;
    objc_storeStrong(&v18->_dialog, dialog);
    objc_storeStrong(&v19->_customData, data);
    objc_storeStrong(&v19->_customDataType, dataType);
    objc_storeStrong(&v19->_commandError, error);
  }

  return v19;
}

- (MRSendCommandResultStatus)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v5 = protobufCopy;
  if (protobufCopy)
  {
    type = [protobufCopy type];
    statusCode = [v5 statusCode];
    v8 = statusCode;
    if (type != 1 || statusCode)
    {
      v19 = type;
      v10 = [MRSendCommandHandlerDialog alloc];
      dialog = [v5 dialog];
      v12 = [(MRSendCommandHandlerDialog *)v10 initWithProtobuf:dialog];
      customData = [v5 customData];
      customDataType = [v5 customDataType];
      v15 = objc_alloc(MEMORY[0x1E696ABC0]);
      error = [v5 error];
      v17 = [v15 mr_initWithProtobuf:error];
      self = [(MRSendCommandResultStatus *)self initWithStatusType:v19 statusCode:v8 dialog:v12 customData:customData customDataType:customDataType error:v17];

      selfCopy = self;
    }

    else
    {
      selfCopy = [objc_opt_class() successStatus];
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_MRSendCommandResultStatusProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRSendCommandResultStatusProtobuf);
  [(_MRSendCommandResultStatusProtobuf *)v3 setType:[(MRSendCommandResultStatus *)self statusType]];
  [(_MRSendCommandResultStatusProtobuf *)v3 setStatusCode:[(MRSendCommandResultStatus *)self statusCode]];
  dialog = [(MRSendCommandResultStatus *)self dialog];
  protobuf = [dialog protobuf];
  [(_MRSendCommandResultStatusProtobuf *)v3 setDialog:protobuf];

  customData = [(MRSendCommandResultStatus *)self customData];
  [(_MRSendCommandResultStatusProtobuf *)v3 setCustomData:customData];

  customDataType = [(MRSendCommandResultStatus *)self customDataType];
  [(_MRSendCommandResultStatusProtobuf *)v3 setCustomDataType:customDataType];

  commandError = [(MRSendCommandResultStatus *)self commandError];
  mr_protobuf = [commandError mr_protobuf];
  [(_MRSendCommandResultStatusProtobuf *)v3 setError:mr_protobuf];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  successStatus = [objc_opt_class() successStatus];

  if (successStatus == self)
  {

    return self;
  }

  else
  {
    v17 = [objc_opt_class() allocWithZone:zone];
    statusType = [(MRSendCommandResultStatus *)self statusType];
    statusCode = [(MRSendCommandResultStatus *)self statusCode];
    dialog = [(MRSendCommandResultStatus *)self dialog];
    v8 = [dialog copyWithZone:zone];
    customData = [(MRSendCommandResultStatus *)self customData];
    v10 = [customData copyWithZone:zone];
    customDataType = [(MRSendCommandResultStatus *)self customDataType];
    v12 = [customDataType copyWithZone:zone];
    commandError = [(MRSendCommandResultStatus *)self commandError];
    v14 = [commandError copyWithZone:zone];
    v15 = [v17 initWithStatusType:statusType statusCode:statusCode dialog:v8 customData:v10 customDataType:v12 error:v14];

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

  statusType = [(MRSendCommandResultStatus *)self statusType];
  if (statusType <= 1)
  {
    if (statusType)
    {
      if (statusType == 1)
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
    if (statusType != 2)
    {
      if (statusType != 3)
      {
        if (statusType != 999)
        {
          goto LABEL_18;
        }

        [v3 appendFormat:@" type=Custom"];
        customDataType = [(MRSendCommandResultStatus *)self customDataType];
        [v3 appendFormat:@" customDataType=%@", customDataType];

        customData = [(MRSendCommandResultStatus *)self customData];
        [v3 appendFormat:@" customData.length=%ld", objc_msgSend(customData, "length")];
        goto LABEL_16;
      }

      [v3 appendFormat:@" type=Error"];
LABEL_15:
      customData = [(MRSendCommandResultStatus *)self commandError];
      msv_treeDescription = [customData msv_treeDescription];
      [v3 appendFormat:@" error=%@", msv_treeDescription];

LABEL_16:
      goto LABEL_18;
    }

    [v3 appendFormat:@" type=Dialog"];
    dialog = [(MRSendCommandResultStatus *)self dialog];
    v11 = [dialog description];
    [v3 appendFormat:@" dialog=%@", v11];

    commandError = [(MRSendCommandResultStatus *)self commandError];

    if (commandError)
    {
      goto LABEL_15;
    }
  }

LABEL_18:
  [v3 appendString:@">"];

  return v3;
}

@end