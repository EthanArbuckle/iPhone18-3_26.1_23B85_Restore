@interface CKTranscriptHeaderViewController
- (CKTranscriptHeaderViewController)initWithConversation:(id)conversation;
@end

@implementation CKTranscriptHeaderViewController

- (CKTranscriptHeaderViewController)initWithConversation:(id)conversation
{
  conversationCopy = conversation;
  v8.receiver = self;
  v8.super_class = CKTranscriptHeaderViewController;
  v5 = [(CKTranscriptHeaderViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(CKTranscriptHeaderViewController *)v5 setConversation:conversationCopy];
  }

  return v6;
}

@end