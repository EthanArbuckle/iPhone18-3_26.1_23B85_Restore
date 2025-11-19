@interface DYExperiment
+ (void)initialize;
- (DYExperiment)init;
- (DYExperiment)initWithCoder:(id)a3;
- (DYExperiment)initWithName:(id)a3 results:(id)a4;
- (NSString)name;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setFrameTimeArraySize:(unsigned int)a3;
- (void)setFrameTimeVariationArraySize:(unsigned int)a3;
- (void)setRepeatCount:(unsigned int)a3;
@end

@implementation DYExperiment

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = MEMORY[0x277D0B018];

    mach_timebase_info(v2);
  }
}

- (DYExperiment)init
{
  [(DYExperiment *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (DYExperiment)initWithName:(id)a3 results:(id)a4
{
  v9.receiver = self;
  v9.super_class = DYExperiment;
  v6 = [(DYExperiment *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_repeatCount = 128;
    v6->_warmupCount = 4;
    v6->_results = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:a4];
    *&v7->_enableExperimentFinish = 1;
    v7->_name = [a3 copy];
    v7->_traceMode = 1;
    v7->_frameTimeArraySize = 32;
    v7->_frameTimeVariationArraySize = 8;
    v7->_profilingFlags = 0;
    v7->_frameTimeVariationLimit1 = 0.05;
    v7->_frameTimeVariationLimit2 = 0.1;
    v7->_frameTimeVariationRangeMax = 0.03;
    v7->_allowEarlyTermination = 1;
  }

  return v7;
}

- (DYExperiment)initWithCoder:(id)a3
{
  v14.receiver = self;
  v14.super_class = DYExperiment;
  v4 = [(DYExperiment *)&v14 init];
  if (v4)
  {
    v4->_enabled = [a3 decodeBoolForKey:@"enabled"];
    v4->_enableExperimentFinish = [a3 decodeBoolForKey:@"enableExperimentFinish"];
    v4->_enablePerFrameTiming = [a3 decodeBoolForKey:@"enablePerFrameTiming"];
    v4->_repeatCount = [a3 decodeInt32ForKey:@"repeatCount"];
    v4->_warmupCount = [a3 decodeInt32ForKey:@"warmupCount"];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v4->_results = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, v8, v9, objc_opt_class(), 0), @"results"}];
    v4->_captureArchivePath = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"captureArchivePath"];
    v4->_name = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v4->_traceMode = [a3 decodeInt32ForKey:@"traceMode"];
    v4->_profilingFlags = [a3 decodeInt64ForKey:@"profilingFlags"];
    v4->_frameTimeArraySize = [a3 decodeInt32ForKey:@"frameTimeArraySize"];
    v4->_frameTimeVariationArraySize = [a3 decodeInt32ForKey:@"frameTimeVariationArraySize"];
    [a3 decodeDoubleForKey:@"frameTimeVariationLimit1"];
    v4->_frameTimeVariationLimit1 = v10;
    [a3 decodeDoubleForKey:@"frameTimeVariationLimit2"];
    v4->_frameTimeVariationLimit2 = v11;
    [a3 decodeDoubleForKey:@"frameTimeVariationRangeMax"];
    v4->_frameTimeVariationRangeMax = v12;
    v4->_allowEarlyTermination = [a3 decodeBoolForKey:@"allowEarlyTermination"];
    v4->_usingModifiedArchive = [a3 decodeBoolForKey:@"usingModifiedArchive"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeBool:self->_enableExperimentFinish forKey:@"enableExperimentFinish"];
  [a3 encodeBool:self->_enablePerFrameTiming forKey:@"enablePerFrameTiming"];
  [a3 encodeBool:self->_enabled forKey:@"enabled"];
  [a3 encodeInt32:self->_repeatCount forKey:@"repeatCount"];
  [a3 encodeInt32:self->_warmupCount forKey:@"warmupCount"];
  [a3 encodeObject:self->_results forKey:@"results"];
  [a3 encodeObject:self->_captureArchivePath forKey:@"captureArchivePath"];
  [a3 encodeObject:self->_name forKey:@"name"];
  [a3 encodeInt32:self->_traceMode forKey:@"traceMode"];
  [a3 encodeInt64:self->_profilingFlags forKey:@"profilingFlags"];
  [a3 encodeInt32:self->_frameTimeArraySize forKey:@"frameTimeArraySize"];
  [a3 encodeInt32:self->_frameTimeVariationArraySize forKey:@"frameTimeVariationArraySize"];
  [a3 encodeDouble:@"frameTimeVariationLimit1" forKey:self->_frameTimeVariationLimit1];
  [a3 encodeDouble:@"frameTimeVariationLimit2" forKey:self->_frameTimeVariationLimit2];
  [a3 encodeDouble:@"frameTimeVariationRangeMax" forKey:self->_frameTimeVariationRangeMax];
  [a3 encodeBool:self->_allowEarlyTermination forKey:@"allowEarlyTermination"];
  usingModifiedArchive = self->_usingModifiedArchive;

  [a3 encodeBool:usingModifiedArchive forKey:@"usingModifiedArchive"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithName:results:", self->_name, self->_results}];
  *(v4 + 24) = self->_repeatCount;
  *(v4 + 28) = self->_warmupCount;
  *(v4 + 33) = self->_enableExperimentFinish;
  *(v4 + 34) = self->_enablePerFrameTiming;
  *(v4 + 32) = self->_enabled;
  *(v4 + 8) = [(NSString *)self->_captureArchivePath copy];
  *(v4 + 84) = self->_traceMode;
  *(v4 + 88) = self->_profilingFlags;
  *(v4 + 48) = self->_frameTimeArraySize;
  *(v4 + 52) = self->_frameTimeVariationArraySize;
  *(v4 + 56) = self->_frameTimeVariationLimit1;
  *(v4 + 64) = self->_frameTimeVariationLimit2;
  *(v4 + 72) = self->_frameTimeVariationRangeMax;
  *(v4 + 80) = self->_allowEarlyTermination;
  *(v4 + 96) = self->_usingModifiedArchive;
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DYExperiment;
  [(DYExperiment *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = DYExperiment;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@ name=%@ repeatCount=%u results=%@", -[DYExperiment description](&v3, sel_description), -[DYExperiment name](self, "name"), self->_repeatCount, self->_results];
}

- (void)setRepeatCount:(unsigned int)a3
{
  if (a3 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a3;
  }

  self->_repeatCount = v3;
}

- (void)setFrameTimeArraySize:(unsigned int)a3
{
  if (a3 >= 4)
  {
    v3 = a3;
  }

  else
  {
    v3 = 4;
  }

  v4 = (v3 - 1) | ((v3 - 1) >> 1) | (((v3 - 1) | ((v3 - 1) >> 1)) >> 2);
  v5 = v4 | (v4 >> 4) | ((v4 | (v4 >> 4)) >> 8);
  self->_frameTimeArraySize = (v5 | HIWORD(v5)) + 1;
}

- (void)setFrameTimeVariationArraySize:(unsigned int)a3
{
  if (a3 >= 4)
  {
    v3 = a3;
  }

  else
  {
    v3 = 4;
  }

  v4 = (v3 - 1) | ((v3 - 1) >> 1) | (((v3 - 1) | ((v3 - 1) >> 1)) >> 2);
  v5 = v4 | (v4 >> 4) | ((v4 | (v4 >> 4)) >> 8);
  self->_frameTimeVariationArraySize = (v5 | HIWORD(v5)) + 1;
}

- (NSString)name
{
  if (self->_name)
  {
    return self->_name;
  }

  else
  {
    return @"name was not set!";
  }
}

@end