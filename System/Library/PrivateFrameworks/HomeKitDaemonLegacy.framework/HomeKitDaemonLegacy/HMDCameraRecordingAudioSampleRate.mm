@interface HMDCameraRecordingAudioSampleRate
+ (id)arrayWithAudioSampleRates:(id)rates;
- (BOOL)isEqual:(id)equal;
- (HMDCameraRecordingAudioSampleRate)initWithCoder:(id)coder;
- (HMDCameraRecordingAudioSampleRate)initWithSampleRate:(int64_t)rate;
- (HMDCameraRecordingAudioSampleRate)initWithTLVData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDCameraRecordingAudioSampleRate

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMDCameraRecordingAudioSampleRate allocWithZone:zone];
  type = [(HMDCameraRecordingAudioSampleRate *)self type];

  return [(HMDCameraRecordingAudioSampleRate *)v4 initWithSampleRate:type];
}

- (HMDCameraRecordingAudioSampleRate)initWithSampleRate:(int64_t)rate
{
  v5.receiver = self;
  v5.super_class = HMDCameraRecordingAudioSampleRate;
  result = [(HMDCameraRecordingAudioSampleRate *)&v5 init];
  if (result)
  {
    result->_type = rate;
  }

  return result;
}

- (HMDCameraRecordingAudioSampleRate)initWithTLVData:(id)data
{
  v6.receiver = self;
  v6.super_class = HMDCameraRecordingAudioSampleRate;
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
  v8 = HMDCameraRecordingAudioSampleRateTypeAsString([(HMDCameraRecordingAudioSampleRate *)self type]);
  [descriptionCopy appendFormat:@"\n%@ type = %@", indentCopy, v8];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = HMDCameraRecordingAudioSampleRateTypeAsString([(HMDCameraRecordingAudioSampleRate *)self type]);
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
      type = [(HMDCameraRecordingAudioSampleRate *)self type];
      v6 = type == [(HMDCameraRecordingAudioSampleRate *)equalCopy type];
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
  type = [(HMDCameraRecordingAudioSampleRate *)self type];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%s", "HMDCameraRecordingAudioSampleRate", "type"];
  [coderCopy encodeInt32:type forKey:v6];
}

- (HMDCameraRecordingAudioSampleRate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = HMDCameraRecordingAudioSampleRate;
  v5 = [(HMDCameraRecordingAudioSampleRate *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%s", "HMDCameraRecordingAudioSampleRate", "type"];
    v5->_type = [coderCopy decodeInt32ForKey:v6];
  }

  return v5;
}

+ (id)arrayWithAudioSampleRates:(id)rates
{
  v20 = *MEMORY[0x277D85DE8];
  ratesCopy = rates;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(ratesCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = ratesCopy;
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
        v11 = [HMDCameraRecordingAudioSampleRate alloc];
        v12 = -[HMDCameraRecordingAudioSampleRate initWithSampleRate:](v11, "initWithSampleRate:", [v10 integerValue]);
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