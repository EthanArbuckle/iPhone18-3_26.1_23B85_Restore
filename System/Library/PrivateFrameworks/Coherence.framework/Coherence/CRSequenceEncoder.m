@interface CRSequenceEncoder
- (BOOL)setStorage:(id)a3 error:(id *)a4;
@end

@implementation CRSequenceEncoder

- (BOOL)setStorage:(id)a3 error:(id *)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1AE23D83C();
  swift_unknownObjectRelease();
  v7 = *(&v5->super.super.isa + OBJC_IVAR____TtC9Coherence17CRSequenceEncoder_getElements);
  v6 = *&v5->super.sequence[OBJC_IVAR____TtC9Coherence17CRSequenceEncoder_getElements];

  v8 = v7(v12);

  __swift_destroy_boxed_opaque_existential_1(v12);
  v9 = v5 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence;
  swift_beginAccess();
  v10 = *(v9 + 2);
  *(v9 + 2) = v8;

  return 1;
}

@end