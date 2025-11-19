@interface CKSharedOtherTypesCollectionViewCell
- (UIImageView)thumbnailImageView;
- (void)configureWithAttachmentItem:(id)a3;
- (void)configureWithThumbnail:(id)a3 fileURL:(id)a4;
- (void)layoutSubviews;
@end

@implementation CKSharedOtherTypesCollectionViewCell

- (void)configureWithThumbnail:(id)a3 fileURL:(id)a4
{
  v5 = a3;
  v6 = [(CKSharedOtherTypesCollectionViewCell *)self thumbnailImageView];
  [v6 setImage:v5];

  v7 = [(CKSharedOtherTypesCollectionViewCell *)self thumbnailImageView];
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  [v5 size];
  v11 = v10;
  v13 = v12;

  [v7 setBounds:{v8, v9, v11, v13}];
  [(CKSharedOtherTypesCollectionViewCell *)self setNeedsLayout];

  [(CKSharedOtherTypesCollectionViewCell *)self layoutIfNeeded];
}

- (void)configureWithAttachmentItem:(id)a3
{
  v4 = a3;
  v5 = [(CKSharedOtherTypesCollectionViewCell *)self thumbnailImageView];
  v6 = [v4 fileIcon];
  [v5 setImage:v6];

  v7 = [(CKSharedOtherTypesCollectionViewCell *)self thumbnailImageView];
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  v10 = [v4 fileIcon];
  [v10 size];
  [v7 setBounds:{v8, v9, v11, v12}];

  v13 = [v4 previewItemURL];

  v14 = [v13 absoluteString];
  v15 = [v14 lastPathComponent];
  v18 = [v15 stringByRemovingPercentEncoding];

  v16 = [(CKSharedAssetCollectionViewCell *)self previewTitleLabel];
  v17 = [(CKSharedAssetCollectionViewCell *)self formattedTitleFromPreviewTitle:v18];
  [v16 setAttributedText:v17];

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

    v6 = [(CKSharedAssetCollectionViewCell *)self previewView];
    [v6 addSubview:self->_thumbnailImageView];

    thumbnailImageView = self->_thumbnailImageView;
  }

  return thumbnailImageView;
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = CKSharedOtherTypesCollectionViewCell;
  [(CKSharedContentsCollectionViewCell *)&v26 layoutSubviews];
  v3 = [(CKSharedAssetCollectionViewCell *)self previewView];
  [v3 bounds];
  v5 = v4;
  v24 = v6;
  v25 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CKSharedOtherTypesCollectionViewCell *)self thumbnailImageView];
  [v12 frame];
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
  [v12 setFrame:{v22, v23 - CGRectGetHeight(v30) * 0.5, v18, v20}];
}

@end