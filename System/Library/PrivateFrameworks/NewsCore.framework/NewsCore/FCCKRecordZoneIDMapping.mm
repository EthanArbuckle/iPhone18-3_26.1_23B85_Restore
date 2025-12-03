@interface FCCKRecordZoneIDMapping
- (BOOL)hasChanges;
- (FCCKRecordZoneIDMapping)initWithFromZoneSchema:(id)schema toZoneSchema:(id)zoneSchema;
@end

@implementation FCCKRecordZoneIDMapping

- (FCCKRecordZoneIDMapping)initWithFromZoneSchema:(id)schema toZoneSchema:(id)zoneSchema
{
  schemaCopy = schema;
  zoneSchemaCopy = zoneSchema;
  v12.receiver = self;
  v12.super_class = FCCKRecordZoneIDMapping;
  v9 = [(FCCKRecordZoneIDMapping *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fromZoneSchema, schema);
    objc_storeStrong(&v10->_toZoneSchema, zoneSchema);
  }

  return v10;
}

- (BOOL)hasChanges
{
  v3 = MEMORY[0x1E69E58C0];
  fromZoneSchema = [(FCCKRecordZoneIDMapping *)self fromZoneSchema];
  toZoneSchema = [(FCCKRecordZoneIDMapping *)self toZoneSchema];
  LOBYTE(v3) = [v3 nf_object:fromZoneSchema isEqualToObject:toZoneSchema];

  return v3 ^ 1;
}

@end