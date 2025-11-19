@interface LinkEditorController
+ (id)noteFor:(id)a3;
+ (id)noteIDFor:(id)a3;
- (BOOL)languageHasSpaces;
- (ICLinkEditorDelegate)delegate;
- (LinkEditorController)init;
- (NSString)searchString;
- (UIView)acceleratorHostingView;
- (_NSRange)lastSelectedRangeForAccelerator;
- (id)sanitizedWithString:(id)a3;
- (int64_t)addApproach;
- (int64_t)writingDirection;
- (void)acceleratorOriginNeedsUpdate;
- (void)cancel;
- (void)didSelectNoteSuggestionWithIdentifier:(id)a3 title:(id)a4;
- (void)hideAccelerator;
- (void)insertAndDismissWithCompletion:(id)a3;
- (void)insertLinkURLWithUrl:(id)a3;
- (void)insertTextNoteLinkWithNoteSelection:(id)a3 note:(id)a4;
- (void)insertTokenizedNoteLinkWithNoteSelection:(id)a3;
- (void)removeLink;
- (void)selectedSuggestionWithSelection:(id)a3;
- (void)selectedURLWithSelection:(id)a3;
- (void)setAddApproach:(int64_t)a3;
- (void)setDelegate:(id)a3;
- (void)setLinkAcceleratorController:(id)a3;
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

- (void)setDelegate:(id)a3
{
  v5 = OBJC_IVAR___LinkEditorController_delegate;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (int64_t)addApproach
{
  v3 = OBJC_IVAR___LinkEditorController_addApproach;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAddApproach:(int64_t)a3
{
  v5 = OBJC_IVAR___LinkEditorController_addApproach;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (void)setLinkAcceleratorController:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___LinkEditorController_linkAcceleratorController);
  *(&self->super.isa + OBJC_IVAR___LinkEditorController_linkAcceleratorController) = a3;
  v3 = a3;
}

+ (id)noteIDFor:(id)a3
{
  v4 = a3;
  sub_21536AD68(a3);
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

+ (id)noteFor:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  if (a3)
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
  v2 = self;
  sub_215366DF0();
}

- (id)sanitizedWithString:(id)a3
{
  sub_2154A1D6C();
  v4 = self;
  sub_21536BD88();

  v5 = sub_2154A1D2C();

  return v5;
}

- (void)insertAndDismissWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
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

  v8 = self;
  sub_215368D40(v7, v6);
  sub_21532594C(v7);
}

- (void)insertTokenizedNoteLinkWithNoteSelection:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_215369414(v4);
}

- (void)insertTextNoteLinkWithNoteSelection:(id)a3 note:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_21536A9AC(v7);
}

- (void)insertLinkURLWithUrl:(id)a3
{
  v4 = sub_21549E56C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E51C();
  v8 = self;
  sub_215369934(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)removeLink
{
  v2 = self;
  sub_215369DB4();
}

- (void)cancel
{
  v2 = self;
  sub_215369FBC();
}

- (void)hideAccelerator
{
  v2 = *(&self->super.isa + OBJC_IVAR___LinkEditorController_linkAcceleratorController);
  if (v2)
  {
    v4 = self;
    v3 = v2;
    LinkAcceleratorController.hideAccelerator()();
  }
}

- (void)selectedSuggestionWithSelection:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_21536A220(a3);
}

- (void)selectedURLWithSelection:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  if (a3)
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

  v10 = self;
  sub_21536A384(v7);

  sub_2151ADCD8(v7, &unk_27CA5B090);
}

- (void)validateSelection
{
  v2 = self;
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
  v3 = self;

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
  v2 = self;
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
  v2 = self;
  v3 = LinkEditorController.acceleratorHostingView.getter();

  return v3;
}

- (NSString)searchString
{
  swift_beginAccess();
  v3 = self;

  sub_21549F65C();

  sub_21536BD88();

  v4 = sub_2154A1D2C();

  return v4;
}

- (void)didSelectNoteSuggestionWithIdentifier:(id)a3 title:(id)a4
{
  v5 = sub_2154A1D6C();
  v7 = v6;
  v8 = sub_2154A1D6C();
  v10 = v9;
  v11 = self;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  LinkEditorController.didSelectNoteSuggestion(withIdentifier:title:)(v12, v13);
}

@end