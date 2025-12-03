@interface CKSharedOtherTypesCollectionViewCell
- (UIImageView)thumbnailImageView;
- (void)configureWithAttachmentItem:(id)item;
- (void)configureWithThumbnail:(id)thumbnail fileURL:(id)l;
- (void)layoutSubviews;
@end

@implementation CKSharedOtherTypesCollectionViewCell

- (void)configureWithThumbnail:(id)thumbnail fileURL:(id)l
{
  thumbnailCopy = thumbnail;
  thumbnailImageView = [(CKSharedOtherTypesCollectionViewCell *)self thumbnailImageView];
  [thumbnailImageView setImage:thumbnailCopy];

  thumbnailImageView2 = [(CKSharedOtherTypesCollectionViewCell *)self thumbnailImageView];
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  [thumbnailCopy size];
  v11 = v10;
  v13 = v12;

  [thumbnailImageView2 setBounds:{v8, v9, v11, v13}];
  [(CKSharedOtherTypesCollectionViewCell *)self setNeedsLayout];

  [(CKSharedOtherTypesCollectionViewCell *)self layoutIfNeeded];
}

- (void)configureWithAttachmentItem:(id)item
{
  itemCopy = item;
  thumbnailImageView = [(CKSharedOtherTypesCollectionViewCell *)self thumbnailImageView];
  fileIcon = [itemCopy fileIcon];
  [thumbnailImageView setImage:fileIcon];

  thumbnailImageView2 = [(CKSharedOtherTypesCollectionViewCell *)self thumbnailImageView];
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  fileIcon2 = [itemCopy fileIcon];
  [fileIcon2 size];
  [thumbnailImageView2 setBounds:{v8, v9, v11, v12}];

  previewItemURL = [itemCopy previewItemURL];

  absoluteString = [previewItemURL absoluteString];
  lastPathComponent = [absoluteString lastPathComponent];
  stringByRemovingPercentEncoding = [lastPathComponent stringByRemovingPercentEncoding];

  previewTitleLabel = [(CKSharedAssetCollectionViewCell *)self previewTitleLabel];
  v17 = [(CKSharedAssetCollectionViewCell *)self formattedTitleFromPreviewTitle:stringByRemovingPercentEncoding];
  [previewTitleLabel setAttributedText:v17];

  [(CKSharedOtherTypesCollectionViewCell *)self setNeedsLayout];
  [(CKSharedOtherTypesCollectionViewCell *)self layoutIfNeeded];
}

- (UIImageView)thumbnailImageView
{
  thumbnailImageView = self->_thumbnailImageView;
  if (!thumbnailImageView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v5 = self->_thumbnailImageView;
    self->_thumbnailImageView = v4;

    previewView = [(CKSharedAssetCollectionViewCell *)self previewView];
    [previewView addSubview:self->_thumbnailImageView];

    thumbnailImageView = self->_thumbnailImageView;
  }

  return thumbnailImageView;
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = CKSharedOtherTypesCollectionViewCell;
  [(CKSharedContentsCollectionViewCell *)&v26 layoutSubviews];
  previewView = [(CKSharedAssetCollectionViewCell *)self previewView];
  [previewView bounds];
  v5 = v4;
  v24 = v6;
  v25 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  thumbnailImageView = [(CKSharedOtherTypesCollectionViewCell *)self thumbnailImageView];
  [thumbnailImageView frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v27.origin.x = v5;
  v27.origin.y = v7;
  v27.size.width = v9;
  v27.size.height = v11;
  v21 = CGRectGetWidth(v27) * 0.5;
  v28.origin.x = v14;
  v28.origin.y = v16;
  v28.size.width = v18;
  v28.size.height = v20;
  v22 = v21 - CGRectGetWidth(v28) * 0.5;
  v29.origin.y = v24;
  v29.origin.x = v25;
  v29.size.width = v9;
  v29.size.height = v11;
  v23 = CGRectGetHeight(v29) * 0.5;
  v30.origin.x = v22;
  v30.origin.y = v16;
  v30.size.width = v18;
  v30.size.height = v20;
  [thumbnailImageView setFrame:{v22, v23 - CGRectGetHeight(v30) * 0.5, v18, v20}];
}

@end