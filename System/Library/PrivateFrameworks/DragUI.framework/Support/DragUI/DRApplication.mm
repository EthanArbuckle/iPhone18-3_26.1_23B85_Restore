@interface DRApplication
- (void)workspace:(id)workspace didCreateScene:(id)scene withTransitionContext:(id)context completion:(id)completion;
@end

@implementation DRApplication

- (void)workspace:(id)workspace didCreateScene:(id)scene withTransitionContext:(id)context completion:(id)completion
{
  sceneCopy = scene;
  v13.receiver = self;
  v13.super_class = DRApplication;
  [(DRApplication *)&v13 workspace:workspace didCreateScene:sceneCopy withTransitionContext:context completion:completion];
  delegate = [sceneCopy delegate];

  if (!delegate)
  {
    delegate2 = [(DRApplication *)self delegate];
    [sceneCopy setDelegate:delegate2];
  }
}

@end