@interface BCCloudKitRecordZone
- (BCCloudKitRecordZone)initWithRecordZone:(id)zone;
- (id)description;
@end

@implementation BCCloudKitRecordZone

- (BCCloudKitRecordZone)initWithRecordZone:(id)zone
{
  zoneCopy = zone;
  v9.receiver = self;
  v9.super_class = BCCloudKitRecordZone;
  v6 = [(BCCloudKitRecordZone *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recordZone, zone);
  }

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  recordZone = [(BCCloudKitRecordZone *)self recordZone];
  v5 = [NSString stringWithFormat:@"<%@: %p recordZone:%@>", v3, self, recordZone];

  return v5;
}

@end