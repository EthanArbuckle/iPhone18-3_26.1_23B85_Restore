@interface PageCollectionViewController
- (_TtC7MusicUI28PageCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PageCollectionViewController

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_216AC1A24(a4, width, height);
  swift_unknownObjectRelease();
}

- (_TtC7MusicUI28PageCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_21700E514();
  }

  v5 = a4;
  sub_216AC5704();
}

@end