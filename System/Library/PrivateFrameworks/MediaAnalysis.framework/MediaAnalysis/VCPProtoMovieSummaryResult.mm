@interface VCPProtoMovieSummaryResult
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

@implementation VCPProtoMovieSummaryResult

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  memset(&v23, 0, sizeof(v23));
  CMTimeRangeMakeFromDictionary(&v23, dictionaryCopy);
  v4 = [(__CFDictionary *)dictionaryCopy objectForKeyedSubscript:@"quality"];
  v5 = [(__CFDictionary *)dictionaryCopy objectForKeyedSubscript:@"flags"];
  v6 = v5;
  if (v23.start.flags)
  {
    v7 = 0;
    if ((v23.duration.flags & 1) != 0 && !v23.duration.epoch)
    {
      v7 = 0;
      if ((v23.duration.value & 0x8000000000000000) == 0 && v5 && v4 != 0)
      {
        v7 = objc_alloc_init(VCPProtoMovieSummaryResult);
        v22 = v23;
        v10 = [VCPProtoTimeRange timeRangeWithCMTimeRange:&v22];
        [(VCPProtoMovieSummaryResult *)v7 setTimeRange:v10];

        [v4 floatValue];
        [(VCPProtoMovieSummaryResult *)v7 setCurationScore:?];
        -[VCPProtoMovieSummaryResult setAutoPlayable:](v7, "setAutoPlayable:", ([v6 unsignedIntegerValue] >> 19) & 1);
        v11 = [(__CFDictionary *)dictionaryCopy objectForKeyedSubscript:@"attributes"];
        if (v11)
        {
          v12 = objc_alloc_init(VCPProtoVideoKeyFrame);
          memset(&v22, 0, 24);
          v13 = [v11 objectForKeyedSubscript:@"keyFrameTime"];
          CMTimeMakeFromDictionary(&v22.start, v13);

          v14 = [v11 objectForKeyedSubscript:@"keyFrameScore"];
          v15 = v14;
          if ((v22.start.flags & 1) != 0 && v14)
          {
            v20 = *&v22.start.value;
            epoch = v22.start.epoch;
            v16 = [VCPProtoTime timeWithCMTime:&v20];
            [(VCPProtoVideoKeyFrame *)v12 setTimestamp:v16];

            [v15 floatValue];
            [(VCPProtoVideoKeyFrame *)v12 setCurationScore:?];
            [(VCPProtoMovieSummaryResult *)v7 setKeyFrame:v12];
          }

          v17 = [v11 objectForKeyedSubscript:@"bestPlaybackCrop"];
          v18 = v17;
          if (v17)
          {
            v25 = NSRectFromString(v17);
            v19 = [VCPProtoBounds boundsWithCGRect:v25.origin.x, v25.origin.y, v25.size.width, v25.size.height];
            [(VCPProtoMovieSummaryResult *)v7 setPlaybackCrop:v19];
          }
        }
      }
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
  timeRange = [(VCPProtoMovieSummaryResult *)self timeRange];
  v4 = timeRange;
  if (timeRange)
  {
    [timeRange timeRangeValue];
  }

  else
  {
    memset(&v22, 0, sizeof(v22));
  }

  range = v22;
  v5 = CMTimeRangeCopyAsDictionary(&range, 0);
  v6 = [(__CFDictionary *)v5 mutableCopy];

  if ([(VCPProtoMovieSummaryResult *)self autoPlayable])
  {
    v7 = 0x80000;
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{v7, *&v22.start.value, v22.start.epoch}];
  [v6 setObject:v8 forKeyedSubscript:@"flags"];

  v9 = MEMORY[0x1E696AD98];
  [(VCPProtoMovieSummaryResult *)self curationScore];
  v10 = [v9 numberWithFloat:?];
  [v6 setObject:v10 forKeyedSubscript:@"quality"];

  keyFrame = [(VCPProtoMovieSummaryResult *)self keyFrame];
  playbackCrop = [(VCPProtoMovieSummaryResult *)self playbackCrop];
  if (keyFrame | playbackCrop)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (keyFrame)
    {
      timestamp = [keyFrame timestamp];
      v15 = timestamp;
      if (timestamp)
      {
        [timestamp timeValue];
      }

      else
      {
        memset(&v22, 0, 24);
      }

      *&range.start.value = *&v22.start.value;
      range.start.epoch = v22.start.epoch;
      v16 = CMTimeCopyAsDictionary(&range.start, 0);
      [dictionary setObject:v16 forKeyedSubscript:@"keyFrameTime"];

      v17 = MEMORY[0x1E696AD98];
      [keyFrame curationScore];
      v18 = [v17 numberWithFloat:?];
      [dictionary setObject:v18 forKeyedSubscript:@"keyFrameScore"];
    }

    if (playbackCrop)
    {
      playbackCrop2 = [(VCPProtoMovieSummaryResult *)self playbackCrop];
      [playbackCrop2 rectValue];
      v20 = NSStringFromRect(v25);
      [dictionary setObject:v20 forKeyedSubscript:@"bestPlaybackCrop"];
    }

    [v6 setObject:dictionary forKeyedSubscript:{@"attributes", *&v22.start.value, v22.start.epoch}];
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieSummaryResult;
  v4 = [(VCPProtoMovieSummaryResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoMovieSummaryResult *)self dictionaryRepresentation];
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

  *&v4 = self->_curationScore;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [dictionary setObject:v7 forKey:@"curationScore"];

  keyFrame = self->_keyFrame;
  if (keyFrame)
  {
    dictionaryRepresentation2 = [(VCPProtoVideoKeyFrame *)keyFrame dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"keyFrame"];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_autoPlayable];
  [dictionary setObject:v10 forKey:@"autoPlayable"];

  playbackCrop = self->_playbackCrop;
  if (playbackCrop)
  {
    dictionaryRepresentation3 = [(VCPProtoBounds *)playbackCrop dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"playbackCrop"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteFloatField();
  if (self->_keyFrame)
  {
    PBDataWriterWriteSubmessage();
  }

  PBDataWriterWriteBOOLField();
  if (self->_playbackCrop)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setTimeRange:self->_timeRange];
  v4 = toCopy;
  toCopy[2] = self->_curationScore;
  if (self->_keyFrame)
  {
    [toCopy setKeyFrame:?];
    v4 = toCopy;
  }

  *(v4 + 40) = self->_autoPlayable;
  if (self->_playbackCrop)
  {
    [toCopy setPlaybackCrop:?];
    v4 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  *(v5 + 8) = self->_curationScore;
  v8 = [(VCPProtoVideoKeyFrame *)self->_keyFrame copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  *(v5 + 40) = self->_autoPlayable;
  v10 = [(VCPProtoBounds *)self->_playbackCrop copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  timeRange = self->_timeRange;
  if (timeRange | *(equalCopy + 4))
  {
    if (![(VCPProtoTimeRange *)timeRange isEqual:?])
    {
      goto LABEL_9;
    }
  }

  if (self->_curationScore != *(equalCopy + 2))
  {
    goto LABEL_9;
  }

  keyFrame = self->_keyFrame;
  if (keyFrame | *(equalCopy + 2))
  {
    if (![(VCPProtoVideoKeyFrame *)keyFrame isEqual:?])
    {
      goto LABEL_9;
    }
  }

  if (self->_autoPlayable)
  {
    if ((*(equalCopy + 40) & 1) == 0)
    {
LABEL_9:
      v7 = 0;
      goto LABEL_10;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_9;
  }

  playbackCrop = self->_playbackCrop;
  if (playbackCrop | *(equalCopy + 3))
  {
    v7 = [(VCPProtoBounds *)playbackCrop isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(VCPProtoTimeRange *)self->_timeRange hash];
  curationScore = self->_curationScore;
  if (curationScore < 0.0)
  {
    curationScore = -curationScore;
  }

  *v4.i32 = floorf(curationScore + 0.5);
  v7 = (curationScore - *v4.i32) * 1.8447e19;
  *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
  v8.i64[0] = 0x8000000080000000;
  v8.i64[1] = 0x8000000080000000;
  v4.i32[0] = vbslq_s8(v8, v5, v4).i32[0];
  v9 = 2654435761u * *v4.i32;
  v10 = v9 + v7;
  if (v7 <= 0.0)
  {
    v10 = 2654435761u * *v4.i32;
  }

  v11 = v9 - fabsf(v7);
  if (v7 < 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  v13 = v3 ^ [(VCPProtoVideoKeyFrame *)self->_keyFrame hash]^ (2654435761 * self->_autoPlayable);
  return v12 ^ v13 ^ [(VCPProtoBounds *)self->_playbackCrop hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  timeRange = self->_timeRange;
  v6 = *(fromCopy + 4);
  v11 = fromCopy;
  if (timeRange)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(VCPProtoTimeRange *)timeRange mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(VCPProtoMovieSummaryResult *)self setTimeRange:?];
  }

  fromCopy = v11;
LABEL_7:
  self->_curationScore = *(fromCopy + 2);
  keyFrame = self->_keyFrame;
  v8 = *(fromCopy + 2);
  if (keyFrame)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(VCPProtoVideoKeyFrame *)keyFrame mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(VCPProtoMovieSummaryResult *)self setKeyFrame:?];
  }

  fromCopy = v11;
LABEL_13:
  self->_autoPlayable = *(fromCopy + 40);
  playbackCrop = self->_playbackCrop;
  v10 = *(fromCopy + 3);
  if (playbackCrop)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(VCPProtoBounds *)playbackCrop mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(VCPProtoMovieSummaryResult *)self setPlaybackCrop:?];
  }

  fromCopy = v11;
LABEL_19:
}

@end