@interface Gallery.ImagePlaygroundGenerationProgressViewController
- (_TtCV7ChatKit7Gallery47ImagePlaygroundGenerationProgressViewController)initWithCoder:(id)coder;
- (_TtCV7ChatKit7Gallery47ImagePlaygroundGenerationProgressViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation Gallery.ImagePlaygroundGenerationProgressViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_190B79010();
}

- (_TtCV7ChatKit7Gallery47ImagePlaygroundGenerationProgressViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_190D56F10();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = OBJC_IVAR____TtCV7ChatKit7Gallery47ImagePlaygroundGenerationProgressViewController_gpViewController;
  v9 = objc_allocWithZone(MEMORY[0x1E69A8B20]);
  bundleCopy = bundle;
  *(&self->super.super.super.isa + v8) = [v9 init];
  if (v7)
  {
    v11 = sub_190D56ED0();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = self;
  v14.super_class = _s47ImagePlaygroundGenerationProgressViewControllerCMa();
  v12 = [(Gallery.ImagePlaygroundGenerationProgressViewController *)&v14 initWithNibName:v11 bundle:bundleCopy];

  return v12;
}

- (_TtCV7ChatKit7Gallery47ImagePlaygroundGenerationProgressViewController)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtCV7ChatKit7Gallery47ImagePlaygroundGenerationProgressViewController_gpViewController;
  v6 = objc_allocWithZone(MEMORY[0x1E69A8B20]);
  coderCopy = coder;
  *(&self->super.super.super.isa + v5) = [v6 init];
  v10.receiver = self;
  v10.super_class = _s47ImagePlaygroundGenerationProgressViewControllerCMa();
  v8 = [(Gallery.ImagePlaygroundGenerationProgressViewController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end