@interface HMDAudioStreamConfig
- (id)description;
@end

@implementation HMDAudioStreamConfig

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  v21.receiver = self;
  v21.super_class = HMDAudioStreamConfig;
  [(HMDMediaStreamConfig *)&v21 addToDescription:string];
  [string appendFormat:@"\n"];
  audio = [(AVCMediaStreamConfig *)self audio];
  codecType = [audio codecType];
  audio2 = [(AVCMediaStreamConfig *)self audio];
  codecType2 = [audio2 codecType];
  if (codecType2 < 0xC && ((0xFBFu >> codecType2) & 1) != 0)
  {
    v8 = off_278679EA0[codecType2];
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown AVC audio codec type (%ld)", codecType2];
  }

  [string appendFormat:@"audio.codecType       = %tu, %@\n", codecType, v8];

  audio3 = [(AVCMediaStreamConfig *)self audio];
  [string appendFormat:@"audio.dtmfPayloadType = %tu\n", objc_msgSend(audio3, "dtmfPayloadType")];

  audio4 = [(AVCMediaStreamConfig *)self audio];
  [audio4 isOctectAligned];
  v11 = HMFBooleanToString();
  [string appendFormat:@"audio.octetAligned    = %@\n", v11];

  audio5 = [(AVCMediaStreamConfig *)self audio];
  [audio5 isDTXEnabled];
  v13 = HMFEnabledStatusToString();
  [string appendFormat:@"audio.dtxEnabled      = %@\n", v13];

  audio6 = [(AVCMediaStreamConfig *)self audio];
  [string appendFormat:@"audio.audioStreamMode = %tu\n", objc_msgSend(audio6, "audioStreamMode")];

  audio7 = [(AVCMediaStreamConfig *)self audio];
  [audio7 isCNEnabled];
  v16 = HMFEnabledStatusToString();
  [string appendFormat:@"audio.cnEnabled       = %@\n", v16];

  audio8 = [(AVCMediaStreamConfig *)self audio];
  [string appendFormat:@"audio.cnPayloadType   = %tu\n", objc_msgSend(audio8, "cnPayloadType")];

  audio9 = [(AVCMediaStreamConfig *)self audio];
  [string appendFormat:@"audio.ptime           = %tu ms\n", objc_msgSend(audio9, "ptime")];

  v19 = [string copy];

  return v19;
}

@end