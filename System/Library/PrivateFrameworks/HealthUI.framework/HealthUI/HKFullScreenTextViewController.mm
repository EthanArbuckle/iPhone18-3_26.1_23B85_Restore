@interface HKFullScreenTextViewController
- (UITextView)textView;
- (id)description;
- (void)createTextView;
- (void)setDetailText:(id)text;
- (void)textView;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HKFullScreenTextViewController

- (UITextView)textView
{
  view = [(HKFullScreenTextViewController *)self view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [(HKFullScreenTextViewController *)a2 textView];
  }

  return [(HKFullScreenTextViewController *)self view];
}

- (void)setDetailText:(id)text
{
  objc_storeStrong(&self->_detailText, text);
  textCopy = text;
  textView = [(HKFullScreenTextViewController *)self textView];
  [textView setText:textCopy];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HKFullScreenTextViewController;
  [(HKFullScreenTextViewController *)&v5 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view = [(HKFullScreenTextViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  [(HKFullScreenTextViewController *)self createTextView];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = HKFullScreenTextViewController;
  [(HKFullScreenTextViewController *)&v8 viewWillAppear:appear];
  textView = [(HKFullScreenTextViewController *)self textView];
  [textView contentInset];
  v6 = -v5;
  textView2 = [(HKFullScreenTextViewController *)self textView];
  [textView2 setContentOffset:{0.0, v6}];
}

- (void)createTextView
{
  v4 = objc_alloc_init(MEMORY[0x1E69DD168]);
  [(HKFullScreenTextViewController *)self setView:v4];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v4 setFont:v3];

  [v4 setEditable:0];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  detailText = [(HKFullScreenTextViewController *)self detailText];
  v7 = [v3 stringWithFormat:@"<%@:%p %@>", v5, self, detailText];

  return v7;
}

- (void)textView
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  objc_msgSend(currentHandler, "handleFailureInMethod:object:file:lineNumber:description:", self, a2, @"HKFullScreenTextViewController.m", 20, @"Yea, that's not going to work :(");
}

@end