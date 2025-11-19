@interface ICGalleryAttachmentViewSubAttachmentItem
- (BOOL)isEqual:(id)a3;
- (BOOL)updateSize;
- (CGSize)size;
- (ICAttachment)attachment;
- (ICGalleryAttachmentViewSubAttachmentItem)initWithAttachmentIdentifier:(id)a3 context:(id)a4;
@end

@implementation ICGalleryAttachmentViewSubAttachmentItem

- (ICGalleryAttachmentViewSubAttachmentItem)initWithAttachmentIdentifier:(id)a3 context:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICGalleryAttachmentViewSubAttachmentItem;
  v9 = [(ICGalleryAttachmentViewSubAttachmentItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_attachmentIdentifier, a3);
    objc_storeStrong(&v10->_context, a4);
  }

  return v10;
}

- (ICAttachment)attachment
{
  attachment = self->_attachment;
  if (!attachment)
  {
    v4 = MEMORY[0x277D35E00];
    v5 = [(ICGalleryAttachmentViewSubAttachmentItem *)self attachmentIdentifier];
    v6 = [(ICGalleryAttachmentViewSubAttachmentItem *)self context];
    v7 = [v4 attachmentWithIdentifier:v5 context:v6];
    v8 = self->_attachment;
    self->_attachment = v7;

    attachment = self->_attachment;
  }

  return attachment;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = ICDynamicCast();

  if (v5)
  {
    v6 = [(ICGalleryAttachmentViewSubAttachmentItem *)self attachmentIdentifier];
    v7 = [v5 attachmentIdentifier];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)updateSize
{
  v3 = [(ICGalleryAttachmentViewSubAttachmentItem *)self attachment];
  [v3 sizeWidth];
  v5 = v4;
  v6 = [(ICGalleryAttachmentViewSubAttachmentItem *)self attachment];
  [v6 sizeHeight];
  v8 = v7;

  v9 = v8 != self->_size.height || v5 != self->_size.width;
  if (v9)
  {
    self->_size.width = v5;
    self->_size.height = v8;
  }

  return v9;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
  {
    v6 = [(ICGalleryAttachmentViewSubAttachmentItem *)self attachment];
    [v6 sizeWidth];
    v8 = v7;
    v9 = [(ICGalleryAttachmentViewSubAttachmentItem *)self attachment];
    [v9 sizeHeight];
    self->_size.width = v8;
    self->_size.height = v10;

    width = self->_size.width;
    height = self->_size.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

@end