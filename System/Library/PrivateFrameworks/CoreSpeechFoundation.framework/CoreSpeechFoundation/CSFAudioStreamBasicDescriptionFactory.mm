@interface CSFAudioStreamBasicDescriptionFactory
+ (AudioStreamBasicDescription)aiffFileASBD;
+ (AudioStreamBasicDescription)lpcmASBD;
+ (AudioStreamBasicDescription)lpcmFloatASBD;
+ (AudioStreamBasicDescription)lpcmInt16ASBD;
+ (AudioStreamBasicDescription)lpcmInt16NarrowBandASBD;
+ (AudioStreamBasicDescription)lpcmInterleavedASBD;
+ (AudioStreamBasicDescription)lpcmInterleavedASBDWithSampleRate:(SEL)a3 numberOfChannels:(float)a4;
+ (AudioStreamBasicDescription)lpcmInterleavedWithRemoteVADASBD;
+ (AudioStreamBasicDescription)lpcmMonoInterleavedASBD;
+ (AudioStreamBasicDescription)lpcmMonoInterleavedWithRemoteVADASBD;
+ (AudioStreamBasicDescription)lpcmMonoNonInterleavedASBD;
+ (AudioStreamBasicDescription)lpcmMonoNonInterleavedWithRemoteVADASBD;
+ (AudioStreamBasicDescription)lpcmNarrowBandASBD;
+ (AudioStreamBasicDescription)lpcmNonInterleavedASBD;
+ (AudioStreamBasicDescription)lpcmNonInterleavedASBDWithSampleRate:(SEL)a3 numberOfChannels:(float)a4;
+ (AudioStreamBasicDescription)lpcmNonInterleavedWithRemoteVADASBD;
+ (AudioStreamBasicDescription)opusASBD;
+ (AudioStreamBasicDescription)opusNarrowBandASBD;
+ (AudioStreamBasicDescription)speexASBD;
+ (AudioStreamBasicDescription)utteranceFileASBD;
@end

@implementation CSFAudioStreamBasicDescriptionFactory

+ (AudioStreamBasicDescription)utteranceFileASBD
{
  +[CSConfig inputRecordingSampleRate];
  retstr->mSampleRate = v4;
  retstr->mFormatID = 1819304813;
  if (+[CSConfig inputRecordingIsFloat])
  {
    v5 = 9;
  }

  else
  {
    v5 = 12;
  }

  retstr->mFormatFlags = v5;
  retstr->mBytesPerPacket = +[CSConfig inputRecordingBytesPerPacket];
  retstr->mFramesPerPacket = +[CSConfig inputRecordingFramesPerPacket];
  retstr->mBytesPerFrame = +[CSConfig inputRecordingBytesPerFrame];
  retstr->mChannelsPerFrame = 1;
  result = +[CSConfig inputRecordingSampleBitDepth];
  *&retstr->mBitsPerChannel = result;
  return result;
}

+ (AudioStreamBasicDescription)lpcmInt16ASBD
{
  result = +[CSConfig inputRecordingSampleRate];
  retstr->mSampleRate = v5;
  *&retstr->mFormatID = xmmword_1DDB1F830;
  *&retstr->mBytesPerFrame = xmmword_1DDB1F840;
  return result;
}

+ (AudioStreamBasicDescription)aiffFileASBD
{
  +[CSConfig inputRecordingSampleRate];
  retstr->mSampleRate = v4;
  *&retstr->mFormatID = 0xC6C70636DLL;
  retstr->mBytesPerPacket = +[CSConfig inputRecordingBytesPerPacket];
  retstr->mFramesPerPacket = +[CSConfig inputRecordingFramesPerPacket];
  retstr->mBytesPerFrame = +[CSConfig inputRecordingBytesPerFrame];
  retstr->mChannelsPerFrame = +[CSConfig inputRecordingNumberOfChannels];
  result = +[CSConfig inputRecordingSampleBitDepth];
  *&retstr->mBitsPerChannel = result;
  return result;
}

+ (AudioStreamBasicDescription)lpcmNarrowBandASBD
{
  +[CSConfig inputRecordingSampleRateNarrowBand];
  retstr->mSampleRate = v4;
  *&retstr->mFormatID = 0xC6C70636DLL;
  retstr->mBytesPerPacket = +[CSConfig inputRecordingBytesPerPacket];
  retstr->mFramesPerPacket = +[CSConfig inputRecordingFramesPerPacket];
  retstr->mBytesPerFrame = +[CSConfig inputRecordingBytesPerFrame];
  retstr->mChannelsPerFrame = 1;
  result = +[CSConfig inputRecordingSampleBitDepth];
  *&retstr->mBitsPerChannel = result;
  return result;
}

+ (AudioStreamBasicDescription)lpcmASBD
{
  +[CSConfig inputRecordingSampleRate];
  retstr->mSampleRate = v4;
  *&retstr->mFormatID = 0xC6C70636DLL;
  retstr->mBytesPerPacket = +[CSConfig inputRecordingBytesPerPacket];
  retstr->mFramesPerPacket = +[CSConfig inputRecordingFramesPerPacket];
  retstr->mBytesPerFrame = +[CSConfig inputRecordingBytesPerFrame];
  retstr->mChannelsPerFrame = 1;
  result = +[CSConfig inputRecordingSampleBitDepth];
  *&retstr->mBitsPerChannel = result;
  return result;
}

+ (AudioStreamBasicDescription)lpcmNonInterleavedASBDWithSampleRate:(SEL)a3 numberOfChannels:(float)a4
{
  v8 = +[CSConfig inputRecordingBytesPerPacket];
  v9 = +[CSConfig inputRecordingFramesPerPacket];
  v10 = +[CSConfig inputRecordingBytesPerFrame];
  v11 = +[CSConfig inputRecordingSampleBitDepth];
  result = +[CSConfig inputRecordingIsFloat];
  retstr->mSampleRate = a4;
  if (result)
  {
    v13 = 41;
  }

  else
  {
    v13 = 44;
  }

  retstr->mFormatID = 1819304813;
  retstr->mFormatFlags = v13;
  retstr->mBytesPerPacket = v8;
  retstr->mFramesPerPacket = v9;
  retstr->mBytesPerFrame = v10;
  retstr->mChannelsPerFrame = a5;
  retstr->mBitsPerChannel = v11;
  retstr->mReserved = 0;
  return result;
}

+ (AudioStreamBasicDescription)lpcmMonoNonInterleavedWithRemoteVADASBD
{
  +[CSConfig inputRecordingSampleRate];

  return [CSFAudioStreamBasicDescriptionFactory lpcmNonInterleavedASBDWithSampleRate:2 numberOfChannels:?];
}

+ (AudioStreamBasicDescription)lpcmNonInterleavedWithRemoteVADASBD
{
  +[CSConfig inputRecordingSampleRate];
  v4 = v3;
  v5 = +[CSConfig inputRecordingNumberOfChannels]+ 1;
  LODWORD(v6) = v4;

  return [CSFAudioStreamBasicDescriptionFactory lpcmNonInterleavedASBDWithSampleRate:v5 numberOfChannels:v6];
}

+ (AudioStreamBasicDescription)lpcmMonoNonInterleavedASBD
{
  +[CSConfig inputRecordingSampleRate];

  return [CSFAudioStreamBasicDescriptionFactory lpcmNonInterleavedASBDWithSampleRate:1 numberOfChannels:?];
}

+ (AudioStreamBasicDescription)lpcmNonInterleavedASBD
{
  +[CSConfig inputRecordingSampleRate];
  v4 = v3;
  v5 = +[CSConfig inputRecordingNumberOfChannels];
  LODWORD(v6) = v4;

  return [CSFAudioStreamBasicDescriptionFactory lpcmNonInterleavedASBDWithSampleRate:v5 numberOfChannels:v6];
}

+ (AudioStreamBasicDescription)lpcmInterleavedASBDWithSampleRate:(SEL)a3 numberOfChannels:(float)a4
{
  v8 = +[CSConfig inputRecordingBytesPerPacket];
  v9 = +[CSConfig inputRecordingFramesPerPacket];
  v10 = +[CSConfig inputRecordingBytesPerFrame];
  v11 = +[CSConfig inputRecordingSampleBitDepth];
  result = +[CSConfig inputRecordingIsFloat];
  if (result)
  {
    v13 = 9;
  }

  else
  {
    v13 = 12;
  }

  retstr->mSampleRate = a4;
  retstr->mFormatID = 1819304813;
  retstr->mFormatFlags = v13;
  retstr->mBytesPerPacket = v8 * a5;
  retstr->mFramesPerPacket = v9;
  retstr->mBytesPerFrame = v10 * a5;
  retstr->mChannelsPerFrame = a5;
  retstr->mBitsPerChannel = v11;
  retstr->mReserved = 0;
  return result;
}

+ (AudioStreamBasicDescription)lpcmMonoInterleavedWithRemoteVADASBD
{
  +[CSConfig inputRecordingSampleRate];

  return [CSFAudioStreamBasicDescriptionFactory lpcmInterleavedASBDWithSampleRate:2 numberOfChannels:?];
}

+ (AudioStreamBasicDescription)lpcmInterleavedWithRemoteVADASBD
{
  +[CSConfig inputRecordingSampleRate];
  v4 = v3;
  v5 = +[CSConfig inputRecordingNumberOfChannels]+ 1;
  LODWORD(v6) = v4;

  return [CSFAudioStreamBasicDescriptionFactory lpcmInterleavedASBDWithSampleRate:v5 numberOfChannels:v6];
}

+ (AudioStreamBasicDescription)lpcmMonoInterleavedASBD
{
  +[CSConfig inputRecordingSampleRate];

  return [CSFAudioStreamBasicDescriptionFactory lpcmInterleavedASBDWithSampleRate:1 numberOfChannels:?];
}

+ (AudioStreamBasicDescription)lpcmInterleavedASBD
{
  +[CSConfig inputRecordingSampleRate];
  v4 = v3;
  v5 = +[CSConfig inputRecordingNumberOfChannels];
  LODWORD(v6) = v4;

  return [CSFAudioStreamBasicDescriptionFactory lpcmInterleavedASBDWithSampleRate:v5 numberOfChannels:v6];
}

+ (AudioStreamBasicDescription)speexASBD
{
  *&retstr->mFormatID = 0u;
  *&retstr->mBytesPerFrame = 0u;
  retstr->mSampleRate = 16000.0;
  retstr->mFormatID = 1936745848;
  retstr->mFramesPerPacket = 320;
  retstr->mChannelsPerFrame = 1;
  return result;
}

+ (AudioStreamBasicDescription)opusNarrowBandASBD
{
  result = +[CSConfig inputRecordingSampleRateNarrowBand];
  retstr->mSampleRate = v5;
  *&retstr->mFormatID = xmmword_1DDB1F810;
  *&retstr->mBytesPerFrame = xmmword_1DDB1F820;
  return result;
}

+ (AudioStreamBasicDescription)opusASBD
{
  result = +[CSConfig inputRecordingSampleRate];
  retstr->mSampleRate = v5;
  *&retstr->mFormatID = xmmword_1DDB1F810;
  *&retstr->mBytesPerFrame = xmmword_1DDB1F820;
  return result;
}

+ (AudioStreamBasicDescription)lpcmFloatASBD
{
  +[CSConfig inputRecordingSampleRate];
  retstr->mSampleRate = v4;
  *&retstr->mFormatID = 0x96C70636DLL;
  retstr->mBytesPerPacket = +[CSConfig inputRecordingBytesPerPacket];
  retstr->mFramesPerPacket = +[CSConfig inputRecordingFramesPerPacket];
  retstr->mBytesPerFrame = +[CSConfig inputRecordingBytesPerFrame];
  retstr->mChannelsPerFrame = 1;
  result = +[CSConfig inputRecordingSampleBitDepth];
  *&retstr->mBitsPerChannel = result;
  return result;
}

+ (AudioStreamBasicDescription)lpcmInt16NarrowBandASBD
{
  result = +[CSConfig inputRecordingSampleRateNarrowBand];
  retstr->mSampleRate = v5;
  *&retstr->mFormatID = xmmword_1DDB1F830;
  *&retstr->mBytesPerFrame = xmmword_1DDB1F840;
  return result;
}

@end