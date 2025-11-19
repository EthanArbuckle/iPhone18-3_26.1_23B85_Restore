@interface FCCKRecordIDMapping
- (BOOL)hasChanges;
- (CKRecordID)fromRecordID;
- (CKRecordID)toRecordID;
- (FCCKRecordIDMapping)initWithFromZoneSchema:(id)a3 toZoneSchema:(id)a4 fromRecordName:(id)a5 toRecordName:(id)a6;
@end

@implementation FCCKRecordIDMapping

- (FCCKRecordIDMapping)initWithFromZoneSchema:(id)a3 toZoneSchema:(id)a4 fromRecordName:(id)a5 toRecordName:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = FCCKRecordIDMapping;
  v15 = [(FCCKRecordIDMapping *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fromZoneSchema, a3);
    objc_storeStrong(&v16->_toZoneSchema, a4);
    objc_storeStrong(&v16->_fromRecordName, a5);
    objc_storeStrong(&v16->_toRecordName, a6);
  }

  return v16;
}

- (CKRecordID)fromRecordID
{
  v3 = objc_alloc(MEMORY[0x1E695BA70]);
  v4 = [(FCCKRecordIDMapping *)self fromRecordName];
  v5 = [(FCCKRecordIDMapping *)self fromZoneSchema];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 24);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v3 initWithRecordName:v4 zoneID:v8];

  return v9;
}

- (CKRecordID)toRecordID
{
  v3 = objc_alloc(MEMORY[0x1E695BA70]);
  v4 = [(FCCKRecordIDMapping *)self toRecordName];
  v5 = [(FCCKRecordIDMapping *)self toZoneSchema];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 24);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v3 initWithRecordName:v4 zoneID:v8];

  return v9;
}

- (BOOL)hasChanges
{
  v3 = MEMORY[0x1E69E58C0];
  v4 = [(FCCKRecordIDMapping *)self fromZoneSchema];
  v5 = [(FCCKRecordIDMapping *)self toZoneSchema];
  if ([v3 nf_object:v4 isEqualToObject:v5])
  {
    v6 = MEMORY[0x1E69E58C0];
    v7 = [(FCCKRecordIDMapping *)self fromRecordName];
    v8 = [(FCCKRecordIDMapping *)self toRecordName];
    v9 = [v6 nf_object:v7 isEqualToObject:v8] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

@end