@interface _BlastDoorLPImage
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPImage)init;
- (_BlastDoorLPImage)initWithCoder:(id)a3;
- (_BlastDoorLPImageProperties)properties;
- (id)_initWithImage:(id)a3;
- (id)_initWithImage:(id)a3 properties:(id)a4;
- (unint64_t)_encodedSize;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPImage

- (_BlastDoorLPImage)init
{
  v5 = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = _BlastDoorLPImage;
  result = [(_BlastDoorLPImage *)&v4 init];
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_initWithImage:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && (v14.receiver = self, v14.super_class = _BlastDoorLPImage, (self = [(_BlastDoorLPImage *)&v14 init]) != 0))
  {
    v5 = [v4[1] copy];
    data = self->_data;
    self->_data = v5;

    v7 = [v4[2] copy];
    MIMEType = self->_MIMEType;
    self->_MIMEType = v7;

    objc_storeStrong(&self->_fileURL, v4[3]);
    v9 = [v4[4] copy];
    properties = self->_properties;
    self->_properties = v9;

    self = self;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)_initWithImage:(id)a3 properties:(id)a4
{
  v7 = a4;
  v8 = [(_BlastDoorLPImage *)self _initWithImage:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 4, a4);
    v10 = v9;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _BlastDoorLPImage;
  if ([(_BlastDoorLPImage *)&v13 isEqual:v4])
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
      if (v7 | self->_data && ![v7 isEqual:?] || (v8 = v6[2], v8 | self->_MIMEType) && !objc_msgSend(v8, "isEqual:") || (v9 = v6[3], v9 | self->_fileURL) && !objc_msgSend(v9, "isEqual:"))
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

- (_BlastDoorLPImage)initWithCoder:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = _BlastDoorLPImage;
  v5 = [(_BlastDoorLPImage *)&v18 init];
  if (v5)
  {
    v6 = [v4 _bd_lp_strictlyDecodeNSDataForKey:@"data"];
    data = v5->_data;
    v5->_data = v6;

    v8 = [v4 _bd_lp_strictlyDecodeNSStringForKey:@"MIMEType"];
    MIMEType = v5->_MIMEType;
    v5->_MIMEType = v8;

    v10 = objc_alloc_init(_BlastDoorLPImageProperties);
    properties = v5->_properties;
    v5->_properties = v10;

    v12 = [v4 _bd_lp_strictlyDecodeNSStringForKey:@"accessibilityText"];
    [(_BlastDoorLPImageProperties *)v5->_properties setAccessibilityText:v12];

    v13 = [v4 _bd_lp_strictlyDecodeColorForKey:@"overlaidTextColor"];
    [(_BlastDoorLPImageProperties *)v5->_properties setOverlaidTextColor:v13];

    v14 = [v4 _bd_lp_strictlyDecodeColorForKey:@"dominantColor"];
    [(_BlastDoorLPImageProperties *)v5->_properties setDominantColor:v14];

    -[_BlastDoorLPImageProperties setType:](v5->_properties, "setType:", [v4 decodeIntegerForKey:@"imageType"]);
    if ([(_BlastDoorLPImageProperties *)v5->_properties type]>= 8)
    {
      [(_BlastDoorLPImageProperties *)v5->_properties setType:0];
    }

    v15 = v5;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  if ([(_BlastDoorLPImage *)self _shouldEncodeData])
  {
    [v7 _bd_lp_encodeObjectIfNotNil:self->_data forKey:@"data"];
  }

  [v7 _bd_lp_encodeObjectIfNotNil:self->_MIMEType forKey:@"MIMEType"];
  v4 = [(_BlastDoorLPImageProperties *)self->_properties accessibilityText];
  [v7 _bd_lp_encodeObjectIfNotNil:v4 forKey:@"accessibilityText"];

  v5 = [(_BlastDoorLPImageProperties *)self->_properties overlaidTextColor];
  [v7 _bd_lp_encodeColorIfNotNil:v5 forKey:@"overlaidTextColor"];

  v6 = [(_BlastDoorLPImageProperties *)self->_properties dominantColor];
  [v7 _bd_lp_encodeColorIfNotNil:v6 forKey:@"dominantColor"];

  [v7 encodeInteger:-[_BlastDoorLPImageProperties type](self->_properties forKey:{"type"), @"imageType"}];
}

- (_BlastDoorLPImageProperties)properties
{
  v2 = [(_BlastDoorLPImageProperties *)self->_properties copy];

  return v2;
}

- (unint64_t)_encodedSize
{
  v2 = [(_BlastDoorLPImage *)self data];
  v3 = [v2 length];

  return v3;
}

@end