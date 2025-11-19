@interface FARestorableViewController
- (void)handleURL:(id)a3 withCompletion:(id)a4;
@end

@implementation FARestorableViewController

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

@end