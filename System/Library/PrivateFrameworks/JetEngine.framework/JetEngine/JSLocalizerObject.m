@interface JSLocalizerObject
- (_TtC9JetEngine17JSLocalizerObject)init;
- (id)fileSize:(id)a3;
- (id)formattedCount:(id)a3;
- (id)integer:(id)a3 :(id)a4;
- (id)relativeDate:(id)a3;
- (id)stringWithCount:(id)a3 :(id)a4 :(id)a5 :(id)a6;
@end

@implementation JSLocalizerObject

- (id)integer:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1AB3BB768(v6, v7);

  return v9;
}

- (id)stringWithCount:(id)a3 :(id)a4 :(id)a5 :(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  v15 = sub_1AB3BBB00(v10, v11, v12, v13);

  return v15;
}

- (id)formattedCount:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1AB3BCD08(v4, sub_1AB3BBD30);

  return v6;
}

- (id)fileSize:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1AB3BCD08(v4, sub_1AB3BBEF4);

  return v6;
}

- (id)relativeDate:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1AB3BCD08(v4, sub_1AB3BCE78);

  return v6;
}

- (_TtC9JetEngine17JSLocalizerObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end