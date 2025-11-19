@interface SUUIStopPageViewController
- (_TtC13MobileStoreUI26SUUIStopPageViewController)initWithCoder:(id)a3;
- (_TtC13MobileStoreUI26SUUIStopPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)initForTabIdentifier:(id)a3 replacementAppAdamId:(id)a4 title:(id)a5 subtitle:(id)a6 artworkDictionary:(id)a7 deeplinkUrl:(id)a8 purchasesUrl:(id)a9 wishlistButtonTitle:(id)a10 showWishlistButton:(BOOL)a11 clientContext:(id)a12;
- (unint64_t)supportedInterfaceOrientations;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SUUIStopPageViewController

- (id)initForTabIdentifier:(id)a3 replacementAppAdamId:(id)a4 title:(id)a5 subtitle:(id)a6 artworkDictionary:(id)a7 deeplinkUrl:(id)a8 purchasesUrl:(id)a9 wishlistButtonTitle:(id)a10 showWishlistButton:(BOOL)a11 clientContext:(id)a12
{
  v54 = self;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F0F00);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v44 - v21;
  v23 = sub_259F95DE4();
  v52 = v24;
  v53 = v23;
  if (a4)
  {
    v25 = sub_259F95DE4();
    v50 = v26;
    v51 = v25;
  }

  else
  {
    v50 = 0;
    v51 = 0;
  }

  if (a5)
  {
    v27 = sub_259F95DE4();
    v48 = v28;
    v49 = v27;
    if (a6)
    {
LABEL_6:
      v29 = sub_259F95DE4();
      v46 = v30;
      v47 = v29;
      goto LABEL_9;
    }
  }

  else
  {
    v48 = 0;
    v49 = 0;
    if (a6)
    {
      goto LABEL_6;
    }
  }

  v46 = 0;
  v47 = 0;
LABEL_9:
  v31 = a7;
  v32 = a8;
  v33 = a9;
  v44[1] = a10;
  v34 = a10;
  v45 = a12;
  if (v31)
  {
    v35 = sub_259F95D84();

    if (v32)
    {
LABEL_11:
      sub_259F95C94();

      v36 = sub_259F95CB4();
      (*(*(v36 - 8) + 56))(v22, 0, 1, v36);
      goto LABEL_14;
    }
  }

  else
  {
    v35 = 0;
    if (v32)
    {
      goto LABEL_11;
    }
  }

  v37 = sub_259F95CB4();
  (*(*(v37 - 8) + 56))(v22, 1, 1, v37);
LABEL_14:
  if (v33)
  {
    sub_259F95C94();

    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = sub_259F95CB4();
  (*(*(v39 - 8) + 56))(v20, v38, 1, v39);
  if (v34)
  {
    v40 = sub_259F95DE4();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  return SUUIStopPageViewController.init(tabIdentifier:replacementAppAdamId:title:subtitle:artworkDictionar:deeplinkUrl:purchasesUrl:wishlistButtonTitle:showWishlistButton:clientContext:)(v53, v52, v51, v50, v49, v48, v47, v46, v35, v22, v20, v40, v42, a11, v45);
}

- (_TtC13MobileStoreUI26SUUIStopPageViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_lockupView) = 0;
  result = sub_259F95F44();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  SUUIStopPageViewController.viewDidLoad()();
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  SUUIStopPageViewController.viewDidLayoutSubviews()();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  SUUIStopPageViewController.traitCollectionDidChange(_:)(v9);
}

- (_TtC13MobileStoreUI26SUUIStopPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end