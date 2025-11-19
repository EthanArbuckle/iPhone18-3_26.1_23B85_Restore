@interface JSPlistObject
- (_TtC9JetEngine13JSPlistObject)init;
- (id)parse:(id)a3;
- (id)stringify:(id)a3 :(id)a4;
@end

@implementation JSPlistObject

- (_TtC9JetEngine13JSPlistObject)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(JSPlistObject *)&v3 init];
}

- (id)parse:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1AB1F7DF4(v4);

  return v6;
}

- (id)stringify:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1AB1F7F58(v6, v7);

  return v9;
}

@end