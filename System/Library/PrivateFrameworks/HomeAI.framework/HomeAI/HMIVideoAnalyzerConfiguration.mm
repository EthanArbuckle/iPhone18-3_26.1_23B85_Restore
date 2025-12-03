@interface HMIVideoAnalyzerConfiguration
- (BOOL)isEqual:(id)equal;
- (HMIVideoAnalyzerConfiguration)init;
- (HMIVideoAnalyzerConfiguration)initWithCoder:(id)coder;
- (id)attributeDescriptions;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setAnalysisFPS:(double)s;
- (void)setMinFrameQuality:(double)quality;
- (void)setMinFrameScale:(double)scale;
- (void)setTimelapseVideo:(BOOL)video;
@end

@implementation HMIVideoAnalyzerConfiguration

- (HMIVideoAnalyzerConfiguration)init
{
  v11.receiver = self;
  v11.super_class = HMIVideoAnalyzerConfiguration;
  v2 = [(HMIVideoAnalyzerConfiguration *)&v11 init];
  if (v2)
  {
    CMTimeMake(&v10, 1, 1);
    v3 = *&v10.value;
    *(v2 + 14) = v10.epoch;
    *(v2 + 6) = v3;
    *(v2 + 6) = 100;
    v4 = MEMORY[0x277CC0898];
    *(v2 + 120) = *MEMORY[0x277CC0898];
    *(v2 + 17) = *(v4 + 16);
    CMTimeMake(&v10, 20, 1);
    v5 = *&v10.value;
    *(v2 + 20) = v10.epoch;
    *(v2 + 9) = v5;
    *(v2 + 4) = 1635148593;
    *(v2 + 7) = 0x4014000000000000;
    CMTimeMake(&v10, 8, 1);
    v6 = *&v10.value;
    *(v2 + 23) = v10.epoch;
    *(v2 + 168) = v6;
    *(v2 + 10) = 2;
    v2[8] = 1;
    v2[9] = 1;
    v7 = *(v2 + 8);
    *(v2 + 8) = 0;

    v8 = *(v2 + 9);
    *(v2 + 9) = 0;

    *(v2 + 3) = 0x3FE8000000000000;
    *(v2 + 4) = 0x3FD0000000000000;
    *(v2 + 11) = 1;
    v2[10] = 0;
    v2[11] = 1;
    *(v2 + 6) = 1;
    *(v2 + 5) = 1635148593;
    *(v2 + 5) = 0x3FF0000000000000;
  }

  return v2;
}

- (id)attributeDescriptions
{
  v70[18] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerConfiguration *)self thumbnailInterval];
  v68 = [v4 numberWithDouble:CMTimeGetSeconds(&time)];
  v67 = [v3 initWithName:@"Thumbnail Interval" value:v68];
  v70[0] = v67;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMIVideoAnalyzerConfiguration thumbnailHeight](self, "thumbnailHeight")}];
  v65 = [v5 initWithName:@"Thumbnail Height" value:v66];
  v70[1] = v65;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerConfiguration *)self timelapseInterval];
  v64 = [v7 numberWithDouble:CMTimeGetSeconds(&time)];
  v63 = [v6 initWithName:@"Timelapse Interval" value:v64];
  v70[2] = v63;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerConfiguration *)self timelapsePreferredFragmentDuration];
  v62 = [v9 numberWithDouble:CMTimeGetSeconds(&time)];
  v61 = [v8 initWithName:@"Timelapse Preferred Fragment Duration" value:v62];
  v70[3] = v61;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v60 = HMIFourCCString([(HMIVideoAnalyzerConfiguration *)self timelapseCodecType]);
  v59 = [v10 initWithName:@"Timelapse Codec" value:v60];
  v70[4] = v59;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerConfiguration *)self maxFragmentDuration];
  v58 = [v12 numberWithDouble:CMTimeGetSeconds(&time)];
  v57 = [v11 initWithName:@"Max Fragment Duration" value:v58];
  v70[5] = v57;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  v14 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerConfiguration *)self maxFragmentAnalysisDuration];
  v56 = [v14 numberWithDouble:?];
  v55 = [v13 initWithName:@"Max Fragment Analysis Duration" value:v56];
  v70[6] = v55;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  initialDecodeMode = [(HMIVideoAnalyzerConfiguration *)self initialDecodeMode];
  v17 = @"IFrameOnly";
  if (initialDecodeMode != 1)
  {
    v17 = @"None";
  }

  if (initialDecodeMode == 2)
  {
    v17 = @"Full";
  }

  v50 = v17;
  v54 = [v15 initWithName:@"Decode Mode" value:v50];
  v70[7] = v54;
  v18 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMIVideoAnalyzerConfiguration *)self transcode];
  v53 = HMFBooleanToString();
  v52 = [v18 initWithName:@"Transcode" value:v53];
  v70[8] = v52;
  v19 = objc_alloc(MEMORY[0x277D0F778]);
  v51 = HMIFourCCString([(HMIVideoAnalyzerConfiguration *)self transcodeCodecType]);
  v49 = [v19 initWithName:@"Transcode Codec" value:v51];
  v70[9] = v49;
  v20 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMIVideoAnalyzerConfiguration *)self passthroughAudio];
  v48 = HMFBooleanToString();
  v47 = [v20 initWithName:@"Passthrough Audio" value:v48];
  v70[10] = v47;
  v21 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMIVideoAnalyzerConfiguration *)self redactFrames];
  v46 = HMFBooleanToString();
  v45 = [v21 initWithName:@"Redact frames" value:v46];
  v70[11] = v45;
  v22 = objc_alloc(MEMORY[0x277D0F778]);
  v23 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerConfiguration *)self minFrameQuality];
  v44 = [v23 numberWithDouble:?];
  v43 = [v22 initWithName:@"Min Frame Quality" value:v44];
  v70[12] = v43;
  v24 = objc_alloc(MEMORY[0x277D0F778]);
  v25 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerConfiguration *)self minFrameScale];
  v26 = [v25 numberWithDouble:?];
  v27 = [v24 initWithName:@"Min Frame Scale" value:v26];
  v70[13] = v27;
  v28 = objc_alloc(MEMORY[0x277D0F778]);
  camera = [(HMIVideoAnalyzerConfiguration *)self camera];
  v30 = [v28 initWithName:@"Camera" value:camera];
  v70[14] = v30;
  v31 = objc_alloc(MEMORY[0x277D0F778]);
  homeUUID = [(HMIVideoAnalyzerConfiguration *)self homeUUID];
  v33 = [v31 initWithName:@"Home UUID" value:homeUUID];
  v70[15] = v33;
  v34 = objc_alloc(MEMORY[0x277D0F778]);
  if ([(HMIVideoAnalyzerConfiguration *)self packageClassifierMode])
  {
    v35 = @"Detector";
  }

  else
  {
    v35 = @"None";
  }

  v36 = [v34 initWithName:@"Package Classifier Mode" value:v35];
  v70[16] = v36;
  v37 = objc_alloc(MEMORY[0x277D0F778]);
  v38 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerConfiguration *)self analysisFPS];
  v39 = [v38 numberWithDouble:?];
  v40 = [v37 initWithName:@"Analysis FPS" value:v39];
  v70[17] = v40;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:18];

  return v41;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(HMIVideoAnalyzerConfiguration *)self thumbnailInterval];
      if (v5)
      {
        [(HMIVideoAnalyzerConfiguration *)v5 thumbnailInterval];
      }

      else
      {
        memset(&v54, 0, sizeof(v54));
      }

      v7 = CMTimeCompare(&time1, &v54);
      thumbnailHeight = [(HMIVideoAnalyzerConfiguration *)self thumbnailHeight];
      thumbnailHeight2 = [(HMIVideoAnalyzerConfiguration *)v5 thumbnailHeight];
      [(HMIVideoAnalyzerConfiguration *)self timelapseInterval];
      if (v5)
      {
        [(HMIVideoAnalyzerConfiguration *)v5 timelapseInterval];
      }

      else
      {
        memset(&v54, 0, sizeof(v54));
      }

      v10 = CMTimeCompare(&time1, &v54) | v7;
      [(HMIVideoAnalyzerConfiguration *)self timelapsePreferredFragmentDuration];
      if (v5)
      {
        [(HMIVideoAnalyzerConfiguration *)v5 timelapsePreferredFragmentDuration];
      }

      else
      {
        memset(&v54, 0, sizeof(v54));
      }

      v11 = CMTimeCompare(&time1, &v54);
      timelapseCodecType = [(HMIVideoAnalyzerConfiguration *)self timelapseCodecType];
      timelapseCodecType2 = [(HMIVideoAnalyzerConfiguration *)v5 timelapseCodecType];
      v16 = thumbnailHeight == thumbnailHeight2 && (v10 | v11) == 0 && timelapseCodecType == timelapseCodecType2;
      [(HMIVideoAnalyzerConfiguration *)self maxFragmentDuration:v54.value];
      if (v5)
      {
        [(HMIVideoAnalyzerConfiguration *)v5 maxFragmentDuration];
      }

      else
      {
        memset(&v54, 0, sizeof(v54));
      }

      if (CMTimeCompare(&time1, &v54))
      {
        v16 = 0;
      }

      [(HMIVideoAnalyzerConfiguration *)self maxFragmentAnalysisDuration:v54.value];
      v18 = v17;
      [(HMIVideoAnalyzerConfiguration *)v5 maxFragmentAnalysisDuration];
      v20 = v18 == v19 && v16;
      initialDecodeMode = [(HMIVideoAnalyzerConfiguration *)self initialDecodeMode];
      if (initialDecodeMode != [(HMIVideoAnalyzerConfiguration *)v5 initialDecodeMode])
      {
        v20 = 0;
      }

      transcode = [(HMIVideoAnalyzerConfiguration *)self transcode];
      v23 = v20 & ~(transcode ^ [(HMIVideoAnalyzerConfiguration *)v5 transcode]);
      transcodeCodecType = [(HMIVideoAnalyzerConfiguration *)self transcodeCodecType];
      if (transcodeCodecType != [(HMIVideoAnalyzerConfiguration *)v5 transcodeCodecType])
      {
        v23 = 0;
      }

      passthroughAudio = [(HMIVideoAnalyzerConfiguration *)self passthroughAudio];
      v26 = passthroughAudio ^ [(HMIVideoAnalyzerConfiguration *)v5 passthroughAudio];
      redactFrames = [(HMIVideoAnalyzerConfiguration *)self redactFrames];
      v28 = v26 | redactFrames ^ [(HMIVideoAnalyzerConfiguration *)v5 redactFrames];
      allowReducedConfiguration = [(HMIVideoAnalyzerConfiguration *)self allowReducedConfiguration];
      v30 = allowReducedConfiguration ^ [(HMIVideoAnalyzerConfiguration *)v5 allowReducedConfiguration];
      enableTemporalEventFiltering = [(HMIVideoAnalyzerConfiguration *)self enableTemporalEventFiltering];
      v32 = v28 | v30 | enableTemporalEventFiltering ^ [(HMIVideoAnalyzerConfiguration *)v5 enableTemporalEventFiltering];
      saveAnalyzerResultsToDisk = [(HMIVideoAnalyzerConfiguration *)self saveAnalyzerResultsToDisk];
      v34 = v23 & ~(v32 | saveAnalyzerResultsToDisk ^ [(HMIVideoAnalyzerConfiguration *)v5 saveAnalyzerResultsToDisk]);
      [(HMIVideoAnalyzerConfiguration *)self minFrameQuality];
      v36 = v35;
      [(HMIVideoAnalyzerConfiguration *)v5 minFrameQuality];
      if (v36 != v37)
      {
        LOBYTE(v34) = 0;
      }

      [(HMIVideoAnalyzerConfiguration *)self minFrameScale];
      v39 = v38;
      [(HMIVideoAnalyzerConfiguration *)v5 minFrameScale];
      if (v39 == v40)
      {
        v41 = v34;
      }

      else
      {
        v41 = 0;
      }

      packageClassifierMode = [(HMIVideoAnalyzerConfiguration *)self packageClassifierMode];
      if (packageClassifierMode == [(HMIVideoAnalyzerConfiguration *)v5 packageClassifierMode])
      {
        v43 = v41;
      }

      else
      {
        v43 = 0;
      }

      [(HMIVideoAnalyzerConfiguration *)self analysisFPS];
      v45 = v44;
      [(HMIVideoAnalyzerConfiguration *)v5 analysisFPS];
      if (v45 == v46)
      {
        v47 = v43;
      }

      else
      {
        v47 = 0;
      }

      camera = [(HMIVideoAnalyzerConfiguration *)self camera];
      camera2 = [(HMIVideoAnalyzerConfiguration *)v5 camera];
      v50 = HMFEqualObjects();

      homeUUID = [(HMIVideoAnalyzerConfiguration *)self homeUUID];
      homeUUID2 = [(HMIVideoAnalyzerConfiguration *)v5 homeUUID];
      LOBYTE(camera2) = HMFEqualObjects();

      v6 = v47 & v50 & camera2;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)setMinFrameQuality:(double)quality
{
  if (quality <= 0.0 || quality > 1.0)
  {
    v4 = [HMIVideoAnalyzerConfiguration setMinFrameQuality:];
    [(HMIVideoAnalyzerConfiguration *)v4 minFrameQuality];
  }

  else
  {
    self->_minFrameQuality = quality;
  }
}

- (void)setMinFrameScale:(double)scale
{
  if (scale <= 0.0 || scale > 1.0)
  {
    v4 = [HMIVideoAnalyzerConfiguration setMinFrameScale:];
    [(HMIVideoAnalyzerConfiguration *)v4 minFrameScale];
  }

  else
  {
    self->_minFrameScale = scale;
  }
}

- (void)setTimelapseVideo:(BOOL)video
{
  if (video)
  {
    CMTimeMake(&v5, 1, 1);
  }

  else
  {
    v5 = **&MEMORY[0x277CC0898];
  }

  v4 = v5;
  [(HMIVideoAnalyzerConfiguration *)self setTimelapseInterval:&v4];
}

- (void)setAnalysisFPS:(double)s
{
  if (s <= 0.0)
  {
    v3 = [HMIVideoAnalyzerConfiguration setAnalysisFPS:];
    [(HMIVideoAnalyzerConfiguration *)v3 copyWithZone:v4, v5];
  }

  else
  {
    self->_analysisFPS = s;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(HMIVideoAnalyzerConfiguration);
  [(HMIVideoAnalyzerConfiguration *)self thumbnailInterval];
  v14 = v16;
  v15 = v17;
  [(HMIVideoAnalyzerConfiguration *)v4 setThumbnailInterval:&v14];
  [(HMIVideoAnalyzerConfiguration *)v4 setThumbnailHeight:[(HMIVideoAnalyzerConfiguration *)self thumbnailHeight]];
  [(HMIVideoAnalyzerConfiguration *)self timelapseInterval];
  v14 = v12;
  v15 = v13;
  [(HMIVideoAnalyzerConfiguration *)v4 setTimelapseInterval:&v14];
  [(HMIVideoAnalyzerConfiguration *)self timelapsePreferredFragmentDuration];
  v14 = v10;
  v15 = v11;
  [(HMIVideoAnalyzerConfiguration *)v4 setTimelapsePreferredFragmentDuration:&v14];
  [(HMIVideoAnalyzerConfiguration *)v4 setTimelapseCodecType:[(HMIVideoAnalyzerConfiguration *)self timelapseCodecType]];
  [(HMIVideoAnalyzerConfiguration *)self maxFragmentAnalysisDuration];
  [(HMIVideoAnalyzerConfiguration *)v4 setMaxFragmentAnalysisDuration:?];
  [(HMIVideoAnalyzerConfiguration *)self maxFragmentDuration];
  v14 = v8;
  v15 = v9;
  [(HMIVideoAnalyzerConfiguration *)v4 setMaxFragmentDuration:&v14];
  [(HMIVideoAnalyzerConfiguration *)v4 setInitialDecodeMode:[(HMIVideoAnalyzerConfiguration *)self initialDecodeMode]];
  [(HMIVideoAnalyzerConfiguration *)v4 setTranscode:[(HMIVideoAnalyzerConfiguration *)self transcode]];
  [(HMIVideoAnalyzerConfiguration *)v4 setTranscodeCodecType:[(HMIVideoAnalyzerConfiguration *)self transcodeCodecType]];
  [(HMIVideoAnalyzerConfiguration *)v4 setPassthroughAudio:[(HMIVideoAnalyzerConfiguration *)self passthroughAudio]];
  camera = [(HMIVideoAnalyzerConfiguration *)self camera];
  [(HMIVideoAnalyzerConfiguration *)v4 setCamera:camera];

  homeUUID = [(HMIVideoAnalyzerConfiguration *)self homeUUID];
  [(HMIVideoAnalyzerConfiguration *)v4 setHomeUUID:homeUUID];

  [(HMIVideoAnalyzerConfiguration *)self minFrameQuality];
  [(HMIVideoAnalyzerConfiguration *)v4 setMinFrameQuality:?];
  [(HMIVideoAnalyzerConfiguration *)self minFrameScale];
  [(HMIVideoAnalyzerConfiguration *)v4 setMinFrameScale:?];
  [(HMIVideoAnalyzerConfiguration *)v4 setPackageClassifierMode:[(HMIVideoAnalyzerConfiguration *)self packageClassifierMode]];
  [(HMIVideoAnalyzerConfiguration *)v4 setRedactFrames:[(HMIVideoAnalyzerConfiguration *)self redactFrames]];
  [(HMIVideoAnalyzerConfiguration *)v4 setAllowReducedConfiguration:[(HMIVideoAnalyzerConfiguration *)self allowReducedConfiguration]];
  [(HMIVideoAnalyzerConfiguration *)v4 setEnableTemporalEventFiltering:[(HMIVideoAnalyzerConfiguration *)self enableTemporalEventFiltering]];
  [(HMIVideoAnalyzerConfiguration *)v4 setSaveAnalyzerResultsToDisk:[(HMIVideoAnalyzerConfiguration *)self saveAnalyzerResultsToDisk]];
  [(HMIVideoAnalyzerConfiguration *)self analysisFPS];
  [(HMIVideoAnalyzerConfiguration *)v4 setAnalysisFPS:?];
  return v4;
}

- (HMIVideoAnalyzerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(HMIVideoAnalyzerConfiguration *)self init];
  v6 = NSStringFromSelector(sel_thumbnailInterval);
  if (coderCopy)
  {
    [coderCopy decodeCMTimeForKey:v6];
  }

  else
  {
    v40 = 0uLL;
    v41 = 0;
  }

  v38 = v40;
  v39 = v41;
  [(HMIVideoAnalyzerConfiguration *)v5 setThumbnailInterval:&v38];

  v7 = NSStringFromSelector(sel_thumbnailHeight);
  -[HMIVideoAnalyzerConfiguration setThumbnailHeight:](v5, "setThumbnailHeight:", [coderCopy decodeIntegerForKey:v7]);

  v8 = NSStringFromSelector(sel_timelapseInterval);
  if (coderCopy)
  {
    [coderCopy decodeCMTimeForKey:v8];
  }

  else
  {
    v36 = 0uLL;
    v37 = 0;
  }

  v38 = v36;
  v39 = v37;
  [(HMIVideoAnalyzerConfiguration *)v5 setTimelapseInterval:&v38];

  v9 = NSStringFromSelector(sel_timelapsePreferredFragmentDuration);
  if (coderCopy)
  {
    [coderCopy decodeCMTimeForKey:v9];
  }

  else
  {
    v34 = 0uLL;
    v35 = 0;
  }

  v38 = v34;
  v39 = v35;
  [(HMIVideoAnalyzerConfiguration *)v5 setTimelapsePreferredFragmentDuration:&v38];

  v10 = NSStringFromSelector(sel_timelapseCodecType);
  -[HMIVideoAnalyzerConfiguration setTimelapseCodecType:](v5, "setTimelapseCodecType:", [coderCopy decodeIntegerForKey:v10]);

  v11 = NSStringFromSelector(sel_maxFragmentAnalysisDuration);
  [coderCopy decodeDoubleForKey:v11];
  [(HMIVideoAnalyzerConfiguration *)v5 setMaxFragmentAnalysisDuration:?];

  v12 = NSStringFromSelector(sel_maxFragmentDuration);
  if (coderCopy)
  {
    [coderCopy decodeCMTimeForKey:v12];
  }

  else
  {
    v32 = 0uLL;
    v33 = 0;
  }

  v38 = v32;
  v39 = v33;
  [(HMIVideoAnalyzerConfiguration *)v5 setMaxFragmentDuration:&v38];

  v13 = NSStringFromSelector(sel_initialDecodeMode);
  -[HMIVideoAnalyzerConfiguration setInitialDecodeMode:](v5, "setInitialDecodeMode:", [coderCopy decodeIntegerForKey:v13]);

  v14 = NSStringFromSelector(sel_transcode);
  -[HMIVideoAnalyzerConfiguration setTranscode:](v5, "setTranscode:", [coderCopy decodeBoolForKey:v14]);

  v15 = NSStringFromSelector(sel_transcodeCodecType);
  -[HMIVideoAnalyzerConfiguration setTranscodeCodecType:](v5, "setTranscodeCodecType:", [coderCopy decodeIntegerForKey:v15]);

  v16 = NSStringFromSelector(sel_passthroughAudio);
  -[HMIVideoAnalyzerConfiguration setPassthroughAudio:](v5, "setPassthroughAudio:", [coderCopy decodeBoolForKey:v16]);

  v17 = NSStringFromSelector(sel_redactFrames);
  -[HMIVideoAnalyzerConfiguration setRedactFrames:](v5, "setRedactFrames:", [coderCopy decodeBoolForKey:v17]);

  v18 = NSStringFromSelector(sel_allowReducedConfiguration);
  -[HMIVideoAnalyzerConfiguration setAllowReducedConfiguration:](v5, "setAllowReducedConfiguration:", [coderCopy decodeBoolForKey:v18]);

  v19 = NSStringFromSelector(sel_enableTemporalEventFiltering);
  -[HMIVideoAnalyzerConfiguration setEnableTemporalEventFiltering:](v5, "setEnableTemporalEventFiltering:", [coderCopy decodeBoolForKey:v19]);

  v20 = NSStringFromSelector(sel_saveAnalyzerResultsToDisk);
  -[HMIVideoAnalyzerConfiguration setSaveAnalyzerResultsToDisk:](v5, "setSaveAnalyzerResultsToDisk:", [coderCopy decodeBoolForKey:v20]);

  v21 = NSStringFromSelector(sel_minFrameQuality);
  [coderCopy decodeDoubleForKey:v21];
  [(HMIVideoAnalyzerConfiguration *)v5 setMinFrameQuality:?];

  v22 = NSStringFromSelector(sel_minFrameScale);
  [coderCopy decodeDoubleForKey:v22];
  [(HMIVideoAnalyzerConfiguration *)v5 setMinFrameScale:?];

  v23 = objc_opt_class();
  v24 = NSStringFromSelector(sel_camera);
  v25 = [coderCopy decodeObjectOfClass:v23 forKey:v24];
  [(HMIVideoAnalyzerConfiguration *)v5 setCamera:v25];

  v26 = objc_opt_class();
  v27 = NSStringFromSelector(sel_homeUUID);
  v28 = [coderCopy decodeObjectOfClass:v26 forKey:v27];
  [(HMIVideoAnalyzerConfiguration *)v5 setHomeUUID:v28];

  v29 = NSStringFromSelector(sel_packageClassifierMode);
  -[HMIVideoAnalyzerConfiguration setPackageClassifierMode:](v5, "setPackageClassifierMode:", [coderCopy decodeIntegerForKey:v29]);

  v30 = NSStringFromSelector(sel_analysisFPS);
  [coderCopy decodeDoubleForKey:v30];
  [(HMIVideoAnalyzerConfiguration *)v5 setAnalysisFPS:?];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(HMIVideoAnalyzerConfiguration *)self thumbnailInterval];
  v5 = NSStringFromSelector(sel_thumbnailInterval);
  [coderCopy encodeCMTime:v47 forKey:v5];

  thumbnailHeight = [(HMIVideoAnalyzerConfiguration *)self thumbnailHeight];
  v7 = NSStringFromSelector(sel_thumbnailHeight);
  [coderCopy encodeInteger:thumbnailHeight forKey:v7];

  [(HMIVideoAnalyzerConfiguration *)self timelapseInterval];
  v8 = NSStringFromSelector(sel_timelapseInterval);
  [coderCopy encodeCMTime:v47 forKey:v8];

  [(HMIVideoAnalyzerConfiguration *)self timelapsePreferredFragmentDuration];
  v9 = NSStringFromSelector(sel_timelapsePreferredFragmentDuration);
  [coderCopy encodeCMTime:v47 forKey:v9];

  timelapseCodecType = [(HMIVideoAnalyzerConfiguration *)self timelapseCodecType];
  v11 = NSStringFromSelector(sel_timelapseCodecType);
  [coderCopy encodeInteger:timelapseCodecType forKey:v11];

  [(HMIVideoAnalyzerConfiguration *)self maxFragmentAnalysisDuration];
  v13 = v12;
  v14 = NSStringFromSelector(sel_maxFragmentAnalysisDuration);
  [coderCopy encodeDouble:v14 forKey:v13];

  [(HMIVideoAnalyzerConfiguration *)self maxFragmentDuration];
  v15 = NSStringFromSelector(sel_maxFragmentDuration);
  [coderCopy encodeCMTime:v47 forKey:v15];

  initialDecodeMode = [(HMIVideoAnalyzerConfiguration *)self initialDecodeMode];
  v17 = NSStringFromSelector(sel_initialDecodeMode);
  [coderCopy encodeInteger:initialDecodeMode forKey:v17];

  transcode = [(HMIVideoAnalyzerConfiguration *)self transcode];
  v19 = NSStringFromSelector(sel_transcode);
  [coderCopy encodeBool:transcode forKey:v19];

  transcodeCodecType = [(HMIVideoAnalyzerConfiguration *)self transcodeCodecType];
  v21 = NSStringFromSelector(sel_transcodeCodecType);
  [coderCopy encodeInteger:transcodeCodecType forKey:v21];

  passthroughAudio = [(HMIVideoAnalyzerConfiguration *)self passthroughAudio];
  v23 = NSStringFromSelector(sel_passthroughAudio);
  [coderCopy encodeBool:passthroughAudio forKey:v23];

  redactFrames = [(HMIVideoAnalyzerConfiguration *)self redactFrames];
  v25 = NSStringFromSelector(sel_redactFrames);
  [coderCopy encodeBool:redactFrames forKey:v25];

  allowReducedConfiguration = [(HMIVideoAnalyzerConfiguration *)self allowReducedConfiguration];
  v27 = NSStringFromSelector(sel_allowReducedConfiguration);
  [coderCopy encodeBool:allowReducedConfiguration forKey:v27];

  enableTemporalEventFiltering = [(HMIVideoAnalyzerConfiguration *)self enableTemporalEventFiltering];
  v29 = NSStringFromSelector(sel_enableTemporalEventFiltering);
  [coderCopy encodeBool:enableTemporalEventFiltering forKey:v29];

  saveAnalyzerResultsToDisk = [(HMIVideoAnalyzerConfiguration *)self saveAnalyzerResultsToDisk];
  v31 = NSStringFromSelector(sel_saveAnalyzerResultsToDisk);
  [coderCopy encodeBool:saveAnalyzerResultsToDisk forKey:v31];

  [(HMIVideoAnalyzerConfiguration *)self minFrameQuality];
  v33 = v32;
  v34 = NSStringFromSelector(sel_minFrameQuality);
  [coderCopy encodeDouble:v34 forKey:v33];

  [(HMIVideoAnalyzerConfiguration *)self minFrameScale];
  v36 = v35;
  v37 = NSStringFromSelector(sel_minFrameScale);
  [coderCopy encodeDouble:v37 forKey:v36];

  camera = [(HMIVideoAnalyzerConfiguration *)self camera];
  v39 = NSStringFromSelector(sel_camera);
  [coderCopy encodeObject:camera forKey:v39];

  homeUUID = [(HMIVideoAnalyzerConfiguration *)self homeUUID];
  v41 = NSStringFromSelector(sel_homeUUID);
  [coderCopy encodeObject:homeUUID forKey:v41];

  packageClassifierMode = [(HMIVideoAnalyzerConfiguration *)self packageClassifierMode];
  v43 = NSStringFromSelector(sel_packageClassifierMode);
  [coderCopy encodeInteger:packageClassifierMode forKey:v43];

  [(HMIVideoAnalyzerConfiguration *)self analysisFPS];
  v45 = v44;
  v46 = NSStringFromSelector(sel_analysisFPS);
  [coderCopy encodeDouble:v46 forKey:v45];
}

@end