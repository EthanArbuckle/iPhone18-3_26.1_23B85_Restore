@interface EventEditViewControllerManagerImpl
- (BOOL)hasAttachmentChanges;
- (BOOL)hasUnsavedChanges;
- (UIViewController)viewController;
- (_TtC13CalendarUIKit34EventEditViewControllerManagerImpl)init;
- (_TtC13CalendarUIKit34EventEditViewControllerManagerImpl)initWithDelegate:(id)delegate isEditing:(BOOL)editing allowsEditing:(BOOL)allowsEditing needsInlineEditButton:(BOOL)button;
- (id)precommitSerializedEvent;
- (void)attemptSaveWithCompletion:(id)completion;
- (void)cancel;
- (void)eventSetExternally:(id)externally forceUpdate:(BOOL)update;
- (void)focusAndSelectStartDate;
- (void)focusAndSelectTitle;
- (void)focusTitle;
- (void)saveWithSpan:(int64_t)span completion:(id)completion;
- (void)setShouldRecordPrecommitEvent:(BOOL)event;
- (void)setViewController:(id)controller;
- (void)updateAllowsEditing:(BOOL)editing;
- (void)updateAttachmentDownloadProgressWithIdentifier:(id)identifier downloadProgress:(id)progress;
- (void)updateAttachmentStatusFor:(id)for isLoading:(BOOL)loading;
- (void)updateCreationMethod:(unint64_t)method;
- (void)updateEKEventForDockedView;
- (void)updateFromReminderFor:(id)for;
- (void)updateIsEditing:(BOOL)editing;
- (void)updateNeedsInlineEditButton:(BOOL)button;
- (void)updateStartAndEndDatesWithStart:(id)start end:(id)end;
@end

@implementation EventEditViewControllerManagerImpl

- (_TtC13CalendarUIKit34EventEditViewControllerManagerImpl)initWithDelegate:(id)delegate isEditing:(BOOL)editing allowsEditing:(BOOL)allowsEditing needsInlineEditButton:(BOOL)button
{
  swift_unknownObjectRetain();
  v10 = sub_1CACAC3E8(delegate, editing, allowsEditing, button);
  swift_unknownObjectRelease();
  return v10;
}

- (void)eventSetExternally:(id)externally forceUpdate:(BOOL)update
{
  externallyCopy = externally;
  selfCopy = self;
  sub_1CACA8F9C();
  sub_1CACFB3A0(externallyCopy, update);
}

- (void)updateIsEditing:(BOOL)editing
{
  *(&self->super.isa + OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl_isEditing) = editing;
  selfCopy = self;
  sub_1CACA8F9C();
  sub_1CACEE8C4(editing);
}

- (void)updateAllowsEditing:(BOOL)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_1CACA95B0(editingCopy);
}

- (void)updateNeedsInlineEditButton:(BOOL)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_1CACA9634(buttonCopy);
}

- (void)updateCreationMethod:(unint64_t)method
{
  selfCopy = self;
  sub_1CACA9820(method);
}

- (void)attemptSaveWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1CACAD264;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  sub_1CACA8F9C();
  v7 = sub_1CACAA368();
  sub_1CACF79B8(v7, v4, v5);

  sub_1CABC6E64(v4);
}

- (void)updateEKEventForDockedView
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  selfCopy = self;
  v7 = sub_1CACA8F9C();
  v8 = sub_1CAD4E304();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_1CAD4E2C4();

  v9 = sub_1CAD4E2B4();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v7;
  sub_1CACA6D34(0, 0, v5, &unk_1CAD65028, v10);
}

- (void)saveWithSpan:(int64_t)span completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(completion);
  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v10 = sub_1CACACE4C;
  }

  else
  {
    v11 = 0;
  }

  selfCopy = self;
  v13 = sub_1CACA8F9C();
  v14 = sub_1CAD4E304();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  sub_1CAD4E2C4();

  sub_1CAB380F0(v10);
  v15 = sub_1CAD4E2B4();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v13;
  v16[5] = span;
  v16[6] = v10;
  v16[7] = v11;
  sub_1CACA6D34(0, 0, v9, &unk_1CAD65020, v16);

  sub_1CABC6E64(v10);
}

- (void)cancel
{
  selfCopy = self;
  sub_1CACAA1BC();
}

- (UIViewController)viewController
{
  selfCopy = self;
  v3 = sub_1CACAA368();

  return v3;
}

- (void)setViewController:(id)controller
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl____lazy_storage___viewController);
  *(&self->super.isa + OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl____lazy_storage___viewController) = controller;
  controllerCopy = controller;
}

- (void)updateAttachmentStatusFor:(id)for isLoading:(BOOL)loading
{
  v6 = sub_1CAD4DF94();
  v8 = v7;
  selfCopy = self;
  sub_1CACA8F9C();
  sub_1CAC5A324(v6, v8, loading);
}

- (void)updateAttachmentDownloadProgressWithIdentifier:(id)identifier downloadProgress:(id)progress
{
  v6 = sub_1CAD4DF94();
  v8 = v7;
  if (progress)
  {
    v9 = sub_1CAD4DF94();
    progress = v10;
  }

  else
  {
    v9 = 0;
  }

  selfCopy = self;
  sub_1CACA8F9C();
  sub_1CAC5A6F0(v6, v8, v9, progress);
}

- (void)updateFromReminderFor:(id)for
{
  if (*(&self->super.isa + OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl_hasViewModel) == 1)
  {
    forCopy = for;
    selfCopy = self;
    sub_1CACA8F9C();
    sub_1CACFA104(forCopy);
  }
}

- (void)updateStartAndEndDatesWithStart:(id)start end:(id)end
{
  v7 = sub_1CAD4C0F4();
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1CAD4BC94();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  startCopy = start;
  endCopy = end;
  selfCopy = self;
  sub_1CACA8F9C();
  sub_1CAD4C0B4();
  sub_1CAD4C0B4();
  sub_1CAD4BC54();
  sub_1CACF1DA4(v12);

  (*(v10 + 8))(v12, v9);
}

- (BOOL)hasUnsavedChanges
{
  selfCopy = self;
  v3 = sub_1CACAAE14();

  return v3;
}

- (BOOL)hasAttachmentChanges
{
  selfCopy = self;
  v3 = sub_1CACAB048();

  return v3;
}

- (void)focusAndSelectStartDate
{
  selfCopy = self;
  sub_1CACAB274();
}

- (void)focusAndSelectTitle
{
  selfCopy = self;
  sub_1CACAB2E4();
}

- (void)focusTitle
{
  selfCopy = self;
  sub_1CACAB494();
}

- (void)setShouldRecordPrecommitEvent:(BOOL)event
{
  selfCopy = self;
  sub_1CACAB6DC(event);
}

- (id)precommitSerializedEvent
{
  selfCopy = self;
  v3 = sub_1CACA8F9C();
  swift_getKeyPath();
  sub_1CACACFCC(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v4 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__precommitSerializedEvent);

  return v4;
}

- (_TtC13CalendarUIKit34EventEditViewControllerManagerImpl)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end