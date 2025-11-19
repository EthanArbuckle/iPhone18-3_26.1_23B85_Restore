@interface _BlastDoorLPAppleNewsMetadata
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPAppleNewsMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPAppleNewsMetadata

- (_BlastDoorLPAppleNewsMetadata)initWithCoder:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _BlastDoorLPAppleNewsMetadata;
  v5 = [(_BlastDoorLPAppleNewsMetadata *)&v13 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"source");
    source = v5->_source;
    v5->_source = v6;

    v8 = decodeStringForKey(v4, @"title");
    title = v5->_title;
    v5->_title = v8;

    v10 = v5;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = _BlastDoorLPAppleNewsMetadata;
  v4 = a3;
  [(_BlastDoorLPSpecializationMetadata *)&v6 encodeWithCoder:v4];
  [v4 _bd_lp_encodeObjectIfNotNil:self->_source forKey:@"source"];
  [v4 _bd_lp_encodeObjectIfNotNil:self->_title forKey:@"title"];

  v5 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BlastDoorLPAppleNewsMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(_BlastDoorLPAppleNewsMetadata *)self source];
    [(_BlastDoorLPAppleNewsMetadata *)v4 setSource:v5];

    v6 = [(_BlastDoorLPAppleNewsMetadata *)self title];
    [(_BlastDoorLPAppleNewsMetadata *)v4 setTitle:v6];

    v7 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _BlastDoorLPAppleNewsMetadata;
  if ([(_BlastDoorLPAppleNewsMetadata *)&v11 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
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