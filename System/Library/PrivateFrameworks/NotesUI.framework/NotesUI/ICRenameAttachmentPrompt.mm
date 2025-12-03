@interface ICRenameAttachmentPrompt
+ (void)showWithTitle:(id)title presentingViewController:(id)controller completion:(id)completion;
@end

@implementation ICRenameAttachmentPrompt

+ (void)showWithTitle:(id)title presentingViewController:(id)controller completion:(id)completion
{
  v7 = MEMORY[0x1E699A338];
  completionCopy = completion;
  controllerCopy = controller;
  titleCopy = title;
  v11 = [[v7 alloc] initWithExistingTitle:titleCopy];

  [v11 showFromViewController:controllerCopy completion:completionCopy];
}

@end