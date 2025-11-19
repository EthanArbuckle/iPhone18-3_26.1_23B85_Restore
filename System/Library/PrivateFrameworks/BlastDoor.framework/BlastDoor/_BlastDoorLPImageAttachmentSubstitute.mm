@interface _BlastDoorLPImageAttachmentSubstitute
- (_BlastDoorLPImageAttachmentSubstitute)initWithCoder:(id)a3;
- (_BlastDoorLPImageAttachmentSubstitute)initWithImage:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPImageAttachmentSubstitute

- (_BlastDoorLPImageAttachmentSubstitute)initWithImage:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = _BlastDoorLPImageAttachmentSubstitute;
  v3 = [(_BlastDoorLPImage *)&v8 _initWithImage:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (_BlastDoorLPImageAttachmentSubstitute)initWithCoder:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _BlastDoorLPImageAttachmentSubstitute;
  v5 = [(_BlastDoorLPImage *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_index = [v4 decodeIntegerForKey:@"richLinkImageAttachmentSubstituteIndex"];
    v6 = v5;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = _BlastDoorLPImageAttachmentSubstitute;
  v4 = a3;
  [(_BlastDoorLPImage *)&v6 encodeWithCoder:v4];
  [v4 encodeInteger:self->_index forKey:@"richLinkImageAttachmentSubstituteIndex"];

  v5 = *MEMORY[0x277D85DE8];
}

@end