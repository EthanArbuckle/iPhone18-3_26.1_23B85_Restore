@interface _BlastDoorLPSummarizedLinkMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPSummarizedLinkMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _BlastDoorLPSummarizedLinkMetadata

- (_BlastDoorLPSummarizedLinkMetadata)initWithCoder:(id)coder
{
  v9 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = _BlastDoorLPSummarizedLinkMetadata;
  v3 = [(_BlastDoorLPSummarizedLinkMetadata *)&v8 init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [_BlastDoorLPSummarizedLinkMetadata allocWithZone:zone];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v9 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = _BlastDoorLPSummarizedLinkMetadata;
  if ([(_BlastDoorLPSummarizedLinkMetadata *)&v8 isEqual:equalCopy])
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  v6 = *MEMORY[0x277D85DE8];
  return isKindOfClass & 1;
}

@end