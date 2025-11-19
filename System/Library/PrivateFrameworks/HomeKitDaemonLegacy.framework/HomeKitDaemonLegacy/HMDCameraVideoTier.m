@interface HMDCameraVideoTier
- (BOOL)isEqual:(id)a3;
- (HMDCameraVideoTier)initWithCoder:(id)a3;
- (HMDCameraVideoTier)initWithVideoResolution:(id)a3 framerate:(id)a4 minBitRate:(id)a5 maxBitRate:(id)a6 rtcpInterval:(id)a7;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDCameraVideoTier

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(HMDCameraVideoTier *)self videoResolution];
  [v9 encodeObject:v4 forKey:@"kVideoTierResolution"];

  v5 = [(HMDCameraVideoTier *)self maxBitRate];
  [v9 encodeObject:v5 forKey:@"kVideoTierMaxBitRate"];

  v6 = [(HMDCameraVideoTier *)self minBitRate];
  [v9 encodeObject:v6 forKey:@"kVideoTierMinBitRate"];

  v7 = [(HMDCameraVideoTier *)self rtcpInterval];
  [v9 encodeObject:v7 forKey:@"kVideoTierRTCPInterval"];

  v8 = [(HMDCameraVideoTier *)self framerate];
  [v9 encodeObject:v8 forKey:@"kVideoTierFramerate"];

  [v9 encodeInt:-[HMDCameraVideoTier quality](self forKey:{"quality"), @"kVideoTierQuality"}];
}

- (HMDCameraVideoTier)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = HMDCameraVideoTier;
  v5 = [(HMDCameraVideoTier *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kVideoTierResolution"];
    videoResolution = v5->_videoResolution;
    v5->_videoResolution = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kVideoTierMaxBitRate"];
    maxBitRate = v5->_maxBitRate;
    v5->_maxBitRate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kVideoTierMinBitRate"];
    minBitRate = v5->_minBitRate;
    v5->_minBitRate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kVideoTierRTCPInterval"];
    rtcpInterval = v5->_rtcpInterval;
    v5->_rtcpInterval = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kVideoTierFramerate"];
    framerate = v5->_framerate;
    v5->_framerate = v14;

    v5->_quality = [v4 decodeIntForKey:@"kVideoTierQuality"];
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(HMDCameraVideoTier *)self videoResolution];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HMDCameraVideoTier *)self videoResolution];
      v7 = [(HMDCameraVideoTier *)v5 videoResolution];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDCameraVideoTier *)self videoResolution];
  v5 = [(HMDCameraVideoTier *)self maxBitRate];
  v6 = [(HMDCameraVideoTier *)self minBitRate];
  v7 = [(HMDCameraVideoTier *)self rtcpInterval];
  v8 = [(HMDCameraVideoTier *)self framerate];
  v9 = [v3 stringWithFormat:@"Resolution %@, Max bitrate %@, Min bitrate %@, RTCP interval %@, Framerate %@, Quality %d", v4, v5, v6, v7, v8, -[HMDCameraVideoTier quality](self, "quality")];

  return v9;
}

- (HMDCameraVideoTier)initWithVideoResolution:(id)a3 framerate:(id)a4 minBitRate:(id)a5 maxBitRate:(id)a6 rtcpInterval:(id)a7
{
  v21 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = HMDCameraVideoTier;
  v17 = [(HMDCameraVideoTier *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_videoResolution, a3);
    objc_storeStrong(&v18->_maxBitRate, a6);
    objc_storeStrong(&v18->_minBitRate, a5);
    objc_storeStrong(&v18->_rtcpInterval, a7);
    objc_storeStrong(&v18->_framerate, a4);
    v19 = [(HMDCameraVideoTier *)v18 videoResolution];
    v18->_quality = +[HMDStreamingCapabilities qualityOfResolutionType:](HMDStreamingCapabilities, "qualityOfResolutionType:", [v19 resolutionType]);
  }

  return v18;
}

@end