@interface CPLCloudKitStreamingKey
- ($9AC8AD2FEA0B9A5F24CD76D172BBF93B)timeRange;
- (BOOL)isEqual:(id)a3;
- (CPLCloudKitStreamingKey)initWithRecordID:(id)a3 resourceKey:(id)a4 fingerPrint:(id)a5 filename:(id)a6 groupName:(id)a7 timeRange:(id *)a8 useEncryptedStream:(BOOL)a9;
@end

@implementation CPLCloudKitStreamingKey

- (CPLCloudKitStreamingKey)initWithRecordID:(id)a3 resourceKey:(id)a4 fingerPrint:(id)a5 filename:(id)a6 groupName:(id)a7 timeRange:(id *)a8 useEncryptedStream:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v34.receiver = self;
  v34.super_class = CPLCloudKitStreamingKey;
  v20 = [(CPLCloudKitStreamingKey *)&v34 init];
  if (v20)
  {
    v21 = [v15 copy];
    v22 = *(v20 + 2);
    *(v20 + 2) = v21;

    v23 = [v16 copy];
    v24 = *(v20 + 3);
    *(v20 + 3) = v23;

    v25 = [v18 copy];
    v26 = *(v20 + 5);
    *(v20 + 5) = v25;

    v27 = [v17 copy];
    v28 = *(v20 + 4);
    *(v20 + 4) = v27;

    v29 = [v19 copy];
    v30 = *(v20 + 6);
    *(v20 + 6) = v29;

    v31 = *&a8->var0.var0;
    v32 = *&a8->var0.var3;
    *(v20 + 88) = *&a8->var1.var1;
    *(v20 + 72) = v32;
    *(v20 + 56) = v31;
    v20[8] = a9;
  }

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 != self)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![(CKRecordID *)self->_recordID isEqual:v4->_recordID]|| ![(NSString *)self->_resourceKey isEqual:v4->_resourceKey]|| ![(NSString *)self->_fingerPrint isEqual:v4->_fingerPrint]|| ![(NSString *)self->_filename isEqual:v4->_filename])
    {
      goto LABEL_15;
    }

    v5 = self->_groupName;
    v6 = v5;
    groupName = v4->_groupName;
    if (v5 && groupName)
    {
      v8 = [v5 isEqual:?];

      if ((v8 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v10 = v5 | groupName;

      if (v10)
      {
        goto LABEL_15;
      }
    }

    v11 = *&self->_timeRange.start.epoch;
    *&range1.start.value = *&self->_timeRange.start.value;
    *&range1.start.epoch = v11;
    *&range1.duration.timescale = *&self->_timeRange.duration.timescale;
    v12 = *&v4->_timeRange.start.epoch;
    *&v14.start.value = *&v4->_timeRange.start.value;
    *&v14.start.epoch = v12;
    *&v14.duration.timescale = *&v4->_timeRange.duration.timescale;
    if (CMTimeRangeEqual(&range1, &v14))
    {
      v9 = self->_useEncryptedStream == v4->_useEncryptedStream;
      goto LABEL_16;
    }

LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  v9 = 1;
LABEL_16:

  return v9;
}

- ($9AC8AD2FEA0B9A5F24CD76D172BBF93B)timeRange
{
  v3 = *&self[1].var1.var0;
  *&retstr->var0.var0 = *&self[1].var0.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var1.var3;
  return self;
}

@end