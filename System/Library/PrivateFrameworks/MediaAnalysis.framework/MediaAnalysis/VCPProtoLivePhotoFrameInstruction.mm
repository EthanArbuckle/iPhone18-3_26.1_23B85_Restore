@interface VCPProtoLivePhotoFrameInstruction
+ (id)resultFromLegacyDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (float)homographyParamAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VCPProtoLivePhotoFrameInstruction

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v4 = objc_alloc_init(VCPProtoLivePhotoFrameInstruction);
    v5 = [dictionaryCopy objectForKeyedSubscript:@"homography"];
    memset(&v11, 0, sizeof(v11));
    v6 = [dictionaryCopy objectForKeyedSubscript:@"rawTime"];
    CMTimeMakeFromDictionary(&v11, v6);

    if ([v5 count] >= 8 && objc_msgSend(v5, "count") <= 9)
    {
      [(VCPProtoLivePhotoFrameInstruction *)v4 setTimeValue:v11.value];
      [(VCPProtoLivePhotoFrameInstruction *)v4 setTimeScale:v11.timescale];
      [(VCPProtoLivePhotoFrameInstruction *)v4 setEpoch:v11.epoch];
      [(VCPProtoLivePhotoFrameInstruction *)v4 setFlags:v11.flags];
      for (i = 0; i != 8; ++i)
      {
        v9 = [v5 objectAtIndexedSubscript:i];
        [v9 floatValue];
        [(VCPProtoLivePhotoFrameInstruction *)v4 addHomographyParam:?];
      }

      v7 = v4;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)exportToLegacyDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  array = [MEMORY[0x1E695DF70] array];
  for (i = 0; [(VCPProtoLivePhotoFrameInstruction *)self homographyParamsCount]> i; ++i)
  {
    v6 = MEMORY[0x1E696AD98];
    [(VCPProtoLivePhotoFrameInstruction *)self homographyParamAtIndex:i];
    v7 = [v6 numberWithFloat:?];
    [array addObject:v7];
  }

  [array addObject:&unk_1F49BB0C8];
  memset(&v10, 0, sizeof(v10));
  CMTimeMake(&v10, [(VCPProtoLivePhotoFrameInstruction *)self timeValue], [(VCPProtoLivePhotoFrameInstruction *)self timeScale]);
  v10.epoch = [(VCPProtoLivePhotoFrameInstruction *)self epoch];
  v10.flags = [(VCPProtoLivePhotoFrameInstruction *)self flags];
  time = v10;
  v8 = CMTimeCopyAsDictionary(&time, 0);
  [dictionary setObject:v8 forKeyedSubscript:@"rawTime"];

  [dictionary setObject:array forKeyedSubscript:@"homography"];

  return dictionary;
}

- (void)dealloc
{
  PBRepeatedFloatClear();
  v3.receiver = self;
  v3.super_class = VCPProtoLivePhotoFrameInstruction;
  [(VCPProtoLivePhotoFrameInstruction *)&v3 dealloc];
}

- (float)homographyParamAtIndex:(unint64_t)index
{
  p_homographyParams = &self->_homographyParams;
  count = self->_homographyParams.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_homographyParams->list[index];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoLivePhotoFrameInstruction;
  v4 = [(VCPProtoLivePhotoFrameInstruction *)&v8 description];
  dictionaryRepresentation = [(VCPProtoLivePhotoFrameInstruction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_timeValue];
  [dictionary setObject:v4 forKey:@"timeValue"];

  v5 = PBRepeatedFloatNSArray();
  [dictionary setObject:v5 forKey:@"homographyParam"];

  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_timeScale];
  [dictionary setObject:v6 forKey:@"timeScale"];

  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_epoch];
  [dictionary setObject:v7 forKey:@"epoch"];

  v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_flags];
  [dictionary setObject:v8 forKey:@"flags"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteInt64Field();
  if (self->_homographyParams.count)
  {
    v4 = 0;
    do
    {
      PBDataWriterWriteFloatField();
      ++v4;
    }

    while (v4 < self->_homographyParams.count);
  }

  PBDataWriterWriteInt32Field();
  PBDataWriterWriteInt64Field();
  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[5] = self->_timeValue;
  if ([(VCPProtoLivePhotoFrameInstruction *)self homographyParamsCount])
  {
    [toCopy clearHomographyParams];
    homographyParamsCount = [(VCPProtoLivePhotoFrameInstruction *)self homographyParamsCount];
    if (homographyParamsCount)
    {
      v5 = homographyParamsCount;
      for (i = 0; i != v5; ++i)
      {
        [(VCPProtoLivePhotoFrameInstruction *)self homographyParamAtIndex:i];
        [toCopy addHomographyParam:?];
      }
    }
  }

  *(toCopy + 13) = self->_timeScale;
  toCopy[4] = self->_epoch;
  *(toCopy + 12) = self->_flags;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v4 + 40) = self->_timeValue;
  PBRepeatedFloatCopy();
  *(v4 + 52) = self->_timeScale;
  *(v4 + 32) = self->_epoch;
  *(v4 + 48) = self->_flags;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()] && self->_timeValue == *(equalCopy + 5) && PBRepeatedFloatIsEqual() && self->_timeScale == *(equalCopy + 13) && self->_epoch == *(equalCopy + 4) && self->_flags == *(equalCopy + 12);

  return v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_timeValue = fromCopy[5];
  v8 = fromCopy;
  homographyParamsCount = [fromCopy homographyParamsCount];
  if (homographyParamsCount)
  {
    v6 = homographyParamsCount;
    for (i = 0; i != v6; ++i)
    {
      [v8 homographyParamAtIndex:i];
      [(VCPProtoLivePhotoFrameInstruction *)self addHomographyParam:?];
    }
  }

  self->_timeScale = *(v8 + 13);
  self->_epoch = *(v8 + 4);
  self->_flags = *(v8 + 12);
}

@end