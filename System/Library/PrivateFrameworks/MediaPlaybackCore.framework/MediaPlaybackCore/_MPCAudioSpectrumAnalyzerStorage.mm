@interface _MPCAudioSpectrumAnalyzerStorage
- (_MPCAudioSpectrumAnalyzerStorage)initWithMaximumNumberOfFrames:(int64_t)frames sampleRate:(float)rate;
- (void)_destroyFFTSetup;
- (void)_freeBuffers;
- (void)_prepareBuffers;
- (void)analyzeAudioData:(void *)data numberFrames:(unsigned int)frames observers:(id)observers;
- (void)analyzeFrequencies:(AudioBufferList *)frequencies numberFrames:(unint64_t)frames observers:(id)observers;
- (void)dealloc;
@end

@implementation _MPCAudioSpectrumAnalyzerStorage

- (void)_prepareBuffers
{
  self->_fftSetup = vDSP_create_fftsetup(self->_log2N, 0);
  self->_fftBuffer.imagp = malloc_type_calloc(self->_halfN, 4uLL, 0x100004052888210uLL);
  self->_fftBuffer.realp = malloc_type_calloc(self->_halfN, 4uLL, 0x100004052888210uLL);
  self->_intermediateBuffer = malloc_type_calloc(self->_maxNumberOfFrames, 4uLL, 0x100004052888210uLL);
}

- (void)analyzeAudioData:(void *)data numberFrames:(unsigned int)frames observers:(id)observers
{
  v53 = *MEMORY[0x1E69E9840];
  observersCopy = observers;
  intermediateBuffer = self->_intermediateBuffer;
  if (intermediateBuffer != data)
  {
    memcpy(intermediateBuffer, data, 4 * frames);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v10 = [observersCopy countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v47;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v47 != v12)
        {
          objc_enumerationMutation(observersCopy);
        }

        [*(*(&v46 + 1) + 8 * i) beginReport];
      }

      v11 = [observersCopy countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v11);
  }

  vDSP_ctoz(self->_intermediateBuffer, 2, &self->_fftBuffer, 1, self->_halfN);
  vDSP_fft_zrip(self->_fftSetup, &self->_fftBuffer, 1, self->_log2N, 1);
  vDSP_vclr(self->_intermediateBuffer, 1, frames);
  vDSP_zaspec(&self->_fftBuffer, self->_intermediateBuffer, self->_halfN);
  __C = 0.0;
  vDSP_sve(self->_intermediateBuffer, 1, &__C, self->_halfN);
  if (__C > 0.0 && self->_halfN >= 1)
  {
    v14 = 0;
    framesCopy = frames;
    do
    {
      v16 = self->_intermediateBuffer[v14];
      v17 = __C;
      sampleRate = self->_sampleRate;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v19 = observersCopy;
      v20 = [v19 countByEnumeratingWithState:&v41 objects:v51 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = v16 / v17;
        v23 = *v42;
        v24 = (sampleRate * v14) / framesCopy;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v42 != v23)
            {
              objc_enumerationMutation(v19);
            }

            v26 = *(*(&v41 + 1) + 8 * j);
            v27 = v26[4];
            if (v27)
            {
              v28 = 0;
              v29 = (v26[1] + 24);
              do
              {
                if (*(v29 - 4) < v24 && *(v29 - 3) >= v24)
                {
                  ++*v29;
                  *(v29 - 2) = v22 + *(v29 - 2);
                  v27 = v26[4];
                }

                ++v28;
                v29 += 8;
              }

              while (v28 < v27);
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v41 objects:v51 count:16];
        }

        while (v21);
      }

      ++v14;
    }

    while (self->_halfN > v14);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v30 = observersCopy;
  v31 = [v30 countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v31)
  {
    v33 = v31;
    v34 = *v38;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v38 != v34)
        {
          objc_enumerationMutation(v30);
        }

        v36 = *(*(&v37 + 1) + 8 * k);
        *&v32 = __C;
        [v36 setPowerLevel:{v32, v37}];
        [v36 finishReport];
      }

      v33 = [v30 countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v33);
  }
}

- (void)analyzeFrequencies:(AudioBufferList *)frequencies numberFrames:(unint64_t)frames observers:(id)observers
{
  observersCopy = observers;
  if (frequencies->mNumberBuffers)
  {
    mData = frequencies->mBuffers[0].mData;
    if (frequencies->mNumberBuffers == 1)
    {
      if (!mData)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v10 = *&frequencies[1].mBuffers[0].mNumberChannels;
      if (mData && v10)
      {
        __C = 0.5;
        vDSP_vasm(mData, 1, v10, 1, &__C, self->_intermediateBuffer, 1, frames);
LABEL_11:
        [(_MPCAudioSpectrumAnalyzerStorage *)self analyzeAudioData:self->_intermediateBuffer numberFrames:frames observers:observersCopy];
        goto LABEL_12;
      }

      if (!mData)
      {
        if (!v10)
        {
          goto LABEL_12;
        }

        intermediateBuffer = self->_intermediateBuffer;
        mData = *&frequencies[1].mBuffers[0].mNumberChannels;
        v12 = 4 * frames;
        goto LABEL_10;
      }
    }

    intermediateBuffer = self->_intermediateBuffer;
    v12 = 4 * frames;
LABEL_10:
    memcpy(intermediateBuffer, mData, v12);
    goto LABEL_11;
  }

LABEL_12:
}

- (void)_freeBuffers
{
  intermediateBuffer = self->_intermediateBuffer;
  if (intermediateBuffer)
  {
    free(intermediateBuffer);
  }

  imagp = self->_fftBuffer.imagp;
  if (imagp)
  {
    free(imagp);
  }

  realp = self->_fftBuffer.realp;
  if (realp)
  {

    free(realp);
  }
}

- (void)_destroyFFTSetup
{
  fftSetup = self->_fftSetup;
  if (fftSetup)
  {
    vDSP_destroy_fftsetup(fftSetup);
    self->_fftSetup = 0;
  }
}

- (void)dealloc
{
  [(_MPCAudioSpectrumAnalyzerStorage *)self _freeBuffers];
  [(_MPCAudioSpectrumAnalyzerStorage *)self _destroyFFTSetup];
  v3.receiver = self;
  v3.super_class = _MPCAudioSpectrumAnalyzerStorage;
  [(_MPCAudioSpectrumAnalyzerStorage *)&v3 dealloc];
}

- (_MPCAudioSpectrumAnalyzerStorage)initWithMaximumNumberOfFrames:(int64_t)frames sampleRate:(float)rate
{
  v9.receiver = self;
  v9.super_class = _MPCAudioSpectrumAnalyzerStorage;
  v6 = [(_MPCAudioSpectrumAnalyzerStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_sampleRate = rate;
    v6->_maxNumberOfFrames = frames;
    v6->_halfN = (frames / 2);
    v6->_log2N = vcvtpd_s64_f64(log2(frames));
    [(_MPCAudioSpectrumAnalyzerStorage *)v7 _prepareBuffers];
  }

  return v7;
}

@end