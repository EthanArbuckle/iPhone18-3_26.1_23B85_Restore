@interface CSNovDetector
- (CSNovDetector)initWithConfigPath:(id)path resourcePath:(id)resourcePath;
- (id)_getAnalyzedResultFromNdresult:(_ndresult *)ndresult;
- (id)getAnalyzedResultForPhId:(unsigned int)id;
- (id)getBestAnalyzedResult;
- (id)getOptionValue:(id)value;
- (id)getSuperVectorWithEndPoint:(unint64_t)point;
- (void)analyzeWavData:(id)data numSamples:(unint64_t)samples;
- (void)analyzeWavFloatData:(id)data numSamples:(unint64_t)samples;
- (void)dealloc;
@end

@implementation CSNovDetector

- (id)getOptionValue:(id)value
{
  v5 = 0;
  if (value)
  {
    if (self->_novDetect)
    {
      [value UTF8String];
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

- (id)getSuperVectorWithEndPoint:(unint64_t)point
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

- (id)_getAnalyzedResultFromNdresult:(_ndresult *)ndresult
{
  if (ndresult)
  {
    v4 = objc_alloc_init(CSNovDetectorResult);
    [(CSNovDetectorResult *)v4 setSampleFed:ndresult->var0];
    [(CSNovDetectorResult *)v4 setBestPhrase:ndresult->var3];
    [(CSNovDetectorResult *)v4 setBestStart:ndresult->var1];
    [(CSNovDetectorResult *)v4 setBestEnd:ndresult->var2];
    *&v5 = ndresult->var4;
    [(CSNovDetectorResult *)v4 setBestScore:v5];
    [(CSNovDetectorResult *)v4 setEarlyWarning:ndresult->var5];
    [(CSNovDetectorResult *)v4 setIsRescoring:ndresult->var6];
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

- (id)getAnalyzedResultForPhId:(unsigned int)id
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

- (void)analyzeWavFloatData:(id)data numSamples:(unint64_t)samples
{
  novDetect = self->_novDetect;
  dataCopy = data;
  bytes = [data bytes];

  MEMORY[0x1EEE50838](novDetect, bytes, samples);
}

- (void)analyzeWavData:(id)data numSamples:(unint64_t)samples
{
  novDetect = self->_novDetect;
  dataCopy = data;
  bytes = [data bytes];

  MEMORY[0x1EEE50830](novDetect, bytes, samples);
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

- (CSNovDetector)initWithConfigPath:(id)path resourcePath:(id)resourcePath
{
  v25 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  resourcePathCopy = resourcePath;
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
    *v24 = pathCopy;
    *&v24[8] = 2114;
    *&v24[10] = resourcePathCopy;
    _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Initializing NDAPI using %{public}@, %{public}@", buf, 0x20u);
    novDetect = v8->_novDetect;
  }

  [pathCopy UTF8String];
  [resourcePathCopy cStringUsingEncoding:4];
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