@interface HMDCameraRecordingVideoCodec
+ (id)arrayWithCodecTypes:(id)types;
- (BOOL)isEqual:(id)equal;
- (HMDCameraRecordingVideoCodec)initWithCodec:(int64_t)codec;
- (HMDCameraRecordingVideoCodec)initWithCoder:(id)coder;
- (HMDCameraRecordingVideoCodec)initWithTLVData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDCameraRecordingVideoCodec

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMDCameraRecordingVideoCodec allocWithZone:zone];
  type = [(HMDCameraRecordingVideoCodec *)self type];

  return [(HMDCameraRecordingVideoCodec *)v4 initWithCodec:type];
}

- (HMDCameraRecordingVideoCodec)initWithCodec:(int64_t)codec
{
  v5.receiver = self;
  v5.super_class = HMDCameraRecordingVideoCodec;
  result = [(HMDCameraRecordingVideoCodec *)&v5 init];
  if (result)
  {
    result->_type = codec;
  }

  return result;
}

- (HMDCameraRecordingVideoCodec)initWithTLVData:(id)data
{
  v6.receiver = self;
  v6.super_class = HMDCameraRecordingVideoCodec;
  v3 = [(HAPNumberParser *)&v6 initWithTLVData:data];
  v4 = v3;
  if (v3)
  {
    v3->_type = [(HAPNumberParser *)v3 decodedNumber];
  }

  return v4;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  v8 = HMDCameraRecordingVideoCodecTypeAsString([(HMDCameraRecordingVideoCodec *)self type]);
  [descriptionCopy appendFormat:@"\n%@ type = %@", indentCopy, v8];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = HMDCameraRecordingVideoCodecTypeAsString([(HMDCameraRecordingVideoCodec *)self type]);
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
      type = [(HMDCameraRecordingVideoCodec *)self type];
      v6 = type == [(HMDCameraRecordingVideoCodec *)equalCopy type];
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
  type = [(HMDCameraRecordingVideoCodec *)self type];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%s", "HMDCameraRecordingVideoCodec", "type"];
  [coderCopy encodeInt32:type forKey:v6];
}

- (HMDCameraRecordingVideoCodec)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = HMDCameraRecordingVideoCodec;
  v5 = [(HMDCameraRecordingVideoCodec *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%s", "HMDCameraRecordingVideoCodec", "type"];
    v5->_type = [coderCopy decodeInt32ForKey:v6];
  }

  return v5;
}

+ (id)arrayWithCodecTypes:(id)types
{
  v20 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(typesCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = typesCopy;
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
        v11 = [HMDCameraRecordingVideoCodec alloc];
        v12 = -[HMDCameraRecordingVideoCodec initWithCodec:](v11, "initWithCodec:", [v10 integerValue]);
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