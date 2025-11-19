@interface IdentityProofingFedStatsOptinViewController
- (_TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)configureFonts;
- (void)confirmButtonClicked;
- (void)learnMoreButtonClicked;
- (void)scrollViewDidScroll:(id)a3;
- (void)sizeHeaderToFit;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation IdentityProofingFedStatsOptinViewController

- (void)learnMoreButtonClicked
{
  v2 = self;
  sub_2457BDE4C();
}

- (void)sizeHeaderToFit
{
  v2 = self;
  sub_2457BE1E4();
}

- (void)configureFonts
{
  v2 = self;
  sub_2457BE3B0();
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IdentityProofingFedStatsOptinViewController();
  v2 = v3.receiver;
  [(IdentityProofingFedStatsOptinViewController *)&v3 viewDidLayoutSubviews];
  sub_2457BE1E4();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_2457BE774(a3, &selRef_viewDidAppear_, MEMORY[0x277CFF640]);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_2457BE774(a3, &selRef_viewDidDisappear_, MEMORY[0x277CFF648]);
}

- (void)confirmButtonClicked
{
  v2 = self;
  sub_2457BFB38();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2457C00E4();
}

- (_TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_viewModels;
  swift_beginAccess();
  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(&self->super.super.super.isa + v6);
  if (*(v7 + 16) <= a4)
  {
LABEL_7:
    __break(1u);
    return sub_245911424();
  }

  v8 = *(v7 + 8 * a4 + 32);
  if (v8 >> 62)
  {
    return sub_245911424();
  }

  return *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_viewModels;
  swift_beginAccess();
  return (*(&self->super.super.super.isa + v4))[2];
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
  v12 = sub_2457C070C(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_24590C284();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C254();
  v10 = a3;
  v11 = self;
  sub_2457C09CC(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v5 = sub_24590C284();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C254();
  v9 = a3;
  v10 = sub_24590C244();
  v11 = [v9 cellForRowAtIndexPath_];

  if (v11)
  {
    type metadata accessor for IdentityProofingFedStatsOptinTableViewCell();
    if (swift_dynamicCastClass())
    {
      sub_2457BCB74(0);
    }
  }

  else
  {
    v11 = v9;
  }

  (*(v6 + 8))(v8, v5);
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = self;
  sub_2457BE1E4();
}

@end