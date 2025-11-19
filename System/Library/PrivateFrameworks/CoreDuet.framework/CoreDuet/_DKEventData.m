@interface _DKEventData
+ (id)fromPBCodable:(id)a3;
- (id)asData;
- (id)initWithCompressedData:(void *)a3 uncompressedLength:(void *)a4 version:;
- (id)initWithData:(void *)a3 version:;
- (id)toPBCodable;
- (uint64_t)version;
@end

@implementation _DKEventData

- (id)toPBCodable
{
  if ([(_DKEventData *)self version])
  {
    v3 = [(_DKSyncWindow *)self startDate];

    if (v3)
    {
      v3 = objc_alloc_init(_DKPREventData);
      v4 = [(_DKEventData *)self version];
      [(_DKPREventData *)v3 setVersion:v4];
      v5 = [(_DKSyncWindow *)self startDate];
      [(_DKPREventData *)v3 setEvent:v5];

      if ([(_DKEventData *)self version]== 2)
      {
        [(_DKPREventData *)v3 setHasUncompressedLength:?];
        v6 = [(_DKSyncType *)self urgency];
        [(_DKPREventData *)v3 setUncompressedLength:v6];
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)fromPBCodable:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [(_DKPREventData *)v4 event];

    if (v5)
    {
      v6 = [(_DKPREventData *)v4 version];
      v7 = [_DKEventData alloc];
      v8 = [(_DKPREventData *)v4 event];
      if (v6 == 2)
      {
        v9 = [(_DKPREventData *)v4 uncompressedLength];
        v10 = [(_DKPREventData *)v4 version];
        v11 = [(_DKEventData *)&v7->super.isa initWithCompressedData:v8 uncompressedLength:v9 version:v10];
      }

      else
      {
        v13 = [(_DKPREventData *)v4 version];
        v11 = [(_DKEventData *)&v7->super.isa initWithData:v8 version:v13];
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

- (id)initWithData:(void *)a3 version:
{
  v6 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = _DKEventData;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    a1 = v7;
    if (v7)
    {
      v7[1] = a3;
      objc_storeStrong(v7 + 2, a2);
    }
  }

  return a1;
}

- (id)initWithCompressedData:(void *)a3 uncompressedLength:(void *)a4 version:
{
  v8 = a2;
  if (a1)
  {
    v11.receiver = a1;
    v11.super_class = _DKEventData;
    v9 = objc_msgSendSuper2(&v11, sel_init);
    a1 = v9;
    if (v9)
    {
      v9[1] = a4;
      v9[3] = a3;
      objc_storeStrong(v9 + 2, a2);
    }
  }

  return a1;
}

- (id)asData
{
  if (a1)
  {
    v1 = [a1 toPBCodable];
    v2 = [v1 data];
  }

  else
  {
    v2 = 0;
  }

  return v2;
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