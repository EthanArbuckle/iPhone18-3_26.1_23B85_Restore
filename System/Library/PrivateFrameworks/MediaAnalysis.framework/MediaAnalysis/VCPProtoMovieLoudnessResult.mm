@interface VCPProtoMovieLoudnessResult
+ (id)resultFromLegacyDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VCPProtoMovieLoudnessResult

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  memset(&v13, 0, sizeof(v13));
  CMTimeRangeMakeFromDictionary(&v13, dictionaryCopy);
  v4 = [(__CFDictionary *)dictionaryCopy objectForKeyedSubscript:@"attributes"];
  v5 = [v4 objectForKeyedSubscript:@"energyValues"];
  v6 = [v4 objectForKeyedSubscript:@"peakValues"];
  v7 = v6;
  if (v13.start.flags)
  {
    v8 = 0;
    if ((v13.duration.flags & 1) != 0 && !v13.duration.epoch)
    {
      v8 = 0;
      if ((v13.duration.value & 0x8000000000000000) == 0 && v5 && v6 != 0)
      {
        v8 = objc_alloc_init(VCPProtoMovieLoudnessResult);
        v12 = v13;
        v11 = [VCPProtoTimeRange timeRangeWithCMTimeRange:&v12];
        [(VCPProtoMovieLoudnessResult *)v8 setTimeRange:v11];

        [v5 doubleValue];
        [(VCPProtoMovieLoudnessResult *)v8 setEnergy:?];
        [v7 doubleValue];
        [(VCPProtoMovieLoudnessResult *)v8 setPeak:?];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)exportToLegacyDictionary
{
  v16[2] = *MEMORY[0x1E69E9840];
  timeRange = [(VCPProtoMovieLoudnessResult *)self timeRange];
  v4 = timeRange;
  if (timeRange)
  {
    [timeRange timeRangeValue];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  range = v13;
  v5 = CMTimeRangeCopyAsDictionary(&range, 0);
  v6 = [(__CFDictionary *)v5 mutableCopy];

  v15[0] = @"energyValues";
  v7 = MEMORY[0x1E696AD98];
  [(VCPProtoMovieLoudnessResult *)self energy];
  v8 = [v7 numberWithDouble:?];
  v16[0] = v8;
  v15[1] = @"peakValues";
  v9 = MEMORY[0x1E696AD98];
  [(VCPProtoMovieLoudnessResult *)self peak];
  v10 = [v9 numberWithDouble:?];
  v16[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  [v6 setObject:v11 forKeyedSubscript:@"attributes"];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieLoudnessResult;
  v4 = [(VCPProtoMovieLoudnessResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoMovieLoudnessResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  timeRange = self->_timeRange;
  if (timeRange)
  {
    dictionaryRepresentation = [(VCPProtoTimeRange *)timeRange dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"timeRange"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_energy];
  [dictionary setObject:v6 forKey:@"energy"];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_peak];
  [dictionary setObject:v7 forKey:@"peak"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteDoubleField();
}

- (void)copyTo:(id)to
{
  timeRange = self->_timeRange;
  toCopy = to;
  [toCopy setTimeRange:timeRange];
  toCopy[1] = self->_energy;
  toCopy[2] = self->_peak;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  *(v5 + 8) = self->_energy;
  *(v5 + 16) = self->_peak;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = [equalCopy isMemberOfClass:objc_opt_class()] && ((timeRange = self->_timeRange, !(timeRange | *(equalCopy + 3))) || -[VCPProtoTimeRange isEqual:](timeRange, "isEqual:")) && self->_energy == *(equalCopy + 1) && self->_peak == *(equalCopy + 2);

  return v6;
}

- (unint64_t)hash
{
  v3 = [(VCPProtoTimeRange *)self->_timeRange hash];
  energy = self->_energy;
  if (energy < 0.0)
  {
    energy = -energy;
  }

  *v5.i64 = floor(energy + 0.5);
  v8 = energy - *v5.i64;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = vnegq_f64(v9);
  v11 = vbslq_s8(v10, v6, v5);
  v12 = v8 * 1.84467441e19;
  v13 = 2654435761u * *v11.i64;
  v14 = v13 + v12;
  if (v12 <= 0.0)
  {
    v14 = 2654435761u * *v11.i64;
  }

  v15 = v13 - fabs(v12);
  if (v12 >= 0.0)
  {
    v15 = v14;
  }

  peak = self->_peak;
  if (peak < 0.0)
  {
    peak = -peak;
  }

  *v4.i64 = floor(peak + 0.5);
  v17 = (peak - *v4.i64) * 1.84467441e19;
  *v11.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v18 = 2654435761u * *vbslq_s8(v10, v11, v4).i64;
  v19 = v18 + v17;
  v20 = fabs(v17);
  if (v17 <= 0.0)
  {
    v19 = v18;
  }

  v21 = v18 - v20;
  if (v17 >= 0.0)
  {
    v21 = v19;
  }

  return v15 ^ v3 ^ v21;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  timeRange = self->_timeRange;
  v6 = *(fromCopy + 3);
  if (timeRange)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(VCPProtoTimeRange *)timeRange mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(VCPProtoMovieLoudnessResult *)self setTimeRange:?];
  }

  fromCopy = v7;
LABEL_7:
  self->_energy = *(fromCopy + 1);
  self->_peak = *(fromCopy + 2);
}

@end