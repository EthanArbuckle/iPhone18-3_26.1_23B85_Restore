@interface SMSPart
- (void)addAttachmentPart:(id)part;
- (void)addTextPart:(id)part;
@end

@implementation SMSPart

- (void)addTextPart:(id)part
{
  partCopy = part;
  textParts = self->_textParts;
  v8 = partCopy;
  if (!textParts)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_textParts;
    self->_textParts = v6;

    partCopy = v8;
    textParts = self->_textParts;
  }

  [(NSMutableArray *)textParts addObject:partCopy];
}

- (void)addAttachmentPart:(id)part
{
  partCopy = part;
  attachmentParts = self->_attachmentParts;
  v8 = partCopy;
  if (!attachmentParts)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_attachmentParts;
    self->_attachmentParts = v6;

    partCopy = v8;
    attachmentParts = self->_attachmentParts;
  }

  [(NSMutableArray *)attachmentParts addObject:partCopy];
}

@end