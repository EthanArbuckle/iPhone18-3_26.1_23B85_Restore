@interface VCPProtoMovieHighlightResult
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

@implementation VCPProtoMovieHighlightResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieHighlightResult;
  v4 = [(VCPProtoMovieHighlightResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoMovieHighlightResult *)self dictionaryRepresentation];
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

  playbackCrop = self->_playbackCrop;
  if (playbackCrop)
  {
    dictionaryRepresentation3 = [(VCPProtoBounds *)playbackCrop dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"playbackCrop"];
  }

  colorNormalizationBlob = self->_colorNormalizationBlob;
  if (colorNormalizationBlob)
  {
    [dictionary setObject:colorNormalizationBlob forKey:@"colorNormalizationBlob"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteSubmessage();
  if (self->_colorNormalizationBlob)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setTimeRange:self->_timeRange];
  toCopy[4] = self->_curationScore;
  [toCopy setKeyFrame:self->_keyFrame];
  [toCopy setPlaybackCrop:self->_playbackCrop];
  if (self->_colorNormalizationBlob)
  {
    [toCopy setColorNormalizationBlob:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  *(v5 + 16) = self->_curationScore;
  v8 = [(VCPProtoVideoKeyFrame *)self->_keyFrame copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(VCPProtoBounds *)self->_playbackCrop copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSData *)self->_colorNormalizationBlob copyWithZone:zone];
  v13 = *(v5 + 8);
  *(v5 + 8) = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((timeRange = self->_timeRange, !(timeRange | equalCopy[5])) || -[VCPProtoTimeRange isEqual:](timeRange, "isEqual:")) && self->_curationScore == *(equalCopy + 4) && ((keyFrame = self->_keyFrame, !(keyFrame | equalCopy[3])) || -[VCPProtoVideoKeyFrame isEqual:](keyFrame, "isEqual:")) && ((playbackCrop = self->_playbackCrop, !(playbackCrop | equalCopy[4])) || -[VCPProtoBounds isEqual:](playbackCrop, "isEqual:")))
  {
    colorNormalizationBlob = self->_colorNormalizationBlob;
    if (colorNormalizationBlob | equalCopy[1])
    {
      v9 = [(NSData *)colorNormalizationBlob isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
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
  *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
  v7.i64[0] = 0x8000000080000000;
  v7.i64[1] = 0x8000000080000000;
  v5.i32[0] = vbslq_s8(v7, v5, v4).i32[0];
  v8 = (curationScore - *v4.i32) * 1.8447e19;
  v9 = 2654435761u * *v5.i32;
  v10 = v9 + v8;
  if (v8 <= 0.0)
  {
    v10 = 2654435761u * *v5.i32;
  }

  v11 = v9 - fabsf(v8);
  if (v8 < 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  v13 = v3 ^ [(VCPProtoVideoKeyFrame *)self->_keyFrame hash];
  v14 = v13 ^ [(VCPProtoBounds *)self->_playbackCrop hash];
  return v12 ^ v14 ^ [(NSData *)self->_colorNormalizationBlob hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  timeRange = self->_timeRange;
  v11 = fromCopy;
  v6 = *(fromCopy + 5);
  if (timeRange)
  {
    if (v6)
    {
      [(VCPProtoTimeRange *)timeRange mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(VCPProtoMovieHighlightResult *)self setTimeRange:?];
  }

  self->_curationScore = v11[4];
  keyFrame = self->_keyFrame;
  v8 = *(v11 + 3);
  if (keyFrame)
  {
    if (v8)
    {
      [(VCPProtoVideoKeyFrame *)keyFrame mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(VCPProtoMovieHighlightResult *)self setKeyFrame:?];
  }

  playbackCrop = self->_playbackCrop;
  v10 = *(v11 + 4);
  if (playbackCrop)
  {
    if (v10)
    {
      [(VCPProtoBounds *)playbackCrop mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(VCPProtoMovieHighlightResult *)self setPlaybackCrop:?];
  }

  if (*(v11 + 1))
  {
    [(VCPProtoMovieHighlightResult *)self setColorNormalizationBlob:?];
  }
}

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  memset(&v23, 0, sizeof(v23));
  CMTimeRangeMakeFromDictionary(&v23, dictionaryCopy);
  v4 = [(__CFDictionary *)dictionaryCopy objectForKeyedSubscript:@"quality"];
  v5 = v4;
  if ((v23.start.flags & 1) == 0)
  {
    v6 = 0;
    goto LABEL_3;
  }

  v6 = 0;
  if ((v23.duration.flags & 1) != 0 && !v23.duration.epoch)
  {
    v6 = 0;
    if ((v23.duration.value & 0x8000000000000000) == 0)
    {
      if (v4)
      {
        v8 = objc_alloc_init(VCPProtoMovieHighlightResult);
        v22 = v23;
        v9 = [VCPProtoTimeRange timeRangeWithCMTimeRange:&v22];
        [(VCPProtoMovieHighlightResult *)v8 setTimeRange:v9];

        [v5 floatValue];
        [(VCPProtoMovieHighlightResult *)v8 setCurationScore:?];
        v10 = [(__CFDictionary *)dictionaryCopy objectForKeyedSubscript:@"attributes"];
        v11 = v10;
        if (v10)
        {
          v12 = [v10 objectForKeyedSubscript:@"bestPlaybackCrop"];
          v6 = v12;
          if (!v12)
          {
LABEL_19:

            goto LABEL_3;
          }

          v25 = NSRectFromString(v12);
          v13 = [VCPProtoBounds boundsWithCGRect:v25.origin.x, v25.origin.y, v25.size.width, v25.size.height];
          [(VCPProtoMovieHighlightResult *)v8 setPlaybackCrop:v13];

          v14 = [v11 objectForKeyedSubscript:@"colorNormalizationData"];
          if (v14)
          {
            [(VCPProtoMovieHighlightResult *)v8 setColorNormalizationBlob:v14];
          }

          v15 = objc_alloc_init(VCPProtoVideoKeyFrame);
          memset(&v22, 0, 24);
          v16 = [v11 objectForKeyedSubscript:@"keyFrameTime"];
          CMTimeMakeFromDictionary(&v22.start, v16);

          v17 = [v11 objectForKeyedSubscript:@"keyFrameScore"];
          v18 = v17;
          if ((v22.start.flags & 1) == 0 || !v17)
          {

            v6 = 0;
            goto LABEL_19;
          }

          v20 = *&v22.start.value;
          epoch = v22.start.epoch;
          v19 = [VCPProtoTime timeWithCMTime:&v20];
          [(VCPProtoVideoKeyFrame *)v15 setTimestamp:v19];

          [v18 floatValue];
          [(VCPProtoVideoKeyFrame *)v15 setCurationScore:?];
          [(VCPProtoMovieHighlightResult *)v8 setKeyFrame:v15];
        }

        v6 = v8;
        goto LABEL_19;
      }
    }
  }

LABEL_3:

  return v6;
}

- (id)exportToLegacyDictionary
{
  timeRange = [(VCPProtoMovieHighlightResult *)self timeRange];
  v4 = timeRange;
  if (timeRange)
  {
    [timeRange timeRangeValue];
  }

  else
  {
    memset(&v21, 0, sizeof(v21));
  }

  range = v21;
  v5 = CMTimeRangeCopyAsDictionary(&range, 0);
  v6 = [(__CFDictionary *)v5 mutableCopy];

  v7 = MEMORY[0x1E696AD98];
  [(VCPProtoMovieHighlightResult *)self curationScore];
  v8 = [v7 numberWithFloat:?];
  [v6 setObject:v8 forKeyedSubscript:@"quality"];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  playbackCrop = [(VCPProtoMovieHighlightResult *)self playbackCrop];
  [playbackCrop rectValue];
  v11 = NSStringFromRect(v24);
  [dictionary setObject:v11 forKeyedSubscript:@"bestPlaybackCrop"];

  if ([(VCPProtoMovieHighlightResult *)self hasColorNormalizationBlob])
  {
    colorNormalizationBlob = [(VCPProtoMovieHighlightResult *)self colorNormalizationBlob];
    [dictionary setObject:colorNormalizationBlob forKeyedSubscript:@"colorNormalizationData"];
  }

  v13 = [(VCPProtoMovieHighlightResult *)self keyFrame:*&v21.start.value];
  v14 = v13;
  if (v13)
  {
    timestamp = [v13 timestamp];
    v16 = timestamp;
    if (timestamp)
    {
      [timestamp timeValue];
    }

    else
    {
      memset(&v21, 0, 24);
    }

    *&range.start.value = *&v21.start.value;
    range.start.epoch = v21.start.epoch;
    v17 = CMTimeCopyAsDictionary(&range.start, 0);
    [dictionary setObject:v17 forKeyedSubscript:@"keyFrameTime"];

    v18 = MEMORY[0x1E696AD98];
    [v14 curationScore];
    v19 = [v18 numberWithFloat:?];
    [dictionary setObject:v19 forKeyedSubscript:@"keyFrameScore"];
  }

  [v6 setObject:dictionary forKeyedSubscript:{@"attributes", *&v21.start.value, v21.start.epoch}];

  return v6;
}

@end