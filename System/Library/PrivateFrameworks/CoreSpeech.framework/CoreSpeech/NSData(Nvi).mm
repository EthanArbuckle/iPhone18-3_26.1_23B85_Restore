@interface NSData(Nvi)
- (id)strRepForFloatData;
- (uint64_t)rawMicChannelsDataWithNumSamplesPerChannel:()Nvi;
- (void)splitAudioDataToReachSampleCount:()Nvi currSampleCount:numBytesPerSample:completionHandler:;
@end

@implementation NSData(Nvi)

- (id)strRepForFloatData
{
  v2 = [MEMORY[0x277CCAB68] stringWithFormat:@"[ "];
  bytes = [self bytes];
  v4 = [self length];
  if (v4 >= 4)
  {
    v5 = v4 >> 2;
    do
    {
      v6 = *bytes++;
      [v2 appendFormat:@"%f ", v6];
      --v5;
    }

    while (v5);
  }

  [v2 appendString:@"]"];

  return v2;
}

- (uint64_t)rawMicChannelsDataWithNumSamplesPerChannel:()Nvi
{
  v5 = +[NviConstants nviDirectionalityStartingChannelId];
  v6 = +[NviConstants numChannelsForNviDirectionality];
  v7 = v5 * a3 * +[NviConstants inputRecordingSampleByteDepth];
  v8 = v6 * a3 * +[NviConstants inputRecordingSampleByteDepth];

  return [self subdataWithRange:{v7, v8}];
}

- (void)splitAudioDataToReachSampleCount:()Nvi currSampleCount:numBytesPerSample:completionHandler:
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = a3 - a4;
  if ((a3 - a4) <= 0)
  {
    v18 = NviLogContextFacility;
    if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315650;
      v21 = "[NSData(Nvi) splitAudioDataToReachSampleCount:currSampleCount:numBytesPerSample:completionHandler:]";
      v22 = 2050;
      v23 = a4;
      v24 = 2050;
      v25 = a3;
      _os_log_impl(&dword_222E4D000, v18, OS_LOG_TYPE_DEFAULT, "%s RequiredSampleCount reached: currSampleCount=%{public}lu, endingSampleCount=%{public}lu", &v20, 0x20u);
    }

    (*(v10 + 2))(v10, 0, 0, 0, 0, 1);
  }

  else
  {
    v12 = [self length];
    v13 = v12 / a5;
    if (v12 / a5 >= v11)
    {
      v14 = a3 - a4;
    }

    else
    {
      v14 = v12 / a5;
    }

    v15 = v13 - v14;
    if (v13 <= v11)
    {
      selfCopy = self;
      v17 = 0;
    }

    else
    {
      selfCopy = [self subdataWithRange:{0, v14 * a5}];
      v17 = [self subdataWithRange:{v14 * a5, v15 * a5}];
    }

    (*(v10 + 2))(v10, selfCopy, v14, v17, v15, v14 + a4 >= a3);
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end