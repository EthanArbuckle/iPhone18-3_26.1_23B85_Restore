@interface BucketsViewController
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_TtC6MailUI21BucketsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)preferredHeight;
- (id)lastSeenDatesForBucket:(int64_t)a3;
- (void)clearSessionState;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)didMoveToParentViewController:(id)a3;
- (void)didRecognizeSwipeGesture:(id)a3;
- (void)setlastSeenDates:(id)a3 forBucket:(int64_t)a4;
- (void)updateLastSeenDates:(id)a3 forMailboxes:(id)a4 bucket:(int64_t)a5;
- (void)updateWithMailboxes:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BucketsViewController

- (void)viewDidLoad
{
  MEMORY[0x277D82BE0](self);
  BucketsViewController.viewDidLoad()();
  MEMORY[0x277D82BD8](self);
}

- (double)preferredHeight
{
  MEMORY[0x277D82BE0](self);
  v4 = BucketsViewController.preferredHeight.getter();
  MEMORY[0x277D82BD8](self);
  return v4;
}

- (void)viewDidLayoutSubviews
{
  MEMORY[0x277D82BE0](self);
  BucketsViewController.viewDidLayoutSubviews()();
  MEMORY[0x277D82BD8](self);
}

- (void)viewDidAppear:(BOOL)a3
{
  MEMORY[0x277D82BE0](self);
  v3 = sub_214CCD394();
  BucketsViewController.viewDidAppear(_:)(v3 & 1);
  MEMORY[0x277D82BD8](self);
}

- (id)lastSeenDatesForBucket:(int64_t)a3
{
  MEMORY[0x277D82BE0](self);
  v6 = BucketsViewController.lastSeenDates(for:)(a3);
  MEMORY[0x277D82BD8](self);

  return v6;
}

- (void)viewDidDisappear:(BOOL)a3
{
  MEMORY[0x277D82BE0](self);
  v3 = sub_214CCD394();
  BucketsViewController.viewDidDisappear(_:)(v3 & 1);
  MEMORY[0x277D82BD8](self);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  BucketsViewController.viewWillTransition(to:with:)(a4, a3.width, a3.height);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
}

- (void)didMoveToParentViewController:(id)a3
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  BucketsViewController.didMove(toParent:)(a3);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a3);
}

- (_TtC6MailUI21BucketsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  if (a3)
  {
    sub_214CCF564();
    v6 = v4;
    MEMORY[0x277D82BD8](a3);
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  BucketsViewController.init(nibName:bundle:)(v5);
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v12 = self;
  v13 = a3;
  v11 = a4;
  v10 = sub_214CCD374();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v9 = &v6 - v6;
  MEMORY[0x277D82BE0](v5);
  MEMORY[0x277D82BE0](v11);
  MEMORY[0x277D82BE0](self);
  sub_214CCD324();
  BucketsViewController.collectionView(_:didSelectItemAt:)(v13, v9);
  (*(v7 + 8))(v9, v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v12 = self;
  v13 = a3;
  v11 = a4;
  v10 = sub_214CCD374();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v9 = &v6 - v6;
  MEMORY[0x277D82BE0](v5);
  MEMORY[0x277D82BE0](v11);
  MEMORY[0x277D82BE0](self);
  sub_214CCD324();
  BucketsViewController.collectionView(_:didDeselectItemAt:)(v13, v9);
  (*(v7 + 8))(v9, v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
}

- (void)didRecognizeSwipeGesture:(id)a3
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  sub_214B49D34(a3);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a3);
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  BucketsViewController.gestureRecognizerShouldBegin(_:)(a3);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a3);
  return sub_214CCD384() & 1;
}

- (void)setlastSeenDates:(id)a3 forBucket:(int64_t)a4
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  BucketsViewController.setlastSeenDates(_:for:)(a3, a4);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a3);
}

- (void)clearSessionState
{
  MEMORY[0x277D82BE0](self);
  BucketsViewController.clearState()();
  MEMORY[0x277D82BD8](self);
}

- (void)updateLastSeenDates:(id)a3 forMailboxes:(id)a4 bucket:(int64_t)a5
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](self);
  sub_214A63684();
  v7 = sub_214CCF7E4();
  BucketsViewController.updateLastSeenDates(_:forMailboxes:bucket:)(a3, v7, a5);

  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a3);
}

- (void)updateWithMailboxes:(id)a3
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  sub_214A63684();
  v4 = sub_214CCF7E4();
  BucketsViewController.update(mailboxes:)(v4);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);
}

@end