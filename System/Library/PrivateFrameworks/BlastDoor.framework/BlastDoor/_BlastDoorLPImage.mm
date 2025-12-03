@interface _BlastDoorLPImage
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPImage)init;
- (_BlastDoorLPImage)initWithCoder:(id)coder;
- (_BlastDoorLPImageProperties)properties;
- (id)_initWithImage:(id)image;
- (id)_initWithImage:(id)image properties:(id)properties;
- (unint64_t)_encodedSize;
- (void)encodeWithCoder:(id)coder;
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

- (id)_initWithImage:(id)image
{
  v15 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  if (imageCopy && (v14.receiver = self, v14.super_class = _BlastDoorLPImage, (self = [(_BlastDoorLPImage *)&v14 init]) != 0))
  {
    v5 = [imageCopy[1] copy];
    data = self->_data;
    self->_data = v5;

    v7 = [imageCopy[2] copy];
    MIMEType = self->_MIMEType;
    self->_MIMEType = v7;

    objc_storeStrong(&self->_fileURL, imageCopy[3]);
    v9 = [imageCopy[4] copy];
    properties = self->_properties;
    self->_properties = v9;

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (id)_initWithImage:(id)image properties:(id)properties
{
  propertiesCopy = properties;
  v8 = [(_BlastDoorLPImage *)self _initWithImage:image];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 4, properties);
    v10 = v9;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  v14 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = _BlastDoorLPImage;
  if ([(_BlastDoorLPImage *)&v13 isEqual:equalCopy])
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

- (_BlastDoorLPImage)initWithCoder:(id)coder
{
  v19 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = _BlastDoorLPImage;
  v5 = [(_BlastDoorLPImage *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy _bd_lp_strictlyDecodeNSDataForKey:@"data"];
    data = v5->_data;
    v5->_data = v6;

    v8 = [coderCopy _bd_lp_strictlyDecodeNSStringForKey:@"MIMEType"];
    MIMEType = v5->_MIMEType;
    v5->_MIMEType = v8;

    v10 = objc_alloc_init(_BlastDoorLPImageProperties);
    properties = v5->_properties;
    v5->_properties = v10;

    v12 = [coderCopy _bd_lp_strictlyDecodeNSStringForKey:@"accessibilityText"];
    [(_BlastDoorLPImageProperties *)v5->_properties setAccessibilityText:v12];

    v13 = [coderCopy _bd_lp_strictlyDecodeColorForKey:@"overlaidTextColor"];
    [(_BlastDoorLPImageProperties *)v5->_properties setOverlaidTextColor:v13];

    v14 = [coderCopy _bd_lp_strictlyDecodeColorForKey:@"dominantColor"];
    [(_BlastDoorLPImageProperties *)v5->_properties setDominantColor:v14];

    -[_BlastDoorLPImageProperties setType:](v5->_properties, "setType:", [coderCopy decodeIntegerForKey:@"imageType"]);
    if ([(_BlastDoorLPImageProperties *)v5->_properties type]>= 8)
    {
      [(_BlastDoorLPImageProperties *)v5->_properties setType:0];
    }

    v15 = v5;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([(_BlastDoorLPImage *)self _shouldEncodeData])
  {
    [coderCopy _bd_lp_encodeObjectIfNotNil:self->_data forKey:@"data"];
  }

  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_MIMEType forKey:@"MIMEType"];
  accessibilityText = [(_BlastDoorLPImageProperties *)self->_properties accessibilityText];
  [coderCopy _bd_lp_encodeObjectIfNotNil:accessibilityText forKey:@"accessibilityText"];

  overlaidTextColor = [(_BlastDoorLPImageProperties *)self->_properties overlaidTextColor];
  [coderCopy _bd_lp_encodeColorIfNotNil:overlaidTextColor forKey:@"overlaidTextColor"];

  dominantColor = [(_BlastDoorLPImageProperties *)self->_properties dominantColor];
  [coderCopy _bd_lp_encodeColorIfNotNil:dominantColor forKey:@"dominantColor"];

  [coderCopy encodeInteger:-[_BlastDoorLPImageProperties type](self->_properties forKey:{"type"), @"imageType"}];
}

- (_BlastDoorLPImageProperties)properties
{
  v2 = [(_BlastDoorLPImageProperties *)self->_properties copy];

  return v2;
}

- (unint64_t)_encodedSize
{
  data = [(_BlastDoorLPImage *)self data];
  v3 = [data length];

  return v3;
}

@end