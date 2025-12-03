@interface HMDVideoResolution
+ (id)arrayWithResolutions:(id)resolutions;
- (BOOL)isEqual:(id)equal;
- (HMDVideoResolution)initWithCoder:(id)coder;
- (HMDVideoResolution)initWithResolution:(unint64_t)resolution;
- (HMDVideoResolution)initWithTLVData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_extractWidthAndHeight;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDVideoResolution

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMDVideoResolution allocWithZone:zone];
  resolutionType = [(HMDVideoResolution *)self resolutionType];

  return [(HMDVideoResolution *)v4 initWithResolution:resolutionType];
}

- (void)_extractWidthAndHeight
{
  v8 = 0;
  v9 = 0;
  [HMDVideoAttributes translateImageResolution:self imageWidth:&v9 imageHeight:&v8];
  v3 = v9;
  v4 = v8;
  imageWidth = self->_imageWidth;
  self->_imageWidth = v3;
  v6 = v3;

  imageHeight = self->_imageHeight;
  self->_imageHeight = v4;
}

- (HMDVideoResolution)initWithResolution:(unint64_t)resolution
{
  v7.receiver = self;
  v7.super_class = HMDVideoResolution;
  v4 = [(HMDVideoResolution *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_resolutionType = resolution;
    [(HMDVideoResolution *)v4 _extractWidthAndHeight];
  }

  return v5;
}

- (HMDVideoResolution)initWithTLVData:(id)data
{
  v6.receiver = self;
  v6.super_class = HMDVideoResolution;
  v3 = [(HAPNumberParser *)&v6 initWithTLVData:data];
  v4 = v3;
  if (v3)
  {
    v3->_resolutionType = [(HAPNumberParser *)v3 decodedNumber];
    [(HMDVideoResolution *)v4 _extractWidthAndHeight];
  }

  return v4;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  v8 = HMDVideoResolutionTypeAsString([(HMDVideoResolution *)self resolutionType]);
  [descriptionCopy appendFormat:@"\n%@ resolutionType = %@", indentCopy, v8];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = HMDVideoResolutionTypeAsString([(HMDVideoResolution *)self resolutionType]);
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      resolutionType = [(HMDVideoResolution *)self resolutionType];
      v6 = resolutionType == [(HMDVideoResolution *)equalCopy resolutionType];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  resolutionType = [(HMDVideoResolution *)self resolutionType];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%s", "HMDVideoResolution", "resolutionType"];
  [coderCopy encodeInt32:resolutionType forKey:v6];
}

- (HMDVideoResolution)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = HMDVideoResolution;
  v5 = [(HMDVideoResolution *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%s", "HMDVideoResolution", "resolutionType"];
    v5->_resolutionType = [coderCopy decodeInt32ForKey:v6];
  }

  return v5;
}

+ (id)arrayWithResolutions:(id)resolutions
{
  v20 = *MEMORY[0x277D85DE8];
  resolutionsCopy = resolutions;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(resolutionsCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = resolutionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [HMDVideoResolution alloc];
        v12 = -[HMDVideoResolution initWithResolution:](v11, "initWithResolution:", [v10 unsignedIntegerValue]);
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

@end