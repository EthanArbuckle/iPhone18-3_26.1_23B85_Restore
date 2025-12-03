@interface GPInProcessImageEditionViewController
- (BOOL)isLoadingRecipe;
- (BOOL)sourceImageIsSketch;
- (GPAppleConnectTokenProvider)appleConnectTokenProvider;
- (GPImageEditionViewControllerDelegate)delegate;
- (GPInProcessImageEditionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (NSArray)generatedAssets;
- (NSString)localizedCreateButtonTitle;
- (int64_t)style;
- (void)setAppleConnectTokenProvider:(id)provider;
- (void)setGeneratedAssets:(id)assets;
- (void)setIsLoadingRecipe:(BOOL)recipe;
- (void)setLocalizedCreateButtonTitle:(id)title;
- (void)setRecipe:(id)recipe;
- (void)setSourceImage:(id)image;
- (void)setSourceImageIsSketch:(BOOL)sketch;
- (void)setStyle:(int64_t)style;
@end

@implementation GPInProcessImageEditionViewController

- (int64_t)style
{
  v3 = OBJC_IVAR___GPInProcessImageEditionViewController_style;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setStyle:(int64_t)style
{
  v5 = OBJC_IVAR___GPInProcessImageEditionViewController_style;
  swift_beginAccess();
  *(self + v5) = style;
}

- (NSArray)generatedAssets
{
  swift_beginAccess();
  sub_1D2878C28();
  sub_1D2870F68();
  v2 = sub_1D28783C8();

  return v2;
}

- (void)setGeneratedAssets:(id)assets
{
  sub_1D2878C28();
  v4 = sub_1D28783E8();
  v5 = OBJC_IVAR___GPInProcessImageEditionViewController_generatedAssets;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (void)setSourceImage:(id)image
{
  imageCopy = image;
  selfCopy = self;
  GPInProcessImageEditionViewController.sourceImage.setter(image);
}

- (BOOL)isLoadingRecipe
{
  v2 = *(self + OBJC_IVAR___GPInProcessImageEditionViewController_imageEditionViewController);
  if (v2)
  {
    return *(v2 + qword_1EC6E0768);
  }

  else
  {
    return 0;
  }
}

- (void)setIsLoadingRecipe:(BOOL)recipe
{
  selfCopy = self;
  GPInProcessImageEditionViewController.isLoadingRecipe.setter(recipe);
}

- (void)setRecipe:(id)recipe
{
  recipeCopy = recipe;
  selfCopy = self;
  GPInProcessImageEditionViewController.recipe.setter(recipe);
}

- (BOOL)sourceImageIsSketch
{
  v3 = OBJC_IVAR___GPInProcessImageEditionViewController_sourceImageIsSketch;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSourceImageIsSketch:(BOOL)sketch
{
  v5 = OBJC_IVAR___GPInProcessImageEditionViewController_sourceImageIsSketch;
  swift_beginAccess();
  *(self + v5) = sketch;
  sub_1D2872678();
}

- (NSString)localizedCreateButtonTitle
{
  v2 = self + OBJC_IVAR___GPInProcessImageEditionViewController_localizedCreateButtonTitle;
  swift_beginAccess();
  if (*(v2 + 1))
  {
    sub_1D2870F68();
    v3 = sub_1D2878068();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLocalizedCreateButtonTitle:(id)title
{
  if (title)
  {
    v4 = sub_1D28780A8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___GPInProcessImageEditionViewController_localizedCreateButtonTitle);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
  selfCopy = self;

  sub_1D2872678();
}

- (GPImageEditionViewControllerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (GPAppleConnectTokenProvider)appleConnectTokenProvider
{
  v3 = OBJC_IVAR___GPInProcessImageEditionViewController_appleConnectTokenProvider;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAppleConnectTokenProvider:(id)provider
{
  v5 = OBJC_IVAR___GPInProcessImageEditionViewController_appleConnectTokenProvider;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = provider;
  providerCopy = provider;
  selfCopy = self;

  if (*(self + v5))
  {
    sub_1D2795B84();
    v9 = providerCopy;
  }

  else
  {
    v9 = selfCopy;
    selfCopy = providerCopy;
  }
}

- (GPInProcessImageEditionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end