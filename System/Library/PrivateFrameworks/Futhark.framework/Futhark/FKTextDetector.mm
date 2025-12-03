@interface FKTextDetector
- (BOOL)disableMultithreading;
- (FKTextDetector)initWithDimensions:(CGSize)dimensions;
- (NSString)recognitionLanguage;
- (id)createFeaturesForROI:(CGRect)i originalSize:(CGSize)size lastID:(int64_t *)d;
- (id)createFeaturesForSessionScale:(int)scale roi:(CGRect)roi originalSize:(CGSize)size startID:(int64_t *)d;
- (id)detectFeaturesInBuffer:(__CVBuffer *)buffer error:(id *)error;
- (id)detectFeaturesInBuffer:(__CVBuffer *)buffer withRegionOfInterest:(CGRect)interest error:(id *)error;
- (unint64_t)getMemoryUsageOfLastOperation;
- (unsigned)isValidPixelBuffer:(__CVBuffer *)buffer regionOfInterest:(CGRect)interest error:(id *)error;
- (void)dealloc;
- (void)mergeFeature:(id)feature withArray:(id)array;
- (void)resetOptions;
- (void)resetTimers;
- (void)runRecognizerOnFeatures:(id)features roi:(CGRect)roi size:(CGSize)size lastID:(int64_t *)d;
- (void)setMergeSettings:(id)settings;
- (void)setMultiThreadingQueue:(id)queue;
- (void)setRecognitionLanguage:(id)language;
- (void)setRecognitionLanguages:(id)languages;
- (void)translatePropertiesToOptionsWithNumSessions:(int)sessions;
@end

@implementation FKTextDetector

- (BOOL)disableMultithreading
{
  if (disableMultithreading_onceToken != -1)
  {
    [FKTextDetector disableMultithreading];
  }

  return disableMultithreading_disableMultithreading;
}

void *__39__FKTextDetector_disableMultithreading__block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (result)
  {
    result = [result BOOLValue];
  }

  disableMultithreading_disableMultithreading = result;
  return result;
}

- (void)setMultiThreadingQueue:(id)queue
{
  if ([(FKTextDetector *)self disableMultithreading])
  {
    queueCopy = 0;
  }

  else
  {
    queueCopy = queue;
  }

  self->_multiThreadingQueue = queueCopy;
}

- (NSString)recognitionLanguage
{
  recognitionLanguages = self->_recognitionLanguages;
  if (!recognitionLanguages || ![(NSArray *)recognitionLanguages count])
  {
    return 0;
  }

  v4 = self->_recognitionLanguages;

  return [(NSArray *)v4 objectAtIndexedSubscript:0];
}

- (void)setRecognitionLanguage:(id)language
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (language)
  {
    v5[0] = language;
    -[FKTextDetector setRecognitionLanguages:](self, "setRecognitionLanguages:", [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1]);
  }

  else
  {

    self->_recognitionLanguages = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)setRecognitionLanguages:(id)languages
{
  v17 = *MEMORY[0x1E69E9840];

  self->_recognitionLanguages = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    array = [MEMORY[0x1E695DF70] array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [languages countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(languages);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 length])
          {
            [(NSArray *)array addObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [languages countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    if ([(NSArray *)array count])
    {
      self->_recognitionLanguages = array;
    }

    else
    {
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (FKTextDetector)initWithDimensions:(CGSize)dimensions
{
  height = dimensions.height;
  width = dimensions.width;
  v12.receiver = self;
  v12.super_class = FKTextDetector;
  v5 = [(FKTextDetector *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(FKTextDetector *)v5 resetOptions];
    v7 = 0;
    if (width >= height)
    {
      v8 = height;
    }

    else
    {
      v8 = width;
    }

    do
    {
      v9 = v7 + 1;
      if ((v7 + 1) > 7)
      {
        break;
      }

      v10 = v8 >> v7++;
    }

    while (v10 > 64);
    if (createOrResetSessions(v6->_sessions, width, height, v9))
    {

      return 0;
    }
  }

  return v6;
}

- (void)resetOptions
{
  [(FKTextDetector *)self setThresholdingAlgorithm:4];
  [(FKTextDetector *)self setContrastLimit:48];
  [(FKTextDetector *)self setBinarizerLimit:128];
  [(FKTextDetector *)self setMinimumCharacterHeight:10];
  [(FKTextDetector *)self setDetectDiacritics:1];
  [(FKTextDetector *)self setEnableBinarizerFiltering:0];
  [(FKTextDetector *)self setReturnSubFeatures:0];
  [(FKTextDetector *)self setMergeSettings:0x800000000];
  [(FKTextDetector *)self setMinimizeFalseDetections:1];
  [(FKTextDetector *)self setRecognitionLanguages:0];
  if ([(FKTextDetector *)self disableMultithreading])
  {

    [(FKTextDetector *)self setMultiThreadingQueue:0];
  }

  else
  {
    v3 = dispatch_queue_create("com.apple.futhark.recognitionQueue", MEMORY[0x1E69E96A8]);
    [(FKTextDetector *)self setMultiThreadingQueue:v3];

    dispatch_release(v3);
  }
}

- (void)dealloc
{
  for (i = 8; i != 72; i += 8)
  {
    v4 = *(&self->super.isa + i);
    if (v4)
    {
      FKSessionDestroy(v4);
      *(&self->super.isa + i) = 0;
    }
  }

  [(FKTextDetector *)self setMultiThreadingQueue:0];
  FKSessionDestroyRecognizer(&self->_recognizer->var0);
  [(FKTextDetector *)self setRecognitionLanguages:0];
  v5.receiver = self;
  v5.super_class = FKTextDetector;
  [(FKTextDetector *)&v5 dealloc];
}

- (void)setMergeSettings:(id)settings
{
  var1 = settings.var1;
  v4 = settings.var0 & ~(settings.var0 >> 31);
  if (v4 >= 7)
  {
    v4 = 7;
  }

  self->_mergeSettings.minScale = v4;
  if (v4 > settings.var1)
  {
    var1 = v4;
  }

  if (var1 >= 8)
  {
    var1 = 8;
  }

  self->_mergeSettings.maxScale = var1;
}

- (void)translatePropertiesToOptionsWithNumSessions:(int)sessions
{
  if ([(FKTextDetector *)self recognitionLanguage])
  {
    v5 = ![(NSString *)[(FKTextDetector *)self recognitionLanguage] isEqualToString:&stru_1F5C041F0];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  if (sessions >= 1)
  {
    v6 = 0;
    sessions = self->_sessions;
    v8 = v5 ^ 1;
    sessionsCopy = sessions;
    do
    {
      minimumCharacterHeight = [(FKTextDetector *)self minimumCharacterHeight];
      if (v6)
      {
        v11 = v8;
      }

      else
      {
        v11 = 1;
      }

      if ((v11 & 1) == 0)
      {
        v12 = minimumCharacterHeight <= 16 ? 16 : minimumCharacterHeight;
        if (*(*(&self->super.isa + v6) + 200))
        {
          minimumCharacterHeight = v12;
        }
      }

      sessions[v6]->var0 = minimumCharacterHeight;
      sessions[v6]->var3 = [(FKTextDetector *)self minimizeFalseDetections];
      sessions[v6]->var4 = [(FKTextDetector *)self minimizeFalseDetections];
      sessions[v6]->var5 = [(FKTextDetector *)self minimizeFalseDetections];
      sessions[v6]->var34 = [(FKTextDetector *)self colorSplits];
      recognitionLanguages = [(FKTextDetector *)self recognitionLanguages];
      if (recognitionLanguages)
      {
        v14 = recognitionLanguages;
        if ([(NSArray *)recognitionLanguages count])
        {
          v15 = 0;
          do
          {
            v16 = sessions[v6];
            if (v15)
            {
              FKRecognizeAddLanguage(v16, [-[NSArray objectAtIndexedSubscript:](v14 objectAtIndexedSubscript:{v15), "UTF8String"}]);
            }

            else
            {
              FKRecognizeSetLanguage(v16, [-[NSArray objectAtIndexedSubscript:](v14 objectAtIndexedSubscript:{0), "UTF8String"}]);
            }

            ++v15;
          }

          while ([(NSArray *)v14 count]> v15);
        }
      }

      ++v6;
    }

    while (v6 != sessionsCopy);
  }
}

- (id)createFeaturesForSessionScale:(int)scale roi:(CGRect)roi originalSize:(CGSize)size startID:(int64_t *)d
{
  v6 = *d;
  v21 = 0;
  v22 = v6;
  v7 = self->_sessions[scale];
  origin = self->_roi.origin;
  size = self->_size;
  v20 = origin;
  LODWORD(v21) = scale;
  if (!v7)
  {
    return MEMORY[0x1E695E0F0];
  }

  var31 = v7->var31;
  if (var31 != -1)
  {
    v12 = MEMORY[0x1E695DF70];
    goto LABEL_4;
  }

  if (![(FKTextDetector *)self createFeaturesForAllConcomps:size])
  {
    return MEMORY[0x1E695E0F0];
  }

  var31 = v7->var31;
  v12 = MEMORY[0x1E695DF70];
  if (var31 != -1)
  {
LABEL_4:
    v13 = 0;
    do
    {
      var31 = *(v7->var29 + 26 * var31);
      ++v13;
    }

    while (var31 != -1);
  }

  v14 = [v12 arrayWithCapacity:{size, v20, v21}];
  for (i = v7->var31; i != -1; i = *(v7->var29 + 26 * i))
  {
    [v14 addObject:{+[FKTextFeature featureFromSequenceIndex:session:scaling:createConcompFeatures:createDiacriticFeatures:featureID:](FKTextFeature, "featureFromSequenceIndex:session:scaling:createConcompFeatures:createDiacriticFeatures:featureID:", i, v7, &size, -[FKTextDetector returnSubFeatures](self, "returnSubFeatures"), -[FKTextDetector detectDiacritics](self, "detectDiacritics"), &v22)}];
  }

  if ([(FKTextDetector *)self createFeaturesForAllConcomps])
  {
    for (j = v7->var25; j != -1; j = *(v17 + 4))
    {
      v17 = v7->var22 + 100 * j;
      if ((*(v17 + 94) & 1) == 0)
      {
        [v14 addObject:{+[FKTextFeature featureFromConcompIndex:session:scaling:type:createDiacriticFeatures:featureID:](FKTextFeature, "featureFromConcompIndex:session:scaling:type:createDiacriticFeatures:featureID:")}];
      }
    }
  }

  *d = v22;
  return v14;
}

- (void)mergeFeature:(id)feature withArray:(id)array
{
  v4 = *(*(feature + 2) + 312);
  v5 = *(feature + 2);
  if (*(v4 + 104 * v5 + 60) > 79)
  {
    return;
  }

  if (![array count])
  {
    goto LABEL_35;
  }

  v65 = v4 + 104 * v5;
  v8 = 0;
  v9 = 0;
  v10 = -1;
  do
  {
    v11 = [array objectAtIndexedSubscript:v8];
    v12 = *(*(v11 + 16) + 312);
    v13 = *(v11 + 8);
    type = [v11 type];
    if (v11 != feature && !type && *(v11 + 16) != *(feature + 2) && *(v65 + 92) == *(v12 + 104 * v13 + 92))
    {
      [feature boundingBox];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      [v11 boundingBox];
      v69.origin.x = v23;
      v69.origin.y = v24;
      v69.size.width = v25;
      v69.size.height = v26;
      v67.origin.x = v16;
      v67.origin.y = v18;
      v67.size.width = v20;
      v67.size.height = v22;
      if (CGRectIntersectsRect(v67, v69))
      {
        NumSharedConcomps = getNumSharedConcomps(feature, v11, v27, v28, v29, v30);
        if (NumSharedConcomps > v9)
        {
          v10 = v8;
          v9 = NumSharedConcomps;
        }
      }
    }

    ++v8;
  }

  while ([array count] > v8);
  if (v10 == -1)
  {
    goto LABEL_35;
  }

  v32 = [array objectAtIndexedSubscript:v10];
  v33 = *(*(v32 + 16) + 312);
  v34 = *(v32 + 8);
  [feature boundingBox];
  v36 = v35;
  [v32 boundingBox];
  v38 = v36 - v37;
  [v32 boundingBox];
  v40 = v38 / v39;
  v41 = v38 / v39 <= 0.1 || *(v65 + 44) - *(v33 + 104 * v34 + 44) <= 1;
  if (!v41 || v40 > -0.1 && *(v65 + 52) >= 24 && *(v65 + 60) >= 16)
  {
    v42 = [array count];
    if (v42 >= 1)
    {
      v43 = (v42 & 0x7FFFFFFF) + 1;
      do
      {
        v44 = [array objectAtIndexedSubscript:v43 - 2];
        v45 = *(*(v44 + 16) + 312);
        v46 = *(v44 + 8);
        type2 = [v44 type];
        if (v44 != feature && type2 == 0 && *(v44 + 16) != *(feature + 2) && *(v65 + 92) == *(v45 + 104 * v46 + 92))
        {
          [feature boundingBox];
          v50 = v49;
          v52 = v51;
          v54 = v53;
          v56 = v55;
          [v44 boundingBox];
          v70.origin.x = v57;
          v70.origin.y = v58;
          v70.size.width = v59;
          v70.size.height = v60;
          v68.origin.x = v50;
          v68.origin.y = v52;
          v68.size.width = v54;
          v68.size.height = v56;
          if (CGRectIntersectsRect(v68, v70) && getNumSharedConcomps(v44, feature, v61, v62, v63, v64) >= 1)
          {
            [array removeObjectAtIndex:v43 - 2];
          }
        }

        --v43;
      }

      while (v43 > 1);
    }

LABEL_35:

    [array addObject:feature];
  }
}

- (id)createFeaturesForROI:(CGRect)i originalSize:(CGSize)size lastID:(int64_t *)d
{
  height = size.height;
  width = size.width;
  v8 = i.size.height;
  v9 = i.size.width;
  y = i.origin.y;
  x = i.origin.x;
  v31 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:16];
  LODWORD(v14) = [(FKTextDetector *)self mergeSettings];
  mergeSettings = [(FKTextDetector *)self mergeSettings];
  v16 = 0;
  if (v14 < mergeSettings.var1)
  {
    v14 = v14;
    do
    {
      if (!self->_sessions[v14])
      {
        break;
      }

      height = [(FKTextDetector *)self createFeaturesForSessionScale:v14 roi:&v29 originalSize:x startID:y, v9, v8, width, height];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v18 = [height countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v26;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v26 != v20)
            {
              objc_enumerationMutation(height);
            }

            v22 = *(*(&v25 + 1) + 8 * i);
            if (![v22 type])
            {
              [(FKTextDetector *)self mergeFeature:v22 withArray:v13];
            }
          }

          v19 = [height countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v19);
      }

      ++v14;
    }

    while (v14 < [(FKTextDetector *)self mergeSettings]>> 32);
    v16 = v29;
  }

  *d = v16;
  v23 = *MEMORY[0x1E69E9840];
  return v13;
}

- (unsigned)isValidPixelBuffer:(__CVBuffer *)buffer regionOfInterest:(CGRect)interest error:(id *)error
{
  v32[1] = *MEMORY[0x1E69E9840];
  if (buffer)
  {
    height = interest.size.height;
    width = interest.size.width;
    y = interest.origin.y;
    x = interest.origin.x;
    PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
    if (PixelFormatType <= 875704949)
    {
      if (PixelFormatType == 875704422 || PixelFormatType == 875704438)
      {
        goto LABEL_14;
      }

      v12 = 875704934;
    }

    else if (PixelFormatType > 875836533)
    {
      if (PixelFormatType == 875836534)
      {
        goto LABEL_14;
      }

      v12 = 1278226488;
    }

    else
    {
      if (PixelFormatType == 875704950)
      {
        goto LABEL_14;
      }

      v12 = 875836518;
    }

    if (PixelFormatType != v12)
    {
      if (error)
      {
        v25 = MEMORY[0x1E696ABC0];
        v29 = *MEMORY[0x1E696A578];
        v30 = @"Unsupported pixel format";
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        v21 = v25;
        v22 = 2;
        goto LABEL_21;
      }

      goto LABEL_29;
    }

LABEL_14:
    v17 = CVPixelBufferGetWidth(buffer);
    v18 = CVPixelBufferGetHeight(buffer);
    interest.origin.x = y + height;
    interest.origin.y = v18;
    v19 = x + width <= v17 && interest.origin.x <= interest.origin.y;
    if (v19 && x >= 0.0 && y >= 0.0 && width > 0.0 && height > 0.0)
    {
      result = 1;
      goto LABEL_30;
    }

    if (error)
    {
      v13 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E696A578];
      v28 = @"Region of interest is outside of input pixel buffer";
      v14 = MEMORY[0x1E695DF20];
      v15 = &v28;
      v16 = &v27;
      goto LABEL_20;
    }

LABEL_29:
    result = 0;
    goto LABEL_30;
  }

  if (!error)
  {
    goto LABEL_29;
  }

  v13 = MEMORY[0x1E696ABC0];
  v31 = *MEMORY[0x1E696A578];
  v32[0] = @"pixelBuffer may not be NULL";
  v14 = MEMORY[0x1E695DF20];
  v15 = v32;
  v16 = &v31;
LABEL_20:
  v20 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:{1, interest.origin.x, interest.origin.y, interest.size.width, interest.size.height}];
  v21 = v13;
  v22 = 1;
LABEL_21:
  v23 = [v21 errorWithDomain:@"FKTextDetector" code:v22 userInfo:v20];
  result = 0;
  *error = v23;
LABEL_30:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)runRecognizerOnFeatures:(id)features roi:(CGRect)roi size:(CGSize)size lastID:(int64_t *)d
{
  v39 = *MEMORY[0x1E69E9840];
  if ([(FKTextDetector *)self recognitionLanguage:roi.origin.x])
  {
    if (self->_recognizer || (Recognizer = FKSessionCreateRecognizer(), (self->_recognizer = Recognizer) != 0))
    {
      if ([features count])
      {
        v9 = 0;
        featuresCopy = features;
        do
        {
          v10 = [features objectAtIndexedSubscript:v9];
          v11 = v10[2];
          *(v11 + 344) = self->_recognizer;
          v12 = *(v10 + 2);
          v13 = *(v11 + 312) + 104 * v12;
          multiThreadingQueue = self->_multiThreadingQueue;
          if (FKRecognizeSequence(v11, v13, v15))
          {
            origin = self->_roi.origin;
            v36[0] = self->_size;
            v37 = 0;
            v36[1] = origin;
            LODWORD(v37) = *(v10 + 6);
            v10 = [FKTextFeature featureFromSequenceIndex:v12 session:v11 scaling:v36 createConcompFeatures:[(FKTextDetector *)self returnSubFeatures] createDiacriticFeatures:[(FKTextDetector *)self detectDiacritics] featureID:d];
            [features setObject:v10 atIndexedSubscript:v9];
          }

          [v10 setText:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", *(v13 + 80))}];
          [v10 setConfidence:{FKSeqMatchGetConfidence(v11, v13)}];
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          subFeatures = [v10 subFeatures];
          v18 = [subFeatures countByEnumeratingWithState:&v32 objects:v38 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v33;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v33 != v20)
                {
                  objc_enumerationMutation(subFeatures);
                }

                v22 = *(*(&v32 + 1) + 8 * i);
                v23 = *(*(v22 + 16) + 280) + 100 * *(v22 + 8);
                [v22 setText:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v23 + 40)}];
                *&v24 = FKCCMatchGetConfidence(v23);
                [v22 setConfidence:v24];
              }

              v19 = [subFeatures countByEnumeratingWithState:&v32 objects:v38 count:16];
            }

            while (v19);
          }

          ++v9;
          features = featuresCopy;
        }

        while ([featuresCopy count] > v9);
      }

      v25 = [features count];
      if (v25 - 1 >= 0)
      {
        v26 = v25;
        do
        {
          v27 = [features objectAtIndexedSubscript:--v26];
          if (*(v27[2] + 20))
          {
            [v27 confidence];
            if (v28 <= 0.5)
            {
              [features removeObjectAtIndex:v26];
            }
          }
        }

        while (v26 > 0);
      }
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)resetTimers
{
  *self->_timeRecognizer = 0u;
  *&self->_timeRecognizer[4] = 0u;
  *self->_timeSequences = 0u;
  *&self->_timeSequences[4] = 0u;
  *self->_timeConcomps = 0u;
  *&self->_timeConcomps[4] = 0u;
  *self->_timeBinarizer = 0u;
  *&self->_timeBinarizer[4] = 0u;
  *self->_timeDownscale = 0u;
  *&self->_timeDownscale[4] = 0u;
}

- (id)detectFeaturesInBuffer:(__CVBuffer *)buffer withRegionOfInterest:(CGRect)interest error:(id *)error
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v88[1] = *MEMORY[0x1E69E9840];
  if (![FKTextDetector isValidPixelBuffer:"isValidPixelBuffer:regionOfInterest:error:" regionOfInterest:? error:?])
  {
    goto LABEL_14;
  }

  v12 = 0;
  if (width >= height)
  {
    v13 = height;
  }

  else
  {
    v13 = width;
  }

  do
  {
    v14 = v12 + 1;
    if ((v12 + 1) > 7)
    {
      break;
    }

    v15 = v13 >> v12++;
  }

  while (v15 > 64);
  sessions = self->_sessions;
  v17 = createOrResetSessions(self->_sessions, width, height, v14);
  if (v17)
  {
    if (error)
    {
      v87 = *MEMORY[0x1E696A578];
      v88[0] = @"Could not create sessions";
      v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FKTextDetector" code:v17 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v88, &v87, 1)}];
LABEL_13:
      v19 = 0;
      *error = v18;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (CVPixelBufferLockBaseAddress(buffer, 1uLL))
  {
    if (error)
    {
      v85 = *MEMORY[0x1E696A578];
      v86 = @"Could not lock pixelBuffer for reading";
      v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FKTextDetector" code:3 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v86, &v85, 1)}];
      goto LABEL_13;
    }

LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  [(FKTextDetector *)self translatePropertiesToOptionsWithNumSessions:v14];
  v22 = CVPixelBufferGetWidth(buffer);
  v23 = CVPixelBufferGetHeight(buffer);
  self->_size.width = v22;
  self->_size.height = v23;
  self->_roi.origin.x = x;
  self->_roi.origin.y = y;
  self->_roi.size.width = width;
  self->_roi.size.height = height;
  [(FKTextDetector *)self resetTimers];
  selfCopy = self;
  pixelBuffer = buffer;
  errorCopy = error;
  if (CVPixelBufferIsPlanar(buffer))
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
  }

  else
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddress(buffer);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(buffer);
  }

  v26 = v14 - 1;
  v27 = *sessions;
  v27->var11.width = width;
  v27->var11.rowBytes = BytesPerRowOfPlane;
  v27->var11.data = &BaseAddressOfPlane[BytesPerRowOfPlane * y + x];
  v27->var11.height = height;
  if (v14 >= 2)
  {
    v28 = 0;
    do
    {
      v29 = self->_sessions[v28 + 1];
      var7 = v29->var7;
      var8 = v29->var8;
      v29->var11.height = var8;
      v29->var11.width = var7;
      v29->var11.rowBytes = var7;
      v29->var11.data = malloc_type_malloc(var8 * var7, 0x847020D9uLL);
      ++v28;
    }

    while (v26 != v28);
  }

  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = 0;
  self->_timeDownscale[0] = 0;
  timeDownscale = self->_timeDownscale;
  thresholdingAlgorithm = [(FKTextDetector *)self thresholdingAlgorithm];
  v33 = 0;
  v64 = thresholdingAlgorithm;
  if ([(FKTextDetector *)self multiThreadingQueue])
  {
    v34 = thresholdingAlgorithm == 4;
  }

  else
  {
    v34 = 1;
  }

  v35 = v34;
  v74 = 0;
  do
  {
    while (1)
    {
      if (v33)
      {
        v36 = mach_absolute_time();
        v37 = &sessions[v33];
        v39 = *(v37 - 1);
        v38 = *v37;
        v40 = *(v39 + 184);
        *&src.data = *(v39 + 168);
        *&src.width = v40;
        v41 = *&v38->var11.width;
        *&dest.data = *&v38->var11.data;
        *&dest.width = v41;
        v42 = vImageScale_Planar8(&src, &dest, 0, 0);
        v43 = sessions;
        if (!v42)
        {
          v44 = dest.rowBytes - dest.width;
          if (dest.rowBytes > dest.width)
          {
            if (dest.height)
            {
              v45 = 0;
              v46 = dest.data + dest.width;
              do
              {
                memset(v46, *(v46 - 1), v44);
                v46 += dest.rowBytes;
                ++v45;
              }

              while (dest.height > v45);
            }
          }
        }

        v47 = mach_absolute_time();
        sessions = v43;
        v48 = dword_1ECEA795C;
        if (!dword_1ECEA795C)
        {
          mach_timebase_info(&getTimeInMicro_sTimebaseInfo);
          v48 = dword_1ECEA795C;
        }

        timeDownscale[v33] = (v47 - v36) * getTimeInMicro_sTimebaseInfo / (1000 * v48);
        if (v42)
        {
          if (!errorCopy)
          {
            goto LABEL_66;
          }

          v83 = *MEMORY[0x1E696A578];
          v84 = @"Downscaling failed";
          v53 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FKTextDetector" code:4 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v84, &v83, 1)}];
          goto LABEL_49;
        }
      }

      if (v35)
      {
        break;
      }

      multiThreadingQueue = [(FKTextDetector *)selfCopy multiThreadingQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __68__FKTextDetector_detectFeaturesInBuffer_withRegionOfInterest_error___block_invoke;
      block[3] = &unk_1E8704878;
      v71 = v33;
      block[4] = selfCopy;
      block[5] = &v75;
      dispatch_async(multiThreadingQueue, block);
      if (++v33 == v14)
      {
        dispatch_barrier_sync([(FKTextDetector *)selfCopy multiThreadingQueue], &__block_literal_global_108);
        goto LABEL_43;
      }
    }

    ++v33;
  }

  while (v33 != v14);
  if (v64 == 4)
  {
    v54 = &v74;
  }

  else
  {
    v54 = 0;
  }

  for (i = v14; ; runDetectionOnSession(selfCopy, i, v74, v54))
  {
    v56 = __OFSUB__(i--, 1);
    if (i < 0 != v56)
    {
      break;
    }
  }

LABEL_43:
  v50 = v76[3];
  if (!v50)
  {
    v69 = 0;
    v19 = [(FKTextDetector *)selfCopy createFeaturesForROI:&v69 originalSize:x lastID:y, width, height, v22, v23];
    if ([v19 count])
    {
      v57 = 0x1ECEA7000uLL;
LABEL_58:
      v58 = mach_absolute_time();
      [(FKTextDetector *)selfCopy runRecognizerOnFeatures:v19 roi:&v69 size:x lastID:y, width, height, v22, v23];
      v59 = mach_absolute_time();
      v60 = *(v57 + 2396);
      if (!v60)
      {
        mach_timebase_info(&getTimeInMicro_sTimebaseInfo);
        v60 = *(v57 + 2396);
      }

      selfCopy->_timeRecognizer[0] = (v59 - v58) * getTimeInMicro_sTimebaseInfo / (1000 * v60);
      sortSequencesInSensibleOrder(v19);
      goto LABEL_67;
    }

    v61 = *(&selfCopy->super.isa + v14);
    if (*(v61 + 200))
    {
      v57 = 0x1ECEA7000;
      if (FKSequenceOneBox(v61))
      {
        v19 = [(FKTextDetector *)selfCopy createFeaturesForROI:&v69 originalSize:x lastID:y, width, height, v22, v23];
      }

      goto LABEL_58;
    }

    if (!errorCopy)
    {
      goto LABEL_66;
    }

    v51 = MEMORY[0x1E696ABC0];
    v79 = *MEMORY[0x1E696A578];
    v80 = @"Detection failed due to unsupported input dimensions";
    v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
    v50 = 2;
LABEL_46:
    v53 = [v51 errorWithDomain:@"FKTextDetector" code:v50 userInfo:{v52, v64, pixelBuffer}];
LABEL_49:
    v19 = 0;
    *errorCopy = v53;
    goto LABEL_67;
  }

  if (errorCopy)
  {
    v51 = MEMORY[0x1E696ABC0];
    v81 = *MEMORY[0x1E696A578];
    v82 = @"Detection failed with";
    v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    goto LABEL_46;
  }

LABEL_66:
  v19 = 0;
LABEL_67:
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  if (v14 >= 2)
  {
    v62 = &selfCopy->_sessions[1];
    do
    {
      free((*v62)->var11.data);
      v63 = *v62++;
      *(v63 + 168) = 0;
      --v26;
    }

    while (v26);
  }

  _Block_object_dispose(&v75, 8);
LABEL_15:
  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)detectFeaturesInBuffer:(__CVBuffer *)buffer error:(id *)error
{
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);

  return [(FKTextDetector *)self detectFeaturesInBuffer:buffer withRegionOfInterest:error error:0.0, 0.0, Width, Height];
}

- (unint64_t)getMemoryUsageOfLastOperation
{
  v3 = 0;
  result = 0;
  sessions = self->_sessions;
  p_total = &self->_memoryUsage[0].total;
  do
  {
    if (!sessions[v3])
    {
      break;
    }

    v7 = *p_total;
    p_total += 6;
    result += v7;
    ++v3;
  }

  while (v3 != 8);
  return result;
}

@end