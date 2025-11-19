@interface _BlastDoorLPSummarizedLinkMetadata
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPSummarizedLinkMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _BlastDoorLPSummarizedLinkMetadata

- (_BlastDoorLPSummarizedLinkMetadata)initWithCoder:(id)a3
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

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [_BlastDoorLPSummarizedLinkMetadata allocWithZone:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _BlastDoorLPSummarizedLinkMetadata;
  if ([(_BlastDoorLPSummarizedLinkMetadata *)&v8 isEqual:v4])
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