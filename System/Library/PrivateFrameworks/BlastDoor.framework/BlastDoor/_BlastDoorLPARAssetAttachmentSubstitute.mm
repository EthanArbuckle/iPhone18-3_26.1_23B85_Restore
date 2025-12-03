@interface _BlastDoorLPARAssetAttachmentSubstitute
- (_BlastDoorLPARAssetAttachmentSubstitute)initWithARAsset:(id)asset;
- (_BlastDoorLPARAssetAttachmentSubstitute)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPARAssetAttachmentSubstitute

- (_BlastDoorLPARAssetAttachmentSubstitute)initWithARAsset:(id)asset
{
  v9 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = _BlastDoorLPARAssetAttachmentSubstitute;
  v3 = [(_BlastDoorLPARAsset *)&v8 _initWithARAsset:asset];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (_BlastDoorLPARAssetAttachmentSubstitute)initWithCoder:(id)coder
{
  v10 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _BlastDoorLPARAssetAttachmentSubstitute;
  v5 = [(_BlastDoorLPARAsset *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_index = [coderCopy decodeIntegerForKey:@"richLinkARAssetAttachmentSubstituteIndex"];
    v6 = v5;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = _BlastDoorLPARAssetAttachmentSubstitute;
  coderCopy = coder;
  [(_BlastDoorLPARAsset *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_index forKey:@"richLinkARAssetAttachmentSubstituteIndex"];

  v5 = *MEMORY[0x277D85DE8];
}

@end