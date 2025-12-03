@interface CKLogic
- (NSString)identifier;
- (id)and:(id)and;
- (int64_t)hash;
@end

@implementation CKLogic

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_1C86C17B8();

  return v3;
}

- (NSString)identifier
{
  selfCopy = self;
  sub_1C86C1AD0();

  v3 = sub_1C86F8EEC();

  return v3;
}

- (id)and:(id)and
{
  andCopy = and;
  selfCopy = self;
  v6 = sub_1C86C21E0();

  return v6;
}

@end