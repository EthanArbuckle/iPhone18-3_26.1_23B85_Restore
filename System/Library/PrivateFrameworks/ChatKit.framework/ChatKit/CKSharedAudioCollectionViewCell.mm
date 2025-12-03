@interface CKSharedAudioCollectionViewCell
- (CKAudioProgressView)audioPlaybackView;
- (id)formattedDurationTextForAsset:(id)asset;
- (void)configureWithAttachmentItem:(id)item;
- (void)layoutSubviews;
@end

@implementation CKSharedAudioCollectionViewCell

- (void)configureWithAttachmentItem:(id)item
{
  itemCopy = item;
  fileURL = [itemCopy fileURL];
  v5 = CKAVURLAssetForURL(fileURL);
  v6 = MEMORY[0x1E696AEC0];
  v7 = [(CKSharedAudioCollectionViewCell *)self formattedDurationTextForAsset:v5];
  createdDate = [itemCopy createdDate];

  v9 = [(CKSharedAudioCollectionViewCell *)self formattedCreatedDateTextFromDate:createdDate];
  v10 = [v6 stringWithFormat:@"%@\n%@", v7, v9];

  previewTitleLabel = [(CKSharedAssetCollectionViewCell *)self previewTitleLabel];
  v12 = [(CKSharedAssetCollectionViewCell *)self formattedTitleFromPreviewTitle:v10];
  [previewTitleLabel setAttributedText:v12];

  [(CKSharedAudioCollectionViewCell *)self setNeedsLayout];
  [(CKSharedAudioCollectionViewCell *)self layoutIfNeeded];
}

- (id)formattedDurationTextForAsset:(id)asset
{
  assetCopy = asset;
  if (formattedDurationTextForAsset___pred_CMTimeGetSecondsCoreMedia != -1)
  {
    [CKSharedAudioCollectionViewCell formattedDurationTextForAsset:];
  }

  v4 = formattedDurationTextForAsset___CMTimeGetSeconds;
  if (assetCopy)
  {
    [assetCopy duration];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  v5 = v4(v8);
  v6 = CKLocalizedStringForDuration(v5);

  return v6;
}

void *__65__CKSharedAudioCollectionViewCell_formattedDurationTextForAsset___block_invoke()
{
  result = MEMORY[0x193AF5ED0]("CMTimeGetSeconds", @"CoreMedia");
  formattedDurationTextForAsset___CMTimeGetSeconds = result;
  return result;
}

- (CKAudioProgressView)audioPlaybackView
{
  audioPlaybackView = self->_audioPlaybackView;
  if (!audioPlaybackView)
  {
    v4 = objc_alloc_init(CKAudioProgressView);
    v5 = self->_audioPlaybackView;
    self->_audioPlaybackView = v4;

    [(CKAudioProgressView *)self->_audioPlaybackView setColor:0xFFFFFFFFLL];
    previewView = [(CKSharedAssetCollectionViewCell *)self previewView];
    [previewView addSubview:self->_audioPlaybackView];

    audioPlaybackView = self->_audioPlaybackView;
  }

  return audioPlaybackView;
}

- (void)layoutSubviews
{
  *&rect.origin.y = self;
  *&rect.size.width = CKSharedAudioCollectionViewCell;
  [(CGFloat *)&rect.origin.y layoutSubviews];
  previewView = [(CKSharedAssetCollectionViewCell *)self previewView];
  [previewView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  audioPlaybackView = [(CKSharedAudioCollectionViewCell *)self audioPlaybackView];
  v13 = *(MEMORY[0x1E695F058] + 8);
  rect.origin.x = *MEMORY[0x1E695F058];
  v20.origin.x = v5;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  v14 = CGRectGetWidth(v20) * 0.5;
  v21.origin.x = v5;
  v21.origin.y = v7;
  v21.size.width = v9;
  v21.size.height = v11;
  v15 = CGRectGetHeight(v21) * 0.5;
  v22.origin.x = v5;
  v22.origin.y = v7;
  v22.size.width = v9;
  v22.size.height = v11;
  v16 = CGRectGetWidth(v22) * 0.5;
  v23.origin.x = rect.origin.x;
  v23.origin.y = v13;
  v23.size.width = v14;
  v23.size.height = v15;
  v17 = v16 - CGRectGetWidth(v23) * 0.5;
  v24.origin.x = v5;
  v24.origin.y = v7;
  v24.size.width = v9;
  v24.size.height = v11;
  v18 = CGRectGetHeight(v24) * 0.5;
  v25.origin.x = v17;
  v25.origin.y = v13;
  v25.size.width = v14;
  v25.size.height = v15;
  [audioPlaybackView setFrame:{v17, v18 - CGRectGetHeight(v25) * 0.5, v14, v15}];
  [audioPlaybackView prepareForDisplayIfNeeded];
}

@end