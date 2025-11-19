@interface CKLogic
- (NSString)identifier;
- (id)and:(id)a3;
- (int64_t)hash;
@end

@implementation CKLogic

- (int64_t)hash
{
  v2 = self;
  v3 = sub_1C86C17B8();

  return v3;
}

- (NSString)identifier
{
  v2 = self;
  sub_1C86C1AD0();

  v3 = sub_1C86F8EEC();

  return v3;
}

- (id)and:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1C86C21E0();

  return v6;
}

@end