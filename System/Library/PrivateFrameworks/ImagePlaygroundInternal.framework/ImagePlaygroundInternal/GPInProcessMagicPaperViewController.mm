@interface GPInProcessMagicPaperViewController
+ (void)prewarmEffectAndKeepItInMemory:(BOOL)a3 withCompletion:(id)a4;
- (BOOL)isAnimating;
- (CGRect)magicViewFullFrame;
- (GPInProcessMagicPaperViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (GPInProcessMagicPaperViewControllerDelegate)delegate;
- (GPRecipe)recipe;
- (double)magicViewFullHeightForKeyboardScrolling;
- (void)finishSelectionWithPath:(const CGPath *)a3 atPencilLocation:(CGPoint)a4;
- (void)setIsAnimating:(BOOL)a3;
- (void)setRecipe:(id)a3;
- (void)setState:(id)a3;
- (void)startSelectionWithPath:(const CGPath *)a3 atPencilLocation:(CGPoint)a4;
- (void)updateSelectionWithPath:(const CGPath *)a3 atPencilLocation:(CGPoint)a4;
- (void)upscaleIfPossible;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation GPInProcessMagicPaperViewController

- (GPInProcessMagicPaperViewControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

+ (void)prewarmEffectAndKeepItInMemory:(BOOL)a3 withCompletion:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a4);
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
  *(v13 + 32) = a3;
  *(v13 + 40) = sub_1D279D834;
  *(v13 + 48) = v10;
  sub_1D22AE01C(0, 0, v8, &unk_1D28A58B0, v13);
}

- (BOOL)isAnimating
{
  v2 = self;
  v3 = GPInProcessMagicPaperViewController.isAnimating.getter();

  return v3 & 1;
}

- (void)setIsAnimating:(BOOL)a3
{
  v4 = self;
  GPInProcessMagicPaperViewController.isAnimating.setter(a3);
}

- (void)setState:(id)a3
{
  v4 = a3;
  v5 = self;
  GPInProcessMagicPaperViewController.setState(_:)(v4);
}

- (void)startSelectionWithPath:(const CGPath *)a3 atPencilLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  sub_1D279A7FC(v5);
}

- (void)updateSelectionWithPath:(const CGPath *)a3 atPencilLocation:(CGPoint)a4
{
  v6 = OBJC_IVAR___GPInProcessMagicPaperViewController_magicViewController;
  swift_beginAccess();
  v7 = *(self + v6);
  if (v7)
  {
    v8 = a3;
    v9 = self;
    v10 = v7;
    sub_1D26F4668(v8);
  }
}

- (void)finishSelectionWithPath:(const CGPath *)a3 atPencilLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  sub_1D279AC58(v5);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = GPInProcessMagicPaperViewController;
  v4 = self;
  [(GPInProcessMagicPaperViewController *)&v5 viewWillDisappear:v3];
  [(GPInProcessMagicPaperViewController *)v4 upscaleIfPossible:v5.receiver];
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

- (void)setRecipe:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1D279B1E0(a3);
}

- (CGRect)magicViewFullFrame
{
  v2 = self;
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
  v2 = self;
  GPInProcessMagicPaperViewController.upscaleIfPossible()();
}

- (GPInProcessMagicPaperViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end