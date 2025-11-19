@interface AMPWritingDirectionsCounts
+ (AMPWritingDirectionsCounts)zero;
+ (id)add:(id)a3 to:(id)a4;
- (AMPWritingDirectionsCounts)init;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
@end

@implementation AMPWritingDirectionsCounts

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_24F27E5C0(v8);

  sub_24E857CC8(v8);
  return v6;
}

+ (id)add:(id)a3 to:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_24F27F038(v5, v6);

  return v7;
}

+ (AMPWritingDirectionsCounts)zero
{
  if (qword_27F211050 != -1)
  {
    swift_once();
  }

  v3 = qword_27F23D658;

  return v3;
}

- (NSString)description
{
  v2 = self;
  sub_24F27E9B0();

  v3 = sub_24F92B098();

  return v3;
}

- (AMPWritingDirectionsCounts)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end