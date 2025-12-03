@interface CPLCloudKitStreamingKey
- ($9AC8AD2FEA0B9A5F24CD76D172BBF93B)timeRange;
- (BOOL)isEqual:(id)equal;
- (CPLCloudKitStreamingKey)initWithRecordID:(id)d resourceKey:(id)key fingerPrint:(id)print filename:(id)filename groupName:(id)name timeRange:(id *)range useEncryptedStream:(BOOL)stream;
@end

@implementation CPLCloudKitStreamingKey

- (CPLCloudKitStreamingKey)initWithRecordID:(id)d resourceKey:(id)key fingerPrint:(id)print filename:(id)filename groupName:(id)name timeRange:(id *)range useEncryptedStream:(BOOL)stream
{
  dCopy = d;
  keyCopy = key;
  printCopy = print;
  filenameCopy = filename;
  nameCopy = name;
  v34.receiver = self;
  v34.super_class = CPLCloudKitStreamingKey;
  v20 = [(CPLCloudKitStreamingKey *)&v34 init];
  if (v20)
  {
    v21 = [dCopy copy];
    v22 = *(v20 + 2);
    *(v20 + 2) = v21;

    v23 = [keyCopy copy];
    v24 = *(v20 + 3);
    *(v20 + 3) = v23;

    v25 = [filenameCopy copy];
    v26 = *(v20 + 5);
    *(v20 + 5) = v25;

    v27 = [printCopy copy];
    v28 = *(v20 + 4);
    *(v20 + 4) = v27;

    v29 = [nameCopy copy];
    v30 = *(v20 + 6);
    *(v20 + 6) = v29;

    v31 = *&range->var0.var0;
    v32 = *&range->var0.var3;
    *(v20 + 88) = *&range->var1.var1;
    *(v20 + 72) = v32;
    *(v20 + 56) = v31;
    v20[8] = stream;
  }

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy != self)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![(CKRecordID *)self->_recordID isEqual:equalCopy->_recordID]|| ![(NSString *)self->_resourceKey isEqual:equalCopy->_resourceKey]|| ![(NSString *)self->_fingerPrint isEqual:equalCopy->_fingerPrint]|| ![(NSString *)self->_filename isEqual:equalCopy->_filename])
    {
      goto LABEL_15;
    }

    v5 = self->_groupName;
    v6 = v5;
    groupName = equalCopy->_groupName;
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
    v12 = *&equalCopy->_timeRange.start.epoch;
    *&v14.start.value = *&equalCopy->_timeRange.start.value;
    *&v14.start.epoch = v12;
    *&v14.duration.timescale = *&equalCopy->_timeRange.duration.timescale;
    if (CMTimeRangeEqual(&range1, &v14))
    {
      v9 = self->_useEncryptedStream == equalCopy->_useEncryptedStream;
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