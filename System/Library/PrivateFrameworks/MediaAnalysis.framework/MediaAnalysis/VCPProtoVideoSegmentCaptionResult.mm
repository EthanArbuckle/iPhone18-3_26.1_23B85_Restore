@interface VCPProtoVideoSegmentCaptionResult
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

@implementation VCPProtoVideoSegmentCaptionResult

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  memset(&v13, 0, sizeof(v13));
  CMTimeRangeMakeFromDictionary(&v13, dictionaryCopy);
  v4 = [(__CFDictionary *)dictionaryCopy objectForKeyedSubscript:@"attributes"];
  v5 = v4;
  if ((v13.start.flags & 1) != 0 && (v13.duration.flags & 1) != 0 && !v13.duration.epoch && (v13.duration.value & 0x8000000000000000) == 0 && v4)
  {
    v8 = [v4 objectForKeyedSubscript:@"videoCaptionConfidence"];
    v9 = [v5 objectForKeyedSubscript:@"videoCaptionText"];
    v10 = v9;
    if (v8 && v9)
    {
      v6 = objc_alloc_init(VCPProtoVideoSegmentCaptionResult);
      v12 = v13;
      v11 = [VCPProtoTimeRange timeRangeWithCMTimeRange:&v12];
      [(VCPProtoVideoSegmentCaptionResult *)v6 setTimeRange:v11];

      [v8 floatValue];
      [(VCPProtoVideoSegmentCaptionResult *)v6 setConfidence:?];
      [(VCPProtoVideoSegmentCaptionResult *)v6 setText:v10];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v12.start.value) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPProtoVideoSegmentCaptionResult] confidence or text is missing", &v12, 2u);
      }

      v6 = 0;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12.start.value) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPProtoVideoSegmentCaptionResult] timerange is invalid or attribute is missing", &v12, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (id)exportToLegacyDictionary
{
  timeRange = [(VCPProtoVideoSegmentCaptionResult *)self timeRange];
  v4 = timeRange;
  if (timeRange)
  {
    [timeRange timeRangeValue];
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
  }

  range = v12;
  v5 = CMTimeRangeCopyAsDictionary(&range, 0);
  v6 = [(__CFDictionary *)v5 mutableCopy];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v8 = MEMORY[0x1E696AD98];
  [(VCPProtoVideoSegmentCaptionResult *)self confidence];
  v9 = [v8 numberWithFloat:?];
  [dictionary setObject:v9 forKeyedSubscript:@"videoCaptionConfidence"];

  text = [(VCPProtoVideoSegmentCaptionResult *)self text];
  [dictionary setObject:text forKeyedSubscript:@"videoCaptionText"];

  [v6 setObject:dictionary forKeyedSubscript:@"attributes"];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoVideoSegmentCaptionResult;
  v4 = [(VCPProtoVideoSegmentCaptionResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoVideoSegmentCaptionResult *)self dictionaryRepresentation];
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

  *&v4 = self->_confidence;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [dictionary setObject:v7 forKey:@"confidence"];

  text = self->_text;
  if (text)
  {
    [dictionary setObject:text forKey:@"text"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteStringField();
}

- (void)copyTo:(id)to
{
  timeRange = self->_timeRange;
  toCopy = to;
  [toCopy setTimeRange:timeRange];
  toCopy[2] = self->_confidence;
  [toCopy setText:self->_text];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  *(v5 + 8) = self->_confidence;
  v8 = [(NSString *)self->_text copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((timeRange = self->_timeRange, !(timeRange | equalCopy[3])) || -[VCPProtoTimeRange isEqual:](timeRange, "isEqual:")) && self->_confidence == *(equalCopy + 2))
  {
    text = self->_text;
    if (text | equalCopy[2])
    {
      v7 = [(NSString *)text isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(VCPProtoTimeRange *)self->_timeRange hash];
  confidence = self->_confidence;
  if (confidence < 0.0)
  {
    confidence = -confidence;
  }

  *v4.i32 = floorf(confidence + 0.5);
  *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
  v7.i64[0] = 0x8000000080000000;
  v7.i64[1] = 0x8000000080000000;
  v5.i32[0] = vbslq_s8(v7, v5, v4).i32[0];
  v8 = (confidence - *v4.i32) * 1.8447e19;
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

  return v12 ^ v3 ^ [(NSString *)self->_text hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  timeRange = self->_timeRange;
  v6 = *(fromCopy + 3);
  v7 = fromCopy;
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

    [(VCPProtoVideoSegmentCaptionResult *)self setTimeRange:?];
  }

  fromCopy = v7;
LABEL_7:
  self->_confidence = *(fromCopy + 2);
  if (*(fromCopy + 2))
  {
    [(VCPProtoVideoSegmentCaptionResult *)self setText:?];
    fromCopy = v7;
  }
}

@end