@interface CKPrintTranscriptCollectionViewController
- (CKPrintTranscriptCollectionViewController)initWithConversation:(id)conversation delegate:(id)delegate balloonMaxWidth:(double)width marginInsets:(UIEdgeInsets)insets;
- (void)updateUIContents;
@end

@implementation CKPrintTranscriptCollectionViewController

- (CKPrintTranscriptCollectionViewController)initWithConversation:(id)conversation delegate:(id)delegate balloonMaxWidth:(double)width marginInsets:(UIEdgeInsets)insets
{
  v7.receiver = self;
  v7.super_class = CKPrintTranscriptCollectionViewController;
  return [(CKTranscriptCollectionViewController *)&v7 initWithConversation:conversation delegate:delegate notifications:MEMORY[0x1E695E0F0] balloonMaxWidth:width marginInsets:insets.top, insets.left, insets.bottom, insets.right];
}

- (void)updateUIContents
{
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  [collectionView setShowsVerticalScrollIndicator:0];
  [collectionView setUserInteractionEnabled:0];
}

@end