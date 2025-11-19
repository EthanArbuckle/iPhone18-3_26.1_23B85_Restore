@interface _BlastDoorLPVideoAttachmentSubstitute
- (_BlastDoorLPVideoAttachmentSubstitute)initWithCoder:(id)a3;
- (_BlastDoorLPVideoAttachmentSubstitute)initWithVideo:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPVideoAttachmentSubstitute

- (_BlastDoorLPVideoAttachmentSubstitute)initWithVideo:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = _BlastDoorLPVideoAttachmentSubstitute;
  v3 = [(_BlastDoorLPVideo *)&v8 _initWithVideo:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (_BlastDoorLPVideoAttachmentSubstitute)initWithCoder:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _BlastDoorLPVideoAttachmentSubstitute;
  v5 = [(_BlastDoorLPVideo *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_index = [v4 decodeIntegerForKey:@"richLinkVideoAttachmentSubstituteIndex"];
    v6 = v5;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = _BlastDoorLPVideoAttachmentSubstitute;
  v4 = a3;
  [(_BlastDoorLPVideo *)&v6 encodeWithCoder:v4];
  [v4 encodeInteger:self->_index forKey:@"richLinkVideoAttachmentSubstituteIndex"];

  v5 = *MEMORY[0x277D85DE8];
}

@end