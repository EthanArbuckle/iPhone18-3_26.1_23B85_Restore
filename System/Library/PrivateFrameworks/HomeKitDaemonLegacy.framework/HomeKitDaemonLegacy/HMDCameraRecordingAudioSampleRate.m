@interface HMDCameraRecordingAudioSampleRate
+ (id)arrayWithAudioSampleRates:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HMDCameraRecordingAudioSampleRate)initWithCoder:(id)a3;
- (HMDCameraRecordingAudioSampleRate)initWithSampleRate:(int64_t)a3;
- (HMDCameraRecordingAudioSampleRate)initWithTLVData:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDCameraRecordingAudioSampleRate

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMDCameraRecordingAudioSampleRate allocWithZone:a3];
  v5 = [(HMDCameraRecordingAudioSampleRate *)self type];

  return [(HMDCameraRecordingAudioSampleRate *)v4 initWithSampleRate:v5];
}

- (HMDCameraRecordingAudioSampleRate)initWithSampleRate:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMDCameraRecordingAudioSampleRate;
  result = [(HMDCameraRecordingAudioSampleRate *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (HMDCameraRecordingAudioSampleRate)initWithTLVData:(id)a3
{
  v6.receiver = self;
  v6.super_class = HMDCameraRecordingAudioSampleRate;
  v3 = [(HAPNumberParser *)&v6 initWithTLVData:a3];
  v4 = v3;
  if (v3)
  {
    v3->_type = [(HAPNumberParser *)v3 decodedNumber];
  }

  return v4;
}

- (void)description:(id)a3 indent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = HMDCameraRecordingAudioSampleRateTypeAsString([(HMDCameraRecordingAudioSampleRate *)self type]);
  [v7 appendFormat:@"\n%@ type = %@", v6, v8];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = HMDCameraRecordingAudioSampleRateTypeAsString([(HMDCameraRecordingAudioSampleRate *)self type]);
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(HMDCameraRecordingAudioSampleRate *)self type];
      v6 = v5 == [(HMDCameraRecordingAudioSampleRate *)v4 type];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraRecordingAudioSampleRate *)self type];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%s", "HMDCameraRecordingAudioSampleRate", "type"];
  [v4 encodeInt32:v5 forKey:v6];
}

- (HMDCameraRecordingAudioSampleRate)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HMDCameraRecordingAudioSampleRate;
  v5 = [(HMDCameraRecordingAudioSampleRate *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%s", "HMDCameraRecordingAudioSampleRate", "type"];
    v5->_type = [v4 decodeInt32ForKey:v6];
  }

  return v5;
}

+ (id)arrayWithAudioSampleRates:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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