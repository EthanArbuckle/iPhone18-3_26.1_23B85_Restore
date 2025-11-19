@interface _BlastDoorLPARAssetAttachmentSubstitute
- (_BlastDoorLPARAssetAttachmentSubstitute)initWithARAsset:(id)a3;
- (_BlastDoorLPARAssetAttachmentSubstitute)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPARAssetAttachmentSubstitute

- (_BlastDoorLPARAssetAttachmentSubstitute)initWithARAsset:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = _BlastDoorLPARAssetAttachmentSubstitute;
  v3 = [(_BlastDoorLPARAsset *)&v8 _initWithARAsset:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (_BlastDoorLPARAssetAttachmentSubstitute)initWithCoder:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _BlastDoorLPARAssetAttachmentSubstitute;
  v5 = [(_BlastDoorLPARAsset *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_index = [v4 decodeIntegerForKey:@"richLinkARAssetAttachmentSubstituteIndex"];
    v6 = v5;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = _BlastDoorLPARAssetAttachmentSubstitute;
  v4 = a3;
  [(_BlastDoorLPARAsset *)&v6 encodeWithCoder:v4];
  [v4 encodeInteger:self->_index forKey:@"richLinkARAssetAttachmentSubstituteIndex"];

  v5 = *MEMORY[0x277D85DE8];
}

@end