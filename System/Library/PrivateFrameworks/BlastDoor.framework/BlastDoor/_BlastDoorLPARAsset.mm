@interface _BlastDoorLPARAsset
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPARAsset)init;
- (_BlastDoorLPARAsset)initWithCoder:(id)coder;
- (_BlastDoorLPARAssetProperties)properties;
- (id)_initWithARAsset:(id)asset;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPARAsset

- (_BlastDoorLPARAsset)init
{
  v5 = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = _BlastDoorLPARAsset;
  result = [(_BlastDoorLPARAsset *)&v4 init];
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_initWithARAsset:(id)asset
{
  v11 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v10.receiver = self;
  v10.super_class = _BlastDoorLPARAsset;
  v5 = [(_BlastDoorLPARAsset *)&v10 init];
  p_isa = &v5->super.isa;
  if (v5)
  {
    objc_storeStrong(&v5->_data, assetCopy[1]);
    objc_storeStrong(p_isa + 2, assetCopy[2]);
    objc_storeStrong(p_isa + 5, assetCopy[5]);
    objc_storeStrong(p_isa + 4, assetCopy[4]);
    v7 = p_isa;
  }

  v8 = *MEMORY[0x277D85DE8];
  return p_isa;
}

- (_BlastDoorLPARAssetProperties)properties
{
  v2 = [(_BlastDoorLPARAssetProperties *)self->_properties copy];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([(_BlastDoorLPARAsset *)self _shouldEncodeData])
  {
    data = [(_BlastDoorLPARAsset *)self data];
    [coderCopy _bd_lp_encodeObjectIfNotNil:data forKey:@"data"];
  }

  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_MIMEType forKey:@"MIMEType"];
  accessibilityText = [(_BlastDoorLPARAssetProperties *)self->_properties accessibilityText];
  [coderCopy _bd_lp_encodeObjectIfNotNil:accessibilityText forKey:@"accessibilityText"];
}

- (_BlastDoorLPARAsset)initWithCoder:(id)coder
{
  v17 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = _BlastDoorLPARAsset;
  v5 = [(_BlastDoorLPARAsset *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy _bd_lp_strictlyDecodeNSDataForKey:@"data"];
    data = v5->_data;
    v5->_data = v6;

    v8 = [coderCopy _bd_lp_strictlyDecodeNSStringForKey:@"MIMEType"];
    MIMEType = v5->_MIMEType;
    v5->_MIMEType = v8;

    v10 = objc_alloc_init(_BlastDoorLPARAssetProperties);
    properties = v5->_properties;
    v5->_properties = v10;

    v12 = [coderCopy _bd_lp_strictlyDecodeNSStringForKey:@"accessibilityText"];
    [(_BlastDoorLPARAssetProperties *)v5->_properties setAccessibilityText:v12];

    v13 = v5;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v14 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = _BlastDoorLPARAsset;
  if ([(_BlastDoorLPARAsset *)&v13 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v7 = v6[1];
      if (v7 | self->_data && ![v7 isEqual:?] || (v8 = v6[2], v8 | self->_MIMEType) && !objc_msgSend(v8, "isEqual:") || (v9 = v6[5], v9 | self->_fileURL) && !objc_msgSend(v9, "isEqual:"))
      {
        v5 = 0;
      }

      else
      {
        v10 = v6[4];
        if (v10 | self->_properties)
        {
          v5 = [v10 isEqual:?];
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

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

@end