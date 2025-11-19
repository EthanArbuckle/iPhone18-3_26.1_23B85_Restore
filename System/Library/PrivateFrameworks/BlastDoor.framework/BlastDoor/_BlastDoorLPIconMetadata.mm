@interface _BlastDoorLPIconMetadata
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPIconMetadata)init;
- (_BlastDoorLPIconMetadata)initWithCoder:(id)a3;
- (id)_initWithURL:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPIconMetadata

- (_BlastDoorLPIconMetadata)init
{
  v8 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = _BlastDoorLPIconMetadata;
  v2 = [(_BlastDoorLPIconMetadata *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_version = 1;
    v4 = v2;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)_initWithURL:(id)a3
{
  v5 = a3;
  v6 = [(_BlastDoorLPIconMetadata *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URL, a3);
    v8 = v7;
  }

  return v7;
}

- (_BlastDoorLPIconMetadata)initWithCoder:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _BlastDoorLPIconMetadata;
  v5 = [(_BlastDoorLPIconMetadata *)&v13 init];
  if (v5)
  {
    v5->_version = [v4 decodeInt32ForKey:@"version"];
    v6 = decodeURLForKey(v4, @"URL");
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = decodeStringForKey(v4, @"accessibilityText");
    accessibilityText = v5->_accessibilityText;
    v5->_accessibilityText = v8;

    v10 = v5;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  version = self->_version;
  v5 = a3;
  [v5 encodeInt32:version forKey:@"version"];
  [v5 _bd_lp_encodeURLIfNotNilOrLocalFile:self->_URL forKey:@"URL"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_accessibilityText forKey:@"accessibilityText"];
}

- (BOOL)isEqual:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _BlastDoorLPIconMetadata;
  if ([(_BlastDoorLPIconMetadata *)&v12 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = v6;
      if (*(v6 + 2) == self->_version && ((v8 = v6[2], !(v8 | self->_URL)) || [v8 isEqual:?]))
      {
        v9 = v7[3];
        if (v9 | self->_accessibilityText)
        {
          v5 = [v9 isEqual:?];
        }

        else
        {
          v5 = 1;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

@end