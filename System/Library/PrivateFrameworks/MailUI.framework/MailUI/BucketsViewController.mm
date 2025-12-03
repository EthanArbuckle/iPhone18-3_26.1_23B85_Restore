@interface BucketsViewController
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (_TtC6MailUI21BucketsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)preferredHeight;
- (id)lastSeenDatesForBucket:(int64_t)bucket;
- (void)clearSessionState;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)didMoveToParentViewController:(id)controller;
- (void)didRecognizeSwipeGesture:(id)gesture;
- (void)setlastSeenDates:(id)dates forBucket:(int64_t)bucket;
- (void)updateLastSeenDates:(id)dates forMailboxes:(id)mailboxes bucket:(int64_t)bucket;
- (void)updateWithMailboxes:(id)mailboxes;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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

- (void)viewDidAppear:(BOOL)appear
{
  MEMORY[0x277D82BE0](self);
  v3 = sub_214CCD394();
  BucketsViewController.viewDidAppear(_:)(v3 & 1);
  MEMORY[0x277D82BD8](self);
}

- (id)lastSeenDatesForBucket:(int64_t)bucket
{
  MEMORY[0x277D82BE0](self);
  v6 = BucketsViewController.lastSeenDates(for:)(bucket);
  MEMORY[0x277D82BD8](self);

  return v6;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  MEMORY[0x277D82BE0](self);
  v3 = sub_214CCD394();
  BucketsViewController.viewDidDisappear(_:)(v3 & 1);
  MEMORY[0x277D82BD8](self);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  BucketsViewController.viewWillTransition(to:with:)(coordinator, size.width, size.height);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
}

- (void)didMoveToParentViewController:(id)controller
{
  MEMORY[0x277D82BE0](controller);
  MEMORY[0x277D82BE0](self);
  BucketsViewController.didMove(toParent:)(controller);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](controller);
}

- (_TtC6MailUI21BucketsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  MEMORY[0x277D82BE0](name);
  MEMORY[0x277D82BE0](bundle);
  if (name)
  {
    sub_214CCF564();
    v6 = v4;
    MEMORY[0x277D82BD8](name);
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  BucketsViewController.init(nibName:bundle:)(v5);
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  selfCopy = self;
  viewCopy = view;
  pathCopy = path;
  v10 = sub_214CCD374();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](viewCopy);
  v9 = &v6 - v6;
  MEMORY[0x277D82BE0](v5);
  MEMORY[0x277D82BE0](pathCopy);
  MEMORY[0x277D82BE0](self);
  sub_214CCD324();
  BucketsViewController.collectionView(_:didSelectItemAt:)(viewCopy, v9);
  (*(v7 + 8))(v9, v10);
  MEMORY[0x277D82BD8](pathCopy);
  MEMORY[0x277D82BD8](selfCopy);
  MEMORY[0x277D82BD8](viewCopy);
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  selfCopy = self;
  viewCopy = view;
  pathCopy = path;
  v10 = sub_214CCD374();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](viewCopy);
  v9 = &v6 - v6;
  MEMORY[0x277D82BE0](v5);
  MEMORY[0x277D82BE0](pathCopy);
  MEMORY[0x277D82BE0](self);
  sub_214CCD324();
  BucketsViewController.collectionView(_:didDeselectItemAt:)(viewCopy, v9);
  (*(v7 + 8))(v9, v10);
  MEMORY[0x277D82BD8](pathCopy);
  MEMORY[0x277D82BD8](selfCopy);
  MEMORY[0x277D82BD8](viewCopy);
}

- (void)didRecognizeSwipeGesture:(id)gesture
{
  MEMORY[0x277D82BE0](gesture);
  MEMORY[0x277D82BE0](self);
  sub_214B49D34(gesture);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](gesture);
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  MEMORY[0x277D82BE0](begin);
  MEMORY[0x277D82BE0](self);
  BucketsViewController.gestureRecognizerShouldBegin(_:)(begin);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](begin);
  return sub_214CCD384() & 1;
}

- (void)setlastSeenDates:(id)dates forBucket:(int64_t)bucket
{
  MEMORY[0x277D82BE0](dates);
  MEMORY[0x277D82BE0](self);
  BucketsViewController.setlastSeenDates(_:for:)(dates, bucket);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](dates);
}

- (void)clearSessionState
{
  MEMORY[0x277D82BE0](self);
  BucketsViewController.clearState()();
  MEMORY[0x277D82BD8](self);
}

- (void)updateLastSeenDates:(id)dates forMailboxes:(id)mailboxes bucket:(int64_t)bucket
{
  MEMORY[0x277D82BE0](dates);
  MEMORY[0x277D82BE0](mailboxes);
  MEMORY[0x277D82BE0](self);
  sub_214A63684();
  v7 = sub_214CCF7E4();
  BucketsViewController.updateLastSeenDates(_:forMailboxes:bucket:)(dates, v7, bucket);

  MEMORY[0x277D82BD8](mailboxes);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](dates);
}

- (void)updateWithMailboxes:(id)mailboxes
{
  MEMORY[0x277D82BE0](mailboxes);
  MEMORY[0x277D82BE0](self);
  sub_214A63684();
  v4 = sub_214CCF7E4();
  BucketsViewController.update(mailboxes:)(v4);

  MEMORY[0x277D82BD8](mailboxes);
  MEMORY[0x277D82BD8](self);
}

@end