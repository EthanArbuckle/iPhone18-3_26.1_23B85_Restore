@interface UIEditUserWordController
- (UIEditUserWordController)initWithText:(id)text;
- (UIEditUserWordController)initWithText:(id)text andShortcut:(id)shortcut;
- (void)_dismiss;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation UIEditUserWordController

- (UIEditUserWordController)initWithText:(id)text
{
  v6.receiver = self;
  v6.super_class = UIEditUserWordController;
  v4 = [(KSEditUserWordController *)&v6 init];
  if (v4)
  {
    [(KSEditUserWordController *)v4 setDictionaryController:objc_alloc_init(KSUserWordsManager)];
    [(KSEditUserWordController *)v4 setTarget:text];
  }

  return v4;
}

- (UIEditUserWordController)initWithText:(id)text andShortcut:(id)shortcut
{
  v8.receiver = self;
  v8.super_class = UIEditUserWordController;
  v6 = [(KSEditUserWordController *)&v8 init];
  if (v6)
  {
    [(KSEditUserWordController *)v6 setDictionaryController:objc_alloc_init(KSUserWordsManager)];
    [(KSEditUserWordController *)v6 setTarget:text];
    [(KSEditUserWordController *)v6 setShortcut:shortcut];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UIEditUserWordController;
  [(KSEditUserWordController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = UIEditUserWordController;
  [(KSEditUserWordController *)&v9 viewDidLoad];
  [-[UIEditUserWordController navigationItem](self "navigationItem")];
  if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [-[UIEditUserWordController table](self "table")];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    [-[UIEditUserWordController table](self "table")];
    [-[UIEditUserWordController table](self "table")];
    [-[UIEditUserWordController table](self "table")];
    [(UIEditUserWordController *)self setPreferredContentSize:?];
    [-[UIEditUserWordController table](self "table")];
  }
}

- (void)_dismiss
{
  if ([(UIEditUserWordController *)self dismissCompletionHandler])
  {
    [-[UIEditUserWordController navigationController](self "navigationController")];
    [(UIEditUserWordController *)self setDismissCompletionHandler:0];

    [(UIEditUserWordController *)self _setRotationDecider:0];
  }

  else
  {
    parentViewController = [(UIEditUserWordController *)self parentViewController];

    [parentViewController dismissViewControllerAnimated:1 completion:0];
  }
}

@end