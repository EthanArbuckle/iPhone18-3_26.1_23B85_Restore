@interface FCCKRecordZoneIDMapping
- (BOOL)hasChanges;
- (FCCKRecordZoneIDMapping)initWithFromZoneSchema:(id)a3 toZoneSchema:(id)a4;
@end

@implementation FCCKRecordZoneIDMapping

- (FCCKRecordZoneIDMapping)initWithFromZoneSchema:(id)a3 toZoneSchema:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FCCKRecordZoneIDMapping;
  v9 = [(FCCKRecordZoneIDMapping *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fromZoneSchema, a3);
    objc_storeStrong(&v10->_toZoneSchema, a4);
  }

  return v10;
}

- (BOOL)hasChanges
{
  v3 = MEMORY[0x1E69E58C0];
  v4 = [(FCCKRecordZoneIDMapping *)self fromZoneSchema];
  v5 = [(FCCKRecordZoneIDMapping *)self toZoneSchema];
  LOBYTE(v3) = [v3 nf_object:v4 isEqualToObject:v5];

  return v3 ^ 1;
}

@end