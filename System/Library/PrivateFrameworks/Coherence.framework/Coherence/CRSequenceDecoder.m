@interface CRSequenceDecoder
- (id)storageWithError:(id *)a3;
@end

@implementation CRSequenceDecoder

- (id)storageWithError:(id *)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC9Coherence17CRSequenceDecoder_getStorage);
  v3 = *&self->super.encoded[OBJC_IVAR____TtC9Coherence17CRSequenceDecoder_getStorage];
  v5 = *&self->super.encoded[OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded + 8];
  v6 = self;

  v4(v10, v7);

  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v8 = sub_1AE23DFFC();
  __swift_destroy_boxed_opaque_existential_1(v10);

  return v8;
}

@end