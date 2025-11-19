@interface HeadphoneAlwaysShowControlsAVPlayer
- (BOOL)showsPlaybackControls;
- (_TtC19HeadphoneSettingsUI35HeadphoneAlwaysShowControlsAVPlayer)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setShowsPlaybackControls:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation HeadphoneAlwaysShowControlsAVPlayer

- (BOOL)showsPlaybackControls
{
  MEMORY[0x1E69E5928](self);
  sub_1AC2AB7BC();
  MEMORY[0x1E69E5920](self);
  return sub_1AC3090FC() & 1;
}

- (void)setShowsPlaybackControls:(BOOL)a3
{
  MEMORY[0x1E69E5928](self);
  sub_1AC30910C();
  sub_1AC2AB838();
  MEMORY[0x1E69E5920](self);
}

- (void)viewDidLoad
{
  MEMORY[0x1E69E5928](self);
  sub_1AC2AB85C();
  MEMORY[0x1E69E5920](self);
}

- (_TtC19HeadphoneSettingsUI35HeadphoneAlwaysShowControlsAVPlayer)initWithNibName:(id)a3 bundle:(id)a4
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  if (a3)
  {
    v6 = sub_1AC30A92C();
    v7 = v4;
    MEMORY[0x1E69E5920](a3);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return sub_1AC2AC41C(v8, v9, a4);
}

@end