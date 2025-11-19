@interface CKReviewLargeAttachmentsTableViewCell
+ (CGSize)leftHandSideViewSize;
- (id)leftHandSideView;
- (void)_updateImageViewForAttachmentItem;
- (void)cachedAttachmentItem:(id)a3 didGeneratePreview:(id)a4;
- (void)clearData;
- (void)prepareForReuse;
- (void)setModelObject:(id)a3;
@end

@implementation CKReviewLargeAttachmentsTableViewCell

- (void)clearData
{
  v3 = [(CKReviewLargeAttachmentsTableViewCell *)self previewView];
  [v3 setImage:0];

  [(CKAbstractReviewTableViewCell *)self setMainText:0];
  [(CKAbstractReviewTableViewCell *)self setSize:0];
  v4 = [(CKReviewLargeAttachmentsTableViewCell *)self cachedAttachmentItem];
  v5 = [v4 delegate];

  if (v5 == self)
  {
    v6 = [(CKReviewLargeAttachmentsTableViewCell *)self cachedAttachmentItem];
    [v6 setDelegate:0];
  }

  [(CKReviewLargeAttachmentsTableViewCell *)self setCachedAttachmentItem:0];
}

- (void)prepareForReuse
{
  [(CKReviewLargeAttachmentsTableViewCell *)self clearData];
  v3.receiver = self;
  v3.super_class = CKReviewLargeAttachmentsTableViewCell;
  [(CKAbstractReviewTableViewCell *)&v3 prepareForReuse];
}

+ (CGSize)leftHandSideViewSize
{
  v2 = 56.0;
  v3 = 56.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)leftHandSideView
{
  v3 = [(CKReviewLargeAttachmentsTableViewCell *)self previewView];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v5 setContentMode:2];
    [v5 setClipsToBounds:1];
    [(CKReviewLargeAttachmentsTableViewCell *)self setPreviewView:v5];
  }

  return [(CKReviewLargeAttachmentsTableViewCell *)self previewView];
}

- (void)setModelObject:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"guid"];
    v7 = +[CKStoragePluginDataModel sharedInstance];
    v8 = [v7 cachedAttachmentItemForGuid:v6];

    if (!v8)
    {
      v8 = objc_alloc_init(CKCachedAttachmentItem);
      v9 = +[CKStoragePluginDataModel sharedInstance];
      [v9 setCachedAttachmentItem:v8 forGuid:v6];
    }

    [(CKReviewLargeAttachmentsTableViewCell *)self setCachedAttachmentItem:v8];
    v10 = [(CKReviewLargeAttachmentsTableViewCell *)self cachedAttachmentItem];
    [v10 setDelegate:self];

    v11 = [v5 objectForKeyedSubscript:@"filename"];
    v12 = [v11 __ck_stringByExpandingTildeInPath];

    v13 = [v5 objectForKeyedSubscript:@"date"];
    if (v13)
    {
      v14 = [MEMORY[0x1E696AB78] localizedStringFromDate:v13 dateStyle:2 timeStyle:0];
      [(CKAbstractReviewTableViewCell *)self setMainText:v14];
    }

    else
    {
      [(CKAbstractReviewTableViewCell *)self setMainText:0];
    }

    v24 = [v5 objectForKeyedSubscript:@"size"];
    v25 = v24;
    if (v24)
    {
      v26 = [v24 unsignedLongLongValue];
    }

    else
    {
      v26 = 0;
    }

    [(CKAbstractReviewTableViewCell *)self setSize:v26];
    v27 = [(CKReviewLargeAttachmentsTableViewCell *)self cachedAttachmentItem];
    v28 = [v27 attachmentItem];

    if (!v28)
    {
      v29 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12];
      v30 = [CKAttachmentItemManager attachmentWithFileURL:v29 size:v6 transferGUID:v6 guid:v13 createdDate:0 shareURL:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
      v31 = [(CKReviewLargeAttachmentsTableViewCell *)self cachedAttachmentItem];
      [v31 setAttachmentItem:v30];
    }

    v32 = [(CKReviewLargeAttachmentsTableViewCell *)self cachedAttachmentItem];
    v33 = [v32 attachmentItem];

    if (v33)
    {
      v34 = [(CKReviewLargeAttachmentsTableViewCell *)self cachedAttachmentItem];
      v35 = [v34 attachmentItem];
      [v35 setShowDocumentIcon:0];

      [(CKReviewLargeAttachmentsTableViewCell *)self _updateImageViewForAttachmentItem];
    }

    else
    {
      [(CKReviewLargeAttachmentsTableViewCell *)self clearData];
    }

    [(CKReviewLargeAttachmentsTableViewCell *)self _updateImageViewForAttachmentItem];
  }

  else
  {
    v15 = [(CKReviewLargeAttachmentsTableViewCell *)self cachedAttachmentItem];

    if (v15)
    {
      [(CKReviewLargeAttachmentsTableViewCell *)self clearData];
      v16 = IMLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(CKReviewLargeAttachmentsTableViewCell *)v16 setModelObject:v17, v18, v19, v20, v21, v22, v23];
      }
    }
  }
}

- (void)cachedAttachmentItem:(id)a3 didGeneratePreview:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 attachmentItem];
  v9 = [v8 guid];
  v10 = [(CKReviewLargeAttachmentsTableViewCell *)self cachedAttachmentItem];
  v11 = [v10 attachmentItem];
  v12 = [v11 guid];
  v13 = [v9 isEqualToString:v12];

  if (!v13)
  {
    v19 = IMLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(CKReviewLargeAttachmentsTableViewCell *)v19 cachedAttachmentItem:v20 didGeneratePreview:v21, v22, v23, v24, v25, v26];
    }

    goto LABEL_9;
  }

  if (!v7)
  {
    v27 = [(CKReviewLargeAttachmentsTableViewCell *)self cachedAttachmentItem];
    v28 = [v27 attachmentItem];
    v29 = [v28 fileIcon];

    v30 = [(CKReviewLargeAttachmentsTableViewCell *)self previewView];
    [v30 setImage:v29];

    goto LABEL_10;
  }

  v14 = [v6 attachmentItem];
  v15 = [v14 cachedPreview];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v19 = [(CKReviewLargeAttachmentsTableViewCell *)self previewView];
    [v19 setImage:v7];
LABEL_9:

    goto LABEL_10;
  }

  v17 = [v7 image];
  v18 = [(CKReviewLargeAttachmentsTableViewCell *)self previewView];
  [v18 setImage:v17];

LABEL_10:
}

- (void)_updateImageViewForAttachmentItem
{
  v3 = [(CKReviewLargeAttachmentsTableViewCell *)self previewView];
  if (v3 && (v4 = v3, -[CKReviewLargeAttachmentsTableViewCell cachedAttachmentItem](self, "cachedAttachmentItem"), v5 = objc_claimAutoreleasedReturnValue(), [v5 attachmentItem], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v4, v6))
  {
    v7 = [(CKReviewLargeAttachmentsTableViewCell *)self cachedAttachmentItem];
    v8 = [v7 attachmentItem];
    v21 = [v8 cachedPreview];

    if (v21)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v21 image];
      }

      else
      {
        v9 = v21;
      }

      v19 = v9;
      v20 = [(CKReviewLargeAttachmentsTableViewCell *)self previewView];
      [v20 setImage:v19];
    }

    else
    {
      v19 = [(CKReviewLargeAttachmentsTableViewCell *)self cachedAttachmentItem];
      [v19 generatePreview];
    }
  }

  else
  {
    v10 = [(CKReviewLargeAttachmentsTableViewCell *)self previewView];
    [v10 setImage:0];

    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(CKReviewLargeAttachmentsTableViewCell *)v11 _updateImageViewForAttachmentItem:v12];
    }
  }
}

@end