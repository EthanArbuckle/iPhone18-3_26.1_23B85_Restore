@interface NSDictionary
- (id)cplRecordWithName:(id)name zonedID:(id)d;
- (id)cpl_validObjectForKey:(id)key class:(id)class;
@end

@implementation NSDictionary

- (id)cpl_validObjectForKey:(id)key class:(id)class
{
  keyCopy = key;
  classCopy = class;
  v8 = [(NSDictionary *)self objectForKey:keyCopy];
  if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1001A3B60(classCopy, v8, keyCopy);
    v8 = 0;
  }

  return v8;
}

- (id)cplRecordWithName:(id)name zonedID:(id)d
{
  dCopy = d;
  nameCopy = name;
  v8 = [[CKRecordID alloc] initWithRecordName:nameCopy zoneID:dCopy];

  v9 = [(NSDictionary *)self objectForKeyedSubscript:v8];

  return v9;
}

@end