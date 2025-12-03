@interface GPInProcessMagicPaperViewController
+ (void)prewarmEffectAndKeepItInMemory:(BOOL)memory withCompletion:(id)completion;
- (BOOL)isAnimating;
- (CGRect)magicViewFullFrame;
- (GPInProcessMagicPaperViewController)initWithNibName:(id)name bundle:(id)bundle;
- (GPInProcessMagicPaperViewControllerDelegate)delegate;
- (GPRecipe)recipe;
- (double)magicViewFullHeightForKeyboardScrolling;
- (void)finishSelectionWithPath:(const CGPath *)path atPencilLocation:(CGPoint)location;
- (void)setIsAnimating:(BOOL)animating;
- (void)setRecipe:(id)recipe;
- (void)setState:(id)state;
- (void)startSelectionWithPath:(const CGPath *)path atPencilLocation:(CGPoint)location;
- (void)updateSelectionWithPath:(const CGPath *)path atPencilLocation:(CGPoint)location;
- (void)upscaleIfPossible;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation GPInProcessMagicPaperViewController

- (GPInProcessMagicPaperViewControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

+ (void)prewarmEffectAndKeepItInMemory:(BOOL)memory withCompletion:(id)completion
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = sub_1D28785F8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  sub_1D2878568();
  sub_1D2870F78();
  v12 = sub_1D2878558();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  *(v13 + 32) = memory;
  *(v13 + 40) = sub_1D279D834;
  *(v13 + 48) = v10;
  sub_1D22AE01C(0, 0, v8, &unk_1D28A58B0, v13);
}

- (BOOL)isAnimating
{
  selfCopy = self;
  v3 = GPInProcessMagicPaperViewController.isAnimating.getter();

  return v3 & 1;
}

- (void)setIsAnimating:(BOOL)animating
{
  selfCopy = self;
  GPInProcessMagicPaperViewController.isAnimating.setter(animating);
}

- (void)setState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  GPInProcessMagicPaperViewController.setState(_:)(stateCopy);
}

- (void)startSelectionWithPath:(const CGPath *)path atPencilLocation:(CGPoint)location
{
  pathCopy = path;
  selfCopy = self;
  sub_1D279A7FC(pathCopy);
}

- (void)updateSelectionWithPath:(const CGPath *)path atPencilLocation:(CGPoint)location
{
  v6 = OBJC_IVAR___GPInProcessMagicPaperViewController_magicViewController;
  swift_beginAccess();
  v7 = *(self + v6);
  if (v7)
  {
    pathCopy = path;
    selfCopy = self;
    v10 = v7;
    sub_1D26F4668(pathCopy);
  }
}

- (void)finishSelectionWithPath:(const CGPath *)path atPencilLocation:(CGPoint)location
{
  pathCopy = path;
  selfCopy = self;
  sub_1D279AC58(pathCopy);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = GPInProcessMagicPaperViewController;
  selfCopy = self;
  [(GPInProcessMagicPaperViewController *)&v5 viewWillDisappear:disappearCopy];
  [(GPInProcessMagicPaperViewController *)selfCopy upscaleIfPossible:v5.receiver];
}

- (GPRecipe)recipe
{
  v3 = OBJC_IVAR___GPInProcessMagicPaperViewController_magicViewController;
  swift_beginAccess();
  v4 = *(self + v3);
  if (v4)
  {
    v5 = *(v4 + qword_1EC6E06F8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setRecipe:(id)recipe
{
  recipeCopy = recipe;
  selfCopy = self;
  sub_1D279B1E0(recipe);
}

- (CGRect)magicViewFullFrame
{
  selfCopy = self;
  sub_1D279B368();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (double)magicViewFullHeightForKeyboardScrolling
{
  v3 = OBJC_IVAR___GPInProcessMagicPaperViewController_magicViewController;
  swift_beginAccess();
  v4 = *(self + v3);
  result = 0.0;
  if (v4)
  {
    v6 = *(v4 + qword_1EC6E06F0);
    if (v6)
    {
      return *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_magicViewFullHeightForKeyboardScrolling);
    }
  }

  return result;
}

- (void)upscaleIfPossible
{
  selfCopy = self;
  GPInProcessMagicPaperViewController.upscaleIfPossible()();
}

- (GPInProcessMagicPaperViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end