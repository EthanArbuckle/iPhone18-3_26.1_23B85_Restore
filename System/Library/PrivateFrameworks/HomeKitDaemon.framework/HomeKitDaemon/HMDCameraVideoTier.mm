@interface HMDCameraVideoTier
- (BOOL)isEqual:(id)equal;
- (HMDCameraVideoTier)initWithCoder:(id)coder;
- (HMDCameraVideoTier)initWithVideoResolution:(id)resolution framerate:(id)framerate minBitRate:(id)rate maxBitRate:(id)bitRate rtcpInterval:(id)interval;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDCameraVideoTier

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  videoResolution = [(HMDCameraVideoTier *)self videoResolution];
  [coderCopy encodeObject:videoResolution forKey:@"kVideoTierResolution"];

  maxBitRate = [(HMDCameraVideoTier *)self maxBitRate];
  [coderCopy encodeObject:maxBitRate forKey:@"kVideoTierMaxBitRate"];

  minBitRate = [(HMDCameraVideoTier *)self minBitRate];
  [coderCopy encodeObject:minBitRate forKey:@"kVideoTierMinBitRate"];

  rtcpInterval = [(HMDCameraVideoTier *)self rtcpInterval];
  [coderCopy encodeObject:rtcpInterval forKey:@"kVideoTierRTCPInterval"];

  framerate = [(HMDCameraVideoTier *)self framerate];
  [coderCopy encodeObject:framerate forKey:@"kVideoTierFramerate"];

  [coderCopy encodeInt:-[HMDCameraVideoTier quality](self forKey:{"quality"), @"kVideoTierQuality"}];
}

- (HMDCameraVideoTier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = HMDCameraVideoTier;
  v5 = [(HMDCameraVideoTier *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kVideoTierResolution"];
    videoResolution = v5->_videoResolution;
    v5->_videoResolution = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kVideoTierMaxBitRate"];
    maxBitRate = v5->_maxBitRate;
    v5->_maxBitRate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kVideoTierMinBitRate"];
    minBitRate = v5->_minBitRate;
    v5->_minBitRate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kVideoTierRTCPInterval"];
    rtcpInterval = v5->_rtcpInterval;
    v5->_rtcpInterval = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kVideoTierFramerate"];
    framerate = v5->_framerate;
    v5->_framerate = v14;

    v5->_quality = [coderCopy decodeIntForKey:@"kVideoTierQuality"];
  }

  return v5;
}

- (unint64_t)hash
{
  videoResolution = [(HMDCameraVideoTier *)self videoResolution];
  v3 = [videoResolution hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      videoResolution = [(HMDCameraVideoTier *)self videoResolution];
      videoResolution2 = [(HMDCameraVideoTier *)v5 videoResolution];

      v8 = [videoResolution isEqual:videoResolution2];
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
  videoResolution = [(HMDCameraVideoTier *)self videoResolution];
  maxBitRate = [(HMDCameraVideoTier *)self maxBitRate];
  minBitRate = [(HMDCameraVideoTier *)self minBitRate];
  rtcpInterval = [(HMDCameraVideoTier *)self rtcpInterval];
  framerate = [(HMDCameraVideoTier *)self framerate];
  v9 = [v3 stringWithFormat:@"Resolution %@, Max bitrate %@, Min bitrate %@, RTCP interval %@, Framerate %@, Quality %d", videoResolution, maxBitRate, minBitRate, rtcpInterval, framerate, -[HMDCameraVideoTier quality](self, "quality")];

  return v9;
}

- (HMDCameraVideoTier)initWithVideoResolution:(id)resolution framerate:(id)framerate minBitRate:(id)rate maxBitRate:(id)bitRate rtcpInterval:(id)interval
{
  resolutionCopy = resolution;
  framerateCopy = framerate;
  rateCopy = rate;
  bitRateCopy = bitRate;
  intervalCopy = interval;
  v22.receiver = self;
  v22.super_class = HMDCameraVideoTier;
  v17 = [(HMDCameraVideoTier *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_videoResolution, resolution);
    objc_storeStrong(&v18->_maxBitRate, bitRate);
    objc_storeStrong(&v18->_minBitRate, rate);
    objc_storeStrong(&v18->_rtcpInterval, interval);
    objc_storeStrong(&v18->_framerate, framerate);
    videoResolution = [(HMDCameraVideoTier *)v18 videoResolution];
    v18->_quality = +[HMDStreamingCapabilities qualityOfResolutionType:](HMDStreamingCapabilities, "qualityOfResolutionType:", [videoResolution resolutionType]);
  }

  return v18;
}

@end