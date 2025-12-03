@interface REVideoPayload
- (REVideoPayload)initWithAudioInputMode:(REVideoPayload *)self reverbSendLevel:(SEL)level diffuseSpillMapDimensions:(unsigned __int8)dimensions specularSpillMapDimensions:(float)mapDimensions diffuseSpillBlurSigma:(int)sigma specularSpillBlurSigma:(int)blurSigma desiredViewingMode:(unsigned __int8)mode preventPlaybackUntilReady:(BOOL)ready;
- (REVideoPayload)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REVideoPayload

- (REVideoPayload)initWithAudioInputMode:(REVideoPayload *)self reverbSendLevel:(SEL)level diffuseSpillMapDimensions:(unsigned __int8)dimensions specularSpillMapDimensions:(float)mapDimensions diffuseSpillBlurSigma:(int)sigma specularSpillBlurSigma:(int)blurSigma desiredViewingMode:(unsigned __int8)mode preventPlaybackUntilReady:(BOOL)ready
{
  v17 = v8;
  v18 = v9;
  v19.receiver = self;
  v19.super_class = REVideoPayload;
  result = [(RESharedResourcePayload *)&v19 init];
  if (result)
  {
    result->_audioInputMode = dimensions;
    result->_reverbSendLevel = mapDimensions;
    *&result->_diffuseSpillMapWidth = v17;
    *&result->_specularSpillMapWidth = v18;
    result->_diffuseSpillBlurSigma = sigma;
    result->_specularSpillBlurSigma = blurSigma;
    result->_desiredViewingMode = mode;
    result->_preventPlaybackUntilReady = ready;
  }

  return result;
}

- (REVideoPayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = REVideoPayload;
  v5 = [(RESharedResourcePayload *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_audioInputMode = [coderCopy decodeIntForKey:@"audioInputMode"];
    [coderCopy decodeFloatForKey:@"reverbSendLevel"];
    v5->_reverbSendLevel = v6;
    v5->_diffuseSpillMapWidth = [coderCopy decodeInt32ForKey:@"diffuseSpillMapWidth"];
    v5->_diffuseSpillMapHeight = [coderCopy decodeInt32ForKey:@"diffuseSpillMapHeight"];
    v5->_specularSpillMapWidth = [coderCopy decodeInt32ForKey:@"specularSpillMapWidth"];
    v5->_specularSpillMapHeight = [coderCopy decodeInt32ForKey:@"specularSpillMapHeight"];
    v5->_diffuseSpillBlurSigma = [coderCopy decodeInt32ForKey:@"diffuseSpillBlurSigma"];
    v5->_specularSpillBlurSigma = [coderCopy decodeInt32ForKey:@"specularSpillBlurSigma"];
    v5->_desiredViewingMode = [coderCopy decodeIntForKey:@"desiredViewingMode"];
    v5->_preventPlaybackUntilReady = [coderCopy decodeBoolForKey:@"preventPlaybackUntilReady"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:self->_audioInputMode forKey:@"audioInputMode"];
  *&v4 = self->_reverbSendLevel;
  [coderCopy encodeFloat:@"reverbSendLevel" forKey:v4];
  [coderCopy encodeInt32:self->_diffuseSpillMapWidth forKey:@"diffuseSpillMapWidth"];
  [coderCopy encodeInt32:self->_diffuseSpillMapHeight forKey:@"diffuseSpillMapHeight"];
  [coderCopy encodeInt32:self->_specularSpillMapWidth forKey:@"specularSpillMapWidth"];
  [coderCopy encodeInt32:self->_specularSpillMapHeight forKey:@"specularSpillMapHeight"];
  [coderCopy encodeInt32:self->_diffuseSpillBlurSigma forKey:@"diffuseSpillBlurSigma"];
  [coderCopy encodeInt32:self->_specularSpillBlurSigma forKey:@"specularSpillBlurSigma"];
  [coderCopy encodeInt:self->_desiredViewingMode forKey:@"desiredViewingMode"];
  [coderCopy encodeBool:self->_preventPlaybackUntilReady forKey:@"preventPlaybackUntilReady"];
}

@end