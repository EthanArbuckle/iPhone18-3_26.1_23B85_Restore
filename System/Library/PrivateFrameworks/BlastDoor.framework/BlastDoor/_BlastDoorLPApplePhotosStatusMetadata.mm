@interface _BlastDoorLPApplePhotosStatusMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPApplePhotosStatusMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _BlastDoorLPApplePhotosStatusMetadata

- (_BlastDoorLPApplePhotosStatusMetadata)initWithCoder:(id)coder
{
  v13 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = _BlastDoorLPApplePhotosStatusMetadata;
  v5 = [(_BlastDoorLPApplePhotosStatusMetadata *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy _bd_lp_strictlyDecodeNSAttributedStringForKey:@"title"];
    v7 = truncatedAttributedStringAtMaximumMetadataLength(v6);

    status = v5->_status;
    v5->_status = v7;

    v9 = v5;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPApplePhotosStatusMetadata allocWithZone:zone];
  if (v4)
  {
    status = [(_BlastDoorLPApplePhotosStatusMetadata *)self status];
    [(_BlastDoorLPApplePhotosStatusMetadata *)v4 setStatus:status];

    v6 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v10 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = _BlastDoorLPApplePhotosStatusMetadata;
  if ([(_BlastDoorLPApplePhotosStatusMetadata *)&v9 isEqual:equalCopy])
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = 0;
    goto LABEL_7;
  }

  v6 = equalCopy[2];
  if (!(v6 | self->_status))
  {
LABEL_2:
    v5 = 1;
  }

  else
  {
    v5 = [v6 isEqual:?];
  }

LABEL_7:

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

@end