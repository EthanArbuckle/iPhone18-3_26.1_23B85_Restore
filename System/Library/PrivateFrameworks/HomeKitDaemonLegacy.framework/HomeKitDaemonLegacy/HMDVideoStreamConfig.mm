@interface HMDVideoStreamConfig
- (id)description;
@end

@implementation HMDVideoStreamConfig

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  v22.receiver = self;
  v22.super_class = HMDVideoStreamConfig;
  [(HMDMediaStreamConfig *)&v22 addToDescription:string];
  [string appendFormat:@"\n"];
  video = [(AVCMediaStreamConfig *)self video];
  txCodecType = [video txCodecType];
  video2 = [(AVCMediaStreamConfig *)self video];
  v7 = AVCVideoCodecTypeAsString([video2 txCodecType]);
  [string appendFormat:@"video.txCodecType     = %tu, %@\n", txCodecType, v7];

  video3 = [(AVCMediaStreamConfig *)self video];
  rxCodecType = [video3 rxCodecType];
  video4 = [(AVCMediaStreamConfig *)self video];
  v11 = AVCVideoCodecTypeAsString([video4 txCodecType]);
  [string appendFormat:@"video.rxCodecType     = %tu, %@\n", rxCodecType, v11];

  video5 = [(AVCMediaStreamConfig *)self video];
  videoResolution = [video5 videoResolution];
  video6 = [(AVCMediaStreamConfig *)self video];
  videoResolution2 = [video6 videoResolution];
  if (videoResolution2 < 0xF && ((0x43FFu >> videoResolution2) & 1) != 0)
  {
    v16 = off_2797294E8[videoResolution2];
  }

  else
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown AVC video resolution (%ld)", videoResolution2];
  }

  [string appendFormat:@"video.videoResolution = %tu, %@\n", videoResolution, v16];

  video7 = [(AVCMediaStreamConfig *)self video];
  [string appendFormat:@"video.framerate       = %tu\n", objc_msgSend(video7, "framerate")];

  video8 = [(AVCMediaStreamConfig *)self video];
  [string appendFormat:@"video.rxMaxBitrate    = %tu\n", objc_msgSend(video8, "rxMaxBitrate")];

  video9 = [(AVCMediaStreamConfig *)self video];
  [string appendFormat:@"video.rxMinBitrate    = %tu\n", objc_msgSend(video9, "rxMinBitrate")];

  v20 = [string copy];

  return v20;
}

@end