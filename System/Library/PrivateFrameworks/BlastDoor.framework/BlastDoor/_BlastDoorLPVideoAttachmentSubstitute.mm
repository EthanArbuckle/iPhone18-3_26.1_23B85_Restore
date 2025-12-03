@interface _BlastDoorLPVideoAttachmentSubstitute
- (_BlastDoorLPVideoAttachmentSubstitute)initWithCoder:(id)coder;
- (_BlastDoorLPVideoAttachmentSubstitute)initWithVideo:(id)video;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPVideoAttachmentSubstitute

- (_BlastDoorLPVideoAttachmentSubstitute)initWithVideo:(id)video
{
  v9 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = _BlastDoorLPVideoAttachmentSubstitute;
  v3 = [(_BlastDoorLPVideo *)&v8 _initWithVideo:video];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (_BlastDoorLPVideoAttachmentSubstitute)initWithCoder:(id)coder
{
  v10 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _BlastDoorLPVideoAttachmentSubstitute;
  v5 = [(_BlastDoorLPVideo *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_index = [coderCopy decodeIntegerForKey:@"richLinkVideoAttachmentSubstituteIndex"];
    v6 = v5;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = _BlastDoorLPVideoAttachmentSubstitute;
  coderCopy = coder;
  [(_BlastDoorLPVideo *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_index forKey:@"richLinkVideoAttachmentSubstituteIndex"];

  v5 = *MEMORY[0x277D85DE8];
}

@end