@interface JUWritingDirectionsCounts
+ (JUWritingDirectionsCounts)zero;
+ (id)add:(id)add to:(id)to;
- (BOOL)isEqual:(id)equal;
- (JUWritingDirectionsCounts)init;
- (NSString)description;
@end

@implementation JUWritingDirectionsCounts

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1BAD9D628();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1BAD3CEE4(v8);

  sub_1BAD05470(v8);
  return v6;
}

+ (id)add:(id)add to:(id)to
{
  addCopy = add;
  toCopy = to;
  v7 = sub_1BAD3D958(addCopy, toCopy);

  return v7;
}

+ (JUWritingDirectionsCounts)zero
{
  if (qword_1EBC29C38 != -1)
  {
    swift_once();
  }

  v3 = qword_1EBC2AA00;

  return v3;
}

- (NSString)description
{
  selfCopy = self;
  sub_1BAD3D2D4();

  v3 = sub_1BAD9CF38();

  return v3;
}

- (JUWritingDirectionsCounts)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end