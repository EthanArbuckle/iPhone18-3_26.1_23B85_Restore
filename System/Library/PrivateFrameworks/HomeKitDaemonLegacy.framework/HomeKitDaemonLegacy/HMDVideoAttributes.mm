@interface HMDVideoAttributes
+ (BOOL)translateImageResolution:(id)resolution imageWidth:(id *)width imageHeight:(id *)height;
- (BOOL)_parseFromTLVData;
- (HMDVideoAttributes)initWithCoder:(id)coder;
- (HMDVideoAttributes)initWithResolution:(id)resolution framerate:(id)framerate;
- (NSData)tlvData;
- (id)translateImageWidth:(id)width imageHeight:(id)height;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDVideoAttributes

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  imageWidth = [(HMDVideoAttributes *)self imageWidth];
  [coderCopy encodeObject:imageWidth forKey:@"kVideoAttributes__ImageWidth"];

  imageHeight = [(HMDVideoAttributes *)self imageHeight];
  [coderCopy encodeObject:imageHeight forKey:@"kVideoAttributes__ImageHeight"];

  framerate = [(HMDVideoAttributes *)self framerate];
  [coderCopy encodeObject:framerate forKey:@"kVideoAttributes__FrameRate"];
}

- (HMDVideoAttributes)initWithCoder:(id)coder
{
  v28[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = HMDVideoAttributes;
  v5 = [(HMDVideoAttributes *)&v25 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v28[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kVideoAttributes__ImageWidth"];
    imageWidth = v5->_imageWidth;
    v5->_imageWidth = v9;

    v11 = MEMORY[0x277CBEB98];
    v27 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"kVideoAttributes__ImageHeight"];
    imageHeight = v5->_imageHeight;
    v5->_imageHeight = v14;

    v16 = [(HMDVideoAttributes *)v5 translateImageWidth:v5->_imageWidth imageHeight:v5->_imageHeight];
    videoResolution = v5->_videoResolution;
    v5->_videoResolution = v16;

    v18 = MEMORY[0x277CBEB98];
    v26 = objc_opt_class();
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    v20 = [v18 setWithArray:v19];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"kVideoAttributes__FrameRate"];
    framerate = v5->_framerate;
    v5->_framerate = v21;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  tlvDatablob = [(HAPTLVBase *)self tlvDatablob];
  [descriptionCopy appendFormat:@"\n %@ tlvDatablob = %@ ", indentCopy, tlvDatablob];

  imageWidth = [(HMDVideoAttributes *)self imageWidth];
  [descriptionCopy appendFormat:@"\n %@ imageWidth = %@ ", indentCopy, imageWidth];

  imageHeight = [(HMDVideoAttributes *)self imageHeight];
  [descriptionCopy appendFormat:@"\n %@ imageHeight = %@ ", indentCopy, imageHeight];

  videoResolution = [(HMDVideoAttributes *)self videoResolution];
  v12 = [videoResolution descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n %@ resolution = %@ ", indentCopy, v12];

  framerate = [(HMDVideoAttributes *)self framerate];
  [descriptionCopy appendFormat:@"\n %@ framerate = %@ ", indentCopy, framerate];
}

- (NSData)tlvData
{
  creator = [MEMORY[0x277CFEC80] creator];
  imageWidth = [(HMDVideoAttributes *)self imageWidth];
  [creator addTLV:1 length:2 number:imageWidth];

  imageHeight = [(HMDVideoAttributes *)self imageHeight];
  [creator addTLV:2 length:2 number:imageHeight];

  framerate = [(HMDVideoAttributes *)self framerate];
  [creator addTLV:3 number:framerate];

  serialize = [creator serialize];

  return serialize;
}

- (BOOL)_parseFromTLVData
{
  v18[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEC08] wrappertlv:1 name:@"kVideoAttributes__ImageWidth"];
  v4 = [MEMORY[0x277CFEC08] wrappertlv:2 name:@"kVideoAttributes__ImageHeight"];
  v5 = [MEMORY[0x277CFEC08] wrappertlv:3 name:@"kVideoAttributes__FrameRate"];
  v18[0] = v3;
  v18[1] = v4;
  v18[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v7 = [(HAPTLVBase *)self _parse:v6];
  if (v7)
  {
    field = [v3 field];
    imageWidth = self->_imageWidth;
    self->_imageWidth = field;

    field2 = [v4 field];
    imageHeight = self->_imageHeight;
    self->_imageHeight = field2;

    v12 = [(HMDVideoAttributes *)self translateImageWidth:self->_imageWidth imageHeight:self->_imageHeight];
    videoResolution = self->_videoResolution;
    self->_videoResolution = v12;

    field3 = [v5 field];
    framerate = self->_framerate;
    self->_framerate = field3;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)translateImageWidth:(id)width imageHeight:(id)height
{
  widthCopy = width;
  heightCopy = height;
  if ([widthCopy isEqualToNumber:&unk_286627478] && (objc_msgSend(heightCopy, "isEqualToNumber:", &unk_286627490) & 1) != 0)
  {
    v7 = 1;
LABEL_88:
    v8 = [[HMDVideoResolution alloc] initWithResolution:v7];
    goto LABEL_89;
  }

  if ([widthCopy isEqualToNumber:&unk_2866274A8] && (objc_msgSend(heightCopy, "isEqualToNumber:", &unk_2866274C0) & 1) != 0)
  {
    v7 = 2;
    goto LABEL_88;
  }

  if ([widthCopy isEqualToNumber:&unk_2866274D8] && (objc_msgSend(heightCopy, "isEqualToNumber:", &unk_2866274A8) & 1) != 0)
  {
    v7 = 3;
    goto LABEL_88;
  }

  if ([widthCopy isEqualToNumber:&unk_2866274F0] && (objc_msgSend(heightCopy, "isEqualToNumber:", &unk_286627508) & 1) != 0)
  {
    v7 = 4;
    goto LABEL_88;
  }

  if ([widthCopy isEqualToNumber:&unk_286627520] && (objc_msgSend(heightCopy, "isEqualToNumber:", &unk_286627538) & 1) != 0)
  {
    v7 = 5;
    goto LABEL_88;
  }

  if ([widthCopy isEqualToNumber:&unk_286627478] && (objc_msgSend(heightCopy, "isEqualToNumber:", &unk_286627550) & 1) != 0)
  {
    v7 = 6;
    goto LABEL_88;
  }

  if ([widthCopy isEqualToNumber:&unk_2866274A8] && (objc_msgSend(heightCopy, "isEqualToNumber:", &unk_286627568) & 1) != 0)
  {
    v7 = 7;
    goto LABEL_88;
  }

  if ([widthCopy isEqualToNumber:&unk_2866274D8] && (objc_msgSend(heightCopy, "isEqualToNumber:", &unk_2866274C0) & 1) != 0)
  {
    v7 = 8;
    goto LABEL_88;
  }

  if ([widthCopy isEqualToNumber:&unk_286627520] && (objc_msgSend(heightCopy, "isEqualToNumber:", &unk_286627580) & 1) != 0)
  {
    v7 = 9;
    goto LABEL_88;
  }

  if ([widthCopy isEqualToNumber:&unk_286627598] && (objc_msgSend(heightCopy, "isEqualToNumber:", &unk_2866275B0) & 1) != 0)
  {
    v7 = 10;
    goto LABEL_88;
  }

  if ([widthCopy isEqualToNumber:&unk_286627568] && (objc_msgSend(heightCopy, "isEqualToNumber:", &unk_2866274A8) & 1) != 0)
  {
    v7 = 11;
    goto LABEL_88;
  }

  if ([widthCopy isEqualToNumber:&unk_2866274C0] && (objc_msgSend(heightCopy, "isEqualToNumber:", &unk_2866274D8) & 1) != 0)
  {
    v7 = 12;
    goto LABEL_88;
  }

  if ([widthCopy isEqualToNumber:&unk_286627580] && (objc_msgSend(heightCopy, "isEqualToNumber:", &unk_286627520) & 1) != 0)
  {
    v7 = 13;
    goto LABEL_88;
  }

  if ([widthCopy isEqualToNumber:&unk_2866275B0] && (objc_msgSend(heightCopy, "isEqualToNumber:", &unk_286627598) & 1) != 0)
  {
    v7 = 14;
    goto LABEL_88;
  }

  if ([widthCopy isEqualToNumber:&unk_2866275C8] && (objc_msgSend(heightCopy, "isEqualToNumber:", &unk_2866275E0) & 1) != 0)
  {
    v7 = 15;
    goto LABEL_88;
  }

  if ([widthCopy isEqualToNumber:&unk_2866275F8] && (objc_msgSend(heightCopy, "isEqualToNumber:", &unk_2866275B0) & 1) != 0)
  {
    v7 = 16;
    goto LABEL_88;
  }

  if ([widthCopy isEqualToNumber:&unk_2866275E0] && (objc_msgSend(heightCopy, "isEqualToNumber:", &unk_2866275C8) & 1) != 0)
  {
    v7 = 17;
    goto LABEL_88;
  }

  if ([widthCopy isEqualToNumber:&unk_2866275B0] && (objc_msgSend(heightCopy, "isEqualToNumber:", &unk_2866275F8) & 1) != 0)
  {
    v7 = 18;
    goto LABEL_88;
  }

  if ([widthCopy isEqualToNumber:&unk_286627538] && (objc_msgSend(heightCopy, "isEqualToNumber:", &unk_286627520) & 1) != 0)
  {
    v7 = 19;
    goto LABEL_88;
  }

  if ([widthCopy isEqualToNumber:&unk_286627508] && (objc_msgSend(heightCopy, "isEqualToNumber:", &unk_2866274F0) & 1) != 0)
  {
    v7 = 20;
    goto LABEL_88;
  }

  if ([widthCopy isEqualToNumber:&unk_2866274A8] && (objc_msgSend(heightCopy, "isEqualToNumber:", &unk_2866274D8) & 1) != 0)
  {
    v7 = 21;
    goto LABEL_88;
  }

  if ([widthCopy isEqualToNumber:&unk_2866274C0] && (objc_msgSend(heightCopy, "isEqualToNumber:", &unk_2866274A8) & 1) != 0)
  {
    v7 = 22;
    goto LABEL_88;
  }

  if ([widthCopy isEqualToNumber:&unk_286627490] && (objc_msgSend(heightCopy, "isEqualToNumber:", &unk_286627478) & 1) != 0)
  {
    v7 = 23;
    goto LABEL_88;
  }

  if ([widthCopy isEqualToNumber:&unk_286627610] && (objc_msgSend(heightCopy, "isEqualToNumber:", &unk_286627610) & 1) != 0)
  {
    v7 = 24;
    goto LABEL_88;
  }

  if ([widthCopy isEqualToNumber:&unk_2866275B0] && (objc_msgSend(heightCopy, "isEqualToNumber:", &unk_2866275B0) & 1) != 0)
  {
    v7 = 25;
    goto LABEL_88;
  }

  if ([widthCopy isEqualToNumber:&unk_286627580] && (objc_msgSend(heightCopy, "isEqualToNumber:", &unk_286627580) & 1) != 0)
  {
    v7 = 26;
    goto LABEL_88;
  }

  if ([widthCopy isEqualToNumber:&unk_286627478] && (objc_msgSend(heightCopy, "isEqualToNumber:", &unk_286627478) & 1) != 0)
  {
    v7 = 27;
    goto LABEL_88;
  }

  if ([widthCopy isEqualToNumber:&unk_286627628] && (objc_msgSend(heightCopy, "isEqualToNumber:", &unk_286627640) & 1) != 0)
  {
    v7 = 28;
    goto LABEL_88;
  }

  if ([widthCopy isEqualToNumber:&unk_286627640] && objc_msgSend(heightCopy, "isEqualToNumber:", &unk_286627628))
  {
    v7 = 29;
    goto LABEL_88;
  }

  v8 = 0;
LABEL_89:

  return v8;
}

- (HMDVideoAttributes)initWithResolution:(id)resolution framerate:(id)framerate
{
  resolutionCopy = resolution;
  framerateCopy = framerate;
  v23.receiver = self;
  v23.super_class = HMDVideoAttributes;
  v9 = [(HMDVideoAttributes *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_videoResolution, resolution);
    v21 = 0;
    v22 = 0;
    v11 = [HMDVideoAttributes translateImageResolution:resolutionCopy imageWidth:&v22 imageHeight:&v21];
    v12 = v22;
    v13 = v21;
    v14 = v13;
    if (!v11)
    {

      v19 = 0;
      goto LABEL_6;
    }

    imageWidth = v10->_imageWidth;
    v10->_imageWidth = v12;
    v16 = v12;

    imageHeight = v10->_imageHeight;
    v10->_imageHeight = v14;
    v18 = v14;

    objc_storeStrong(&v10->_framerate, framerate);
  }

  v19 = v10;
LABEL_6:

  return v19;
}

+ (BOOL)translateImageResolution:(id)resolution imageWidth:(id *)width imageHeight:(id *)height
{
  v7 = [resolution resolutionType] - 1;
  if (v7 <= 0x1C)
  {
    v8 = qword_279721808[v7];
    *width = qword_279721720[v7];
    *height = v8;
  }

  return v7 < 0x1D;
}

@end