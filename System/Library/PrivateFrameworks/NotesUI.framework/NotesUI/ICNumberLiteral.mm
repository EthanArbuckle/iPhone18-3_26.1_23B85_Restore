@interface ICNumberLiteral
- (BOOL)isEqual:(id)a3;
- (ICNumberLiteral)init;
- (ICNumberLiteral)initWithRange:(_NSRange)a3 string:(id)a4;
- (NSString)string;
- (_NSRange)range;
- (void)setRange:(_NSRange)a3;
- (void)setString:(id)a3;
@end

@implementation ICNumberLiteral

- (_NSRange)range
{
  v2 = (self + OBJC_IVAR___ICNumberLiteral_range);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  result.length = v4;
  result.location = v3;
  return result;
}

- (void)setRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = (self + OBJC_IVAR___ICNumberLiteral_range);
  swift_beginAccess();
  *v5 = location;
  v5[1] = length;
}

- (NSString)string
{
  swift_beginAccess();

  v2 = sub_1D4419C14();

  return v2;
}

- (void)setString:(id)a3
{
  v4 = sub_1D4419C54();
  v6 = v5;
  v7 = (self + OBJC_IVAR___ICNumberLiteral_string);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (ICNumberLiteral)initWithRange:(_NSRange)a3 string:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = sub_1D4419C54();
  v8 = (self + OBJC_IVAR___ICNumberLiteral_range);
  *v8 = location;
  v8[1] = length;
  v9 = (self + OBJC_IVAR___ICNumberLiteral_string);
  *v9 = v7;
  v9[1] = v10;
  v12.receiver = self;
  v12.super_class = ICNumberLiteral;
  return [(ICNumberLiteral *)&v12 init];
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1D441A804();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = ICNumberLiteral.isEqual(_:)(v8);

  sub_1D418D074(v8);
  return v6 & 1;
}

- (ICNumberLiteral)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end