@interface ICRenameAttachmentPrompt
+ (void)showWithTitle:(id)a3 presentingViewController:(id)a4 completion:(id)a5;
@end

@implementation ICRenameAttachmentPrompt

+ (void)showWithTitle:(id)a3 presentingViewController:(id)a4 completion:(id)a5
{
  v7 = MEMORY[0x1E699A338];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[v7 alloc] initWithExistingTitle:v10];

  [v11 showFromViewController:v9 completion:v8];
}

@end