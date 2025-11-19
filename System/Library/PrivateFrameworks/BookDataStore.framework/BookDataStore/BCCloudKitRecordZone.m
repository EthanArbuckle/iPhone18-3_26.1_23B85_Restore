@interface BCCloudKitRecordZone
- (BCCloudKitRecordZone)initWithRecordZone:(id)a3;
- (id)description;
@end

@implementation BCCloudKitRecordZone

- (BCCloudKitRecordZone)initWithRecordZone:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BCCloudKitRecordZone;
  v6 = [(BCCloudKitRecordZone *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recordZone, a3);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(BCCloudKitRecordZone *)self recordZone];
  v6 = [v3 stringWithFormat:@"<%@: %p recordZone:%@>", v4, self, v5];

  return v6;
}

@end