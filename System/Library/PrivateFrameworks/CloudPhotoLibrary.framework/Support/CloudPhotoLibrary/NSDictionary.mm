@interface NSDictionary
- (id)cplRecordWithName:(id)a3 zonedID:(id)a4;
- (id)cpl_validObjectForKey:(id)a3 class:(id)a4;
@end

@implementation NSDictionary

- (id)cpl_validObjectForKey:(id)a3 class:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSDictionary *)self objectForKey:v6];
  if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1001A3B60(v7, v8, v6);
    v8 = 0;
  }

  return v8;
}

- (id)cplRecordWithName:(id)a3 zonedID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[CKRecordID alloc] initWithRecordName:v7 zoneID:v6];

  v9 = [(NSDictionary *)self objectForKeyedSubscript:v8];

  return v9;
}

@end