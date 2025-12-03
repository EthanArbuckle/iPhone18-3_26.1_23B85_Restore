@interface _BlastDoorLPAppleNewsMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPAppleNewsMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPAppleNewsMetadata

- (_BlastDoorLPAppleNewsMetadata)initWithCoder:(id)coder
{
  v14 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _BlastDoorLPAppleNewsMetadata;
  v5 = [(_BlastDoorLPAppleNewsMetadata *)&v13 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"source");
    source = v5->_source;
    v5->_source = v6;

    v8 = decodeStringForKey(coderCopy, @"title");
    title = v5->_title;
    v5->_title = v8;

    v10 = v5;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = _BlastDoorLPAppleNewsMetadata;
  coderCopy = coder;
  [(_BlastDoorLPSpecializationMetadata *)&v6 encodeWithCoder:coderCopy];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_source forKey:@"source"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_title forKey:@"title"];

  v5 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPAppleNewsMetadata allocWithZone:zone];
  if (v4)
  {
    source = [(_BlastDoorLPAppleNewsMetadata *)self source];
    [(_BlastDoorLPAppleNewsMetadata *)v4 setSource:source];

    title = [(_BlastDoorLPAppleNewsMetadata *)self title];
    [(_BlastDoorLPAppleNewsMetadata *)v4 setTitle:title];

    v7 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v12 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = _BlastDoorLPAppleNewsMetadata;
  if ([(_BlastDoorLPAppleNewsMetadata *)&v11 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v7 = v6[2];
      if (v7 | self->_source && ![v7 isEqual:?])
      {
        v5 = 0;
      }

      else
      {
        v8 = v6[3];
        if (v8 | self->_title)
        {
          v5 = [v8 isEqual:?];
        }

        else
        {
          v5 = 1;
        }
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

@end