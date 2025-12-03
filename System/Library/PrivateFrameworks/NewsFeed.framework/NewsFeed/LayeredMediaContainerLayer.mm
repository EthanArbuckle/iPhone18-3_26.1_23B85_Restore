@interface LayeredMediaContainerLayer
- (_TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer)init;
- (_TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer)initWithLayer:(id)layer;
@end

@implementation LayeredMediaContainerLayer

- (_TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransforms) = MEMORY[0x1E69E7CC0];
  v4 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransform;
  v5 = *MEMORY[0x1E69D78D8];
  v6 = sub_1D725D4FC();
  (*(*(v6 - 8) + 104))(self + v4, v5, v6);
  v7 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionDisabledTransform;
  v8 = *MEMORY[0x1E69D7F20];
  v9 = sub_1D725E5FC();
  (*(*(v9 - 8) + 104))(self + v7, v8, v9);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_isMotionEnabled) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_isMotionAllowed) = 1;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(TUNonAnimatingLayer *)&v11 init];
}

- (_TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer)initWithLayer:(id)layer
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1D7263AEC();
  swift_unknownObjectRelease();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransforms) = MEMORY[0x1E69E7CC0];
  v5 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransform;
  v6 = *MEMORY[0x1E69D78D8];
  v7 = sub_1D725D4FC();
  (*(*(v7 - 8) + 104))(self + v5, v6, v7);
  v8 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionDisabledTransform;
  v9 = *MEMORY[0x1E69D7F20];
  v10 = sub_1D725E5FC();
  (*(*(v10 - 8) + 104))(self + v8, v9, v10);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_isMotionEnabled) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_isMotionAllowed) = 1;
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  v11 = sub_1D72646AC();
  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(LayeredMediaContainerLayer *)&v14 initWithLayer:v11];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

@end