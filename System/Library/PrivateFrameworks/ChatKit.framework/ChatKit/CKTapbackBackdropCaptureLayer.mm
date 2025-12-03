@interface CKTapbackBackdropCaptureLayer
- (_TtC7ChatKit29CKTapbackBackdropCaptureLayer)init;
- (_TtC7ChatKit29CKTapbackBackdropCaptureLayer)initWithCoder:(id)coder;
- (_TtC7ChatKit29CKTapbackBackdropCaptureLayer)initWithLayer:(id)layer;
@end

@implementation CKTapbackBackdropCaptureLayer

- (_TtC7ChatKit29CKTapbackBackdropCaptureLayer)init
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CKTapbackBackdropCaptureLayer();
  v2 = [(CKTapbackBackdropCaptureLayer *)&v5 init];
  v3 = sub_190D56ED0();
  [(CKTapbackBackdropCaptureLayer *)v2 setName:v3];

  [(CKTapbackBackdropCaptureLayer *)v2 setCaptureOnly:1];
  return v2;
}

- (_TtC7ChatKit29CKTapbackBackdropCaptureLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_190D58140();
  swift_unknownObjectRelease();
  sub_19021834C(v11, v10);
  v4 = type metadata accessor for CKTapbackBackdropCaptureLayer();
  swift_dynamicCast();
  v5 = v9;
  v8.receiver = self;
  v8.super_class = v4;
  v6 = [(CKTapbackBackdropCaptureLayer *)&v8 initWithLayer:v9];

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v6;
}

- (_TtC7ChatKit29CKTapbackBackdropCaptureLayer)initWithCoder:(id)coder
{
  result = sub_190D58510();
  __break(1u);
  return result;
}

@end