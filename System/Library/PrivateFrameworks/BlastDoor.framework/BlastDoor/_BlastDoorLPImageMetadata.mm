@interface _BlastDoorLPImageMetadata
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (_BlastDoorLPImageMetadata)init;
- (_BlastDoorLPImageMetadata)initWithCoder:(id)a3;
- (id)_initWithDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPImageMetadata

- (_BlastDoorLPImageMetadata)init
{
  v8 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = _BlastDoorLPImageMetadata;
  v2 = [(_BlastDoorLPImageMetadata *)&v7 init];
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
  v5 = [(_BlastDoorLPImageMetadata *)self init];
  if (v5 && (URLForKey(v4, @"LPMetadataImageURL"), v6 = objc_claimAutoreleasedReturnValue(), URL = v5->_URL, v5->_URL = v6, URL, v5->_URL))
  {
    v8 = stringForKey(v4, @"LPMetadataImageType");
    type = v5->_type;
    v5->_type = v8;

    v10 = stringForKey(v4, @"LPMetadataImageAccessibilityText");
    accessibilityText = v5->_accessibilityText;
    v5->_accessibilityText = v10;

    v12 = numberForKey(v4, @"LPMetadataImageWidth");
    v13 = numberForKey(v4, @"LPMetadataImageHeight");
    v14 = v13;
    if (v12 && v13)
    {
      [v12 doubleValue];
      v16 = v15;
      [v14 doubleValue];
      v5->_size.width = v16;
      v5->_size.height = v17;
    }

    v18 = v5;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (_BlastDoorLPImageMetadata)initWithCoder:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _BlastDoorLPImageMetadata;
  v5 = [(_BlastDoorLPImageMetadata *)&v17 init];
  if (v5)
  {
    v5->_version = [v4 decodeInt32ForKey:@"version"];
    v6 = decodeURLForKey(v4, @"URL");
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = decodeStringForKey(v4, @"type");
    type = v5->_type;
    v5->_type = v8;

    [v4 decodeSizeForKey:@"size"];
    v5->_size.width = v10;
    v5->_size.height = v11;
    v12 = decodeStringForKey(v4, @"accessibilityText");
    accessibilityText = v5->_accessibilityText;
    v5->_accessibilityText = v12;

    v14 = v5;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  version = self->_version;
  v5 = a3;
  [v5 encodeInt32:version forKey:@"version"];
  [v5 _bd_lp_encodeURLIfNotNilOrLocalFile:self->_URL forKey:@"URL"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_type forKey:@"type"];
  [v5 encodeSize:@"size" forKey:{self->_size.width, self->_size.height}];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_accessibilityText forKey:@"accessibilityText"];
}

- (BOOL)isEqual:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _BlastDoorLPImageMetadata;
  if ([(_BlastDoorLPImageMetadata *)&v14 isEqual:v4])
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
      if (*(v6 + 2) == self->_version && ((v8 = v6[2], !(v8 | self->_URL)) || [v8 isEqual:?]) && ((v9 = *(v7 + 3), !(v9 | self->_type)) || objc_msgSend(v9, "isEqual:")) && (v7[5] == self->_size.width ? (v10 = v7[6] == self->_size.height) : (v10 = 0), v10))
      {
        v13 = *(v7 + 4);
        if (v13 | self->_accessibilityText)
        {
          v5 = [v13 isEqual:?];
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

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end