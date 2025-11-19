@interface StateCaptureItem
- (_TtC14ChronoServices16StateCaptureItem)init;
- (void)dealloc;
@end

@implementation StateCaptureItem

- (void)dealloc
{
  sub_195F588A4(self + OBJC_IVAR____TtC14ChronoServices16StateCaptureItem__invalidatable, v9);
  v3 = v10;
  if (v10)
  {
    v4 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v5 = *(v4 + 8);
    v6 = self;
    v5(v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    v7 = self;
    sub_195F2DB00(v9, &qword_1EAEEE048, &unk_195FAEE60);
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for StateCaptureItem();
  [(StateCaptureItem *)&v8 dealloc];
}

- (_TtC14ChronoServices16StateCaptureItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end