@interface FCCKRecordTypeMapping
- (BOOL)hasChanges;
- (FCCKRecordTypeMapping)initWithFromZoneSchema:(id)a3 toZoneSchema:(id)a4 fromRecordSchema:(id)a5 toRecordSchema:(id)a6;
@end

@implementation FCCKRecordTypeMapping

- (FCCKRecordTypeMapping)initWithFromZoneSchema:(id)a3 toZoneSchema:(id)a4 fromRecordSchema:(id)a5 toRecordSchema:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = FCCKRecordTypeMapping;
  v15 = [(FCCKRecordTypeMapping *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fromZoneSchema, a3);
    objc_storeStrong(&v16->_toZoneSchema, a4);
    objc_storeStrong(&v16->_fromRecordSchema, a5);
    objc_storeStrong(&v16->_toRecordSchema, a6);
  }

  return v16;
}

- (BOOL)hasChanges
{
  v3 = MEMORY[0x1E69E58C0];
  v4 = [(FCCKRecordTypeMapping *)self fromZoneSchema];
  v5 = [(FCCKRecordTypeMapping *)self toZoneSchema];
  if ([v3 nf_object:v4 isEqualToObject:v5])
  {
    v6 = MEMORY[0x1E69E58C0];
    v7 = [(FCCKRecordTypeMapping *)self fromRecordSchema];
    v8 = [(FCCKRecordTypeMapping *)self toRecordSchema];
    v9 = [v6 nf_object:v7 isEqualToObject:v8] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

@end