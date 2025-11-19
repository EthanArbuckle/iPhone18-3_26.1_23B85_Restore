@interface CSASRFeatures
+ (id)initialASRFeatures;
+ (id)initialResultCandidateFeatures;
- (CSASRFeatures)initWithCoder:(id)a3;
- (CSASRFeatures)initWithWordCount:(int64_t)a3 trailingSilenceDuration:(int64_t)a4 eosLikelihood:(double)a5 pauseCounts:(id)a6 silencePosterior:(double)a7 taskName:(id)a8 processedAudioDurationInMilliseconds:(int64_t)a9 acousticEndpointerScore:(double)a10;
- (id)description;
- (id)dictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CSASRFeatures

- (CSASRFeatures)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"CSASRFeatures:::wordCount"];
  v6 = [v4 decodeIntegerForKey:@"CSASRFeatures:::trailingSilenceDuration"];
  [v4 decodeDoubleForKey:@"CSASRFeatures:::eosLikelihood"];
  v8 = v7;
  v9 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"CSASRFeatures:::pauseCounts"];
  [v4 decodeDoubleForKey:@"CSASRFeatures:::silencePosterior"];
  v11 = v10;
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CSASRFeatures:::taskName"];
  v13 = [v4 decodeIntegerForKey:@"CSASRFeatures:::processedAudioDurationInMilliseconds"];
  [v4 decodeDoubleForKey:@"CSASRFeatures:::acousticEndpointerScore"];
  v15 = v14;

  v16 = [(CSASRFeatures *)self initWithWordCount:v5 trailingSilenceDuration:v6 eosLikelihood:v9 pauseCounts:v12 silencePosterior:v13 taskName:v8 processedAudioDurationInMilliseconds:v11 acousticEndpointerScore:v15];
  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  wordCount = self->_wordCount;
  v5 = a3;
  [v5 encodeInteger:wordCount forKey:@"CSASRFeatures:::wordCount"];
  [v5 encodeInteger:self->_trailingSilenceDuration forKey:@"CSASRFeatures:::trailingSilenceDuration"];
  [v5 encodeDouble:@"CSASRFeatures:::eosLikelihood" forKey:self->_eosLikelihood];
  [v5 encodeObject:self->_pauseCounts forKey:@"CSASRFeatures:::pauseCounts"];
  [v5 encodeDouble:@"CSASRFeatures:::silencePosterior" forKey:self->_silencePosterior];
  [v5 encodeObject:self->_taskName forKey:@"CSASRFeatures:::taskName"];
  [v5 encodeInteger:self->_processedAudioDurationInMilliseconds forKey:@"CSASRFeatures:::processedAudioDurationInMilliseconds"];
  [v5 encodeDouble:@"CSASRFeatures:::acousticEndpointerScore" forKey:self->_acousticEndpointerScore];
}

- (id)dictionary
{
  v13[0] = @"WordCount";
  v3 = [NSNumber numberWithInteger:self->_wordCount];
  v14[0] = v3;
  v13[1] = @"TrailingSilDuration";
  v4 = [NSNumber numberWithInteger:self->_trailingSilenceDuration];
  v14[1] = v4;
  v13[2] = @"EOSLikelihood";
  v5 = [NSNumber numberWithDouble:self->_eosLikelihood];
  v6 = v5;
  pauseCounts = self->_pauseCounts;
  if (!pauseCounts)
  {
    pauseCounts = &__NSArray0__struct;
  }

  v14[2] = v5;
  v14[3] = pauseCounts;
  v13[3] = @"PauseCounts";
  v13[4] = @"SilencePosterior";
  v8 = [NSNumber numberWithDouble:self->_silencePosterior];
  v14[4] = v8;
  v13[5] = @"ProcessedAudioDurationInMilliseconds";
  v9 = [NSNumber numberWithInteger:self->_processedAudioDurationInMilliseconds];
  v14[5] = v9;
  v13[6] = @"AcousticEndpointerScore";
  v10 = [NSNumber numberWithDouble:self->_acousticEndpointerScore];
  v14[6] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:7];

  return v11;
}

- (id)description
{
  wordCount = self->_wordCount;
  trailingSilenceDuration = self->_trailingSilenceDuration;
  eosLikelihood = self->_eosLikelihood;
  v6 = [(NSArray *)self->_pauseCounts componentsJoinedByString:@", "];
  taskName = self->_taskName;
  v8 = [NSString stringWithFormat:@"{wordCount: %ld, trailingSilDuration: %ld, eosLikelihood: %f, pauseCounts: (%@), silencePosterior: %f, taskName: %@, processedAudioDurationInMilliseconds: %ld, acousticEndpointerScore: %f}", wordCount, trailingSilenceDuration, *&eosLikelihood, v6, *&self->_silencePosterior, taskName, self->_processedAudioDurationInMilliseconds, *&self->_acousticEndpointerScore];

  return v8;
}

- (CSASRFeatures)initWithWordCount:(int64_t)a3 trailingSilenceDuration:(int64_t)a4 eosLikelihood:(double)a5 pauseCounts:(id)a6 silencePosterior:(double)a7 taskName:(id)a8 processedAudioDurationInMilliseconds:(int64_t)a9 acousticEndpointerScore:(double)a10
{
  v19 = a6;
  v20 = a8;
  v24.receiver = self;
  v24.super_class = CSASRFeatures;
  v21 = [(CSASRFeatures *)&v24 init];
  v22 = v21;
  if (v21)
  {
    v21->_wordCount = a3;
    v21->_trailingSilenceDuration = a4;
    v21->_eosLikelihood = a5;
    objc_storeStrong(&v21->_pauseCounts, a6);
    v22->_silencePosterior = a7;
    objc_storeStrong(&v22->_taskName, a8);
    v22->_processedAudioDurationInMilliseconds = a9;
    v22->_acousticEndpointerScore = a10;
  }

  return v22;
}

+ (id)initialResultCandidateFeatures
{
  v2 = [[a1 alloc] initWithWordCount:0 trailingSilenceDuration:50 eosLikelihood:&__NSArray0__struct pauseCounts:@"SearchOrMessaging" silencePosterior:10 taskName:8.98999977 processedAudioDurationInMilliseconds:0.0 acousticEndpointerScore:0.0];

  return v2;
}

+ (id)initialASRFeatures
{
  v2 = [[a1 alloc] initWithWordCount:0 trailingSilenceDuration:0 eosLikelihood:&__NSArray0__struct pauseCounts:@"SearchOrMessaging" silencePosterior:0 taskName:8.98999977 processedAudioDurationInMilliseconds:0.997685015 acousticEndpointerScore:0.0];

  return v2;
}

@end