@interface CSAudioSpectralMeter
- (CSAudioSpectralMeter)initWithSampleRate:(float)rate windowSize:(unint64_t)size;
- (id)getFrequencyMagnitudesResult;
- (void)dealloc;
- (void)processAudioChunk:(id)chunk;
- (void)reset;
- (void)setOutputFrequencyBandsInHz:(id)hz;
@end

@implementation CSAudioSpectralMeter

- (void)dealloc
{
  std::unique_ptr<CSAudioSpectralMeterImpl>::reset[abi:ne200100](&self->_spectralMeterImpl.__ptr_, 0);
  v3.receiver = self;
  v3.super_class = CSAudioSpectralMeter;
  [(CSAudioSpectralMeter *)&v3 dealloc];
}

- (id)getFrequencyMagnitudesResult
{
  FrequencyMagnitudesResult = CSAudioSpectralMeterImpl::getFrequencyMagnitudesResult(self->_spectralMeterImpl.__ptr_);
  if (FrequencyMagnitudesResult)
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:(FrequencyMagnitudesResult[1] - *FrequencyMagnitudesResult) >> 2];
    v5 = *FrequencyMagnitudesResult;
    v6 = FrequencyMagnitudesResult[1];
    if (*FrequencyMagnitudesResult != v6)
    {
      do
      {
        LODWORD(v4) = *v5;
        v7 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
        [v3 addObject:v7];

        ++v5;
      }

      while (v5 != v6);
    }

    FrequencyMagnitudesResult = [MEMORY[0x1E695DEC8] arrayWithArray:v3];
  }

  return FrequencyMagnitudesResult;
}

- (void)processAudioChunk:(id)chunk
{
  chunkCopy = chunk;
  if (self->_enable)
  {
    v7 = chunkCopy;
    v5 = [chunkCopy dataForChannel:0];
    v6 = [CSFLPCMTypeConverter convertToFloatLPCMBufFromShortLPCMBuf:v5];
    CSAudioSpectralMeterImpl::processFloatBuffer(self->_spectralMeterImpl.__ptr_, [v6 bytes], objc_msgSend(v7, "numSamples"));

    chunkCopy = v7;
  }
}

- (void)setOutputFrequencyBandsInHz:(id)hz
{
  v13 = *MEMORY[0x1E69E9840];
  hzCopy = hz;
  if ([hzCopy count])
  {
    std::vector<float>::vector[abi:ne200100](&buf, [hzCopy count]);
    for (i = 0; i < [hzCopy count]; ++i)
    {
      v6 = [hzCopy objectAtIndexedSubscript:i];
      [v6 floatValue];
      *(buf + 4 * i) = v7;
    }

    ptr = self->_spectralMeterImpl.__ptr_;
    memset(__p, 0, sizeof(__p));
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(__p, buf, *(&buf + 1), (*(&buf + 1) - buf) >> 2);
    CSAudioSpectralMeterImpl::setOutputFrequencyBandsInHz(ptr, __p);
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (buf)
    {
      *(&buf + 1) = buf;
      operator delete(buf);
    }
  }

  else
  {
    v9 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[CSAudioSpectralMeter setOutputFrequencyBandsInHz:]";
      _os_log_fault_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_FAULT, "%s setOutputBands array count must be greater than 0. Bail.", &buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)reset
{
  ptr = self->_spectralMeterImpl.__ptr_;
  *(ptr + 14) = 0;
  *(ptr + 5) = 0;
  v3 = *(ptr + 13);
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
}

- (CSAudioSpectralMeter)initWithSampleRate:(float)rate windowSize:(unint64_t)size
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = CSAudioSpectralMeter;
  if ([(CSAudioSpectralMeter *)&v7 init])
  {
    operator new();
  }

  v4 = 0;

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

@end