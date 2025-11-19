@interface ImageCaptionSettingsViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (_TtC16MagnifierSupport34ImageCaptionSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)didToggleFeedbackSwitch:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ImageCaptionSettingsViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_257D2C494();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_257D2CC38(a3);
}

- (_TtC16MagnifierSupport34ImageCaptionSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_257ECF500();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_257D2CDF4(v5, v7, a4);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    return 0;
  }

  else
  {
    return (*(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport34ImageCaptionSettingsViewController_availableImageCaptionFeedbacks))[2];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_257ECCEB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  v10 = a3;
  v11 = self;
  v12 = sub_257D2D1C0(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)didToggleFeedbackSwitch:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257D2DBA4(v4);
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v4 = sub_257ECCEB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  v8 = sub_257ECCEA0();
  (*(v5 + 8))(v7, v4);
  return v8 != 0;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = sub_257ECCEB0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  v9 = a3;
  v10 = sub_257ECCE30();
  [v9 deselectRowAtIndexPath:v10 animated:1];

  (*(v6 + 8))(v8, v5);
}

@end