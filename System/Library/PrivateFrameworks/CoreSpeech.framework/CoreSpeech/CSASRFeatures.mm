@interface CSASRFeatures
+ (id)initialASRFeatures;
+ (id)initialResultCandidateFeatures;
- (CSASRFeatures)initWithCoder:(id)coder;
- (CSASRFeatures)initWithWordCount:(int64_t)count trailingSilenceDuration:(int64_t)duration eosLikelihood:(double)likelihood pauseCounts:(id)counts silencePosterior:(double)posterior taskName:(id)name processedAudioDurationInMilliseconds:(int64_t)milliseconds acousticEndpointerScore:(double)self0;
- (id)description;
- (id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CSASRFeatures

- (CSASRFeatures)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"CSASRFeatures:::wordCount"];
  v6 = [coderCopy decodeIntegerForKey:@"CSASRFeatures:::trailingSilenceDuration"];
  [coderCopy decodeDoubleForKey:@"CSASRFeatures:::eosLikelihood"];
  v8 = v7;
  v9 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"CSASRFeatures:::pauseCounts"];
  [coderCopy decodeDoubleForKey:@"CSASRFeatures:::silencePosterior"];
  v11 = v10;
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSASRFeatures:::taskName"];
  v13 = [coderCopy decodeIntegerForKey:@"CSASRFeatures:::processedAudioDurationInMilliseconds"];
  [coderCopy decodeDoubleForKey:@"CSASRFeatures:::acousticEndpointerScore"];
  v15 = v14;

  v16 = [(CSASRFeatures *)self initWithWordCount:v5 trailingSilenceDuration:v6 eosLikelihood:v9 pauseCounts:v12 silencePosterior:v13 taskName:v8 processedAudioDurationInMilliseconds:v11 acousticEndpointerScore:v15];
  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  wordCount = self->_wordCount;
  coderCopy = coder;
  [coderCopy encodeInteger:wordCount forKey:@"CSASRFeatures:::wordCount"];
  [coderCopy encodeInteger:self->_trailingSilenceDuration forKey:@"CSASRFeatures:::trailingSilenceDuration"];
  [coderCopy encodeDouble:@"CSASRFeatures:::eosLikelihood" forKey:self->_eosLikelihood];
  [coderCopy encodeObject:self->_pauseCounts forKey:@"CSASRFeatures:::pauseCounts"];
  [coderCopy encodeDouble:@"CSASRFeatures:::silencePosterior" forKey:self->_silencePosterior];
  [coderCopy encodeObject:self->_taskName forKey:@"CSASRFeatures:::taskName"];
  [coderCopy encodeInteger:self->_processedAudioDurationInMilliseconds forKey:@"CSASRFeatures:::processedAudioDurationInMilliseconds"];
  [coderCopy encodeDouble:@"CSASRFeatures:::acousticEndpointerScore" forKey:self->_acousticEndpointerScore];
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

- (CSASRFeatures)initWithWordCount:(int64_t)count trailingSilenceDuration:(int64_t)duration eosLikelihood:(double)likelihood pauseCounts:(id)counts silencePosterior:(double)posterior taskName:(id)name processedAudioDurationInMilliseconds:(int64_t)milliseconds acousticEndpointerScore:(double)self0
{
  countsCopy = counts;
  nameCopy = name;
  v24.receiver = self;
  v24.super_class = CSASRFeatures;
  v21 = [(CSASRFeatures *)&v24 init];
  v22 = v21;
  if (v21)
  {
    v21->_wordCount = count;
    v21->_trailingSilenceDuration = duration;
    v21->_eosLikelihood = likelihood;
    objc_storeStrong(&v21->_pauseCounts, counts);
    v22->_silencePosterior = posterior;
    objc_storeStrong(&v22->_taskName, name);
    v22->_processedAudioDurationInMilliseconds = milliseconds;
    v22->_acousticEndpointerScore = score;
  }

  return v22;
}

+ (id)initialResultCandidateFeatures
{
  v2 = [[self alloc] initWithWordCount:0 trailingSilenceDuration:50 eosLikelihood:&__NSArray0__struct pauseCounts:@"SearchOrMessaging" silencePosterior:10 taskName:8.98999977 processedAudioDurationInMilliseconds:0.0 acousticEndpointerScore:0.0];

  return v2;
}

+ (id)initialASRFeatures
{
  v2 = [[self alloc] initWithWordCount:0 trailingSilenceDuration:0 eosLikelihood:&__NSArray0__struct pauseCounts:@"SearchOrMessaging" silencePosterior:0 taskName:8.98999977 processedAudioDurationInMilliseconds:0.997685015 acousticEndpointerScore:0.0];

  return v2;
}

@end