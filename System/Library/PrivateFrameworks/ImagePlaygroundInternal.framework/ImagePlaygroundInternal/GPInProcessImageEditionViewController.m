@interface GPInProcessImageEditionViewController
- (BOOL)isLoadingRecipe;
- (BOOL)sourceImageIsSketch;
- (GPAppleConnectTokenProvider)appleConnectTokenProvider;
- (GPImageEditionViewControllerDelegate)delegate;
- (GPInProcessImageEditionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (NSArray)generatedAssets;
- (NSString)localizedCreateButtonTitle;
- (int64_t)style;
- (void)setAppleConnectTokenProvider:(id)a3;
- (void)setGeneratedAssets:(id)a3;
- (void)setIsLoadingRecipe:(BOOL)a3;
- (void)setLocalizedCreateButtonTitle:(id)a3;
- (void)setRecipe:(id)a3;
- (void)setSourceImage:(id)a3;
- (void)setSourceImageIsSketch:(BOOL)a3;
- (void)setStyle:(int64_t)a3;
@end

@implementation GPInProcessImageEditionViewController

- (int64_t)style
{
  v3 = OBJC_IVAR___GPInProcessImageEditionViewController_style;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setStyle:(int64_t)a3
{
  v5 = OBJC_IVAR___GPInProcessImageEditionViewController_style;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSArray)generatedAssets
{
  swift_beginAccess();
  sub_1D2878C28();
  sub_1D2870F68();
  v2 = sub_1D28783C8();

  return v2;
}

- (void)setGeneratedAssets:(id)a3
{
  sub_1D2878C28();
  v4 = sub_1D28783E8();
  v5 = OBJC_IVAR___GPInProcessImageEditionViewController_generatedAssets;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (void)setSourceImage:(id)a3
{
  v5 = a3;
  v6 = self;
  GPInProcessImageEditionViewController.sourceImage.setter(a3);
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

- (void)setIsLoadingRecipe:(BOOL)a3
{
  v4 = self;
  GPInProcessImageEditionViewController.isLoadingRecipe.setter(a3);
}

- (void)setRecipe:(id)a3
{
  v5 = a3;
  v6 = self;
  GPInProcessImageEditionViewController.recipe.setter(a3);
}

- (BOOL)sourceImageIsSketch
{
  v3 = OBJC_IVAR___GPInProcessImageEditionViewController_sourceImageIsSketch;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSourceImageIsSketch:(BOOL)a3
{
  v5 = OBJC_IVAR___GPInProcessImageEditionViewController_sourceImageIsSketch;
  swift_beginAccess();
  *(self + v5) = a3;
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

- (void)setLocalizedCreateButtonTitle:(id)a3
{
  if (a3)
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
  v8 = self;

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

- (void)setAppleConnectTokenProvider:(id)a3
{
  v5 = OBJC_IVAR___GPInProcessImageEditionViewController_appleConnectTokenProvider;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
  v8 = self;

  if (*(self + v5))
  {
    sub_1D2795B84();
    v9 = v7;
  }

  else
  {
    v9 = v8;
    v8 = v7;
  }
}

- (GPInProcessImageEditionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end