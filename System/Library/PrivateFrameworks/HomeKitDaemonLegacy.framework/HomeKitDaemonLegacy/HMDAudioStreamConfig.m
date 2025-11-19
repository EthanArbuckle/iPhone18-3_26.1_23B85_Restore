@interface HMDAudioStreamConfig
- (id)description;
@end

@implementation HMDAudioStreamConfig

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v21.receiver = self;
  v21.super_class = HMDAudioStreamConfig;
  [(HMDMediaStreamConfig *)&v21 addToDescription:v3];
  [v3 appendFormat:@"\n"];
  v4 = [(AVCMediaStreamConfig *)self audio];
  v5 = [v4 codecType];
  v6 = [(AVCMediaStreamConfig *)self audio];
  v7 = [v6 codecType];
  if (v7 < 0xC && ((0xFBFu >> v7) & 1) != 0)
  {
    v8 = off_279729488[v7];
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown AVC audio codec type (%ld)", v7];
  }

  [v3 appendFormat:@"audio.codecType       = %tu, %@\n", v5, v8];

  v9 = [(AVCMediaStreamConfig *)self audio];
  [v3 appendFormat:@"audio.dtmfPayloadType = %tu\n", objc_msgSend(v9, "dtmfPayloadType")];

  v10 = [(AVCMediaStreamConfig *)self audio];
  [v10 isOctectAligned];
  v11 = HMFBooleanToString();
  [v3 appendFormat:@"audio.octetAligned    = %@\n", v11];

  v12 = [(AVCMediaStreamConfig *)self audio];
  [v12 isDTXEnabled];
  v13 = HMFEnabledStatusToString();
  [v3 appendFormat:@"audio.dtxEnabled      = %@\n", v13];

  v14 = [(AVCMediaStreamConfig *)self audio];
  [v3 appendFormat:@"audio.audioStreamMode = %tu\n", objc_msgSend(v14, "audioStreamMode")];

  v15 = [(AVCMediaStreamConfig *)self audio];
  [v15 isCNEnabled];
  v16 = HMFEnabledStatusToString();
  [v3 appendFormat:@"audio.cnEnabled       = %@\n", v16];

  v17 = [(AVCMediaStreamConfig *)self audio];
  [v3 appendFormat:@"audio.cnPayloadType   = %tu\n", objc_msgSend(v17, "cnPayloadType")];

  v18 = [(AVCMediaStreamConfig *)self audio];
  [v3 appendFormat:@"audio.ptime           = %tu ms\n", objc_msgSend(v18, "ptime")];

  v19 = [v3 copy];

  return v19;
}

@end