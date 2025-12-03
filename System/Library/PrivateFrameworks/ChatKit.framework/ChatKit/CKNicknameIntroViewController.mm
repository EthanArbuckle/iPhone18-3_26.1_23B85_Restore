@interface CKNicknameIntroViewController
- (double)_contentViewHeight;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CKNicknameIntroViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CKNicknameIntroViewController;
  [(OBBaseWelcomeController *)&v5 viewDidLoad];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  contentView = [(CKNicknameIntroViewController *)self contentView];
  [contentView setBackgroundColor:clearColor];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CKNicknameIntroViewController;
  [(OBBaseWelcomeController *)&v6 viewDidAppear:appear];
  nicknamePreviewView = [(CKNicknameIntroViewController *)self nicknamePreviewView];
  [nicknamePreviewView setShouldStopAnimation:0];

  nicknamePreviewView2 = [(CKNicknameIntroViewController *)self nicknamePreviewView];
  [nicknamePreviewView2 beginAnimation];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CKNicknameIntroViewController;
  [(OBBaseWelcomeController *)&v5 viewWillDisappear:disappear];
  nicknamePreviewView = [(CKNicknameIntroViewController *)self nicknamePreviewView];
  [nicknamePreviewView setShouldStopAnimation:1];
}

- (void)viewDidLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = CKNicknameIntroViewController;
  [(OBBaseWelcomeController *)&v17 viewDidLayoutSubviews];
  nicknamePreviewView = [(CKNicknameIntroViewController *)self nicknamePreviewView];
  [nicknamePreviewView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = +[CKUIBehavior sharedBehaviors];
  [v10 nicknameIntroViewControllerPreviewTopPadding];
  v12 = v11;

  contentView = [(CKNicknameIntroViewController *)self contentView];
  [contentView frame];
  Width = CGRectGetWidth(v18);
  v19.origin.x = v5;
  v19.origin.y = v12;
  v19.size.width = v7;
  v19.size.height = v9;
  v15 = (Width - CGRectGetWidth(v19)) * 0.5;

  nicknamePreviewView2 = [(CKNicknameIntroViewController *)self nicknamePreviewView];
  [nicknamePreviewView2 setFrame:{v15, v12, v7, v9}];
}

- (double)_contentViewHeight
{
  nicknamePreviewView = [(CKNicknameIntroViewController *)self nicknamePreviewView];
  [nicknamePreviewView sizeToFit];

  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 nicknameIntroViewControllerPreviewTopPadding];
  v6 = v5;
  nicknamePreviewView2 = [(CKNicknameIntroViewController *)self nicknamePreviewView];
  [nicknamePreviewView2 frame];
  v9 = v6 + v8;
  v10 = +[CKUIBehavior sharedBehaviors];
  [v10 nicknameIntroViewControllerPreviewBottomPadding];
  v12 = v9 + v11;

  return v12;
}

@end