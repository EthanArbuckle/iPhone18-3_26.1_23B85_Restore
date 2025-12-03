@interface PuzzleAlertController
- (NSArray)keyCommands;
- (_TtC8NewsFeedP33_B3216C832986877D01E235539593604B21PuzzleAlertController)initWithCoder:(id)coder;
- (_TtC8NewsFeedP33_B3216C832986877D01E235539593604B21PuzzleAlertController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didPressKey:(id)key;
@end

@implementation PuzzleAlertController

- (NSArray)keyCommands
{
  swift_beginAccess();
  sub_1D5B5A498(0, &qword_1EC890160);

  v2 = sub_1D726265C();

  return v2;
}

- (void)didPressKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  sub_1D6A18394(keyCopy);
}

- (_TtC8NewsFeedP33_B3216C832986877D01E235539593604B21PuzzleAlertController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1D726207C();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B21PuzzleAlertController_handler);
  *v8 = 0;
  v8[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B21PuzzleAlertController_events) = MEMORY[0x1E69E7CC8];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B21PuzzleAlertController_commands) = MEMORY[0x1E69E7CC0];
  bundleCopy = bundle;
  if (v7)
  {
    v10 = sub_1D726203C();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for PuzzleAlertController();
  v11 = [(PuzzleAlertController *)&v13 initWithNibName:v10 bundle:bundle];

  return v11;
}

- (_TtC8NewsFeedP33_B3216C832986877D01E235539593604B21PuzzleAlertController)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B21PuzzleAlertController_handler);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B21PuzzleAlertController_events) = MEMORY[0x1E69E7CC8];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B21PuzzleAlertController_commands) = MEMORY[0x1E69E7CC0];
  v8.receiver = self;
  v8.super_class = type metadata accessor for PuzzleAlertController();
  coderCopy = coder;
  v6 = [(PuzzleAlertController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end