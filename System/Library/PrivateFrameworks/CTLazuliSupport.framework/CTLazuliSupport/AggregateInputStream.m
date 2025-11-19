@interface AggregateInputStream
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (NSError)streamError;
- (_TtC15CTLazuliSupport20AggregateInputStream)initWithData:(id)a3;
- (_TtC15CTLazuliSupport20AggregateInputStream)initWithURL:(id)a3;
- (int64_t)read:(char *)a3 maxLength:(int64_t)a4;
- (void)close;
- (void)open;
@end

@implementation AggregateInputStream

- (int64_t)read:(char *)a3 maxLength:(int64_t)a4
{
  v6 = self;
  v7 = sub_242723920(a3, a4);

  return v7;
}

- (void)open
{
  v2 = self;
  sub_2427241C0();
}

- (void)close
{
  v2 = self;
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

- (BOOL)setProperty:(id)a3 forKey:(id)a4
{
  if (a3)
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

- (_TtC15CTLazuliSupport20AggregateInputStream)initWithData:(id)a3
{
  v3 = a3;
  sub_242731FC4();

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15CTLazuliSupport20AggregateInputStream)initWithURL:(id)a3
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