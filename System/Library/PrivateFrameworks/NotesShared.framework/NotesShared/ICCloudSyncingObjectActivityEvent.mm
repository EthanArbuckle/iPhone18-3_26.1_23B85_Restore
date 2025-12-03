@interface ICCloudSyncingObjectActivityEvent
- (BOOL)isEqual:(id)equal;
- (ICCloudSyncingObjectActivityEvent)initWithData:(id)data fallbackData:(id)fallbackData;
- (ICCloudSyncingObjectActivityEvent)initWithICCRCoder:(id)coder;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithICCRCoder:(id)coder;
- (void)mergeWith:(id)with;
@end

@implementation ICCloudSyncingObjectActivityEvent

- (ICCloudSyncingObjectActivityEvent)initWithData:(id)data fallbackData:(id)fallbackData
{
  dataCopy = data;
  fallbackDataCopy = fallbackData;
  v12.receiver = self;
  v12.super_class = ICCloudSyncingObjectActivityEvent;
  v9 = [(ICCloudSyncingObjectActivityEvent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, data);
    objc_storeStrong(&v10->_fallbackData, fallbackData);
  }

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  data = [(ICCloudSyncingObjectActivityEvent *)self data];
  ic_stringValue = [data ic_stringValue];
  fallbackData = [(ICCloudSyncingObjectActivityEvent *)self fallbackData];
  ic_stringValue2 = [fallbackData ic_stringValue];
  v9 = [v3 stringWithFormat:@"<%@: %p, dataString: %@, fallbackDataString: %@>", v4, self, ic_stringValue, ic_stringValue2];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  equalCopy = equal;
  objc_opt_class();
  v5 = ICDynamicCast();

  data = [v5 data];
  data2 = [(ICCloudSyncingObjectActivityEvent *)self data];
  v8 = [data isEqual:data2];

  return v8;
}

- (unint64_t)hash
{
  data = [(ICCloudSyncingObjectActivityEvent *)self data];
  v3 = [data hash];

  return v3;
}

- (void)mergeWith:(id)with
{
  if (![(ICCloudSyncingObjectActivityEvent *)self isEqual:with])
  {
    v3 = MEMORY[0x277D36198];

    [v3 handleFailedAssertWithCondition:"[self isEqual:other]" functionName:"-[ICCloudSyncingObjectActivityEvent mergeWith:]" simulateCrash:1 showAlert:0 format:@"Cannot merge ICCloudSyncingObjectActivity with a different value"];
  }
}

- (void)encodeWithICCRCoder:(id)coder
{
  coderCopy = coder;
  data = [(ICCloudSyncingObjectActivityEvent *)self data];
  [coderCopy encodeData:data forKey:@"data"];

  fallbackData = [(ICCloudSyncingObjectActivityEvent *)self fallbackData];
  if (fallbackData)
  {
    fallbackData2 = [(ICCloudSyncingObjectActivityEvent *)self fallbackData];
    [coderCopy encodeData:fallbackData2 forKey:@"fallbackData"];
  }
}

- (ICCloudSyncingObjectActivityEvent)initWithICCRCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeDataForKey:@"data"];
  if ([coderCopy hasDecodableValueForKey:@"fallbackData"])
  {
    v6 = [coderCopy decodeDataForKey:@"fallbackData"];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(ICCloudSyncingObjectActivityEvent *)self initWithData:v5 fallbackData:v6];

  return v7;
}

@end