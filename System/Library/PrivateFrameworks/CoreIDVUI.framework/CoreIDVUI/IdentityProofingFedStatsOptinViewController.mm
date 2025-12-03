@interface IdentityProofingFedStatsOptinViewController
- (_TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)configureFonts;
- (void)confirmButtonClicked;
- (void)learnMoreButtonClicked;
- (void)scrollViewDidScroll:(id)scroll;
- (void)sizeHeaderToFit;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation IdentityProofingFedStatsOptinViewController

- (void)learnMoreButtonClicked
{
  selfCopy = self;
  sub_2457BDE4C();
}

- (void)sizeHeaderToFit
{
  selfCopy = self;
  sub_2457BE1E4();
}

- (void)configureFonts
{
  selfCopy = self;
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

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2457BE774(appear, &selRef_viewDidAppear_, MEMORY[0x277CFF640]);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_2457BE774(disappear, &selRef_viewDidDisappear_, MEMORY[0x277CFF648]);
}

- (void)confirmButtonClicked
{
  selfCopy = self;
  sub_2457BFB38();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2457C00E4();
}

- (_TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v6 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_viewModels;
  swift_beginAccess();
  if (section < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(&self->super.super.super.isa + v6);
  if (*(v7 + 16) <= section)
  {
LABEL_7:
    __break(1u);
    return sub_245911424();
  }

  v8 = *(v7 + 8 * section + 32);
  if (v8 >> 62)
  {
    return sub_245911424();
  }

  return *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v4 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_viewModels;
  swift_beginAccess();
  return (*(&self->super.super.super.isa + v4))[2];
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
  v12 = sub_2457C070C(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_24590C284();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C254();
  viewCopy = view;
  selfCopy = self;
  sub_2457C09CC(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  v5 = sub_24590C284();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C254();
  viewCopy = view;
  v10 = sub_24590C244();
  cellForRowAtIndexPath_ = [viewCopy cellForRowAtIndexPath_];

  if (cellForRowAtIndexPath_)
  {
    type metadata accessor for IdentityProofingFedStatsOptinTableViewCell();
    if (swift_dynamicCastClass())
    {
      sub_2457BCB74(0);
    }
  }

  else
  {
    cellForRowAtIndexPath_ = viewCopy;
  }

  (*(v6 + 8))(v8, v5);
}

- (void)scrollViewDidScroll:(id)scroll
{
  selfCopy = self;
  sub_2457BE1E4();
}

@end