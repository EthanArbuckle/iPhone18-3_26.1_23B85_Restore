@interface _IncomingWideLoadQueue
- (BOOL)addIncomingPart:(id)part;
- (_IncomingWideLoadQueue)initWithPartialMessageTemplate:(id)template;
- (id)getWideLoad;
- (void)dealloc;
@end

@implementation _IncomingWideLoadQueue

- (_IncomingWideLoadQueue)initWithPartialMessageTemplate:(id)template
{
  templateCopy = template;
  v18.receiver = self;
  v18.super_class = _IncomingWideLoadQueue;
  v5 = [(_IncomingWideLoadQueue *)&v18 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  if ([templateCopy isPartial] && objc_msgSend(templateCopy, "numberOfParts"))
  {
    wideLoadId = [templateCopy wideLoadId];
    wideLoadId = v5->_wideLoadId;
    v5->_wideLoadId = wideLoadId;

    uUIDString = [(NSUUID *)v5->_wideLoadId UUIDString];
    v9 = [NSString stringWithFormat:@"Incoming-%@.data", uUIDString];

    v10 = sub_10002F050();
    v11 = [v10 stringByAppendingPathComponent:v9];
    tempFilePath = v5->_tempFilePath;
    v5->_tempFilePath = v11;

    v5->_maxPartSize = [templateCopy maxPartSize];
    v5->_partsExpected = [templateCopy numberOfParts];
    v5->_partsAdded = 0;
    copyWithoutPayload = [templateCopy copyWithoutPayload];
    wideLoadMessageTemplate = v5->_wideLoadMessageTemplate;
    v5->_wideLoadMessageTemplate = copyWithoutPayload;

    [(NTKDSyncMessage *)v5->_wideLoadMessageTemplate setWideLoadId:0];
    [(NTKDSyncMessage *)v5->_wideLoadMessageTemplate setNumberOfParts:0];
    [(NTKDSyncMessage *)v5->_wideLoadMessageTemplate setPartNumber:0];
    [(NTKDSyncMessage *)v5->_wideLoadMessageTemplate setMaxPartSize:0];

LABEL_5:
    v15 = v5;
    goto LABEL_9;
  }

  v16 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_10003F930();
  }

  v15 = 0;
LABEL_9:

  return v15;
}

- (void)dealloc
{
  v3 = +[NSFileManager defaultManager];
  [v3 removeItemAtPath:self->_tempFilePath error:0];

  v4.receiver = self;
  v4.super_class = _IncomingWideLoadQueue;
  [(_IncomingWideLoadQueue *)&v4 dealloc];
}

- (BOOL)addIncomingPart:(id)part
{
  partCopy = part;
  if (![partCopy isPartial] || !objc_msgSend(partCopy, "numberOfParts"))
  {
    v9 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003FA28();
    }

    goto LABEL_12;
  }

  p_partsAdded = &self->_partsAdded;
  p_partsExpected = &self->_partsExpected;
  if (self->_partsAdded >= self->_partsExpected)
  {
    v11 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10003F9AC(p_partsAdded, p_partsExpected);
    }

    goto LABEL_12;
  }

  if (self->_maxPartSize)
  {
    maxPartSize = self->_maxPartSize;
  }

  else
  {
    maxPartSize = 4608000;
  }

  if (![partCopy getPayloadDataIntoFile:self->_tempFilePath toOffset:{objc_msgSend(partCopy, "partNumber") * maxPartSize}])
  {
LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  ++*p_partsAdded;
  v8 = 1;
LABEL_13:

  return v8;
}

- (id)getWideLoad
{
  if ([(_IncomingWideLoadQueue *)self isFull])
  {
    copyWithoutPayload = [(NTKDSyncMessage *)self->_wideLoadMessageTemplate copyWithoutPayload];
    if ([copyWithoutPayload setPayloadDataFromFile:self->_tempFilePath])
    {
      v4 = copyWithoutPayload;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v5 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003FAA4();
    }

    v4 = 0;
  }

  return v4;
}

@end