@interface JSPlistObject
- (_TtC9JetEngine13JSPlistObject)init;
- (id)parse:(id)parse;
- (id)stringify:(id)stringify :(id)a4;
@end

@implementation JSPlistObject

- (_TtC9JetEngine13JSPlistObject)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(JSPlistObject *)&v3 init];
}

- (id)parse:(id)parse
{
  parseCopy = parse;
  selfCopy = self;
  v6 = sub_1AB1F7DF4(parseCopy);

  return v6;
}

- (id)stringify:(id)stringify :(id)a4
{
  stringifyCopy = stringify;
  v7 = a4;
  selfCopy = self;
  v9 = sub_1AB1F7F58(stringifyCopy, v7);

  return v9;
}

@end