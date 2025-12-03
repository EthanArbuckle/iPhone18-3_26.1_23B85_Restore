@interface CKBlankTranscriptController
- (CKBlankTranscriptController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)loadView;
- (void)viewDidUnload;
@end

@implementation CKBlankTranscriptController

- (CKBlankTranscriptController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = CKBlankTranscriptController;
  return [(CKBlankTranscriptController *)&v5 initWithNibName:name bundle:bundle];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v7 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v7 setAutoresizingMask:18];
  v4 = +[CKUIBehavior sharedBehaviors];
  theme = [v4 theme];
  transcriptBackgroundColor = [theme transcriptBackgroundColor];
  [v7 setBackgroundColor:transcriptBackgroundColor];

  [(CKBlankTranscriptController *)self setView:v7];
}

- (void)viewDidUnload
{
  v2.receiver = self;
  v2.super_class = CKBlankTranscriptController;
  [(CKBlankTranscriptController *)&v2 viewDidUnload];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[CKUIBehavior sharedBehaviors];
  supportedInterfaceOrientations = [v2 supportedInterfaceOrientations];

  return supportedInterfaceOrientations;
}

@end