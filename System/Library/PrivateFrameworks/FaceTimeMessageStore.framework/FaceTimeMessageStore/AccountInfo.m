@interface AccountInfo
- (BOOL)isEqual:(id)a3;
- (NSString)description;
@end

@implementation AccountInfo

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1BC8F8474();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = AccountInfo.isEqual(_:)(v8);

  sub_1BC803774(v8);
  return v6 & 1;
}

- (NSString)description
{
  v2 = self;
  AccountInfo.description.getter();

  v3 = sub_1BC8F7BE4();

  return v3;
}

@end