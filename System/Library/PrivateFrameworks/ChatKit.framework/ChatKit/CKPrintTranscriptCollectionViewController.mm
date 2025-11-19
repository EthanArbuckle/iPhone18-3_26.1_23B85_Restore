@interface CKPrintTranscriptCollectionViewController
- (CKPrintTranscriptCollectionViewController)initWithConversation:(id)a3 delegate:(id)a4 balloonMaxWidth:(double)a5 marginInsets:(UIEdgeInsets)a6;
- (void)updateUIContents;
@end

@implementation CKPrintTranscriptCollectionViewController

- (CKPrintTranscriptCollectionViewController)initWithConversation:(id)a3 delegate:(id)a4 balloonMaxWidth:(double)a5 marginInsets:(UIEdgeInsets)a6
{
  v7.receiver = self;
  v7.super_class = CKPrintTranscriptCollectionViewController;
  return [(CKTranscriptCollectionViewController *)&v7 initWithConversation:a3 delegate:a4 notifications:MEMORY[0x1E695E0F0] balloonMaxWidth:a5 marginInsets:a6.top, a6.left, a6.bottom, a6.right];
}

- (void)updateUIContents
{
  v2 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v2 setShowsVerticalScrollIndicator:0];
  [v2 setUserInteractionEnabled:0];
}

@end