@interface VCPProtoVideoCaptionResult
+ (id)resultFromLegacyDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (unint64_t)hash;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCPProtoVideoCaptionResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoVideoCaptionResult;
  v4 = [(VCPProtoVideoCaptionResult *)&v8 description];
  v5 = [(VCPProtoVideoCaptionResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  *&v4 = self->_confidence;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v3 setObject:v5 forKey:@"confidence"];

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
  PBDataWriterWriteFloatField();
  PBDataWriterWriteStringField();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = self->_confidence;
  v6 = [(NSString *)self->_text copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_confidence == *(v4 + 2))
  {
    text = self->_text;
    if (text | v4[2])
    {
      v6 = [(NSString *)text isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  confidence = self->_confidence;
  if (confidence < 0.0)
  {
    confidence = -confidence;
  }

  *v2.i32 = floorf(confidence + 0.5);
  *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v5.i64[0] = 0x8000000080000000;
  v5.i64[1] = 0x8000000080000000;
  v3.i32[0] = vbslq_s8(v5, v3, v2).i32[0];
  v6 = (confidence - *v2.i32) * 1.8447e19;
  v7 = 2654435761u * *v3.i32;
  v8 = v7 + v6;
  if (v6 <= 0.0)
  {
    v8 = 2654435761u * *v3.i32;
  }

  v9 = v7 - fabsf(v6);
  if (v6 < 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  return [(NSString *)self->_text hash]^ v10;
}

- (void)mergeFrom:(id)a3
{
  self->_confidence = *(a3 + 2);
  if (*(a3 + 2))
  {
    [(VCPProtoVideoCaptionResult *)self setText:?];
  }
}

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"attributes"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"videoCaptionConfidence"];
    v6 = [v4 objectForKeyedSubscript:@"videoCaptionText"];
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPProtoVideoCaptionResult] confidence or text is missing", v11, 2u);
      }

      v9 = 0;
    }

    else
    {
      v9 = objc_alloc_init(VCPProtoVideoCaptionResult);
      [v5 floatValue];
      [(VCPProtoVideoCaptionResult *)v9 setConfidence:?];
      [(VCPProtoVideoCaptionResult *)v9 setText:v7];
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPProtoVideoCaptionResult] attribute is missing", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)exportToLegacyDictionary
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = MEMORY[0x1E696AD98];
  [(VCPProtoVideoCaptionResult *)self confidence];
  v5 = [v4 numberWithFloat:?];
  [v3 setObject:v5 forKeyedSubscript:@"videoCaptionConfidence"];

  v6 = [(VCPProtoVideoCaptionResult *)self text];
  [v3 setObject:v6 forKeyedSubscript:@"videoCaptionText"];

  v9 = @"attributes";
  v10[0] = v3;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  return v7;
}

@end