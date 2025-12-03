@interface FCCKRecordMapping
- (BOOL)hasChanges;
- (FCCKRecordMapping)initWithFromZoneSchema:(id)schema toZoneSchema:(id)zoneSchema fromRecordSchema:(id)recordSchema toRecordSchema:(id)toRecordSchema recordIDMapping:(id)mapping;
@end

@implementation FCCKRecordMapping

- (FCCKRecordMapping)initWithFromZoneSchema:(id)schema toZoneSchema:(id)zoneSchema fromRecordSchema:(id)recordSchema toRecordSchema:(id)toRecordSchema recordIDMapping:(id)mapping
{
  schemaCopy = schema;
  zoneSchemaCopy = zoneSchema;
  recordSchemaCopy = recordSchema;
  toRecordSchemaCopy = toRecordSchema;
  mappingCopy = mapping;
  v21.receiver = self;
  v21.super_class = FCCKRecordMapping;
  v17 = [(FCCKRecordMapping *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_fromZoneSchema, schema);
    objc_storeStrong(&v18->_toZoneSchema, zoneSchema);
    objc_storeStrong(&v18->_fromRecordSchema, recordSchema);
    objc_storeStrong(&v18->_toRecordSchema, toRecordSchema);
    objc_storeStrong(&v18->_recordIDMapping, mapping);
  }

  return v18;
}

- (BOOL)hasChanges
{
  v3 = MEMORY[0x1E69E58C0];
  fromZoneSchema = [(FCCKRecordMapping *)self fromZoneSchema];
  toZoneSchema = [(FCCKRecordMapping *)self toZoneSchema];
  if ([v3 nf_object:fromZoneSchema isEqualToObject:toZoneSchema])
  {
    v6 = MEMORY[0x1E69E58C0];
    fromRecordSchema = [(FCCKRecordMapping *)self fromRecordSchema];
    toRecordSchema = [(FCCKRecordMapping *)self toRecordSchema];
    if ([v6 nf_object:fromRecordSchema isEqualToObject:toRecordSchema])
    {
      recordIDMapping = [(FCCKRecordMapping *)self recordIDMapping];
      hasChanges = [recordIDMapping hasChanges];
    }

    else
    {
      hasChanges = 1;
    }
  }

  else
  {
    hasChanges = 1;
  }

  return hasChanges;
}

@end