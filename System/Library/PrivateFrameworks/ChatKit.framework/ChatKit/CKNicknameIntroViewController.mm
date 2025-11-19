@interface CKNicknameIntroViewController
- (double)_contentViewHeight;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CKNicknameIntroViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CKNicknameIntroViewController;
  [(OBBaseWelcomeController *)&v5 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  v4 = [(CKNicknameIntroViewController *)self contentView];
  [v4 setBackgroundColor:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CKNicknameIntroViewController;
  [(OBBaseWelcomeController *)&v6 viewDidAppear:a3];
  v4 = [(CKNicknameIntroViewController *)self nicknamePreviewView];
  [v4 setShouldStopAnimation:0];

  v5 = [(CKNicknameIntroViewController *)self nicknamePreviewView];
  [v5 beginAnimation];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CKNicknameIntroViewController;
  [(OBBaseWelcomeController *)&v5 viewWillDisappear:a3];
  v4 = [(CKNicknameIntroViewController *)self nicknamePreviewView];
  [v4 setShouldStopAnimation:1];
}

- (void)viewDidLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = CKNicknameIntroViewController;
  [(OBBaseWelcomeController *)&v17 viewDidLayoutSubviews];
  v3 = [(CKNicknameIntroViewController *)self nicknamePreviewView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = +[CKUIBehavior sharedBehaviors];
  [v10 nicknameIntroViewControllerPreviewTopPadding];
  v12 = v11;

  v13 = [(CKNicknameIntroViewController *)self contentView];
  [v13 frame];
  Width = CGRectGetWidth(v18);
  v19.origin.x = v5;
  v19.origin.y = v12;
  v19.size.width = v7;
  v19.size.height = v9;
  v15 = (Width - CGRectGetWidth(v19)) * 0.5;

  v16 = [(CKNicknameIntroViewController *)self nicknamePreviewView];
  [v16 setFrame:{v15, v12, v7, v9}];
}

- (double)_contentViewHeight
{
  v3 = [(CKNicknameIntroViewController *)self nicknamePreviewView];
  [v3 sizeToFit];

  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 nicknameIntroViewControllerPreviewTopPadding];
  v6 = v5;
  v7 = [(CKNicknameIntroViewController *)self nicknamePreviewView];
  [v7 frame];
  v9 = v6 + v8;
  v10 = +[CKUIBehavior sharedBehaviors];
  [v10 nicknameIntroViewControllerPreviewBottomPadding];
  v12 = v9 + v11;

  return v12;
}

@end