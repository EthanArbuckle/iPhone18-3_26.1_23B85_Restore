@interface FCCKRecordIDMapping
- (BOOL)hasChanges;
- (CKRecordID)fromRecordID;
- (CKRecordID)toRecordID;
- (FCCKRecordIDMapping)initWithFromZoneSchema:(id)schema toZoneSchema:(id)zoneSchema fromRecordName:(id)name toRecordName:(id)recordName;
@end

@implementation FCCKRecordIDMapping

- (FCCKRecordIDMapping)initWithFromZoneSchema:(id)schema toZoneSchema:(id)zoneSchema fromRecordName:(id)name toRecordName:(id)recordName
{
  schemaCopy = schema;
  zoneSchemaCopy = zoneSchema;
  nameCopy = name;
  recordNameCopy = recordName;
  v18.receiver = self;
  v18.super_class = FCCKRecordIDMapping;
  v15 = [(FCCKRecordIDMapping *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fromZoneSchema, schema);
    objc_storeStrong(&v16->_toZoneSchema, zoneSchema);
    objc_storeStrong(&v16->_fromRecordName, name);
    objc_storeStrong(&v16->_toRecordName, recordName);
  }

  return v16;
}

- (CKRecordID)fromRecordID
{
  v3 = objc_alloc(MEMORY[0x1E695BA70]);
  fromRecordName = [(FCCKRecordIDMapping *)self fromRecordName];
  fromZoneSchema = [(FCCKRecordIDMapping *)self fromZoneSchema];
  v6 = fromZoneSchema;
  if (fromZoneSchema)
  {
    v7 = *(fromZoneSchema + 24);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v3 initWithRecordName:fromRecordName zoneID:v8];

  return v9;
}

- (CKRecordID)toRecordID
{
  v3 = objc_alloc(MEMORY[0x1E695BA70]);
  toRecordName = [(FCCKRecordIDMapping *)self toRecordName];
  toZoneSchema = [(FCCKRecordIDMapping *)self toZoneSchema];
  v6 = toZoneSchema;
  if (toZoneSchema)
  {
    v7 = *(toZoneSchema + 24);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v3 initWithRecordName:toRecordName zoneID:v8];

  return v9;
}

- (BOOL)hasChanges
{
  v3 = MEMORY[0x1E69E58C0];
  fromZoneSchema = [(FCCKRecordIDMapping *)self fromZoneSchema];
  toZoneSchema = [(FCCKRecordIDMapping *)self toZoneSchema];
  if ([v3 nf_object:fromZoneSchema isEqualToObject:toZoneSchema])
  {
    v6 = MEMORY[0x1E69E58C0];
    fromRecordName = [(FCCKRecordIDMapping *)self fromRecordName];
    toRecordName = [(FCCKRecordIDMapping *)self toRecordName];
    v9 = [v6 nf_object:fromRecordName isEqualToObject:toRecordName] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

@end