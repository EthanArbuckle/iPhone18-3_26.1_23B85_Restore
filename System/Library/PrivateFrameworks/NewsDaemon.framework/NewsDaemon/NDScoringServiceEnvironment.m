@interface NDScoringServiceEnvironment
- (BOOL)isEqual:(id)a3;
- (_TtC10NewsDaemon27NDScoringServiceEnvironment)init;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NDScoringServiceEnvironment

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7 = self;
  v5 = sub_25BE4B6FC();
  v6 = sub_25BE4BA3C();
  [v4 encodeObject:v5 forKey:v6];
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_25BE4BC6C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = NDScoringServiceEnvironment.isEqual(_:)(v8);

  sub_25BE2EC5C(v8, &qword_27FBE06D8, &qword_25BE4DCC0);
  return v6 & 1;
}

- (int64_t)hash
{
  sub_25BE4BFCC();
  sub_25BE4B73C();
  sub_25BE2E174(&unk_27FBE06E0);
  v3 = self;
  sub_25BE4BA2C();
  v4 = sub_25BE4BFAC();

  return v4;
}

- (_TtC10NewsDaemon27NDScoringServiceEnvironment)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end