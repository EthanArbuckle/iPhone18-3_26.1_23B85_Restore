@interface _DKEventData
+ (id)fromPBCodable:(id)codable;
- (id)asData;
- (id)initWithCompressedData:(void *)data uncompressedLength:(void *)length version:;
- (id)initWithData:(void *)data version:;
- (id)toPBCodable;
- (uint64_t)version;
@end

@implementation _DKEventData

- (id)toPBCodable
{
  if ([(_DKEventData *)self version])
  {
    startDate = [(_DKSyncWindow *)self startDate];

    if (startDate)
    {
      startDate = objc_alloc_init(_DKPREventData);
      version = [(_DKEventData *)self version];
      [(_DKPREventData *)startDate setVersion:version];
      startDate2 = [(_DKSyncWindow *)self startDate];
      [(_DKPREventData *)startDate setEvent:startDate2];

      if ([(_DKEventData *)self version]== 2)
      {
        [(_DKPREventData *)startDate setHasUncompressedLength:?];
        urgency = [(_DKSyncType *)self urgency];
        [(_DKPREventData *)startDate setUncompressedLength:urgency];
      }
    }
  }

  else
  {
    startDate = 0;
  }

  return startDate;
}

+ (id)fromPBCodable:(id)codable
{
  codableCopy = codable;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = codableCopy;
    event = [(_DKPREventData *)v4 event];

    if (event)
    {
      version = [(_DKPREventData *)v4 version];
      v7 = [_DKEventData alloc];
      event2 = [(_DKPREventData *)v4 event];
      if (version == 2)
      {
        uncompressedLength = [(_DKPREventData *)v4 uncompressedLength];
        version2 = [(_DKPREventData *)v4 version];
        v11 = [(_DKEventData *)&v7->super.isa initWithCompressedData:event2 uncompressedLength:uncompressedLength version:version2];
      }

      else
      {
        version3 = [(_DKPREventData *)v4 version];
        v11 = [(_DKEventData *)&v7->super.isa initWithData:event2 version:version3];
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)initWithData:(void *)data version:
{
  v6 = a2;
  if (self)
  {
    v9.receiver = self;
    v9.super_class = _DKEventData;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    self = v7;
    if (v7)
    {
      v7[1] = data;
      objc_storeStrong(v7 + 2, a2);
    }
  }

  return self;
}

- (id)initWithCompressedData:(void *)data uncompressedLength:(void *)length version:
{
  v8 = a2;
  if (self)
  {
    v11.receiver = self;
    v11.super_class = _DKEventData;
    v9 = objc_msgSendSuper2(&v11, sel_init);
    self = v9;
    if (v9)
    {
      v9[1] = length;
      v9[3] = data;
      objc_storeStrong(v9 + 2, a2);
    }
  }

  return self;
}

- (id)asData
{
  if (self)
  {
    toPBCodable = [self toPBCodable];
    data = [toPBCodable data];
  }

  else
  {
    data = 0;
  }

  return data;
}

- (uint64_t)version
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

@end