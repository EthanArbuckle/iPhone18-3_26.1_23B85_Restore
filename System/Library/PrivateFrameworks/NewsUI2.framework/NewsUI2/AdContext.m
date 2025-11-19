@interface AdContext
- (_TtC7NewsUI29AdContext)init;
@end

@implementation AdContext

- (_TtC7NewsUI29AdContext)init
{
  v2 = (&self->super.isa + OBJC_IVAR____TtC7NewsUI29AdContext_qToken);
  *v2 = 0;
  v2[1] = 0;
  v3 = (&self->super.isa + OBJC_IVAR____TtC7NewsUI29AdContext_previewID);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.isa + OBJC_IVAR____TtC7NewsUI29AdContext_previewSessionID);
  *v4 = 0;
  v4[1] = 0;
  v5 = self + OBJC_IVAR____TtC7NewsUI29AdContext_maximumAdRequestsForCurrentAdPreviewID;
  *v5 = 0;
  v5[8] = 1;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AdContext();
  return [(AdContext *)&v7 init];
}

@end