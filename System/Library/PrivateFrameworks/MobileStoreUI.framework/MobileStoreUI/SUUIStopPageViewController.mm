@interface SUUIStopPageViewController
- (_TtC13MobileStoreUI26SUUIStopPageViewController)initWithCoder:(id)coder;
- (_TtC13MobileStoreUI26SUUIStopPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)initForTabIdentifier:(id)identifier replacementAppAdamId:(id)id title:(id)title subtitle:(id)subtitle artworkDictionary:(id)dictionary deeplinkUrl:(id)url purchasesUrl:(id)purchasesUrl wishlistButtonTitle:(id)self0 showWishlistButton:(BOOL)self1 clientContext:(id)self2;
- (unint64_t)supportedInterfaceOrientations;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SUUIStopPageViewController

- (id)initForTabIdentifier:(id)identifier replacementAppAdamId:(id)id title:(id)title subtitle:(id)subtitle artworkDictionary:(id)dictionary deeplinkUrl:(id)url purchasesUrl:(id)purchasesUrl wishlistButtonTitle:(id)self0 showWishlistButton:(BOOL)self1 clientContext:(id)self2
{
  selfCopy = self;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F0F00);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v44 - v21;
  v23 = sub_259F95DE4();
  v52 = v24;
  v53 = v23;
  if (id)
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

  if (title)
  {
    v27 = sub_259F95DE4();
    v48 = v28;
    v49 = v27;
    if (subtitle)
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
    if (subtitle)
    {
      goto LABEL_6;
    }
  }

  v46 = 0;
  v47 = 0;
LABEL_9:
  dictionaryCopy = dictionary;
  urlCopy = url;
  purchasesUrlCopy = purchasesUrl;
  v44[1] = buttonTitle;
  buttonTitleCopy = buttonTitle;
  contextCopy = context;
  if (dictionaryCopy)
  {
    v35 = sub_259F95D84();

    if (urlCopy)
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
    if (urlCopy)
    {
      goto LABEL_11;
    }
  }

  v37 = sub_259F95CB4();
  (*(*(v37 - 8) + 56))(v22, 1, 1, v37);
LABEL_14:
  if (purchasesUrlCopy)
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
  if (buttonTitleCopy)
  {
    v40 = sub_259F95DE4();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  return SUUIStopPageViewController.init(tabIdentifier:replacementAppAdamId:title:subtitle:artworkDictionar:deeplinkUrl:purchasesUrl:wishlistButtonTitle:showWishlistButton:clientContext:)(v53, v52, v51, v50, v49, v48, v47, v46, v35, v22, v20, v40, v42, button, contextCopy);
}

- (_TtC13MobileStoreUI26SUUIStopPageViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_lockupView) = 0;
  result = sub_259F95F44();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  SUUIStopPageViewController.viewDidLoad()();
}

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [objc_opt_self() currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
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
  selfCopy = self;
  SUUIStopPageViewController.viewDidLayoutSubviews()();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  SUUIStopPageViewController.traitCollectionDidChange(_:)(v9);
}

- (_TtC13MobileStoreUI26SUUIStopPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end