@interface CSAudioInjectionFileOption
- (AudioStreamBasicDescription)outASBD;
- (CSAudioInjectionFileOption)initWithAudioURL:(id)l withScaleFactor:(float)factor outASBD:(AudioStreamBasicDescription *)d;
- (void)setOutASBD:(AudioStreamBasicDescription *)d;
@end

@implementation CSAudioInjectionFileOption

- (void)setOutASBD:(AudioStreamBasicDescription *)d
{
  v3 = *&d->mSampleRate;
  v4 = *&d->mBytesPerPacket;
  *&self->_outASBD.mBitsPerChannel = *&d->mBitsPerChannel;
  *&self->_outASBD.mSampleRate = v3;
  *&self->_outASBD.mBytesPerPacket = v4;
}

- (AudioStreamBasicDescription)outASBD
{
  v3 = *&self[1].mFormatID;
  *&retstr->mSampleRate = *&self->mBitsPerChannel;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = *&self[1].mBytesPerFrame;
  return self;
}

- (CSAudioInjectionFileOption)initWithAudioURL:(id)l withScaleFactor:(float)factor outASBD:(AudioStreamBasicDescription *)d
{
  lCopy = l;
  v15.receiver = self;
  v15.super_class = CSAudioInjectionFileOption;
  v10 = [(CSAudioInjectionFileOption *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_audioURL, l);
    v12 = *&d->mSampleRate;
    v13 = *&d->mBytesPerPacket;
    *&v11->_outASBD.mBitsPerChannel = *&d->mBitsPerChannel;
    *&v11->_outASBD.mSampleRate = v12;
    *&v11->_outASBD.mBytesPerPacket = v13;
    v11->_scaleFactor = factor;
  }

  return v11;
}

@end