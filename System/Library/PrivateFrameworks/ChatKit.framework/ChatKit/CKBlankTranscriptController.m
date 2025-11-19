@interface CKBlankTranscriptController
- (CKBlankTranscriptController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)loadView;
- (void)viewDidUnload;
@end

@implementation CKBlankTranscriptController

- (CKBlankTranscriptController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = CKBlankTranscriptController;
  return [(CKBlankTranscriptController *)&v5 initWithNibName:a3 bundle:a4];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v7 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v7 setAutoresizingMask:18];
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 theme];
  v6 = [v5 transcriptBackgroundColor];
  [v7 setBackgroundColor:v6];

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
  v3 = [v2 supportedInterfaceOrientations];

  return v3;
}

@end