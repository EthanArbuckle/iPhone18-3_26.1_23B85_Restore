@interface REVideoPayload
- (REVideoPayload)initWithAudioInputMode:(REVideoPayload *)self reverbSendLevel:(SEL)a2 diffuseSpillMapDimensions:(unsigned __int8)a3 specularSpillMapDimensions:(float)a4 diffuseSpillBlurSigma:(int)a5 specularSpillBlurSigma:(int)a6 desiredViewingMode:(unsigned __int8)a7 preventPlaybackUntilReady:(BOOL)a8;
- (REVideoPayload)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REVideoPayload

- (REVideoPayload)initWithAudioInputMode:(REVideoPayload *)self reverbSendLevel:(SEL)a2 diffuseSpillMapDimensions:(unsigned __int8)a3 specularSpillMapDimensions:(float)a4 diffuseSpillBlurSigma:(int)a5 specularSpillBlurSigma:(int)a6 desiredViewingMode:(unsigned __int8)a7 preventPlaybackUntilReady:(BOOL)a8
{
  v17 = v8;
  v18 = v9;
  v19.receiver = self;
  v19.super_class = REVideoPayload;
  result = [(RESharedResourcePayload *)&v19 init];
  if (result)
  {
    result->_audioInputMode = a3;
    result->_reverbSendLevel = a4;
    *&result->_diffuseSpillMapWidth = v17;
    *&result->_specularSpillMapWidth = v18;
    result->_diffuseSpillBlurSigma = a5;
    result->_specularSpillBlurSigma = a6;
    result->_desiredViewingMode = a7;
    result->_preventPlaybackUntilReady = a8;
  }

  return result;
}

- (REVideoPayload)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = REVideoPayload;
  v5 = [(RESharedResourcePayload *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_audioInputMode = [v4 decodeIntForKey:@"audioInputMode"];
    [v4 decodeFloatForKey:@"reverbSendLevel"];
    v5->_reverbSendLevel = v6;
    v5->_diffuseSpillMapWidth = [v4 decodeInt32ForKey:@"diffuseSpillMapWidth"];
    v5->_diffuseSpillMapHeight = [v4 decodeInt32ForKey:@"diffuseSpillMapHeight"];
    v5->_specularSpillMapWidth = [v4 decodeInt32ForKey:@"specularSpillMapWidth"];
    v5->_specularSpillMapHeight = [v4 decodeInt32ForKey:@"specularSpillMapHeight"];
    v5->_diffuseSpillBlurSigma = [v4 decodeInt32ForKey:@"diffuseSpillBlurSigma"];
    v5->_specularSpillBlurSigma = [v4 decodeInt32ForKey:@"specularSpillBlurSigma"];
    v5->_desiredViewingMode = [v4 decodeIntForKey:@"desiredViewingMode"];
    v5->_preventPlaybackUntilReady = [v4 decodeBoolForKey:@"preventPlaybackUntilReady"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInt:self->_audioInputMode forKey:@"audioInputMode"];
  *&v4 = self->_reverbSendLevel;
  [v5 encodeFloat:@"reverbSendLevel" forKey:v4];
  [v5 encodeInt32:self->_diffuseSpillMapWidth forKey:@"diffuseSpillMapWidth"];
  [v5 encodeInt32:self->_diffuseSpillMapHeight forKey:@"diffuseSpillMapHeight"];
  [v5 encodeInt32:self->_specularSpillMapWidth forKey:@"specularSpillMapWidth"];
  [v5 encodeInt32:self->_specularSpillMapHeight forKey:@"specularSpillMapHeight"];
  [v5 encodeInt32:self->_diffuseSpillBlurSigma forKey:@"diffuseSpillBlurSigma"];
  [v5 encodeInt32:self->_specularSpillBlurSigma forKey:@"specularSpillBlurSigma"];
  [v5 encodeInt:self->_desiredViewingMode forKey:@"desiredViewingMode"];
  [v5 encodeBool:self->_preventPlaybackUntilReady forKey:@"preventPlaybackUntilReady"];
}

@end