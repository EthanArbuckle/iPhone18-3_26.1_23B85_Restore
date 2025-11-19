@interface CKTranscriptHeaderViewController
- (CKTranscriptHeaderViewController)initWithConversation:(id)a3;
@end

@implementation CKTranscriptHeaderViewController

- (CKTranscriptHeaderViewController)initWithConversation:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CKTranscriptHeaderViewController;
  v5 = [(CKTranscriptHeaderViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(CKTranscriptHeaderViewController *)v5 setConversation:v4];
  }

  return v6;
}

@end