@interface CSNovDetector
- (CSNovDetector)initWithConfigPath:(id)a3 resourcePath:(id)a4;
- (id)_getAnalyzedResultFromNdresult:(_ndresult *)a3;
- (id)getAnalyzedResultForPhId:(unsigned int)a3;
- (id)getBestAnalyzedResult;
- (id)getOptionValue:(id)a3;
- (id)getSuperVectorWithEndPoint:(unint64_t)a3;
- (void)analyzeWavData:(id)a3 numSamples:(unint64_t)a4;
- (void)analyzeWavFloatData:(id)a3 numSamples:(unint64_t)a4;
- (void)dealloc;
@end

@implementation CSNovDetector

- (id)getOptionValue:(id)a3
{
  v5 = 0;
  if (a3)
  {
    if (self->_novDetect)
    {
      [a3 UTF8String];
      v5 = nd_getoption();
      if (v5)
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
      }
    }

    v3 = vars8;
  }

  return v5;
}

- (id)getSuperVectorWithEndPoint:(unint64_t)a3
{
  novDetect = self->_novDetect;
  if (novDetect)
  {
    novDetect = nd_getsupervector();
    if (novDetect)
    {
      novDetect = [MEMORY[0x1E695DEF0] dataWithBytes:*novDetect length:4 * novDetect[2]];
    }

    v3 = vars8;
  }

  return novDetect;
}

- (id)_getAnalyzedResultFromNdresult:(_ndresult *)a3
{
  if (a3)
  {
    v4 = objc_alloc_init(CSNovDetectorResult);
    [(CSNovDetectorResult *)v4 setSampleFed:a3->var0];
    [(CSNovDetectorResult *)v4 setBestPhrase:a3->var3];
    [(CSNovDetectorResult *)v4 setBestStart:a3->var1];
    [(CSNovDetectorResult *)v4 setBestEnd:a3->var2];
    *&v5 = a3->var4;
    [(CSNovDetectorResult *)v4 setBestScore:v5];
    [(CSNovDetectorResult *)v4 setEarlyWarning:a3->var5];
    [(CSNovDetectorResult *)v4 setIsRescoring:a3->var6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)getBestAnalyzedResult
{
  novDetect = self->_novDetect;
  if (novDetect)
  {
    novDetect = [(CSNovDetector *)self _getAnalyzedResultFromNdresult:nd_getresults()];
  }

  return novDetect;
}

- (id)getAnalyzedResultForPhId:(unsigned int)a3
{
  novDetect = self->_novDetect;
  if (novDetect)
  {
    v5 = nd_phrasecount();
    v6 = self->_novDetect;
    if (v5 < 1)
    {
      v7 = nd_getresults();
    }

    else
    {
      v7 = nd_getphraseresults();
    }

    novDetect = [(CSNovDetector *)self _getAnalyzedResultFromNdresult:v7];
  }

  return novDetect;
}

- (void)analyzeWavFloatData:(id)a3 numSamples:(unint64_t)a4
{
  novDetect = self->_novDetect;
  v7 = a3;
  v8 = [a3 bytes];

  MEMORY[0x1EEE50838](novDetect, v8, a4);
}

- (void)analyzeWavData:(id)a3 numSamples:(unint64_t)a4
{
  novDetect = self->_novDetect;
  v7 = a3;
  v8 = [a3 bytes];

  MEMORY[0x1EEE50830](novDetect, v8, a4);
}

- (void)dealloc
{
  if (self->_novDetect)
  {
    nd_close();
    self->_novDetect = 0;
  }

  v3.receiver = self;
  v3.super_class = CSNovDetector;
  [(CSNovDetector *)&v3 dealloc];
}

- (CSNovDetector)initWithConfigPath:(id)a3 resourcePath:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = CSNovDetector;
  v8 = [(CSNovDetector *)&v20 init];
  if (!v8)
  {
    goto LABEL_8;
  }

  v8->_novDetect = nd_create();
  v9 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v22 = "[CSNovDetector initWithConfigPath:resourcePath:]";
    v23 = 2114;
    *v24 = v6;
    *&v24[8] = 2114;
    *&v24[10] = v7;
    _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Initializing NDAPI using %{public}@, %{public}@", buf, 0x20u);
    novDetect = v8->_novDetect;
  }

  [v6 UTF8String];
  [v7 cStringUsingEncoding:4];
  v11 = nd_initialize();
  if (v11)
  {
    v12 = v11;
    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v17 = v8->_novDetect;
      v18 = v13;
      v19 = nd_error();
      *buf = 136315650;
      v22 = "[CSNovDetector initWithConfigPath:resourcePath:]";
      v23 = 1026;
      *v24 = v12;
      *&v24[4] = 2082;
      *&v24[6] = v19;
      _os_log_error_impl(&dword_1DDA4B000, v18, OS_LOG_TYPE_ERROR, "%s Failed to initialize NDAPI: err=[%{public}d]:%{public}s", buf, 0x1Cu);
    }

    v14 = 0;
  }

  else
  {
LABEL_8:
    v14 = v8;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

@end