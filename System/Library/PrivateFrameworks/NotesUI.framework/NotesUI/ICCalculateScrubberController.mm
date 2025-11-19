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
- (void)outlineControllerCollapsedStateDidChange:(id)a3;
- (void)resetHoverTimer;
- (void)setHoveredCharacterIndex:(int64_t)a3;
- (void)setNote:(id)a3;
- (void)showScrubberForNumberLiteral:(id)a3 isCompact:(BOOL)a4;
- (void)startBlockingMerge;
- (void)startPausingUndoActions;
- (void)updateText:(id)a3;
@end

@implementation ICCalculateScrubberController

- (void)setNote:(id)a3
{
  v5 = OBJC_IVAR___ICCalculateScrubberController_note;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (BOOL)isShowing
{
  v2 = *(&self->super.isa + OBJC_IVAR___ICCalculateScrubberController_viewController);
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = self;
  v4 = [v2 view];
  if (!v4)
  {
    __break(1u);
    return v4;
  }

  v5 = v4;
  v6 = [v4 window];

  if (v6)
  {

    LOBYTE(v4) = 1;
  }

  else
  {
LABEL_5:
    LOBYTE(v4) = 0;
  }

  return v4;
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
    v2 = self;

    v3 = sub_1D4417714();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)showScrubberForNumberLiteral:(id)a3 isCompact:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_1D44042FC(a3);
}

- (void)hideScrubber
{
  v2 = self;
  ICCalculateScrubberController.hideScrubber()();
}

- (void)updateText:(id)a3
{
  v4 = sub_1D4419C54();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  ICCalculateScrubberController.updateText(string:)(v8);
}

- (void)didEndScrub
{
  v3 = self;
  [(ICCalculateScrubberController *)v3 endBlockingMerge];
  v2 = [(ICCalculateScrubberController *)v3 note];
  [(ICNote *)v2 updateModificationDateAndChangeCountAndSaveImmediately];

  [(ICCalculateScrubberController *)v3 startBlockingMerge];
}

- (void)hideIfNotScrubbing
{
  v2 = *(&self->super.isa + OBJC_IVAR___ICCalculateScrubberController_viewController);
  if (v2)
  {
    v5 = self;
    v3 = v2;

    v4 = sub_1D4417714();

    if ((v4 & 1) == 0)
    {
      [(ICCalculateScrubberController *)v5 hideScrubber];
    }
  }
}

- (void)deselectText
{
  v2 = self;
  sub_1D440509C();
}

- (void)startBlockingMerge
{
  v2 = self;
  sub_1D44051D4();
}

- (void)endBlockingMerge
{
  v2 = self;
  sub_1D44052FC();
}

- (void)startPausingUndoActions
{
  if ((*(&self->super.isa + OBJC_IVAR___ICCalculateScrubberController_isPausingUndoActions) & 1) == 0)
  {
    *(&self->super.isa + OBJC_IVAR___ICCalculateScrubberController_isPausingUndoActions) = 1;
    v3 = self;
    v4 = [(ICCalculateScrubberController *)v3 note];
    v5 = [(ICNote *)v4 textStorage];

    [(ICTTTextStorage *)v5 setIsPausingUndoActions:1];
  }
}

- (void)endPausingUndoActions
{
  if (*(&self->super.isa + OBJC_IVAR___ICCalculateScrubberController_isPausingUndoActions) == 1)
  {
    *(&self->super.isa + OBJC_IVAR___ICCalculateScrubberController_isPausingUndoActions) = 0;
    v3 = self;
    v4 = [(ICCalculateScrubberController *)v3 note];
    v5 = [(ICNote *)v4 textStorage];

    [(ICTTTextStorage *)v5 setIsPausingUndoActions:0];
  }
}

- (void)outlineControllerCollapsedStateDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D4405550(v4);
}

- (void)dealloc
{
  v2 = self;
  [(ICCalculateScrubberController *)v2 hideScrubber];
  v3.receiver = v2;
  v3.super_class = ICCalculateScrubberController;
  [(ICCalculateScrubberController *)&v3 dealloc];
}

- (ICCalculateScrubberController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)setHoveredCharacterIndex:(int64_t)a3
{
  v8 = self;
  v4 = sub_1D44041A0();
  v5 = &v4[OBJC_IVAR____TtCE7NotesUICSo29ICCalculateScrubberController15HoverController_hoveredCharacterIndex];
  v6 = *&v4[OBJC_IVAR____TtCE7NotesUICSo29ICCalculateScrubberController15HoverController_hoveredCharacterIndex];
  v7 = v4[OBJC_IVAR____TtCE7NotesUICSo29ICCalculateScrubberController15HoverController_hoveredCharacterIndex + 8];
  *v5 = a3;
  v5[8] = 0;
  sub_1D4405AD8(v6, v7);
}

- (void)resetHoverTimer
{
  v4 = self;
  v2 = sub_1D44041A0();
  v3 = sub_1D4405E64();
  [v3 cancelPreviousFireRequests];
}

@end