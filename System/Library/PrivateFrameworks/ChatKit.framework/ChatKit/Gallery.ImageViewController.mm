@interface Gallery.ImageViewController
- (_TtCV7ChatKit7Gallery19ImageViewController)initWithCoder:(id)coder;
- (_TtCV7ChatKit7Gallery19ImageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation Gallery.ImageViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_190AA2E4C();
}

- (_TtCV7ChatKit7Gallery19ImageViewController)initWithNibName:(id)name bundle:(id)bundle
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

  v8 = OBJC_IVAR____TtCV7ChatKit7Gallery19ImageViewController_imageView;
  v9 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
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
  v14.super_class = _s19ImageViewControllerCMa();
  v12 = [(Gallery.ImageViewController *)&v14 initWithNibName:v11 bundle:bundleCopy];

  return v12;
}

- (_TtCV7ChatKit7Gallery19ImageViewController)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtCV7ChatKit7Gallery19ImageViewController_imageView;
  v6 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
  coderCopy = coder;
  *(&self->super.super.super.isa + v5) = [v6 init];
  v10.receiver = self;
  v10.super_class = _s19ImageViewControllerCMa();
  v8 = [(Gallery.ImageViewController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end