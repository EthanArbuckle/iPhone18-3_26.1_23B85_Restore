@interface TranscriptViewController
- (_TtC11NotesEditor24TranscriptViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)consumedBottomAreaForResizer:(id)resizer;
- (double)topInsetForResizer:(id)resizer;
- (id)keyboardResizerScrollView;
- (void)audioDidStopWithNotification:(id)notification;
- (void)audioPlaybackTimeDidChangeWithNotification:(id)notification;
- (void)dealloc;
- (void)inactivityTimerFired;
- (void)loadView;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)tap:(id)tap;
- (void)userDidInteract;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TranscriptViewController

- (void)loadView
{
  selfCopy = self;
  sub_21547441C();
}

- (void)dealloc
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_interactionTimer);
  selfCopy = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for TranscriptViewController();
  [(TranscriptViewController *)&v5 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TranscriptViewController();
  v4 = v8.receiver;
  [(TranscriptViewController *)&v8 viewWillAppear:appearCopy];
  sub_215474D40();
  view = [v4 view];
  if (view)
  {
    v6 = view;
    type metadata accessor for TranscriptView();
    [swift_dynamicCastClassUnconditional() setScrollsToTop_];

    v7 = sub_215473BD8();
    [v7 startAutoResizing];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_215474A34(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v9.receiver = self;
  v9.super_class = type metadata accessor for TranscriptViewController();
  v4 = v9.receiver;
  [(TranscriptViewController *)&v9 viewWillDisappear:disappearCopy];
  v5 = sub_215473BD8();
  [v5 stopAutoResizing];

  sub_21547A56C();
  view = [v4 view];
  if (view)
  {
    v7 = view;
    type metadata accessor for TranscriptView();
    findInteraction = [swift_dynamicCastClassUnconditional() findInteraction];

    [findInteraction dismissFindNavigator];
  }

  else
  {
    __break(1u);
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_currentlyDragging) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_currentlyScrolling) = 1;
  selfCopy = self;
  sub_21549E69C();
  v8 = sub_21549E6AC();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_lastScrolledDate;
  swift_beginAccess();
  sub_21547BBDC(v6, selfCopy + v9);
  swift_endAccess();
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = self + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_previousContentOffset;
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_currentlyDragging) = 0;
  selfCopy = self;
  sub_21549E69C();
  v11 = sub_21549E6AC();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  v12 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_lastScrolledDate;
  swift_beginAccess();
  sub_21547BBDC(v8, selfCopy + v12);
  swift_endAccess();
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_currentlyScrolling) = 0;
  selfCopy = self;
  sub_21549E69C();
  v8 = sub_21549E6AC();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_lastScrolledDate;
  swift_beginAccess();
  sub_21547BBDC(v6, selfCopy + v9);
  swift_endAccess();
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  [scrollCopy contentOffset];
  v6 = v5;
  v8 = v7;
  [scrollCopy contentSize];
  sub_2154754B8(scrollCopy, v6, v8, v9);
}

- (void)audioPlaybackTimeDidChangeWithNotification:(id)notification
{
  v4 = sub_21549E19C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E16C();
  selfCopy = self;
  sub_215477AC0();

  (*(v5 + 8))(v7, v4);
}

- (void)audioDidStopWithNotification:(id)notification
{
  v4 = sub_21549E19C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E16C();
  selfCopy = self;
  sub_215477E74();

  (*(v5 + 8))(v7, v4);
}

- (void)tap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  sub_215479700(tapCopy);
}

- (void)userDidInteract
{
  v3 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_interactionTimer;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_interactionTimer);
  selfCopy = self;
  [v4 invalidate];
  v6 = [objc_opt_self() scheduledTimerWithTimeInterval:selfCopy target:sel_inactivityTimerFired selector:0 userInfo:0 repeats:5.0];
  v7 = *(&self->super.super.super.isa + v3);
  *(&self->super.super.super.isa + v3) = v6;
}

- (void)inactivityTimerFired
{
  selfCopy = self;
  sub_215479C8C();
}

- (_TtC11NotesEditor24TranscriptViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (double)topInsetForResizer:(id)resizer
{
  selfCopy = self;
  inputAccessoryView = [(TranscriptViewController *)selfCopy inputAccessoryView];
  if (!inputAccessoryView)
  {

    return 0.0;
  }

  view = [(TranscriptViewController *)selfCopy view];
  if (view)
  {
    v7 = view;
    type metadata accessor for TranscriptView();
    [swift_dynamicCastClassUnconditional() textContainerInset];
    v9 = v8;

    return v9;
  }

  __break(1u);
  return result;
}

- (double)consumedBottomAreaForResizer:(id)resizer
{
  selfCopy = self;
  view = [(TranscriptViewController *)selfCopy view];
  if (view)
  {
    v6 = view;
    type metadata accessor for TranscriptView();
    [swift_dynamicCastClassUnconditional() textContainerInset];
    v8 = v7;

    inputAccessoryView = [(TranscriptViewController *)selfCopy inputAccessoryView];
    if (inputAccessoryView)
    {
      v10 = inputAccessoryView;
      [inputAccessoryView frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v20.origin.x = v12;
      v20.origin.y = v14;
      v20.size.width = v16;
      v20.size.height = v18;
      Height = CGRectGetHeight(v20);
    }

    else
    {
      Height = 0.0;
    }

    return v8 - Height;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)keyboardResizerScrollView
{
  selfCopy = self;
  result = [(TranscriptViewController *)selfCopy view];
  if (result)
  {

    type metadata accessor for TranscriptView();
    v4 = swift_dynamicCastClassUnconditional();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end