@interface HKFullScreenTextViewController
- (UITextView)textView;
- (id)description;
- (void)createTextView;
- (void)setDetailText:(id)a3;
- (void)textView;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HKFullScreenTextViewController

- (UITextView)textView
{
  v4 = [(HKFullScreenTextViewController *)self view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [(HKFullScreenTextViewController *)a2 textView];
  }

  return [(HKFullScreenTextViewController *)self view];
}

- (void)setDetailText:(id)a3
{
  objc_storeStrong(&self->_detailText, a3);
  v5 = a3;
  v6 = [(HKFullScreenTextViewController *)self textView];
  [v6 setText:v5];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HKFullScreenTextViewController;
  [(HKFullScreenTextViewController *)&v5 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v4 = [(HKFullScreenTextViewController *)self view];
  [v4 setBackgroundColor:v3];

  [(HKFullScreenTextViewController *)self createTextView];
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = HKFullScreenTextViewController;
  [(HKFullScreenTextViewController *)&v8 viewWillAppear:a3];
  v4 = [(HKFullScreenTextViewController *)self textView];
  [v4 contentInset];
  v6 = -v5;
  v7 = [(HKFullScreenTextViewController *)self textView];
  [v7 setContentOffset:{0.0, v6}];
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
  v6 = [(HKFullScreenTextViewController *)self detailText];
  v7 = [v3 stringWithFormat:@"<%@:%p %@>", v5, self, v6];

  return v7;
}

- (void)textView
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  objc_msgSend(v4, "handleFailureInMethod:object:file:lineNumber:description:", a1, a2, @"HKFullScreenTextViewController.m", 20, @"Yea, that's not going to work :(");
}

@end