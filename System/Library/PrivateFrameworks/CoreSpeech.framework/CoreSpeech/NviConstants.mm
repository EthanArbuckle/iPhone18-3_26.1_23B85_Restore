@interface NviConstants
+ (AudioStreamBasicDescription)allChannelsLpcmInterleavedASBD;
+ (AudioStreamBasicDescription)allChannelsLpcmNonInterleavedASBD;
+ (AudioStreamBasicDescription)monoChannelLpcmASBD;
+ (AudioStreamBasicDescription)nviDirectionalityLpcmInterleavedASBD;
+ (AudioStreamBasicDescription)nviDirectionalityLpcmNonInterleavedASBD;
+ (id)nviLogsRootDir;
+ (unsigned)inputRecordingNumberOfChannels;
+ (unsigned)numChannelsForNviDirectionality;
+ (unsigned)nviDirectionalityEndingChannelId;
+ (unsigned)nviDirectionalityStartingChannelId;
@end

@implementation NviConstants

+ (id)nviLogsRootDir
{
  if (nviLogsRootDir_onceToken != -1)
  {
    dispatch_once(&nviLogsRootDir_onceToken, &__block_literal_global_13699);
  }

  v3 = nviLogsRootDir_nviLoggingRoot;

  return v3;
}

void __30__NviConstants_nviLogsRootDir__block_invoke()
{
  v2 = CPSharedResourcesDirectory();
  v0 = [v2 stringByAppendingPathComponent:@"Library/nvi"];
  v1 = nviLogsRootDir_nviLoggingRoot;
  nviLogsRootDir_nviLoggingRoot = v0;
}

+ (AudioStreamBasicDescription)nviDirectionalityLpcmInterleavedASBD
{
  +[NviConstants inputRecordingSampleRate];
  retstr->mSampleRate = v4;
  *&retstr->mFormatID = 0xC6C70636DLL;
  v5 = +[NviConstants inputRecordingBytesPerPacket];
  retstr->mBytesPerPacket = +[NviConstants numChannelsForNviDirectionality]* v5;
  retstr->mFramesPerPacket = +[NviConstants inputRecordingFramesPerPacket];
  v6 = +[NviConstants inputRecordingBytesPerFrame];
  retstr->mBytesPerFrame = +[NviConstants numChannelsForNviDirectionality]* v6;
  retstr->mChannelsPerFrame = +[NviConstants numChannelsForNviDirectionality];
  result = +[NviConstants inputRecordingSampleBitDepth];
  *&retstr->mBitsPerChannel = result;
  return result;
}

+ (AudioStreamBasicDescription)nviDirectionalityLpcmNonInterleavedASBD
{
  +[NviConstants inputRecordingSampleRate];
  retstr->mSampleRate = v4;
  *&retstr->mFormatID = 0x2C6C70636DLL;
  retstr->mBytesPerPacket = +[NviConstants inputRecordingBytesPerPacket];
  retstr->mFramesPerPacket = +[NviConstants inputRecordingFramesPerPacket];
  retstr->mBytesPerFrame = +[NviConstants inputRecordingBytesPerFrame];
  retstr->mChannelsPerFrame = +[NviConstants numChannelsForNviDirectionality];
  result = +[NviConstants inputRecordingSampleBitDepth];
  *&retstr->mBitsPerChannel = result;
  return result;
}

+ (AudioStreamBasicDescription)allChannelsLpcmNonInterleavedASBD
{
  +[NviConstants inputRecordingSampleRate];
  retstr->mSampleRate = v4;
  *&retstr->mFormatID = 0x2C6C70636DLL;
  retstr->mBytesPerPacket = +[NviConstants inputRecordingBytesPerPacket];
  retstr->mFramesPerPacket = +[NviConstants inputRecordingFramesPerPacket];
  retstr->mBytesPerFrame = +[NviConstants inputRecordingBytesPerFrame];
  retstr->mChannelsPerFrame = +[NviConstants inputRecordingNumberOfChannels];
  result = +[NviConstants inputRecordingSampleBitDepth];
  *&retstr->mBitsPerChannel = result;
  return result;
}

+ (AudioStreamBasicDescription)allChannelsLpcmInterleavedASBD
{
  +[NviConstants inputRecordingSampleRate];
  retstr->mSampleRate = v4;
  *&retstr->mFormatID = 0xC6C70636DLL;
  v5 = +[NviConstants inputRecordingBytesPerPacket];
  retstr->mBytesPerPacket = +[NviConstants inputRecordingNumberOfChannels]* v5;
  retstr->mFramesPerPacket = +[NviConstants inputRecordingFramesPerPacket];
  v6 = +[NviConstants inputRecordingBytesPerFrame];
  retstr->mBytesPerFrame = +[NviConstants inputRecordingNumberOfChannels]* v6;
  retstr->mChannelsPerFrame = +[NviConstants inputRecordingNumberOfChannels];
  result = +[NviConstants inputRecordingSampleBitDepth];
  *&retstr->mBitsPerChannel = result;
  return result;
}

+ (AudioStreamBasicDescription)monoChannelLpcmASBD
{
  +[NviConstants inputRecordingSampleRate];
  retstr->mSampleRate = v4;
  *&retstr->mFormatID = 0xC6C70636DLL;
  retstr->mBytesPerPacket = +[NviConstants inputRecordingBytesPerPacket];
  retstr->mFramesPerPacket = 1;
  retstr->mBytesPerFrame = +[NviConstants inputRecordingBytesPerFrame];
  retstr->mChannelsPerFrame = 1;
  result = +[NviConstants inputRecordingSampleBitDepth];
  *&retstr->mBitsPerChannel = result;
  return result;
}

+ (unsigned)nviDirectionalityEndingChannelId
{
  if (NviIsHorseman_onceToken != -1)
  {
    dispatch_once(&NviIsHorseman_onceToken, &__block_literal_global_14116);
  }

  if (NviIsHorseman_isHorseman)
  {
    return 34;
  }

  else
  {
    return 0;
  }
}

+ (unsigned)nviDirectionalityStartingChannelId
{
  if (NviIsHorseman_onceToken != -1)
  {
    dispatch_once(&NviIsHorseman_onceToken, &__block_literal_global_14116);
  }

  if (NviIsHorseman_isHorseman)
  {
    return 28;
  }

  else
  {
    return 0;
  }
}

+ (unsigned)numChannelsForNviDirectionality
{
  if (NviIsHorseman_onceToken != -1)
  {
    dispatch_once(&NviIsHorseman_onceToken, &__block_literal_global_14116);
  }

  if (NviIsHorseman_isHorseman)
  {
    return 6;
  }

  else
  {
    return 1;
  }
}

+ (unsigned)inputRecordingNumberOfChannels
{
  if (NviIsHorseman_onceToken != -1)
  {
    dispatch_once(&NviIsHorseman_onceToken, &__block_literal_global_14116);
  }

  if (NviIsHorseman_isHorseman)
  {
    return 34;
  }

  else
  {
    return 1;
  }
}

@end