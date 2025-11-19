@interface _IncomingWideLoadQueue
- (BOOL)addIncomingPart:(id)a3;
- (_IncomingWideLoadQueue)initWithPartialMessageTemplate:(id)a3;
- (id)getWideLoad;
- (void)dealloc;
@end

@implementation _IncomingWideLoadQueue

- (_IncomingWideLoadQueue)initWithPartialMessageTemplate:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = _IncomingWideLoadQueue;
  v5 = [(_IncomingWideLoadQueue *)&v18 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  if ([v4 isPartial] && objc_msgSend(v4, "numberOfParts"))
  {
    v6 = [v4 wideLoadId];
    wideLoadId = v5->_wideLoadId;
    v5->_wideLoadId = v6;

    v8 = [(NSUUID *)v5->_wideLoadId UUIDString];
    v9 = [NSString stringWithFormat:@"Incoming-%@.data", v8];

    v10 = sub_10002F050();
    v11 = [v10 stringByAppendingPathComponent:v9];
    tempFilePath = v5->_tempFilePath;
    v5->_tempFilePath = v11;

    v5->_maxPartSize = [v4 maxPartSize];
    v5->_partsExpected = [v4 numberOfParts];
    v5->_partsAdded = 0;
    v13 = [v4 copyWithoutPayload];
    wideLoadMessageTemplate = v5->_wideLoadMessageTemplate;
    v5->_wideLoadMessageTemplate = v13;

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

- (BOOL)addIncomingPart:(id)a3
{
  v4 = a3;
  if (![v4 isPartial] || !objc_msgSend(v4, "numberOfParts"))
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

  if (![v4 getPayloadDataIntoFile:self->_tempFilePath toOffset:{objc_msgSend(v4, "partNumber") * maxPartSize}])
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
    v3 = [(NTKDSyncMessage *)self->_wideLoadMessageTemplate copyWithoutPayload];
    if ([v3 setPayloadDataFromFile:self->_tempFilePath])
    {
      v4 = v3;
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