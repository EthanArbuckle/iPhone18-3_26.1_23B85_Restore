@interface VCPProtoImageCaptionResult
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

@implementation VCPProtoImageCaptionResult

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"attributes"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"imageCaptionConfidence"];
    v6 = [v4 objectForKeyedSubscript:@"imageCaptionText"];
    v7 = [v4 objectForKeyedSubscript:@"imageCaptionUnsafeContent"];
    v8 = v7;
    if (v5)
    {
      v9 = v6 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9 || v7 == 0)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPProtoImageCaptionResult] confidence, text or unsafeContent is missing", v13, 2u);
      }

      v11 = 0;
    }

    else
    {
      v11 = objc_alloc_init(VCPProtoImageCaptionResult);
      [v5 floatValue];
      [(VCPProtoImageCaptionResult *)v11 setConfidence:?];
      [(VCPProtoImageCaptionResult *)v11 setText:v6];
      -[VCPProtoImageCaptionResult setUnsafeContent:](v11, "setUnsafeContent:", [v8 BOOLValue]);
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPProtoImageCaptionResult] attribute is missing", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (id)exportToLegacyDictionary
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = MEMORY[0x1E696AD98];
  [(VCPProtoImageCaptionResult *)self confidence];
  v5 = [v4 numberWithFloat:?];
  [v3 setObject:v5 forKeyedSubscript:@"imageCaptionConfidence"];

  v6 = [(VCPProtoImageCaptionResult *)self text];
  [v3 setObject:v6 forKeyedSubscript:@"imageCaptionText"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[VCPProtoImageCaptionResult unsafeContent](self, "unsafeContent")}];
  [v3 setObject:v7 forKeyedSubscript:@"imageCaptionUnsafeContent"];

  v10 = @"attributes";
  v11[0] = v3;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoImageCaptionResult;
  v4 = [(VCPProtoImageCaptionResult *)&v8 description];
  v5 = [(VCPProtoImageCaptionResult *)self dictionaryRepresentation];
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

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_unsafeContent];
  [v3 setObject:v7 forKey:@"unsafeContent"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteFloatField();
  PBDataWriterWriteStringField();
  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)a3
{
  *(a3 + 2) = LODWORD(self->_confidence);
  text = self->_text;
  v5 = a3;
  [v5 setText:text];
  v5[24] = self->_unsafeContent;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = self->_confidence;
  v6 = [(NSString *)self->_text copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 24) = self->_unsafeContent;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = [v4 isMemberOfClass:objc_opt_class()] && self->_confidence == *(v4 + 2) && ((text = self->_text, !(text | *(v4 + 2))) || -[NSString isEqual:](text, "isEqual:")) && self->_unsafeContent == v4[24];

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
  v5 = (confidence - *v2.i32) * 1.8447e19;
  *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v6.i64[0] = 0x8000000080000000;
  v6.i64[1] = 0x8000000080000000;
  v2.i32[0] = vbslq_s8(v6, v3, v2).i32[0];
  v7 = 2654435761u * *v2.i32;
  v8 = v7 + v5;
  if (v5 <= 0.0)
  {
    v8 = 2654435761u * *v2.i32;
  }

  v9 = v7 - fabsf(v5);
  if (v5 < 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  return [(NSString *)self->_text hash]^ (2654435761 * self->_unsafeContent) ^ v10;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_confidence = *(v4 + 2);
  if (*(v4 + 2))
  {
    v5 = v4;
    [(VCPProtoImageCaptionResult *)self setText:?];
    v4 = v5;
  }

  self->_unsafeContent = *(v4 + 24);
}

@end