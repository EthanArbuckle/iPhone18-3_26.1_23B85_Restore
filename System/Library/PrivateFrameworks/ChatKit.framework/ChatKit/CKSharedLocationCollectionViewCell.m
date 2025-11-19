@interface CKSharedLocationCollectionViewCell
- (void)configureWithAttachmentItem:(id)a3;
@end

@implementation CKSharedLocationCollectionViewCell

- (void)configureWithAttachmentItem:(id)a3
{
  v4 = a3;
  v5 = [(CKSharedAssetCollectionViewCell *)self previewTitleLabel];
  v6 = [v4 locationTitle];
  v7 = [(CKSharedAssetCollectionViewCell *)self formattedTitleFromPreviewTitle:v6];
  [v5 setAttributedText:v7];

  v8 = +[CKPreviewDispatchCache detailsPreviewCache];
  [v8 resume];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__CKSharedLocationCollectionViewCell_configureWithAttachmentItem___block_invoke;
  v9[3] = &unk_1E72F0CF8;
  v9[4] = self;
  [v4 generatePreviewWithCompletion:v9];
}

void __66__CKSharedLocationCollectionViewCell_configureWithAttachmentItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 previewView];
  v6 = [v4 layer];

  v5 = [v3 CGImage];
  [v6 setContents:v5];
  [v6 setContentsGravity:*MEMORY[0x1E6979DF0]];
  [v6 setMasksToBounds:1];
}

@end