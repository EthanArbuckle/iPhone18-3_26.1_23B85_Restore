@interface Gallery.ImagePlaygroundGenerationProgressViewController
- (_TtCV7ChatKit7Gallery47ImagePlaygroundGenerationProgressViewController)initWithCoder:(id)a3;
- (_TtCV7ChatKit7Gallery47ImagePlaygroundGenerationProgressViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation Gallery.ImagePlaygroundGenerationProgressViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_190B79010();
}

- (_TtCV7ChatKit7Gallery47ImagePlaygroundGenerationProgressViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
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
  v10 = a4;
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
  v12 = [(Gallery.ImagePlaygroundGenerationProgressViewController *)&v14 initWithNibName:v11 bundle:v10];

  return v12;
}

- (_TtCV7ChatKit7Gallery47ImagePlaygroundGenerationProgressViewController)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtCV7ChatKit7Gallery47ImagePlaygroundGenerationProgressViewController_gpViewController;
  v6 = objc_allocWithZone(MEMORY[0x1E69A8B20]);
  v7 = a3;
  *(&self->super.super.super.isa + v5) = [v6 init];
  v10.receiver = self;
  v10.super_class = _s47ImagePlaygroundGenerationProgressViewControllerCMa();
  v8 = [(Gallery.ImagePlaygroundGenerationProgressViewController *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end