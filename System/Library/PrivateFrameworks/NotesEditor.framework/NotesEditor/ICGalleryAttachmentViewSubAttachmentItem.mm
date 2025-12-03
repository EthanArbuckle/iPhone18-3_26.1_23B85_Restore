@interface ICGalleryAttachmentViewSubAttachmentItem
- (BOOL)isEqual:(id)equal;
- (BOOL)updateSize;
- (CGSize)size;
- (ICAttachment)attachment;
- (ICGalleryAttachmentViewSubAttachmentItem)initWithAttachmentIdentifier:(id)identifier context:(id)context;
@end

@implementation ICGalleryAttachmentViewSubAttachmentItem

- (ICGalleryAttachmentViewSubAttachmentItem)initWithAttachmentIdentifier:(id)identifier context:(id)context
{
  identifierCopy = identifier;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = ICGalleryAttachmentViewSubAttachmentItem;
  v9 = [(ICGalleryAttachmentViewSubAttachmentItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_attachmentIdentifier, identifier);
    objc_storeStrong(&v10->_context, context);
  }

  return v10;
}

- (ICAttachment)attachment
{
  attachment = self->_attachment;
  if (!attachment)
  {
    v4 = MEMORY[0x277D35E00];
    attachmentIdentifier = [(ICGalleryAttachmentViewSubAttachmentItem *)self attachmentIdentifier];
    context = [(ICGalleryAttachmentViewSubAttachmentItem *)self context];
    v7 = [v4 attachmentWithIdentifier:attachmentIdentifier context:context];
    v8 = self->_attachment;
    self->_attachment = v7;

    attachment = self->_attachment;
  }

  return attachment;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = ICDynamicCast();

  if (v5)
  {
    attachmentIdentifier = [(ICGalleryAttachmentViewSubAttachmentItem *)self attachmentIdentifier];
    attachmentIdentifier2 = [v5 attachmentIdentifier];
    v8 = [attachmentIdentifier isEqualToString:attachmentIdentifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)updateSize
{
  attachment = [(ICGalleryAttachmentViewSubAttachmentItem *)self attachment];
  [attachment sizeWidth];
  v5 = v4;
  attachment2 = [(ICGalleryAttachmentViewSubAttachmentItem *)self attachment];
  [attachment2 sizeHeight];
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
    attachment = [(ICGalleryAttachmentViewSubAttachmentItem *)self attachment];
    [attachment sizeWidth];
    v8 = v7;
    attachment2 = [(ICGalleryAttachmentViewSubAttachmentItem *)self attachment];
    [attachment2 sizeHeight];
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