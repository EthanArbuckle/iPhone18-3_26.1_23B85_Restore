@interface SFSummarizationAnimationCoordinator.PreviewSource
- (_TtCE12MobileSafariCSo35SFSummarizationAnimationCoordinatorP33_E09169D422D36BE5C4DC0D2ABF558B1213PreviewSource)init;
- (void)canGenerateTargetedPreviewForChunk:(_TtC5UIKit21UITextEffectTextChunk *)chunk completionHandler:(id)handler;
- (void)targetedPreviewFor:(_TtC5UIKit21UITextEffectTextChunk *)for completionHandler:(id)handler;
- (void)updateTextChunkVisibilityForAnimation:(_TtC5UIKit21UITextEffectTextChunk *)animation visible:(BOOL)visible completionHandler:(id)handler;
@end

@implementation SFSummarizationAnimationCoordinator.PreviewSource

- (void)canGenerateTargetedPreviewForChunk:(_TtC5UIKit21UITextEffectTextChunk *)chunk completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = chunk;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_18BC20F48();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_18BC4A588;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_18BC4A590;
  v14[5] = v13;
  chunkCopy = chunk;
  selfCopy = self;
  sub_18BC10FA8(0, 0, v9, &unk_18BC4A598, v14);
}

- (void)targetedPreviewFor:(_TtC5UIKit21UITextEffectTextChunk *)for completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_18BC20F48();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_18BC4A568;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_18BC4A570;
  v14[5] = v13;
  forCopy = for;
  selfCopy = self;
  sub_18BC10FA8(0, 0, v9, &unk_18BC4A578, v14);
}

- (void)updateTextChunkVisibilityForAnimation:(_TtC5UIKit21UITextEffectTextChunk *)animation visible:(BOOL)visible completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE10);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = animation;
  *(v13 + 24) = visible;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_18BC20F48();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_18BC4A548;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_18BC4A550;
  v16[5] = v15;
  animationCopy = animation;
  selfCopy = self;
  sub_18BC10FA8(0, 0, v11, &unk_18BC55D20, v16);
}

- (_TtCE12MobileSafariCSo35SFSummarizationAnimationCoordinatorP33_E09169D422D36BE5C4DC0D2ABF558B1213PreviewSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end