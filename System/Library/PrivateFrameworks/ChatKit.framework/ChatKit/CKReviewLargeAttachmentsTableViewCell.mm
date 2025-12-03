@interface CKReviewLargeAttachmentsTableViewCell
+ (CGSize)leftHandSideViewSize;
- (id)leftHandSideView;
- (void)_updateImageViewForAttachmentItem;
- (void)cachedAttachmentItem:(id)item didGeneratePreview:(id)preview;
- (void)clearData;
- (void)prepareForReuse;
- (void)setModelObject:(id)object;
@end

@implementation CKReviewLargeAttachmentsTableViewCell

- (void)clearData
{
  previewView = [(CKReviewLargeAttachmentsTableViewCell *)self previewView];
  [previewView setImage:0];

  [(CKAbstractReviewTableViewCell *)self setMainText:0];
  [(CKAbstractReviewTableViewCell *)self setSize:0];
  cachedAttachmentItem = [(CKReviewLargeAttachmentsTableViewCell *)self cachedAttachmentItem];
  delegate = [cachedAttachmentItem delegate];

  if (delegate == self)
  {
    cachedAttachmentItem2 = [(CKReviewLargeAttachmentsTableViewCell *)self cachedAttachmentItem];
    [cachedAttachmentItem2 setDelegate:0];
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
  previewView = [(CKReviewLargeAttachmentsTableViewCell *)self previewView];

  if (!previewView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v5 setContentMode:2];
    [v5 setClipsToBounds:1];
    [(CKReviewLargeAttachmentsTableViewCell *)self setPreviewView:v5];
  }

  return [(CKReviewLargeAttachmentsTableViewCell *)self previewView];
}

- (void)setModelObject:(id)object
{
  objectCopy = object;
  v5 = objectCopy;
  if (objectCopy)
  {
    v6 = [objectCopy objectForKeyedSubscript:@"guid"];
    v7 = +[CKStoragePluginDataModel sharedInstance];
    v8 = [v7 cachedAttachmentItemForGuid:v6];

    if (!v8)
    {
      v8 = objc_alloc_init(CKCachedAttachmentItem);
      v9 = +[CKStoragePluginDataModel sharedInstance];
      [v9 setCachedAttachmentItem:v8 forGuid:v6];
    }

    [(CKReviewLargeAttachmentsTableViewCell *)self setCachedAttachmentItem:v8];
    cachedAttachmentItem = [(CKReviewLargeAttachmentsTableViewCell *)self cachedAttachmentItem];
    [cachedAttachmentItem setDelegate:self];

    v11 = [v5 objectForKeyedSubscript:@"filename"];
    __ck_stringByExpandingTildeInPath = [v11 __ck_stringByExpandingTildeInPath];

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
      unsignedLongLongValue = [v24 unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
    }

    [(CKAbstractReviewTableViewCell *)self setSize:unsignedLongLongValue];
    cachedAttachmentItem2 = [(CKReviewLargeAttachmentsTableViewCell *)self cachedAttachmentItem];
    attachmentItem = [cachedAttachmentItem2 attachmentItem];

    if (!attachmentItem)
    {
      v29 = [MEMORY[0x1E695DFF8] fileURLWithPath:__ck_stringByExpandingTildeInPath];
      v30 = [CKAttachmentItemManager attachmentWithFileURL:v29 size:v6 transferGUID:v6 guid:v13 createdDate:0 shareURL:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
      cachedAttachmentItem3 = [(CKReviewLargeAttachmentsTableViewCell *)self cachedAttachmentItem];
      [cachedAttachmentItem3 setAttachmentItem:v30];
    }

    cachedAttachmentItem4 = [(CKReviewLargeAttachmentsTableViewCell *)self cachedAttachmentItem];
    attachmentItem2 = [cachedAttachmentItem4 attachmentItem];

    if (attachmentItem2)
    {
      cachedAttachmentItem5 = [(CKReviewLargeAttachmentsTableViewCell *)self cachedAttachmentItem];
      attachmentItem3 = [cachedAttachmentItem5 attachmentItem];
      [attachmentItem3 setShowDocumentIcon:0];

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
    cachedAttachmentItem6 = [(CKReviewLargeAttachmentsTableViewCell *)self cachedAttachmentItem];

    if (cachedAttachmentItem6)
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

- (void)cachedAttachmentItem:(id)item didGeneratePreview:(id)preview
{
  itemCopy = item;
  previewCopy = preview;
  attachmentItem = [itemCopy attachmentItem];
  guid = [attachmentItem guid];
  cachedAttachmentItem = [(CKReviewLargeAttachmentsTableViewCell *)self cachedAttachmentItem];
  attachmentItem2 = [cachedAttachmentItem attachmentItem];
  guid2 = [attachmentItem2 guid];
  v13 = [guid isEqualToString:guid2];

  if (!v13)
  {
    previewView2 = IMLogHandleForCategory();
    if (os_log_type_enabled(previewView2, OS_LOG_TYPE_ERROR))
    {
      [(CKReviewLargeAttachmentsTableViewCell *)previewView2 cachedAttachmentItem:v20 didGeneratePreview:v21, v22, v23, v24, v25, v26];
    }

    goto LABEL_9;
  }

  if (!previewCopy)
  {
    cachedAttachmentItem2 = [(CKReviewLargeAttachmentsTableViewCell *)self cachedAttachmentItem];
    attachmentItem3 = [cachedAttachmentItem2 attachmentItem];
    fileIcon = [attachmentItem3 fileIcon];

    previewView = [(CKReviewLargeAttachmentsTableViewCell *)self previewView];
    [previewView setImage:fileIcon];

    goto LABEL_10;
  }

  attachmentItem4 = [itemCopy attachmentItem];
  cachedPreview = [attachmentItem4 cachedPreview];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    previewView2 = [(CKReviewLargeAttachmentsTableViewCell *)self previewView];
    [previewView2 setImage:previewCopy];
LABEL_9:

    goto LABEL_10;
  }

  image = [previewCopy image];
  previewView3 = [(CKReviewLargeAttachmentsTableViewCell *)self previewView];
  [previewView3 setImage:image];

LABEL_10:
}

- (void)_updateImageViewForAttachmentItem
{
  previewView = [(CKReviewLargeAttachmentsTableViewCell *)self previewView];
  if (previewView && (v4 = previewView, -[CKReviewLargeAttachmentsTableViewCell cachedAttachmentItem](self, "cachedAttachmentItem"), v5 = objc_claimAutoreleasedReturnValue(), [v5 attachmentItem], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v4, v6))
  {
    cachedAttachmentItem = [(CKReviewLargeAttachmentsTableViewCell *)self cachedAttachmentItem];
    attachmentItem = [cachedAttachmentItem attachmentItem];
    cachedPreview = [attachmentItem cachedPreview];

    if (cachedPreview)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        image = [cachedPreview image];
      }

      else
      {
        image = cachedPreview;
      }

      cachedAttachmentItem2 = image;
      previewView2 = [(CKReviewLargeAttachmentsTableViewCell *)self previewView];
      [previewView2 setImage:cachedAttachmentItem2];
    }

    else
    {
      cachedAttachmentItem2 = [(CKReviewLargeAttachmentsTableViewCell *)self cachedAttachmentItem];
      [cachedAttachmentItem2 generatePreview];
    }
  }

  else
  {
    previewView3 = [(CKReviewLargeAttachmentsTableViewCell *)self previewView];
    [previewView3 setImage:0];

    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(CKReviewLargeAttachmentsTableViewCell *)v11 _updateImageViewForAttachmentItem:v12];
    }
  }
}

@end