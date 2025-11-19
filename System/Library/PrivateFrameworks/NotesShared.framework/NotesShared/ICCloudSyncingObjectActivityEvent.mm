@interface ICCloudSyncingObjectActivityEvent
- (BOOL)isEqual:(id)a3;
- (ICCloudSyncingObjectActivityEvent)initWithData:(id)a3 fallbackData:(id)a4;
- (ICCloudSyncingObjectActivityEvent)initWithICCRCoder:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithICCRCoder:(id)a3;
- (void)mergeWith:(id)a3;
@end

@implementation ICCloudSyncingObjectActivityEvent

- (ICCloudSyncingObjectActivityEvent)initWithData:(id)a3 fallbackData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICCloudSyncingObjectActivityEvent;
  v9 = [(ICCloudSyncingObjectActivityEvent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, a3);
    objc_storeStrong(&v10->_fallbackData, a4);
  }

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(ICCloudSyncingObjectActivityEvent *)self data];
  v6 = [v5 ic_stringValue];
  v7 = [(ICCloudSyncingObjectActivityEvent *)self fallbackData];
  v8 = [v7 ic_stringValue];
  v9 = [v3 stringWithFormat:@"<%@: %p, dataString: %@, fallbackDataString: %@>", v4, self, v6, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = a3;
  objc_opt_class();
  v5 = ICDynamicCast();

  v6 = [v5 data];
  v7 = [(ICCloudSyncingObjectActivityEvent *)self data];
  v8 = [v6 isEqual:v7];

  return v8;
}

- (unint64_t)hash
{
  v2 = [(ICCloudSyncingObjectActivityEvent *)self data];
  v3 = [v2 hash];

  return v3;
}

- (void)mergeWith:(id)a3
{
  if (![(ICCloudSyncingObjectActivityEvent *)self isEqual:a3])
  {
    v3 = MEMORY[0x277D36198];

    [v3 handleFailedAssertWithCondition:"[self isEqual:other]" functionName:"-[ICCloudSyncingObjectActivityEvent mergeWith:]" simulateCrash:1 showAlert:0 format:@"Cannot merge ICCloudSyncingObjectActivity with a different value"];
  }
}

- (void)encodeWithICCRCoder:(id)a3
{
  v7 = a3;
  v4 = [(ICCloudSyncingObjectActivityEvent *)self data];
  [v7 encodeData:v4 forKey:@"data"];

  v5 = [(ICCloudSyncingObjectActivityEvent *)self fallbackData];
  if (v5)
  {
    v6 = [(ICCloudSyncingObjectActivityEvent *)self fallbackData];
    [v7 encodeData:v6 forKey:@"fallbackData"];
  }
}

- (ICCloudSyncingObjectActivityEvent)initWithICCRCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeDataForKey:@"data"];
  if ([v4 hasDecodableValueForKey:@"fallbackData"])
  {
    v6 = [v4 decodeDataForKey:@"fallbackData"];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(ICCloudSyncingObjectActivityEvent *)self initWithData:v5 fallbackData:v6];

  return v7;
}

@end