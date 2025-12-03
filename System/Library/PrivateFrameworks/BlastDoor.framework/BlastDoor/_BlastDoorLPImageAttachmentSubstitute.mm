@interface _BlastDoorLPImageAttachmentSubstitute
- (_BlastDoorLPImageAttachmentSubstitute)initWithCoder:(id)coder;
- (_BlastDoorLPImageAttachmentSubstitute)initWithImage:(id)image;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPImageAttachmentSubstitute

- (_BlastDoorLPImageAttachmentSubstitute)initWithImage:(id)image
{
  v9 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = _BlastDoorLPImageAttachmentSubstitute;
  v3 = [(_BlastDoorLPImage *)&v8 _initWithImage:image];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (_BlastDoorLPImageAttachmentSubstitute)initWithCoder:(id)coder
{
  v10 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _BlastDoorLPImageAttachmentSubstitute;
  v5 = [(_BlastDoorLPImage *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_index = [coderCopy decodeIntegerForKey:@"richLinkImageAttachmentSubstituteIndex"];
    v6 = v5;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = _BlastDoorLPImageAttachmentSubstitute;
  coderCopy = coder;
  [(_BlastDoorLPImage *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_index forKey:@"richLinkImageAttachmentSubstituteIndex"];

  v5 = *MEMORY[0x277D85DE8];
}

@end