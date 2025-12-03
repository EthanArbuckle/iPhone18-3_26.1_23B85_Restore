@interface PageCollectionViewController
- (_TtC7MusicUI28PageCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PageCollectionViewController

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_216AC1A24(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (_TtC7MusicUI28PageCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_21700E514();
  }

  bundleCopy = bundle;
  sub_216AC5704();
}

@end