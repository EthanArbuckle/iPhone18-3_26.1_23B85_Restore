@interface JSBagObject
- (_TtC9JetEngine11JSBagObject)init;
- (id)BOOLean:(id)a3;
- (id)array:(id)a3;
- (id)dictionary:(id)a3;
- (id)double:(id)a3;
- (id)integer:(id)a3;
- (id)string:(id)a3;
- (id)url:(id)a3;
- (void)registerBagKeys:(id)a3;
@end

@implementation JSBagObject

- (void)registerBagKeys:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1AB09B6D4(v4);
}

- (id)BOOLean:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1AB0B7490(v4, sub_1AB0A2A74);

  return v6;
}

- (id)dictionary:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1AB0B7490(v4, sub_1AB0A2EE8);

  return v6;
}

- (id)url:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1AB0B7490(v4, sub_1AB0A33A8);

  return v6;
}

- (id)string:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1AB0B7490(v4, sub_1AB0B7604);

  return v6;
}

- (id)double:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1AB0B7490(v4, sub_1AB3CFDE0);

  return v6;
}

- (id)integer:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1AB0B7490(v4, sub_1AB3CFFB4);

  return v6;
}

- (id)array:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1AB0B7490(v4, sub_1AB3D0188);

  return v6;
}

- (_TtC9JetEngine11JSBagObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end