@interface HMDCameraRecordingVideoAttributes
- (BOOL)_parseFromTLVData;
- (HMDCameraRecordingVideoAttributes)initWithCoder:(id)a3;
- (HMDCameraRecordingVideoAttributes)initWithImageWidth:(id)a3 imageHeight:(id)a4 frameRate:(id)a5;
- (HMDCameraRecordingVideoAttributes)initWithResolution:(int64_t)a3 frameRate:(id)a4;
- (NSData)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDCameraRecordingVideoAttributes

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraRecordingVideoAttributes *)self imageWidth];
  [v4 encodeObject:v5 forKey:@"kVideoAttributesImageWidth"];

  v6 = [(HMDCameraRecordingVideoAttributes *)self imageHeight];
  [v4 encodeObject:v6 forKey:@"kVideoAttributesImageHeight"];

  v7 = [(HMDCameraRecordingVideoAttributes *)self frameRate];
  [v4 encodeObject:v7 forKey:@"kVideoAttributesFrameRate"];
}

- (HMDCameraRecordingVideoAttributes)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HMDCameraRecordingVideoAttributes;
  v5 = [(HMDCameraRecordingVideoAttributes *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kVideoAttributesImageWidth"];
    imageWidth = v5->_imageWidth;
    v5->_imageWidth = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kVideoAttributesImageHeight"];
    imageHeight = v5->_imageHeight;
    v5->_imageHeight = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kVideoAttributesFrameRate"];
    frameRate = v5->_frameRate;
    v5->_frameRate = v10;
  }

  return v5;
}

- (void)description:(id)a3 indent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HAPTLVBase *)self tlvDatablob];
  [v7 appendFormat:@"\n%@tlvDatablob = %@ ", v6, v8];

  v9 = [(HMDCameraRecordingVideoAttributes *)self imageWidth];
  [v7 appendFormat:@"\n%@imageWidth = %@ ", v6, v9];

  v10 = [(HMDCameraRecordingVideoAttributes *)self imageHeight];
  [v7 appendFormat:@"\n%@imageHeight = %@", v6, v10];

  v11 = [(HMDCameraRecordingVideoAttributes *)self frameRate];
  [v7 appendFormat:@"\n%@frameRate = %@", v6, v11];
}

- (NSData)tlvData
{
  v3 = [MEMORY[0x277CFEC80] creator];
  v4 = [(HMDCameraRecordingVideoAttributes *)self imageWidth];
  [v3 addTLV:1 length:2 number:v4];

  v5 = [(HMDCameraRecordingVideoAttributes *)self imageHeight];
  [v3 addTLV:2 length:2 number:v5];

  v6 = [(HMDCameraRecordingVideoAttributes *)self frameRate];
  [v3 addTLV:3 length:1 number:v6];

  v7 = [v3 serialize];

  return v7;
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
    v8 = [v3 field];
    imageWidth = self->_imageWidth;
    self->_imageWidth = v8;

    v10 = [v4 field];
    imageHeight = self->_imageHeight;
    self->_imageHeight = v10;

    v12 = [v5 field];
    frameRate = self->_frameRate;
    self->_frameRate = v12;

    translateResolutionWidthHeight(self->_imageWidth, self->_imageHeight, &self->_resolution);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (HMDCameraRecordingVideoAttributes)initWithImageWidth:(id)a3 imageHeight:(id)a4 frameRate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = HMDCameraRecordingVideoAttributes;
  v12 = [(HMDCameraRecordingVideoAttributes *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_imageWidth, a3);
    objc_storeStrong(&v13->_imageHeight, a4);
    v15 = 0;
    translateResolutionWidthHeight(v9, v10, &v15);
    v13->_resolution = v15;
    objc_storeStrong(&v13->_frameRate, a5);
  }

  return v13;
}

- (HMDCameraRecordingVideoAttributes)initWithResolution:(int64_t)a3 frameRate:(id)a4
{
  v7 = a4;
  v16.receiver = self;
  v16.super_class = HMDCameraRecordingVideoAttributes;
  v8 = [(HMDCameraRecordingVideoAttributes *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v8->_resolution = a3;
    objc_storeStrong(&v8->_frameRate, a4);
    v10 = a3 - 1;
    if ((a3 - 1) > 0x14)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v11 = qword_27972D958[v10];
      v12 = qword_27972DA00[v10];
    }

    imageWidth = v9->_imageWidth;
    v9->_imageWidth = v11;

    imageHeight = v9->_imageHeight;
    v9->_imageHeight = v12;
  }

  return v9;
}

@end