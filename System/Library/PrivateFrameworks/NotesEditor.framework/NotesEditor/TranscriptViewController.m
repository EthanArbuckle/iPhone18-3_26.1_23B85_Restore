@interface TranscriptViewController
- (_TtC11NotesEditor24TranscriptViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)consumedBottomAreaForResizer:(id)a3;
- (double)topInsetForResizer:(id)a3;
- (id)keyboardResizerScrollView;
- (void)audioDidStopWithNotification:(id)a3;
- (void)audioPlaybackTimeDidChangeWithNotification:(id)a3;
- (void)dealloc;
- (void)inactivityTimerFired;
- (void)loadView;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)tap:(id)a3;
- (void)userDidInteract;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation TranscriptViewController

- (void)loadView
{
  v2 = self;
  sub_21547441C();
}

- (void)dealloc
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_interactionTimer);
  v4 = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for TranscriptViewController();
  [(TranscriptViewController *)&v5 dealloc];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TranscriptViewController();
  v4 = v8.receiver;
  [(TranscriptViewController *)&v8 viewWillAppear:v3];
  sub_215474D40();
  v5 = [v4 view];
  if (v5)
  {
    v6 = v5;
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

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_215474A34(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = type metadata accessor for TranscriptViewController();
  v4 = v9.receiver;
  [(TranscriptViewController *)&v9 viewWillDisappear:v3];
  v5 = sub_215473BD8();
  [v5 stopAutoResizing];

  sub_21547A56C();
  v6 = [v4 view];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for TranscriptView();
    v8 = [swift_dynamicCastClassUnconditional() findInteraction];

    [v8 dismissFindNavigator];
  }

  else
  {
    __break(1u);
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_currentlyDragging) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_currentlyScrolling) = 1;
  v7 = self;
  sub_21549E69C();
  v8 = sub_21549E6AC();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_lastScrolledDate;
  swift_beginAccess();
  sub_21547BBDC(v6, v7 + v9);
  swift_endAccess();
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = self + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_previousContentOffset;
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_currentlyDragging) = 0;
  v10 = self;
  sub_21549E69C();
  v11 = sub_21549E6AC();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  v12 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_lastScrolledDate;
  swift_beginAccess();
  sub_21547BBDC(v8, v10 + v12);
  swift_endAccess();
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_currentlyScrolling) = 0;
  v7 = self;
  sub_21549E69C();
  v8 = sub_21549E6AC();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_lastScrolledDate;
  swift_beginAccess();
  sub_21547BBDC(v6, v7 + v9);
  swift_endAccess();
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v10 = self;
  [v4 contentOffset];
  v6 = v5;
  v8 = v7;
  [v4 contentSize];
  sub_2154754B8(v4, v6, v8, v9);
}

- (void)audioPlaybackTimeDidChangeWithNotification:(id)a3
{
  v4 = sub_21549E19C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E16C();
  v8 = self;
  sub_215477AC0();

  (*(v5 + 8))(v7, v4);
}

- (void)audioDidStopWithNotification:(id)a3
{
  v4 = sub_21549E19C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E16C();
  v8 = self;
  sub_215477E74();

  (*(v5 + 8))(v7, v4);
}

- (void)tap:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_215479700(v4);
}

- (void)userDidInteract
{
  v3 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_interactionTimer;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_interactionTimer);
  v5 = self;
  [v4 invalidate];
  v6 = [objc_opt_self() scheduledTimerWithTimeInterval:v5 target:sel_inactivityTimerFired selector:0 userInfo:0 repeats:5.0];
  v7 = *(&self->super.super.super.isa + v3);
  *(&self->super.super.super.isa + v3) = v6;
}

- (void)inactivityTimerFired
{
  v2 = self;
  sub_215479C8C();
}

- (_TtC11NotesEditor24TranscriptViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (double)topInsetForResizer:(id)a3
{
  v3 = self;
  v4 = [(TranscriptViewController *)v3 inputAccessoryView];
  if (!v4)
  {

    return 0.0;
  }

  v5 = [(TranscriptViewController *)v3 view];
  if (v5)
  {
    v7 = v5;
    type metadata accessor for TranscriptView();
    [swift_dynamicCastClassUnconditional() textContainerInset];
    v9 = v8;

    return v9;
  }

  __break(1u);
  return result;
}

- (double)consumedBottomAreaForResizer:(id)a3
{
  v3 = self;
  v4 = [(TranscriptViewController *)v3 view];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for TranscriptView();
    [swift_dynamicCastClassUnconditional() textContainerInset];
    v8 = v7;

    v9 = [(TranscriptViewController *)v3 inputAccessoryView];
    if (v9)
    {
      v10 = v9;
      [v9 frame];
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
  v2 = self;
  result = [(TranscriptViewController *)v2 view];
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