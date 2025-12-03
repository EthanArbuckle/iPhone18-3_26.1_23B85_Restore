@interface ICCalculateScrubberController
- (BOOL)isScrubbing;
- (BOOL)isShowing;
- (ICCalculateScrubberController)init;
- (ICNote)note;
- (void)dealloc;
- (void)deselectText;
- (void)didEndScrub;
- (void)endBlockingMerge;
- (void)endPausingUndoActions;
- (void)hideIfNotScrubbing;
- (void)hideScrubber;
- (void)outlineControllerCollapsedStateDidChange:(id)change;
- (void)resetHoverTimer;
- (void)setHoveredCharacterIndex:(int64_t)index;
- (void)setNote:(id)note;
- (void)showScrubberForNumberLiteral:(id)literal isCompact:(BOOL)compact;
- (void)startBlockingMerge;
- (void)startPausingUndoActions;
- (void)updateText:(id)text;
@end

@implementation ICCalculateScrubberController

- (void)setNote:(id)note
{
  v5 = OBJC_IVAR___ICCalculateScrubberController_note;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = note;
  noteCopy = note;
}

- (BOOL)isShowing
{
  v2 = *(&self->super.isa + OBJC_IVAR___ICCalculateScrubberController_viewController);
  if (!v2)
  {
    goto LABEL_5;
  }

  selfCopy = self;
  view = [v2 view];
  if (!view)
  {
    __break(1u);
    return view;
  }

  v5 = view;
  window = [view window];

  if (window)
  {

    LOBYTE(view) = 1;
  }

  else
  {
LABEL_5:
    LOBYTE(view) = 0;
  }

  return view;
}

- (ICNote)note
{
  v3 = OBJC_IVAR___ICCalculateScrubberController_note;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (BOOL)isScrubbing
{
  if (*(&self->super.isa + OBJC_IVAR___ICCalculateScrubberController_scrubber))
  {
    selfCopy = self;

    v3 = sub_1D4417714();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)showScrubberForNumberLiteral:(id)literal isCompact:(BOOL)compact
{
  literalCopy = literal;
  selfCopy = self;
  sub_1D44042FC(literal);
}

- (void)hideScrubber
{
  selfCopy = self;
  ICCalculateScrubberController.hideScrubber()();
}

- (void)updateText:(id)text
{
  v4 = sub_1D4419C54();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  ICCalculateScrubberController.updateText(string:)(v8);
}

- (void)didEndScrub
{
  selfCopy = self;
  [(ICCalculateScrubberController *)selfCopy endBlockingMerge];
  note = [(ICCalculateScrubberController *)selfCopy note];
  [(ICNote *)note updateModificationDateAndChangeCountAndSaveImmediately];

  [(ICCalculateScrubberController *)selfCopy startBlockingMerge];
}

- (void)hideIfNotScrubbing
{
  v2 = *(&self->super.isa + OBJC_IVAR___ICCalculateScrubberController_viewController);
  if (v2)
  {
    selfCopy = self;
    v3 = v2;

    v4 = sub_1D4417714();

    if ((v4 & 1) == 0)
    {
      [(ICCalculateScrubberController *)selfCopy hideScrubber];
    }
  }
}

- (void)deselectText
{
  selfCopy = self;
  sub_1D440509C();
}

- (void)startBlockingMerge
{
  selfCopy = self;
  sub_1D44051D4();
}

- (void)endBlockingMerge
{
  selfCopy = self;
  sub_1D44052FC();
}

- (void)startPausingUndoActions
{
  if ((*(&self->super.isa + OBJC_IVAR___ICCalculateScrubberController_isPausingUndoActions) & 1) == 0)
  {
    *(&self->super.isa + OBJC_IVAR___ICCalculateScrubberController_isPausingUndoActions) = 1;
    selfCopy = self;
    note = [(ICCalculateScrubberController *)selfCopy note];
    textStorage = [(ICNote *)note textStorage];

    [(ICTTTextStorage *)textStorage setIsPausingUndoActions:1];
  }
}

- (void)endPausingUndoActions
{
  if (*(&self->super.isa + OBJC_IVAR___ICCalculateScrubberController_isPausingUndoActions) == 1)
  {
    *(&self->super.isa + OBJC_IVAR___ICCalculateScrubberController_isPausingUndoActions) = 0;
    selfCopy = self;
    note = [(ICCalculateScrubberController *)selfCopy note];
    textStorage = [(ICNote *)note textStorage];

    [(ICTTTextStorage *)textStorage setIsPausingUndoActions:0];
  }
}

- (void)outlineControllerCollapsedStateDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1D4405550(changeCopy);
}

- (void)dealloc
{
  selfCopy = self;
  [(ICCalculateScrubberController *)selfCopy hideScrubber];
  v3.receiver = selfCopy;
  v3.super_class = ICCalculateScrubberController;
  [(ICCalculateScrubberController *)&v3 dealloc];
}

- (ICCalculateScrubberController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)setHoveredCharacterIndex:(int64_t)index
{
  selfCopy = self;
  v4 = sub_1D44041A0();
  v5 = &v4[OBJC_IVAR____TtCE7NotesUICSo29ICCalculateScrubberController15HoverController_hoveredCharacterIndex];
  v6 = *&v4[OBJC_IVAR____TtCE7NotesUICSo29ICCalculateScrubberController15HoverController_hoveredCharacterIndex];
  v7 = v4[OBJC_IVAR____TtCE7NotesUICSo29ICCalculateScrubberController15HoverController_hoveredCharacterIndex + 8];
  *v5 = index;
  v5[8] = 0;
  sub_1D4405AD8(v6, v7);
}

- (void)resetHoverTimer
{
  selfCopy = self;
  v2 = sub_1D44041A0();
  v3 = sub_1D4405E64();
  [v3 cancelPreviousFireRequests];
}

@end