@interface FCCKRecordTypeMapping
- (BOOL)hasChanges;
- (FCCKRecordTypeMapping)initWithFromZoneSchema:(id)schema toZoneSchema:(id)zoneSchema fromRecordSchema:(id)recordSchema toRecordSchema:(id)toRecordSchema;
@end

@implementation FCCKRecordTypeMapping

- (FCCKRecordTypeMapping)initWithFromZoneSchema:(id)schema toZoneSchema:(id)zoneSchema fromRecordSchema:(id)recordSchema toRecordSchema:(id)toRecordSchema
{
  schemaCopy = schema;
  zoneSchemaCopy = zoneSchema;
  recordSchemaCopy = recordSchema;
  toRecordSchemaCopy = toRecordSchema;
  v18.receiver = self;
  v18.super_class = FCCKRecordTypeMapping;
  v15 = [(FCCKRecordTypeMapping *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fromZoneSchema, schema);
    objc_storeStrong(&v16->_toZoneSchema, zoneSchema);
    objc_storeStrong(&v16->_fromRecordSchema, recordSchema);
    objc_storeStrong(&v16->_toRecordSchema, toRecordSchema);
  }

  return v16;
}

- (BOOL)hasChanges
{
  v3 = MEMORY[0x1E69E58C0];
  fromZoneSchema = [(FCCKRecordTypeMapping *)self fromZoneSchema];
  toZoneSchema = [(FCCKRecordTypeMapping *)self toZoneSchema];
  if ([v3 nf_object:fromZoneSchema isEqualToObject:toZoneSchema])
  {
    v6 = MEMORY[0x1E69E58C0];
    fromRecordSchema = [(FCCKRecordTypeMapping *)self fromRecordSchema];
    toRecordSchema = [(FCCKRecordTypeMapping *)self toRecordSchema];
    v9 = [v6 nf_object:fromRecordSchema isEqualToObject:toRecordSchema] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

@end