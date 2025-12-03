@interface DYExperiment
+ (void)initialize;
- (DYExperiment)init;
- (DYExperiment)initWithCoder:(id)coder;
- (DYExperiment)initWithName:(id)name results:(id)results;
- (NSString)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setFrameTimeArraySize:(unsigned int)size;
- (void)setFrameTimeVariationArraySize:(unsigned int)size;
- (void)setRepeatCount:(unsigned int)count;
@end

@implementation DYExperiment

+ (void)initialize
{
  if (objc_opt_class() == self)
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

- (DYExperiment)initWithName:(id)name results:(id)results
{
  v9.receiver = self;
  v9.super_class = DYExperiment;
  v6 = [(DYExperiment *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_repeatCount = 128;
    v6->_warmupCount = 4;
    v6->_results = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:results];
    *&v7->_enableExperimentFinish = 1;
    v7->_name = [name copy];
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

- (DYExperiment)initWithCoder:(id)coder
{
  v14.receiver = self;
  v14.super_class = DYExperiment;
  v4 = [(DYExperiment *)&v14 init];
  if (v4)
  {
    v4->_enabled = [coder decodeBoolForKey:@"enabled"];
    v4->_enableExperimentFinish = [coder decodeBoolForKey:@"enableExperimentFinish"];
    v4->_enablePerFrameTiming = [coder decodeBoolForKey:@"enablePerFrameTiming"];
    v4->_repeatCount = [coder decodeInt32ForKey:@"repeatCount"];
    v4->_warmupCount = [coder decodeInt32ForKey:@"warmupCount"];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v4->_results = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, v8, v9, objc_opt_class(), 0), @"results"}];
    v4->_captureArchivePath = [coder decodeObjectOfClass:objc_opt_class() forKey:@"captureArchivePath"];
    v4->_name = [coder decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v4->_traceMode = [coder decodeInt32ForKey:@"traceMode"];
    v4->_profilingFlags = [coder decodeInt64ForKey:@"profilingFlags"];
    v4->_frameTimeArraySize = [coder decodeInt32ForKey:@"frameTimeArraySize"];
    v4->_frameTimeVariationArraySize = [coder decodeInt32ForKey:@"frameTimeVariationArraySize"];
    [coder decodeDoubleForKey:@"frameTimeVariationLimit1"];
    v4->_frameTimeVariationLimit1 = v10;
    [coder decodeDoubleForKey:@"frameTimeVariationLimit2"];
    v4->_frameTimeVariationLimit2 = v11;
    [coder decodeDoubleForKey:@"frameTimeVariationRangeMax"];
    v4->_frameTimeVariationRangeMax = v12;
    v4->_allowEarlyTermination = [coder decodeBoolForKey:@"allowEarlyTermination"];
    v4->_usingModifiedArchive = [coder decodeBoolForKey:@"usingModifiedArchive"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeBool:self->_enableExperimentFinish forKey:@"enableExperimentFinish"];
  [coder encodeBool:self->_enablePerFrameTiming forKey:@"enablePerFrameTiming"];
  [coder encodeBool:self->_enabled forKey:@"enabled"];
  [coder encodeInt32:self->_repeatCount forKey:@"repeatCount"];
  [coder encodeInt32:self->_warmupCount forKey:@"warmupCount"];
  [coder encodeObject:self->_results forKey:@"results"];
  [coder encodeObject:self->_captureArchivePath forKey:@"captureArchivePath"];
  [coder encodeObject:self->_name forKey:@"name"];
  [coder encodeInt32:self->_traceMode forKey:@"traceMode"];
  [coder encodeInt64:self->_profilingFlags forKey:@"profilingFlags"];
  [coder encodeInt32:self->_frameTimeArraySize forKey:@"frameTimeArraySize"];
  [coder encodeInt32:self->_frameTimeVariationArraySize forKey:@"frameTimeVariationArraySize"];
  [coder encodeDouble:@"frameTimeVariationLimit1" forKey:self->_frameTimeVariationLimit1];
  [coder encodeDouble:@"frameTimeVariationLimit2" forKey:self->_frameTimeVariationLimit2];
  [coder encodeDouble:@"frameTimeVariationRangeMax" forKey:self->_frameTimeVariationRangeMax];
  [coder encodeBool:self->_allowEarlyTermination forKey:@"allowEarlyTermination"];
  usingModifiedArchive = self->_usingModifiedArchive;

  [coder encodeBool:usingModifiedArchive forKey:@"usingModifiedArchive"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithName:results:", self->_name, self->_results}];
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

- (void)setRepeatCount:(unsigned int)count
{
  if (count <= 1)
  {
    countCopy = 1;
  }

  else
  {
    countCopy = count;
  }

  self->_repeatCount = countCopy;
}

- (void)setFrameTimeArraySize:(unsigned int)size
{
  if (size >= 4)
  {
    sizeCopy = size;
  }

  else
  {
    sizeCopy = 4;
  }

  v4 = (sizeCopy - 1) | ((sizeCopy - 1) >> 1) | (((sizeCopy - 1) | ((sizeCopy - 1) >> 1)) >> 2);
  v5 = v4 | (v4 >> 4) | ((v4 | (v4 >> 4)) >> 8);
  self->_frameTimeArraySize = (v5 | HIWORD(v5)) + 1;
}

- (void)setFrameTimeVariationArraySize:(unsigned int)size
{
  if (size >= 4)
  {
    sizeCopy = size;
  }

  else
  {
    sizeCopy = 4;
  }

  v4 = (sizeCopy - 1) | ((sizeCopy - 1) >> 1) | (((sizeCopy - 1) | ((sizeCopy - 1) >> 1)) >> 2);
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