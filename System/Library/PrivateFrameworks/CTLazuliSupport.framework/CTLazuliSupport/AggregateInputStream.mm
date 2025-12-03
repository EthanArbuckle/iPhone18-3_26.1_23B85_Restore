@interface AggregateInputStream
- (BOOL)setProperty:(id)property forKey:(id)key;
- (NSError)streamError;
- (_TtC15CTLazuliSupport20AggregateInputStream)initWithData:(id)data;
- (_TtC15CTLazuliSupport20AggregateInputStream)initWithURL:(id)l;
- (int64_t)read:(char *)read maxLength:(int64_t)length;
- (void)close;
- (void)open;
@end

@implementation AggregateInputStream

- (int64_t)read:(char *)read maxLength:(int64_t)length
{
  selfCopy = self;
  v7 = sub_242723920(read, length);

  return v7;
}

- (void)open
{
  selfCopy = self;
  sub_2427241C0();
}

- (void)close
{
  selfCopy = self;
  sub_2427243DC();
}

- (NSError)streamError
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_underlyingStreamError);
  if (v2)
  {
    v3 = v2;
    v4 = sub_242731E54();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)setProperty:(id)property forKey:(id)key
{
  if (property)
  {
    swift_unknownObjectRetain();
    sub_242732894();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_24272479C(v5);
  return 0;
}

- (_TtC15CTLazuliSupport20AggregateInputStream)initWithData:(id)data
{
  dataCopy = data;
  sub_242731FC4();

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15CTLazuliSupport20AggregateInputStream)initWithURL:(id)l
{
  v3 = sub_242731F34();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_242731EC4();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end