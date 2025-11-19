@interface _BlastDoorLPARAsset
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPARAsset)init;
- (_BlastDoorLPARAsset)initWithCoder:(id)a3;
- (_BlastDoorLPARAssetProperties)properties;
- (id)_initWithARAsset:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (id)_initWithARAsset:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _BlastDoorLPARAsset;
  v5 = [(_BlastDoorLPARAsset *)&v10 init];
  p_isa = &v5->super.isa;
  if (v5)
  {
    objc_storeStrong(&v5->_data, v4[1]);
    objc_storeStrong(p_isa + 2, v4[2]);
    objc_storeStrong(p_isa + 5, v4[5]);
    objc_storeStrong(p_isa + 4, v4[4]);
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

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  if ([(_BlastDoorLPARAsset *)self _shouldEncodeData])
  {
    v4 = [(_BlastDoorLPARAsset *)self data];
    [v6 _bd_lp_encodeObjectIfNotNil:v4 forKey:@"data"];
  }

  [v6 _bd_lp_encodeObjectIfNotNil:self->_MIMEType forKey:@"MIMEType"];
  v5 = [(_BlastDoorLPARAssetProperties *)self->_properties accessibilityText];
  [v6 _bd_lp_encodeObjectIfNotNil:v5 forKey:@"accessibilityText"];
}

- (_BlastDoorLPARAsset)initWithCoder:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _BlastDoorLPARAsset;
  v5 = [(_BlastDoorLPARAsset *)&v16 init];
  if (v5)
  {
    v6 = [v4 _bd_lp_strictlyDecodeNSDataForKey:@"data"];
    data = v5->_data;
    v5->_data = v6;

    v8 = [v4 _bd_lp_strictlyDecodeNSStringForKey:@"MIMEType"];
    MIMEType = v5->_MIMEType;
    v5->_MIMEType = v8;

    v10 = objc_alloc_init(_BlastDoorLPARAssetProperties);
    properties = v5->_properties;
    v5->_properties = v10;

    v12 = [v4 _bd_lp_strictlyDecodeNSStringForKey:@"accessibilityText"];
    [(_BlastDoorLPARAssetProperties *)v5->_properties setAccessibilityText:v12];

    v13 = v5;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _BlastDoorLPARAsset;
  if ([(_BlastDoorLPARAsset *)&v13 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
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