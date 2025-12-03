@interface IdentityProofingReviewSubmissionViewController
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)configureTableViewScheme;
- (void)updateViewLayout:(id)layout previousTraitCollection:(id)collection;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation IdentityProofingReviewSubmissionViewController

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_245851AFC(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for IdentityProofingReviewSubmissionViewController();
  v4 = v6.receiver;
  [(IdentityProofingReviewSubmissionViewController *)&v6 viewDidDisappear:disappearCopy];
  v5 = sub_2458A1B04();
  sub_2458B4FCC(0);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2458520C0();
}

- (void)updateViewLayout:(id)layout previousTraitCollection:(id)collection
{
  selfCopy = self;
  sub_2458A3560();
  v4 = sub_2458515A0();
  sub_2458A6BA0(v4, 0, 1, 0, 1);
}

- (void)configureTableViewScheme
{
  selfCopy = self;
  sub_245852C14();
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_documentsToBeReviewed);
  if (v4)
  {
    return *(v4 + 16);
  }

  else
  {
    return 0;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_24590C284();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C254();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_245855634(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v4 = sub_24590C284();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C254();
  v8 = *MEMORY[0x277D76F30];
  (*(v5 + 8))(v7, v4);
  return v8;
}

@end