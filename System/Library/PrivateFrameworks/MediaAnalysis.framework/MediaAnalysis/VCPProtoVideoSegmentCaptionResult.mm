@interface VCPProtoVideoSegmentCaptionResult
+ (id)resultFromLegacyDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCPProtoVideoSegmentCaptionResult

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = a3;
  memset(&v13, 0, sizeof(v13));
  CMTimeRangeMakeFromDictionary(&v13, v3);
  v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:@"attributes"];
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
  v3 = [(VCPProtoVideoSegmentCaptionResult *)self timeRange];
  v4 = v3;
  if (v3)
  {
    [v3 timeRangeValue];
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
  }

  range = v12;
  v5 = CMTimeRangeCopyAsDictionary(&range, 0);
  v6 = [(__CFDictionary *)v5 mutableCopy];

  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = MEMORY[0x1E696AD98];
  [(VCPProtoVideoSegmentCaptionResult *)self confidence];
  v9 = [v8 numberWithFloat:?];
  [v7 setObject:v9 forKeyedSubscript:@"videoCaptionConfidence"];

  v10 = [(VCPProtoVideoSegmentCaptionResult *)self text];
  [v7 setObject:v10 forKeyedSubscript:@"videoCaptionText"];

  [v6 setObject:v7 forKeyedSubscript:@"attributes"];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoVideoSegmentCaptionResult;
  v4 = [(VCPProtoVideoSegmentCaptionResult *)&v8 description];
  v5 = [(VCPProtoVideoSegmentCaptionResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  timeRange = self->_timeRange;
  if (timeRange)
  {
    v6 = [(VCPProtoTimeRange *)timeRange dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"timeRange"];
  }

  *&v4 = self->_confidence;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v3 setObject:v7 forKey:@"confidence"];

  text = self->_text;
  if (text)
  {
    [v3 setObject:text forKey:@"text"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteStringField();
}

- (void)copyTo:(id)a3
{
  timeRange = self->_timeRange;
  v5 = a3;
  [v5 setTimeRange:timeRange];
  v5[2] = self->_confidence;
  [v5 setText:self->_text];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  *(v5 + 8) = self->_confidence;
  v8 = [(NSString *)self->_text copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((timeRange = self->_timeRange, !(timeRange | v4[3])) || -[VCPProtoTimeRange isEqual:](timeRange, "isEqual:")) && self->_confidence == *(v4 + 2))
  {
    text = self->_text;
    if (text | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  timeRange = self->_timeRange;
  v6 = *(v4 + 3);
  v7 = v4;
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

  v4 = v7;
LABEL_7:
  self->_confidence = *(v4 + 2);
  if (*(v4 + 2))
  {
    [(VCPProtoVideoSegmentCaptionResult *)self setText:?];
    v4 = v7;
  }
}

@end