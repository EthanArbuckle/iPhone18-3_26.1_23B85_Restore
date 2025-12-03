@interface HeadphoneAlwaysShowControlsAVPlayer
- (BOOL)showsPlaybackControls;
- (_TtC19HeadphoneSettingsUI35HeadphoneAlwaysShowControlsAVPlayer)initWithNibName:(id)name bundle:(id)bundle;
- (void)setShowsPlaybackControls:(BOOL)controls;
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

- (void)setShowsPlaybackControls:(BOOL)controls
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

- (_TtC19HeadphoneSettingsUI35HeadphoneAlwaysShowControlsAVPlayer)initWithNibName:(id)name bundle:(id)bundle
{
  MEMORY[0x1E69E5928](name);
  MEMORY[0x1E69E5928](bundle);
  if (name)
  {
    v6 = sub_1AC30A92C();
    v7 = v4;
    MEMORY[0x1E69E5920](name);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return sub_1AC2AC41C(v8, v9, bundle);
}

@end