@interface HMDCameraRecordingH264Profile
+ (id)arrayWithProfiles:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HMDCameraRecordingH264Profile)initWithCoder:(id)a3;
- (HMDCameraRecordingH264Profile)initWithH264Profile:(int64_t)a3;
- (HMDCameraRecordingH264Profile)initWithTLVData:(id)a3;
- (id)description;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDCameraRecordingH264Profile

- (HMDCameraRecordingH264Profile)initWithH264Profile:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMDCameraRecordingH264Profile;
  result = [(HMDCameraRecordingH264Profile *)&v5 init];
  if (result)
  {
    result->_h264Profile = a3;
  }

  return result;
}

- (HMDCameraRecordingH264Profile)initWithTLVData:(id)a3
{
  v6.receiver = self;
  v6.super_class = HMDCameraRecordingH264Profile;
  v3 = [(HAPNumberParser *)&v6 initWithTLVData:a3];
  v4 = v3;
  if (v3)
  {
    v3->_h264Profile = [(HAPNumberParser *)v3 decodedNumber];
  }

  return v4;
}

- (void)description:(id)a3 indent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = HMDCameraRecordingH264ProfileTypeAsString([(HMDCameraRecordingH264Profile *)self h264Profile]);
  [v7 appendFormat:@"\n%@ h264Profile = %@", v6, v8];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = HMDCameraRecordingH264ProfileTypeAsString([(HMDCameraRecordingH264Profile *)self h264Profile]);
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
      v5 = [(HMDCameraRecordingH264Profile *)self h264Profile];
      v6 = v5 == [(HMDCameraRecordingH264Profile *)v4 h264Profile];
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
  v5 = [(HMDCameraRecordingH264Profile *)self h264Profile];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%s", "HMDCameraRecordingH264Profile", "h264Profile"];
  [v4 encodeInt32:v5 forKey:v6];
}

- (HMDCameraRecordingH264Profile)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HMDCameraRecordingH264Profile;
  v5 = [(HMDCameraRecordingH264Profile *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%s", "HMDCameraRecordingH264Profile", "h264Profile"];
    v5->_h264Profile = [v4 decodeInt32ForKey:v6];
  }

  return v5;
}

+ (id)arrayWithProfiles:(id)a3
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
        v11 = [HMDCameraRecordingH264Profile alloc];
        v12 = -[HMDCameraRecordingH264Profile initWithH264Profile:](v11, "initWithH264Profile:", [v10 integerValue]);
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