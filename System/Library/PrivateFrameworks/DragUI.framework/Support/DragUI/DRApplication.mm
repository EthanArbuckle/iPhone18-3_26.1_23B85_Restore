@interface DRApplication
- (void)workspace:(id)a3 didCreateScene:(id)a4 withTransitionContext:(id)a5 completion:(id)a6;
@end

@implementation DRApplication

- (void)workspace:(id)a3 didCreateScene:(id)a4 withTransitionContext:(id)a5 completion:(id)a6
{
  v10 = a4;
  v13.receiver = self;
  v13.super_class = DRApplication;
  [(DRApplication *)&v13 workspace:a3 didCreateScene:v10 withTransitionContext:a5 completion:a6];
  v11 = [v10 delegate];

  if (!v11)
  {
    v12 = [(DRApplication *)self delegate];
    [v10 setDelegate:v12];
  }
}

@end