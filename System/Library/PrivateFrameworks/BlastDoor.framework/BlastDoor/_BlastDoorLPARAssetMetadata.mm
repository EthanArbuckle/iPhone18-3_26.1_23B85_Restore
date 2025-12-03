@interface _BlastDoorLPARAssetMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPARAssetMetadata)init;
- (_BlastDoorLPARAssetMetadata)initWithCoder:(id)coder;
- (id)_initWithDictionary:(id)dictionary;
- (id)_initWithURL:(id)l;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPARAssetMetadata

- (_BlastDoorLPARAssetMetadata)init
{
  v8 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = _BlastDoorLPARAssetMetadata;
  v2 = [(_BlastDoorLPARAssetMetadata *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_version = 1;
    v4 = v2;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)_initWithURL:(id)l
{
  lCopy = l;
  v6 = [(_BlastDoorLPARAssetMetadata *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URL, l);
    v8 = v7;
  }

  return v7;
}

- (id)_initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(_BlastDoorLPARAssetMetadata *)self init];
  if (v5 && (URLForKey(dictionaryCopy, @"LPMetadataARAssetURL"), v6 = objc_claimAutoreleasedReturnValue(), URL = v5->_URL, v5->_URL = v6, URL, v5->_URL))
  {
    v8 = stringForKey(dictionaryCopy, @"LPMetadataARAssetType");
    type = v5->_type;
    v5->_type = v8;

    v10 = stringForKey(dictionaryCopy, @"LPMetadataARAssetAccessibilityText");
    accessibilityText = v5->_accessibilityText;
    v5->_accessibilityText = v10;

    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (_BlastDoorLPARAssetMetadata)initWithCoder:(id)coder
{
  v16 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = _BlastDoorLPARAssetMetadata;
  v5 = [(_BlastDoorLPARAssetMetadata *)&v15 init];
  if (v5)
  {
    v5->_version = [coderCopy decodeInt32ForKey:@"version"];
    v6 = decodeURLForKey(coderCopy, @"URL");
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = decodeStringForKey(coderCopy, @"type");
    type = v5->_type;
    v5->_type = v8;

    v10 = decodeStringForKey(coderCopy, @"accessibilityText");
    accessibilityText = v5->_accessibilityText;
    v5->_accessibilityText = v10;

    v12 = v5;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  version = self->_version;
  coderCopy = coder;
  [coderCopy encodeInt32:version forKey:@"version"];
  [coderCopy _bd_lp_encodeURLIfNotNilOrLocalFile:self->_URL forKey:@"URL"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_type forKey:@"type"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_accessibilityText forKey:@"accessibilityText"];
}

- (BOOL)isEqual:(id)equal
{
  v13 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = _BlastDoorLPARAssetMetadata;
  if ([(_BlastDoorLPARAssetMetadata *)&v12 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v7 = v6;
      if (*(v6 + 2) == self->_version && ((v8 = v6[2], !(v8 | self->_URL)) || [v8 isEqual:?]))
      {
        v9 = v7[4];
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