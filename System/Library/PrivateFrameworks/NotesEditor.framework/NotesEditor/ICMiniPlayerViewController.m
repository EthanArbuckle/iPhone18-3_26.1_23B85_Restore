@interface ICMiniPlayerViewController
- (ICAttachment)attachment;
- (ICMiniPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)close:(id)a3;
- (void)hideCloseButton:(id)a3;
- (void)loadView;
- (void)setAttachment:(id)a3;
- (void)swipe:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation ICMiniPlayerViewController

- (ICAttachment)attachment
{
  v3 = OBJC_IVAR___ICMiniPlayerViewController_attachment;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setAttachment:(id)a3
{
  v5 = OBJC_IVAR___ICMiniPlayerViewController_attachment;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = a3;
  v7 = a3;
  v8 = self;
  sub_2153C6F9C(v6);
}

- (void)loadView
{
  v2 = self;
  sub_2153C77E0();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_2153C85E0();
}

- (void)swipe:(id)a3
{
  v4 = a3;
  v7 = self;
  v5 = [v4 direction] == 2;
  v6 = *(&v7->super.super.super.isa + OBJC_IVAR___ICMiniPlayerViewController_showCloseButton);
  *(&v7->super.super.super.isa + OBJC_IVAR___ICMiniPlayerViewController_showCloseButton) = v5;
  sub_2153C8AD4(v6);
}

- (void)close:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_2154A2BCC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_2153C8FA4();

  sub_2151ADCD8(v6, &qword_27CA5ABC0);
}

- (void)hideCloseButton:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___ICMiniPlayerViewController_showCloseButton);
  *(&self->super.super.super.isa + OBJC_IVAR___ICMiniPlayerViewController_showCloseButton) = 0;
  v4 = self;
  sub_2153C8AD4(v3);
}

- (ICMiniPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_2154A1D6C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return MiniPlayerViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = OBJC_IVAR___ICMiniPlayerViewController_attachment;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  if (v6)
  {
    sub_2151A6C9C(0, &unk_27CA5C170);
    v7 = swift_allocObject();
    *(v7 + 16) = self;
    *(v7 + 24) = v6;
    v8 = self;
    v9 = v6;
    v10 = sub_2153BF4F8(0, 0, 0, sub_2153CCBC4, v7);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end