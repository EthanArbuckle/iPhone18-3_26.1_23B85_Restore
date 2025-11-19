@interface _BlastDoorLPAudioMetadata
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPAudioMetadata)init;
- (_BlastDoorLPAudioMetadata)initWithCoder:(id)a3;
- (id)_initWithDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPAudioMetadata

- (_BlastDoorLPAudioMetadata)init
{
  v8 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = _BlastDoorLPAudioMetadata;
  v2 = [(_BlastDoorLPAudioMetadata *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_version = 1;
    v4 = v2;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)_initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(_BlastDoorLPAudioMetadata *)self init];
  if (v5 && (URLForKey(v4, @"LPMetadataAudioURL"), v6 = objc_claimAutoreleasedReturnValue(), URL = v5->_URL, v5->_URL = v6, URL, v5->_URL))
  {
    v8 = stringForKey(v4, @"LPMetadataAudioType");
    type = v5->_type;
    v5->_type = v8;

    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (_BlastDoorLPAudioMetadata)initWithCoder:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _BlastDoorLPAudioMetadata;
  v5 = [(_BlastDoorLPAudioMetadata *)&v15 init];
  if (v5)
  {
    v5->_version = [v4 decodeInt32ForKey:@"version"];
    v6 = decodeURLForKey(v4, @"URL");
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = decodeStringForKey(v4, @"type");
    type = v5->_type;
    v5->_type = v8;

    v10 = decodeStringForKey(v4, @"accessibilityText");
    accessibilityText = v5->_accessibilityText;
    v5->_accessibilityText = v10;

    v12 = v5;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  version = self->_version;
  v5 = a3;
  [v5 encodeInt32:version forKey:@"version"];
  [v5 _bd_lp_encodeURLIfNotNilOrLocalFile:self->_URL forKey:@"URL"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_type forKey:@"type"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_accessibilityText forKey:@"accessibilityText"];
}

- (BOOL)isEqual:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _BlastDoorLPAudioMetadata;
  if ([(_BlastDoorLPAudioMetadata *)&v13 isEqual:v4])
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
      if (*(v6 + 2) == self->_version && ((v8 = v6[2], !(v8 | self->_URL)) || [v8 isEqual:?]) && ((v9 = v7[3], !(v9 | self->_type)) || objc_msgSend(v9, "isEqual:")))
      {
        v10 = v7[4];
        if (v10 | self->_accessibilityText)
        {
          v5 = [v10 isEqual:?];
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

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

@end