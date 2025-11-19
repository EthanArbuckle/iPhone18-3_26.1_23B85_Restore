@interface _OutgoingWideLoadQueue
- (_OutgoingWideLoadQueue)initWithWideLoadMessage:(id)a3 maxPartSize:(unint64_t)a4;
- (id)dequeueNextPart;
- (void)dealloc;
@end

@implementation _OutgoingWideLoadQueue

- (_OutgoingWideLoadQueue)initWithWideLoadMessage:(id)a3 maxPartSize:(unint64_t)a4
{
  v6 = a3;
  v21.receiver = self;
  v21.super_class = _OutgoingWideLoadQueue;
  v7 = [(_OutgoingWideLoadQueue *)&v21 init];
  if (v7)
  {
    if (([v6 isPartial] & 1) != 0 || !objc_msgSend(v6, "payloadSize"))
    {
      v19 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10003F824();
      }
    }

    else
    {
      v8 = +[NSUUID UUID];
      wideLoadId = v7->_wideLoadId;
      v7->_wideLoadId = v8;

      v10 = [(NSUUID *)v7->_wideLoadId UUIDString];
      v11 = [NSString stringWithFormat:@"Outgoing-%@.data", v10];

      v12 = sub_10002F050();
      v13 = [v12 stringByAppendingPathComponent:v11];
      tempFilePath = v7->_tempFilePath;
      v7->_tempFilePath = v13;

      if ([v6 getPayloadDataIntoFile:v7->_tempFilePath])
      {
        v7->_maxPartSize = a4;
        if (!a4)
        {
          a4 = 4608000;
        }

        v15 = ([v6 payloadSize] + a4 - 1) / a4;
        v7->_partsAdded = v15;
        v7->_partsRemaining = v15;
        v16 = [v6 copyWithoutPayload];
        partialMessageTemplate = v7->_partialMessageTemplate;
        v7->_partialMessageTemplate = v16;

        [(NTKDSyncMessage *)v7->_partialMessageTemplate setWideLoadId:v7->_wideLoadId];
        [(NTKDSyncMessage *)v7->_partialMessageTemplate setNumberOfParts:v7->_partsAdded];
        [(NTKDSyncMessage *)v7->_partialMessageTemplate setMaxPartSize:v7->_maxPartSize];
        [(NTKDSyncMessage *)v7->_partialMessageTemplate setPartNumber:0];

        goto LABEL_8;
      }
    }

    v18 = 0;
    goto LABEL_13;
  }

LABEL_8:
  v18 = v7;
LABEL_13:

  return v18;
}

- (void)dealloc
{
  v3 = +[NSFileManager defaultManager];
  [v3 removeItemAtPath:self->_tempFilePath error:0];

  v4.receiver = self;
  v4.super_class = _OutgoingWideLoadQueue;
  [(_OutgoingWideLoadQueue *)&v4 dealloc];
}

- (id)dequeueNextPart
{
  p_partsRemaining = &self->_partsRemaining;
  partsRemaining = self->_partsRemaining;
  if (partsRemaining)
  {
    v5 = self->_partsAdded - partsRemaining;
    if (self->_maxPartSize)
    {
      maxPartSize = self->_maxPartSize;
    }

    else
    {
      maxPartSize = 4608000;
    }

    self->_partsRemaining = partsRemaining - 1;
    v7 = [(NTKDSyncMessage *)self->_partialMessageTemplate copyWithoutPayload];
    if ([v7 setPayloadDataFromFile:self->_tempFilePath fromOffset:maxPartSize * v5 length:maxPartSize])
    {
      [v7 setPartNumber:v5];
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003F8B4(p_partsRemaining, self);
    }

    v8 = 0;
  }

  return v8;
}

@end