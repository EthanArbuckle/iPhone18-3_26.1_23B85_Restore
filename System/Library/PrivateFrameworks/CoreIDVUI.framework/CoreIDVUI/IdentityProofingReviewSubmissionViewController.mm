@interface IdentityProofingReviewSubmissionViewController
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)configureTableViewScheme;
- (void)updateViewLayout:(id)a3 previousTraitCollection:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation IdentityProofingReviewSubmissionViewController

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_245851AFC(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for IdentityProofingReviewSubmissionViewController();
  v4 = v6.receiver;
  [(IdentityProofingReviewSubmissionViewController *)&v6 viewDidDisappear:v3];
  v5 = sub_2458A1B04();
  sub_2458B4FCC(0);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2458520C0();
}

- (void)updateViewLayout:(id)a3 previousTraitCollection:(id)a4
{
  v5 = self;
  sub_2458A3560();
  v4 = sub_2458515A0();
  sub_2458A6BA0(v4, 0, 1, 0, 1);
}

- (void)configureTableViewScheme
{
  v2 = self;
  sub_245852C14();
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_24590C284();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C254();
  v10 = a3;
  v11 = self;
  v12 = sub_245855634(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
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