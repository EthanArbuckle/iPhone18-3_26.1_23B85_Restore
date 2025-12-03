@interface FigAudioCaptureConnectionConfiguration
- (BOOL)isEqual:(id)equal;
- (FigAudioCaptureConnectionConfiguration)initWithXPCEncoding:(id)encoding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (id)description;
@end

@implementation FigAudioCaptureConnectionConfiguration

- (id)description
{
  audioCaptureMode = [(FigAudioCaptureConnectionConfiguration *)self audioCaptureMode];
  if (audioCaptureMode > 7)
  {
    v4 = &stru_1F216A3D0;
  }

  else
  {
    v4 = *(&off_1E7999A68 + audioCaptureMode);
  }

  if ([(FigAudioCaptureConnectionConfiguration *)self builtInMicrophonePosition])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@" (POSITION:%@)", +[FigCaptureSourceConfiguration stringForSourcePosition:](FigCaptureSourceConfiguration, "stringForSourcePosition:", -[FigAudioCaptureConnectionConfiguration builtInMicrophonePosition](self, "builtInMicrophonePosition"))];
  }

  else
  {
    v5 = &stru_1F216A3D0;
  }

  [(FigAudioCaptureConnectionConfiguration *)self builtInMicrophoneRequiredSampleRate];
  v6 = &stru_1F216A3D0;
  if (v7 > 0.0)
  {
    v8 = MEMORY[0x1E696AEC0];
    [(FigAudioCaptureConnectionConfiguration *)self builtInMicrophoneRequiredSampleRate];
    v6 = [v8 stringWithFormat:@", SampleRate:%.2fHz", v9];
  }

  windNoiseRemovalEnabled = [(FigAudioCaptureConnectionConfiguration *)self windNoiseRemovalEnabled];
  if ([(FigAudioCaptureConnectionConfiguration *)self spatialAudioChannelLayoutTag]== 6619138)
  {
    v11 = @", ACLT: kAudioChannelLayoutTag_Stereo";
  }

  else if ([(FigAudioCaptureConnectionConfiguration *)self spatialAudioChannelLayoutTag]== 12451844)
  {
    v11 = @", ACLT: kAudioChannelLayoutTag_HOA_ACN_SN3D";
  }

  else
  {
    v11 = &stru_1F216A3D0;
  }

  if (windNoiseRemovalEnabled)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"AC %p: <%@>%@ -> <%@>, E:%d%@, ACM:%@, WNR:%@%@", self, -[FigCaptureConnectionConfiguration sourceConfiguration](self, "sourceConfiguration"), v5, -[FigCaptureConnectionConfiguration sinkConfiguration](self, "sinkConfiguration"), -[FigCaptureConnectionConfiguration enabled](self, "enabled"), v6, v4, v12, v11];
}

- (id)copyXPCEncoding
{
  v6.receiver = self;
  v6.super_class = FigAudioCaptureConnectionConfiguration;
  copyXPCEncoding = [(FigCaptureConnectionConfiguration *)&v6 copyXPCEncoding];
  xpc_dictionary_set_int64(copyXPCEncoding, "audioCaptureMode", [(FigAudioCaptureConnectionConfiguration *)self audioCaptureMode]);
  xpc_dictionary_set_int64(copyXPCEncoding, "windNoiseRemovalEnabled", [(FigAudioCaptureConnectionConfiguration *)self windNoiseRemovalEnabled]);
  xpc_dictionary_set_int64(copyXPCEncoding, "builtInMicrophonePosition", [(FigAudioCaptureConnectionConfiguration *)self builtInMicrophonePosition]);
  [(FigAudioCaptureConnectionConfiguration *)self builtInMicrophoneRequiredSampleRate];
  xpc_dictionary_set_double(copyXPCEncoding, "builtInMicrophoneRequiredSampleRate", v4);
  xpc_dictionary_set_int64(copyXPCEncoding, "spatialAudioChannelLayoutTag", [(FigAudioCaptureConnectionConfiguration *)self spatialAudioChannelLayoutTag]);
  return copyXPCEncoding;
}

- (FigAudioCaptureConnectionConfiguration)initWithXPCEncoding:(id)encoding
{
  if (encoding)
  {
    v6.receiver = self;
    v6.super_class = FigAudioCaptureConnectionConfiguration;
    v4 = [(FigCaptureConnectionConfiguration *)&v6 initWithXPCEncoding:?];
    if (v4)
    {
      *(&v4->super._enabled + 1) = xpc_dictionary_get_int64(encoding, "audioCaptureMode");
      LOBYTE(v4->_audioCaptureMode) = xpc_dictionary_get_int64(encoding, "windNoiseRemovalEnabled") != 0;
      *&v4->_windNoiseRemovalEnabled = xpc_dictionary_get_int64(encoding, "builtInMicrophonePosition");
      *&v4->_builtInMicrophonePosition = xpc_dictionary_get_double(encoding, "builtInMicrophoneRequiredSampleRate");
      LODWORD(v4->_builtInMicrophoneRequiredSampleRate) = xpc_dictionary_get_int64(encoding, "spatialAudioChannelLayoutTag");
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = FigAudioCaptureConnectionConfiguration;
  v4 = [(FigCaptureConnectionConfiguration *)&v6 copyWithZone:zone];
  [v4 setAudioCaptureMode:{-[FigAudioCaptureConnectionConfiguration audioCaptureMode](self, "audioCaptureMode")}];
  [v4 setWindNoiseRemovalEnabled:{-[FigAudioCaptureConnectionConfiguration windNoiseRemovalEnabled](self, "windNoiseRemovalEnabled")}];
  [v4 setBuiltInMicrophonePosition:{-[FigAudioCaptureConnectionConfiguration builtInMicrophonePosition](self, "builtInMicrophonePosition")}];
  [(FigAudioCaptureConnectionConfiguration *)self builtInMicrophoneRequiredSampleRate];
  [v4 setBuiltInMicrophoneRequiredSampleRate:?];
  [v4 setSpatialAudioChannelLayoutTag:{-[FigAudioCaptureConnectionConfiguration spatialAudioChannelLayoutTag](self, "spatialAudioChannelLayoutTag")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v14.receiver = self;
  v14.super_class = FigAudioCaptureConnectionConfiguration;
  v5 = [(FigCaptureConnectionConfiguration *)&v14 isEqual:?];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 = -[FigAudioCaptureConnectionConfiguration audioCaptureMode](self, "audioCaptureMode"), v6 == [equal audioCaptureMode]) && (v7 = -[FigAudioCaptureConnectionConfiguration windNoiseRemovalEnabled](self, "windNoiseRemovalEnabled"), v7 == objc_msgSend(equal, "windNoiseRemovalEnabled")) && (v8 = -[FigAudioCaptureConnectionConfiguration builtInMicrophonePosition](self, "builtInMicrophonePosition"), v8 == objc_msgSend(equal, "builtInMicrophonePosition")) && (-[FigAudioCaptureConnectionConfiguration builtInMicrophoneRequiredSampleRate](self, "builtInMicrophoneRequiredSampleRate"), v10 = v9, objc_msgSend(equal, "builtInMicrophoneRequiredSampleRate"), v10 == v11))
    {
      spatialAudioChannelLayoutTag = [(FigAudioCaptureConnectionConfiguration *)self spatialAudioChannelLayoutTag];
      LOBYTE(v5) = spatialAudioChannelLayoutTag == [equal spatialAudioChannelLayoutTag];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

@end