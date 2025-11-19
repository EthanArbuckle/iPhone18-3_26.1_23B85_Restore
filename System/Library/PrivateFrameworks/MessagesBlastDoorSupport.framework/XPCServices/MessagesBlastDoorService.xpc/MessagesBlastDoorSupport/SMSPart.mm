@interface SMSPart
- (void)addAttachmentPart:(id)a3;
- (void)addTextPart:(id)a3;
@end

@implementation SMSPart

- (void)addTextPart:(id)a3
{
  v4 = a3;
  textParts = self->_textParts;
  v8 = v4;
  if (!textParts)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_textParts;
    self->_textParts = v6;

    v4 = v8;
    textParts = self->_textParts;
  }

  [(NSMutableArray *)textParts addObject:v4];
}

- (void)addAttachmentPart:(id)a3
{
  v4 = a3;
  attachmentParts = self->_attachmentParts;
  v8 = v4;
  if (!attachmentParts)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_attachmentParts;
    self->_attachmentParts = v6;

    v4 = v8;
    attachmentParts = self->_attachmentParts;
  }

  [(NSMutableArray *)attachmentParts addObject:v4];
}

@end