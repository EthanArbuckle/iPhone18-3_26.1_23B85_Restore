@interface HMDCameraRecordingVideoAttributes
- (BOOL)_parseFromTLVData;
- (HMDCameraRecordingVideoAttributes)initWithCoder:(id)coder;
- (HMDCameraRecordingVideoAttributes)initWithImageWidth:(id)width imageHeight:(id)height frameRate:(id)rate;
- (HMDCameraRecordingVideoAttributes)initWithResolution:(int64_t)resolution frameRate:(id)rate;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDCameraRecordingVideoAttributes

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  imageWidth = [(HMDCameraRecordingVideoAttributes *)self imageWidth];
  [coderCopy encodeObject:imageWidth forKey:@"kVideoAttributesImageWidth"];

  imageHeight = [(HMDCameraRecordingVideoAttributes *)self imageHeight];
  [coderCopy encodeObject:imageHeight forKey:@"kVideoAttributesImageHeight"];

  frameRate = [(HMDCameraRecordingVideoAttributes *)self frameRate];
  [coderCopy encodeObject:frameRate forKey:@"kVideoAttributesFrameRate"];
}

- (HMDCameraRecordingVideoAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HMDCameraRecordingVideoAttributes;
  v5 = [(HMDCameraRecordingVideoAttributes *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kVideoAttributesImageWidth"];
    imageWidth = v5->_imageWidth;
    v5->_imageWidth = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kVideoAttributesImageHeight"];
    imageHeight = v5->_imageHeight;
    v5->_imageHeight = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kVideoAttributesFrameRate"];
    frameRate = v5->_frameRate;
    v5->_frameRate = v10;
  }

  return v5;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  tlvDatablob = [(HAPTLVBase *)self tlvDatablob];
  [descriptionCopy appendFormat:@"\n%@tlvDatablob = %@ ", indentCopy, tlvDatablob];

  imageWidth = [(HMDCameraRecordingVideoAttributes *)self imageWidth];
  [descriptionCopy appendFormat:@"\n%@imageWidth = %@ ", indentCopy, imageWidth];

  imageHeight = [(HMDCameraRecordingVideoAttributes *)self imageHeight];
  [descriptionCopy appendFormat:@"\n%@imageHeight = %@", indentCopy, imageHeight];

  frameRate = [(HMDCameraRecordingVideoAttributes *)self frameRate];
  [descriptionCopy appendFormat:@"\n%@frameRate = %@", indentCopy, frameRate];
}

- (NSData)tlvData
{
  creator = [MEMORY[0x277CFEC80] creator];
  imageWidth = [(HMDCameraRecordingVideoAttributes *)self imageWidth];
  [creator addTLV:1 length:2 number:imageWidth];

  imageHeight = [(HMDCameraRecordingVideoAttributes *)self imageHeight];
  [creator addTLV:2 length:2 number:imageHeight];

  frameRate = [(HMDCameraRecordingVideoAttributes *)self frameRate];
  [creator addTLV:3 length:1 number:frameRate];

  serialize = [creator serialize];

  return serialize;
}

- (BOOL)_parseFromTLVData
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEC08] wrappertlv:1 name:@"kVideoAttributesImageWidth"];
  v4 = [MEMORY[0x277CFEC08] wrappertlv:2 name:@"kVideoAttributesImageHeight"];
  v5 = [MEMORY[0x277CFEC08] wrappertlv:3 name:@"kVideoAttributesFrameRate"];
  v16[0] = v3;
  v16[1] = v4;
  v16[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  v7 = [(HAPTLVBase *)self _parse:v6];
  if (v7)
  {
    field = [v3 field];
    imageWidth = self->_imageWidth;
    self->_imageWidth = field;

    field2 = [v4 field];
    imageHeight = self->_imageHeight;
    self->_imageHeight = field2;

    field3 = [v5 field];
    frameRate = self->_frameRate;
    self->_frameRate = field3;

    translateResolutionWidthHeight(self->_imageWidth, self->_imageHeight, &self->_resolution);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (HMDCameraRecordingVideoAttributes)initWithImageWidth:(id)width imageHeight:(id)height frameRate:(id)rate
{
  widthCopy = width;
  heightCopy = height;
  rateCopy = rate;
  v16.receiver = self;
  v16.super_class = HMDCameraRecordingVideoAttributes;
  v12 = [(HMDCameraRecordingVideoAttributes *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_imageWidth, width);
    objc_storeStrong(&v13->_imageHeight, height);
    v15 = 0;
    translateResolutionWidthHeight(widthCopy, heightCopy, &v15);
    v13->_resolution = v15;
    objc_storeStrong(&v13->_frameRate, rate);
  }

  return v13;
}

- (HMDCameraRecordingVideoAttributes)initWithResolution:(int64_t)resolution frameRate:(id)rate
{
  rateCopy = rate;
  v16.receiver = self;
  v16.super_class = HMDCameraRecordingVideoAttributes;
  v8 = [(HMDCameraRecordingVideoAttributes *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v8->_resolution = resolution;
    objc_storeStrong(&v8->_frameRate, rate);
    v10 = resolution - 1;
    if ((resolution - 1) > 0x14)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v11 = qword_27867FF30[v10];
      v12 = qword_27867FFD8[v10];
    }

    imageWidth = v9->_imageWidth;
    v9->_imageWidth = v11;

    imageHeight = v9->_imageHeight;
    v9->_imageHeight = v12;
  }

  return v9;
}

@end