@interface FARestorableViewController
- (void)handleURL:(id)l withCompletion:(id)completion;
@end

@implementation FARestorableViewController

- (void)handleURL:(id)l withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

@end