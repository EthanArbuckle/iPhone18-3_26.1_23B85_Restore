@interface VCPProtoLivePhotoFrameInstruction
+ (id)resultFromLegacyDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (float)homographyParamAtIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCPProtoLivePhotoFrameInstruction

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(VCPProtoLivePhotoFrameInstruction);
    v5 = [v3 objectForKeyedSubscript:@"homography"];
    memset(&v11, 0, sizeof(v11));
    v6 = [v3 objectForKeyedSubscript:@"rawTime"];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E695DF70] array];
  for (i = 0; [(VCPProtoLivePhotoFrameInstruction *)self homographyParamsCount]> i; ++i)
  {
    v6 = MEMORY[0x1E696AD98];
    [(VCPProtoLivePhotoFrameInstruction *)self homographyParamAtIndex:i];
    v7 = [v6 numberWithFloat:?];
    [v4 addObject:v7];
  }

  [v4 addObject:&unk_1F49BB0C8];
  memset(&v10, 0, sizeof(v10));
  CMTimeMake(&v10, [(VCPProtoLivePhotoFrameInstruction *)self timeValue], [(VCPProtoLivePhotoFrameInstruction *)self timeScale]);
  v10.epoch = [(VCPProtoLivePhotoFrameInstruction *)self epoch];
  v10.flags = [(VCPProtoLivePhotoFrameInstruction *)self flags];
  time = v10;
  v8 = CMTimeCopyAsDictionary(&time, 0);
  [v3 setObject:v8 forKeyedSubscript:@"rawTime"];

  [v3 setObject:v4 forKeyedSubscript:@"homography"];

  return v3;
}

- (void)dealloc
{
  PBRepeatedFloatClear();
  v3.receiver = self;
  v3.super_class = VCPProtoLivePhotoFrameInstruction;
  [(VCPProtoLivePhotoFrameInstruction *)&v3 dealloc];
}

- (float)homographyParamAtIndex:(unint64_t)a3
{
  p_homographyParams = &self->_homographyParams;
  count = self->_homographyParams.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_homographyParams->list[a3];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoLivePhotoFrameInstruction;
  v4 = [(VCPProtoLivePhotoFrameInstruction *)&v8 description];
  v5 = [(VCPProtoLivePhotoFrameInstruction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_timeValue];
  [v3 setObject:v4 forKey:@"timeValue"];

  v5 = PBRepeatedFloatNSArray();
  [v3 setObject:v5 forKey:@"homographyParam"];

  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_timeScale];
  [v3 setObject:v6 forKey:@"timeScale"];

  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_epoch];
  [v3 setObject:v7 forKey:@"epoch"];

  v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_flags];
  [v3 setObject:v8 forKey:@"flags"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
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

- (void)copyTo:(id)a3
{
  v7 = a3;
  v7[5] = self->_timeValue;
  if ([(VCPProtoLivePhotoFrameInstruction *)self homographyParamsCount])
  {
    [v7 clearHomographyParams];
    v4 = [(VCPProtoLivePhotoFrameInstruction *)self homographyParamsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [(VCPProtoLivePhotoFrameInstruction *)self homographyParamAtIndex:i];
        [v7 addHomographyParam:?];
      }
    }
  }

  *(v7 + 13) = self->_timeScale;
  v7[4] = self->_epoch;
  *(v7 + 12) = self->_flags;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v4 + 40) = self->_timeValue;
  PBRepeatedFloatCopy();
  *(v4 + 52) = self->_timeScale;
  *(v4 + 32) = self->_epoch;
  *(v4 + 48) = self->_flags;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()] && self->_timeValue == *(v4 + 5) && PBRepeatedFloatIsEqual() && self->_timeScale == *(v4 + 13) && self->_epoch == *(v4 + 4) && self->_flags == *(v4 + 12);

  return v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_timeValue = v4[5];
  v8 = v4;
  v5 = [v4 homographyParamsCount];
  if (v5)
  {
    v6 = v5;
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