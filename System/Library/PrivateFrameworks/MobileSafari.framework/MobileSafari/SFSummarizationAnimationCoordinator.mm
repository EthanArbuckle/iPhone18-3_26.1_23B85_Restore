@interface SFSummarizationAnimationCoordinator
- (BOOL)contentBoundsUpdating;
- (SFSummarizationAnimationCoordinator)init;
- (SFSummarizationAnimationCoordinatorDelegate)delegate;
- (void)beginPlaceholderReplacement;
- (void)endAnimations;
- (void)setContentBoundsUpdating:(BOOL)updating;
- (void)startPlaceholderAnimationWithCompletionHandler:(id)handler;
@end

@implementation SFSummarizationAnimationCoordinator

- (SFSummarizationAnimationCoordinatorDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)contentBoundsUpdating
{
  v3 = OBJC_IVAR___SFSummarizationAnimationCoordinator_contentBoundsUpdating;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContentBoundsUpdating:(BOOL)updating
{
  v5 = OBJC_IVAR___SFSummarizationAnimationCoordinator_contentBoundsUpdating;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = updating;
  selfCopy = self;
  sub_18BAB270C(v6);
}

- (void)beginPlaceholderReplacement
{
  selfCopy = self;
  SFSummarizationAnimationCoordinator.beginPlaceholderReplacement()();
}

- (void)startPlaceholderAnimationWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_18BC20F48();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_18BC4A5C8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_18BC4A5D0;
  v12[5] = v11;
  selfCopy = self;
  sub_18BC10FA8(0, 0, v7, &unk_18BC4A5D8, v12);
}

- (void)endAnimations
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE10);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_18BC20F48();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_18BC20F28();
  selfCopy = self;
  v8 = sub_18BC20F18();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = selfCopy;
  sub_18B97E1A4(0, 0, v5, &unk_18BC4A5B8, v9);
}

- (SFSummarizationAnimationCoordinator)init
{
  *(self + OBJC_IVAR___SFSummarizationAnimationCoordinator____lazy_storage___previewSource) = 0;
  *(self + OBJC_IVAR___SFSummarizationAnimationCoordinator____lazy_storage___replacementTextEffectDelegate) = 0;
  *(self + OBJC_IVAR___SFSummarizationAnimationCoordinator_effectView) = 0;
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___SFSummarizationAnimationCoordinator_contentBoundsUpdating) = 0;
  v4.receiver = self;
  v4.super_class = SFSummarizationAnimationCoordinator;
  return [(SFSummarizationAnimationCoordinator *)&v4 init];
}

@end