@interface CSAudioInjectionFileOption
- (AudioStreamBasicDescription)outASBD;
- (CSAudioInjectionFileOption)initWithAudioURL:(id)a3 withScaleFactor:(float)a4 outASBD:(AudioStreamBasicDescription *)a5;
- (void)setOutASBD:(AudioStreamBasicDescription *)a3;
@end

@implementation CSAudioInjectionFileOption

- (void)setOutASBD:(AudioStreamBasicDescription *)a3
{
  v3 = *&a3->mSampleRate;
  v4 = *&a3->mBytesPerPacket;
  *&self->_outASBD.mBitsPerChannel = *&a3->mBitsPerChannel;
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

- (CSAudioInjectionFileOption)initWithAudioURL:(id)a3 withScaleFactor:(float)a4 outASBD:(AudioStreamBasicDescription *)a5
{
  v9 = a3;
  v15.receiver = self;
  v15.super_class = CSAudioInjectionFileOption;
  v10 = [(CSAudioInjectionFileOption *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_audioURL, a3);
    v12 = *&a5->mSampleRate;
    v13 = *&a5->mBytesPerPacket;
    *&v11->_outASBD.mBitsPerChannel = *&a5->mBitsPerChannel;
    *&v11->_outASBD.mSampleRate = v12;
    *&v11->_outASBD.mBytesPerPacket = v13;
    v11->_scaleFactor = a4;
  }

  return v11;
}

@end