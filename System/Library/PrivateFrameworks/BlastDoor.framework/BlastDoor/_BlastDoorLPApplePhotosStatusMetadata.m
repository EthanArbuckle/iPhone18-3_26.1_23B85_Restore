@interface _BlastDoorLPApplePhotosStatusMetadata
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPApplePhotosStatusMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _BlastDoorLPApplePhotosStatusMetadata

- (_BlastDoorLPApplePhotosStatusMetadata)initWithCoder:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _BlastDoorLPApplePhotosStatusMetadata;
  v5 = [(_BlastDoorLPApplePhotosStatusMetadata *)&v12 init];
  if (v5)
  {
    v6 = [v4 _bd_lp_strictlyDecodeNSAttributedStringForKey:@"title"];
    v7 = truncatedAttributedStringAtMaximumMetadataLength(v6);

    status = v5->_status;
    v5->_status = v7;

    v9 = v5;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BlastDoorLPApplePhotosStatusMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(_BlastDoorLPApplePhotosStatusMetadata *)self status];
    [(_BlastDoorLPApplePhotosStatusMetadata *)v4 setStatus:v5];

    v6 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _BlastDoorLPApplePhotosStatusMetadata;
  if ([(_BlastDoorLPApplePhotosStatusMetadata *)&v9 isEqual:v4])
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = 0;
    goto LABEL_7;
  }

  v6 = v4[2];
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