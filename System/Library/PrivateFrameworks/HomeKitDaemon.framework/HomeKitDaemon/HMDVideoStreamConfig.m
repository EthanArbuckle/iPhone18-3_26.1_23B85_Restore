@interface HMDVideoStreamConfig
- (id)description;
@end

@implementation HMDVideoStreamConfig

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v22.receiver = self;
  v22.super_class = HMDVideoStreamConfig;
  [(HMDMediaStreamConfig *)&v22 addToDescription:v3];
  [v3 appendFormat:@"\n"];
  v4 = [(AVCMediaStreamConfig *)self video];
  v5 = [v4 txCodecType];
  v6 = [(AVCMediaStreamConfig *)self video];
  v7 = AVCVideoCodecTypeAsString([v6 txCodecType]);
  [v3 appendFormat:@"video.txCodecType     = %tu, %@\n", v5, v7];

  v8 = [(AVCMediaStreamConfig *)self video];
  v9 = [v8 rxCodecType];
  v10 = [(AVCMediaStreamConfig *)self video];
  v11 = AVCVideoCodecTypeAsString([v10 txCodecType]);
  [v3 appendFormat:@"video.rxCodecType     = %tu, %@\n", v9, v11];

  v12 = [(AVCMediaStreamConfig *)self video];
  v13 = [v12 videoResolution];
  v14 = [(AVCMediaStreamConfig *)self video];
  v15 = [v14 videoResolution];
  if (v15 < 0xF && ((0x43FFu >> v15) & 1) != 0)
  {
    v16 = off_278679F00[v15];
  }

  else
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown AVC video resolution (%ld)", v15];
  }

  [v3 appendFormat:@"video.videoResolution = %tu, %@\n", v13, v16];

  v17 = [(AVCMediaStreamConfig *)self video];
  [v3 appendFormat:@"video.framerate       = %tu\n", objc_msgSend(v17, "framerate")];

  v18 = [(AVCMediaStreamConfig *)self video];
  [v3 appendFormat:@"video.rxMaxBitrate    = %tu\n", objc_msgSend(v18, "rxMaxBitrate")];

  v19 = [(AVCMediaStreamConfig *)self video];
  [v3 appendFormat:@"video.rxMinBitrate    = %tu\n", objc_msgSend(v19, "rxMinBitrate")];

  v20 = [v3 copy];

  return v20;
}

@end