@interface LinkEditorController
+ (id)noteFor:(id)for;
+ (id)noteIDFor:(id)for;
- (BOOL)languageHasSpaces;
- (ICLinkEditorDelegate)delegate;
- (LinkEditorController)init;
- (NSString)searchString;
- (UIView)acceleratorHostingView;
- (_NSRange)lastSelectedRangeForAccelerator;
- (id)sanitizedWithString:(id)string;
- (int64_t)addApproach;
- (int64_t)writingDirection;
- (void)acceleratorOriginNeedsUpdate;
- (void)cancel;
- (void)didSelectNoteSuggestionWithIdentifier:(id)identifier title:(id)title;
- (void)hideAccelerator;
- (void)insertAndDismissWithCompletion:(id)completion;
- (void)insertLinkURLWithUrl:(id)url;
- (void)insertTextNoteLinkWithNoteSelection:(id)selection note:(id)note;
- (void)insertTokenizedNoteLinkWithNoteSelection:(id)selection;
- (void)removeLink;
- (void)selectedSuggestionWithSelection:(id)selection;
- (void)selectedURLWithSelection:(id)selection;
- (void)setAddApproach:(int64_t)approach;
- (void)setDelegate:(id)delegate;
- (void)setLinkAcceleratorController:(id)controller;
- (void)setupObservers;
- (void)validateSelection;
@end

@implementation LinkEditorController

- (ICLinkEditorDelegate)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  v5 = OBJC_IVAR___LinkEditorController_delegate;
  swift_beginAccess();
  *(&self->super.isa + v5) = delegate;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (int64_t)addApproach
{
  v3 = OBJC_IVAR___LinkEditorController_addApproach;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAddApproach:(int64_t)approach
{
  v5 = OBJC_IVAR___LinkEditorController_addApproach;
  swift_beginAccess();
  *(&self->super.isa + v5) = approach;
}

- (void)setLinkAcceleratorController:(id)controller
{
  v4 = *(&self->super.isa + OBJC_IVAR___LinkEditorController_linkAcceleratorController);
  *(&self->super.isa + OBJC_IVAR___LinkEditorController_linkAcceleratorController) = controller;
  controllerCopy = controller;
}

+ (id)noteIDFor:(id)for
{
  forCopy = for;
  sub_21536AD68(for);
  v6 = v5;

  if (v6)
  {
    v7 = sub_2154A1D2C();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)noteFor:(id)for
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  if (for)
  {
    sub_21549E51C();
    v7 = sub_21549E56C();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    v8 = sub_21549E56C();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  v9 = _s11NotesEditor04LinkB10ControllerC4note3forSo6ICNoteCSg10Foundation3URLVSg_tFZ_0(v6);
  sub_2151ADCD8(v6, &unk_27CA5B090);

  return v9;
}

- (void)setupObservers
{
  selfCopy = self;
  sub_215366DF0();
}

- (id)sanitizedWithString:(id)string
{
  sub_2154A1D6C();
  selfCopy = self;
  sub_21536BD88();

  v5 = sub_2154A1D2C();

  return v5;
}

- (void)insertAndDismissWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_21532FCDC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_215368D40(v7, v6);
  sub_21532594C(v7);
}

- (void)insertTokenizedNoteLinkWithNoteSelection:(id)selection
{
  selectionCopy = selection;
  selfCopy = self;
  sub_215369414(selectionCopy);
}

- (void)insertTextNoteLinkWithNoteSelection:(id)selection note:(id)note
{
  selectionCopy = selection;
  noteCopy = note;
  selfCopy = self;
  sub_21536A9AC(noteCopy);
}

- (void)insertLinkURLWithUrl:(id)url
{
  v4 = sub_21549E56C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E51C();
  selfCopy = self;
  sub_215369934(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)removeLink
{
  selfCopy = self;
  sub_215369DB4();
}

- (void)cancel
{
  selfCopy = self;
  sub_215369FBC();
}

- (void)hideAccelerator
{
  v2 = *(&self->super.isa + OBJC_IVAR___LinkEditorController_linkAcceleratorController);
  if (v2)
  {
    selfCopy = self;
    v3 = v2;
    LinkAcceleratorController.hideAccelerator()();
  }
}

- (void)selectedSuggestionWithSelection:(id)selection
{
  selectionCopy = selection;
  selfCopy = self;
  sub_21536A220(selection);
}

- (void)selectedURLWithSelection:(id)selection
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  if (selection)
  {
    sub_21549E51C();
    v8 = sub_21549E56C();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_21549E56C();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  selfCopy = self;
  sub_21536A384(v7);

  sub_2151ADCD8(v7, &unk_27CA5B090);
}

- (void)validateSelection
{
  selfCopy = self;
  sub_21536A684();
}

- (LinkEditorController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_NSRange)lastSelectedRangeForAccelerator
{
  swift_beginAccess();
  selfCopy = self;

  sub_21549F65C();

  v4 = sub_2154A1E0C();

  v5 = 0;
  v6 = v4;
  result.length = v6;
  result.location = v5;
  return result;
}

- (void)acceleratorOriginNeedsUpdate
{
  selfCopy = self;
  LinkEditorController.acceleratorOriginNeedsUpdate()();
}

- (BOOL)languageHasSpaces
{
  v3 = OBJC_IVAR___LinkEditorController_delegate;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  if (v4)
  {
    return [v4 languageHasSpaces];
  }

  else
  {
    return 1;
  }
}

- (int64_t)writingDirection
{
  v3 = OBJC_IVAR___LinkEditorController_delegate;
  swift_beginAccess();
  result = *(&self->super.isa + v3);
  if (result)
  {
    return [result writingDirection];
  }

  return result;
}

- (UIView)acceleratorHostingView
{
  selfCopy = self;
  v3 = LinkEditorController.acceleratorHostingView.getter();

  return v3;
}

- (NSString)searchString
{
  swift_beginAccess();
  selfCopy = self;

  sub_21549F65C();

  sub_21536BD88();

  v4 = sub_2154A1D2C();

  return v4;
}

- (void)didSelectNoteSuggestionWithIdentifier:(id)identifier title:(id)title
{
  v5 = sub_2154A1D6C();
  v7 = v6;
  v8 = sub_2154A1D6C();
  v10 = v9;
  selfCopy = self;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  LinkEditorController.didSelectNoteSuggestion(withIdentifier:title:)(v12, v13);
}

@end