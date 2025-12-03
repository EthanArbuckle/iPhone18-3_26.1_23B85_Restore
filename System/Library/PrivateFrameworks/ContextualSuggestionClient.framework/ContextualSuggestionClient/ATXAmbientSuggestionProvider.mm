@interface ATXAmbientSuggestionProvider
- (ATXAmbientSuggestionProviderDelegate)delegate;
- (NSArray)stackSuggestions;
- (void)ambientConfigurationManagerCacheDidUpdate;
- (void)logStackDidChangeToWidget:(id)widget reason:(unint64_t)reason;
- (void)logUserDidTapWidget:(id)widget;
- (void)logViewDidAppear;
- (void)logViewDidDisappear;
- (void)logWidgetStack:(id)stack didChangeToWidget:(id)widget reason:(unint64_t)reason;
- (void)readStacksWithCompletion:(id)completion;
- (void)writeStacks:(NSArray *)stacks completion:(id)completion;
@end

@implementation ATXAmbientSuggestionProvider

- (NSArray)stackSuggestions
{
  v2 = *(self + OBJC_IVAR___ATXAmbientSuggestionProvider_lock);
  selfCopy = self;
  os_unfair_lock_lock((v2 + 24));
  v4 = (*(**(v2 + 16) + 112))();
  os_unfair_lock_unlock((v2 + 24));

  if (v4)
  {
    type metadata accessor for ATXWidgetStackSuggestion(0);
    v5 = sub_2441D8CFC();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ATXAmbientSuggestionProviderDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)logViewDidAppear
{
  selfCopy = self;
  v2 = sub_2441D1D5C();
  (*(*v2 + 128))(v2);
}

- (void)logViewDidDisappear
{
  selfCopy = self;
  v2 = sub_2441D1D5C();
  (*(*v2 + 136))(v2);
}

- (void)logUserDidTapWidget:(id)widget
{
  widgetCopy = widget;
  selfCopy = self;
  v5 = sub_2441D1D5C();
  (*(*v5 + 144))(widgetCopy);
}

- (void)logStackDidChangeToWidget:(id)widget reason:(unint64_t)reason
{
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  v12 = sub_2441D8D9C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = self;
  v13[5] = widget;
  v13[6] = reason;
  v13[7] = ObjectType;
  widgetCopy = widget;
  selfCopy = self;
  sub_2441A5C20(0, 0, v11, &unk_2441DE258, v13);
}

- (void)logWidgetStack:(id)stack didChangeToWidget:(id)widget reason:(unint64_t)reason
{
  stackCopy = stack;
  widgetCopy = widget;
  selfCopy = self;
  ATXAmbientSuggestionProvider.logWidgetStack(_:didChangeTo:reason:)(stackCopy, widgetCopy, reason);
}

- (void)ambientConfigurationManagerCacheDidUpdate
{
  selfCopy = self;
  ATXAmbientSuggestionProvider.ambientConfigurationManagerCacheDidUpdate()();
}

- (void)readStacksWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2441D8D9C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2441DE240;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2441DE248;
  v13[5] = v12;
  selfCopy = self;
  sub_2441AD2EC(0, 0, v8, &unk_2441DE250, v13);
}

- (void)writeStacks:(NSArray *)stacks completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = stacks;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2441D8D9C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2441DE1F8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2441DE208;
  v15[5] = v14;
  stacksCopy = stacks;
  selfCopy = self;
  sub_2441AD2EC(0, 0, v10, &unk_2441DE218, v15);
}

@end