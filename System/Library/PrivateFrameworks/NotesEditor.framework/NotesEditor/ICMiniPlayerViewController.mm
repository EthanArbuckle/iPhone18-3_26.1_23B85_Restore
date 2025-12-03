@interface ICMiniPlayerViewController
- (ICAttachment)attachment;
- (ICMiniPlayerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)close:(id)close;
- (void)hideCloseButton:(id)button;
- (void)loadView;
- (void)setAttachment:(id)attachment;
- (void)swipe:(id)swipe;
- (void)viewDidLayoutSubviews;
@end

@implementation ICMiniPlayerViewController

- (ICAttachment)attachment
{
  v3 = OBJC_IVAR___ICMiniPlayerViewController_attachment;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setAttachment:(id)attachment
{
  v5 = OBJC_IVAR___ICMiniPlayerViewController_attachment;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = attachment;
  attachmentCopy = attachment;
  selfCopy = self;
  sub_2153C6F9C(v6);
}

- (void)loadView
{
  selfCopy = self;
  sub_2153C77E0();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_2153C85E0();
}

- (void)swipe:(id)swipe
{
  swipeCopy = swipe;
  selfCopy = self;
  v5 = [swipeCopy direction] == 2;
  v6 = *(&selfCopy->super.super.super.isa + OBJC_IVAR___ICMiniPlayerViewController_showCloseButton);
  *(&selfCopy->super.super.super.isa + OBJC_IVAR___ICMiniPlayerViewController_showCloseButton) = v5;
  sub_2153C8AD4(v6);
}

- (void)close:(id)close
{
  if (close)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2154A2BCC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_2153C8FA4();

  sub_2151ADCD8(v6, &qword_27CA5ABC0);
}

- (void)hideCloseButton:(id)button
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___ICMiniPlayerViewController_showCloseButton);
  *(&self->super.super.super.isa + OBJC_IVAR___ICMiniPlayerViewController_showCloseButton) = 0;
  selfCopy = self;
  sub_2153C8AD4(v3);
}

- (ICMiniPlayerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_2154A1D6C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return MiniPlayerViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
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
    selfCopy = self;
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