@interface UINavigationController(HUModalPresentation)
- (id)finishPresentation:()HUModalPresentation animated:;
@end

@implementation UINavigationController(HUModalPresentation)

- (id)finishPresentation:()HUModalPresentation animated:
{
  v7 = a3;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __75__UINavigationController_HUModalPresentation__finishPresentation_animated___block_invoke;
  v16 = &unk_277DBB548;
  v8 = v7;
  v17 = v8;
  selfCopy = self;
  if (!__75__UINavigationController_HUModalPresentation__finishPresentation_animated___block_invoke(&v13))
  {
    v9 = NSStringFromSelector(a2);
    presentedViewController = [self presentedViewController];
    NSLog(&cfstr_ReceivedCallTo.isa, v9, v8, self, presentedViewController, v13, v14, v15, v16);
  }

  v11 = [self hu_dismissViewControllerAnimated:a4];

  return v11;
}

@end