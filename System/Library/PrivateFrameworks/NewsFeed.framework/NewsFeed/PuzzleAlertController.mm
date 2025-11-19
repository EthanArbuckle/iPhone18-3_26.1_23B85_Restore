@interface PuzzleAlertController
- (NSArray)keyCommands;
- (_TtC8NewsFeedP33_B3216C832986877D01E235539593604B21PuzzleAlertController)initWithCoder:(id)a3;
- (_TtC8NewsFeedP33_B3216C832986877D01E235539593604B21PuzzleAlertController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didPressKey:(id)a3;
@end

@implementation PuzzleAlertController

- (NSArray)keyCommands
{
  swift_beginAccess();
  sub_1D5B5A498(0, &qword_1EC890160);

  v2 = sub_1D726265C();

  return v2;
}

- (void)didPressKey:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D6A18394(v4);
}

- (_TtC8NewsFeedP33_B3216C832986877D01E235539593604B21PuzzleAlertController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
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
  v9 = a4;
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
  v11 = [(PuzzleAlertController *)&v13 initWithNibName:v10 bundle:a4];

  return v11;
}

- (_TtC8NewsFeedP33_B3216C832986877D01E235539593604B21PuzzleAlertController)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B21PuzzleAlertController_handler);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B21PuzzleAlertController_events) = MEMORY[0x1E69E7CC8];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B21PuzzleAlertController_commands) = MEMORY[0x1E69E7CC0];
  v8.receiver = self;
  v8.super_class = type metadata accessor for PuzzleAlertController();
  v5 = a3;
  v6 = [(PuzzleAlertController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end