@interface NNMKAttachment
- (BOOL)isActionable;
- (NNMKAttachment)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NNMKAttachment

- (NNMKAttachment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = NNMKAttachment;
  v5 = [(NNMKAttachment *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyContentId"];
    contentId = v5->_contentId;
    v5->_contentId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyMessageId"];
    messageId = v5->_messageId;
    v5->_messageId = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyFileName"];
    fileName = v5->_fileName;
    v5->_fileName = v10;

    v5->_fileSize = [coderCopy decodeIntegerForKey:@"kNSCodingKeyFileSize"];
    v5->_type = [coderCopy decodeIntegerForKey:@"kNSCodingKeyType"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyContentURL"];
    url = v5->_url;
    v5->_url = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeySyncState"];
    v5->_syncState = [v14 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  contentId = self->_contentId;
  coderCopy = coder;
  [coderCopy encodeObject:contentId forKey:@"kNSCodingKeyContentId"];
  [coderCopy encodeObject:self->_messageId forKey:@"kNSCodingKeyMessageId"];
  [coderCopy encodeObject:self->_fileName forKey:@"kNSCodingKeyFileName"];
  [coderCopy encodeInteger:self->_fileSize forKey:@"kNSCodingKeyFileSize"];
  [coderCopy encodeInteger:self->_type forKey:@"kNSCodingKeyType"];
  [coderCopy encodeObject:self->_url forKey:@"kNSCodingKeyContentURL"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_syncState];
  [coderCopy encodeObject:v6 forKey:@"kNSCodingKeySyncState"];
}

- (BOOL)isActionable
{
  v3 = objc_opt_class();
  type = [(NNMKAttachment *)self type];

  return [v3 isTypeActionable:type];
}

@end