@interface PassportSceneView.StampLayer
- (_TtCC9CoreIDVUI17PassportSceneViewP33_18A116326E02D2242132B5B2E61598D210StampLayer)init;
- (_TtCC9CoreIDVUI17PassportSceneViewP33_18A116326E02D2242132B5B2E61598D210StampLayer)initWithCoder:(id)coder;
- (_TtCC9CoreIDVUI17PassportSceneViewP33_18A116326E02D2242132B5B2E61598D210StampLayer)initWithLayer:(id)layer;
@end

@implementation PassportSceneView.StampLayer

- (_TtCC9CoreIDVUI17PassportSceneViewP33_18A116326E02D2242132B5B2E61598D210StampLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_245911354();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v4 = sub_245911704();
  v7.receiver = self;
  v7.super_class = _s10StampLayerCMa();
  v5 = [(PassportSceneView.StampLayer *)&v7 initWithLayer:v4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

- (_TtCC9CoreIDVUI17PassportSceneViewP33_18A116326E02D2242132B5B2E61598D210StampLayer)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _s10StampLayerCMa();
  coderCopy = coder;
  v5 = [(PassportSceneView.StampLayer *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtCC9CoreIDVUI17PassportSceneViewP33_18A116326E02D2242132B5B2E61598D210StampLayer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end