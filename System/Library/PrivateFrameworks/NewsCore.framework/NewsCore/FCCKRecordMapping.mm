@interface FCCKRecordMapping
- (BOOL)hasChanges;
- (FCCKRecordMapping)initWithFromZoneSchema:(id)a3 toZoneSchema:(id)a4 fromRecordSchema:(id)a5 toRecordSchema:(id)a6 recordIDMapping:(id)a7;
@end

@implementation FCCKRecordMapping

- (FCCKRecordMapping)initWithFromZoneSchema:(id)a3 toZoneSchema:(id)a4 fromRecordSchema:(id)a5 toRecordSchema:(id)a6 recordIDMapping:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = FCCKRecordMapping;
  v17 = [(FCCKRecordMapping *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_fromZoneSchema, a3);
    objc_storeStrong(&v18->_toZoneSchema, a4);
    objc_storeStrong(&v18->_fromRecordSchema, a5);
    objc_storeStrong(&v18->_toRecordSchema, a6);
    objc_storeStrong(&v18->_recordIDMapping, a7);
  }

  return v18;
}

- (BOOL)hasChanges
{
  v3 = MEMORY[0x1E69E58C0];
  v4 = [(FCCKRecordMapping *)self fromZoneSchema];
  v5 = [(FCCKRecordMapping *)self toZoneSchema];
  if ([v3 nf_object:v4 isEqualToObject:v5])
  {
    v6 = MEMORY[0x1E69E58C0];
    v7 = [(FCCKRecordMapping *)self fromRecordSchema];
    v8 = [(FCCKRecordMapping *)self toRecordSchema];
    if ([v6 nf_object:v7 isEqualToObject:v8])
    {
      v9 = [(FCCKRecordMapping *)self recordIDMapping];
      v10 = [v9 hasChanges];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

@end