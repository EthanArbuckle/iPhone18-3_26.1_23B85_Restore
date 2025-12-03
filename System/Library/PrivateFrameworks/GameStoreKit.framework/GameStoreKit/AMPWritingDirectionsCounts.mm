@interface AMPWritingDirectionsCounts
+ (AMPWritingDirectionsCounts)zero;
+ (id)add:(id)add to:(id)to;
- (AMPWritingDirectionsCounts)init;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
@end

@implementation AMPWritingDirectionsCounts

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_24F27E5C0(v8);

  sub_24E857CC8(v8);
  return v6;
}

+ (id)add:(id)add to:(id)to
{
  addCopy = add;
  toCopy = to;
  v7 = sub_24F27F038(addCopy, toCopy);

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
  selfCopy = self;
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