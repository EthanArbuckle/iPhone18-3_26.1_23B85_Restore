@interface VCPProtoImageCaptionResult
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

@implementation VCPProtoImageCaptionResult

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"attributes"];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = MEMORY[0x1E696AD98];
  [(VCPProtoImageCaptionResult *)self confidence];
  v5 = [v4 numberWithFloat:?];
  [dictionary setObject:v5 forKeyedSubscript:@"imageCaptionConfidence"];

  text = [(VCPProtoImageCaptionResult *)self text];
  [dictionary setObject:text forKeyedSubscript:@"imageCaptionText"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[VCPProtoImageCaptionResult unsafeContent](self, "unsafeContent")}];
  [dictionary setObject:v7 forKeyedSubscript:@"imageCaptionUnsafeContent"];

  v10 = @"attributes";
  v11[0] = dictionary;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoImageCaptionResult;
  v4 = [(VCPProtoImageCaptionResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoImageCaptionResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  *&v4 = self->_confidence;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [dictionary setObject:v5 forKey:@"confidence"];

  text = self->_text;
  if (text)
  {
    [dictionary setObject:text forKey:@"text"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_unsafeContent];
  [dictionary setObject:v7 forKey:@"unsafeContent"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteFloatField();
  PBDataWriterWriteStringField();
  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)to
{
  *(to + 2) = LODWORD(self->_confidence);
  text = self->_text;
  toCopy = to;
  [toCopy setText:text];
  toCopy[24] = self->_unsafeContent;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = self->_confidence;
  v6 = [(NSString *)self->_text copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 24) = self->_unsafeContent;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = [equalCopy isMemberOfClass:objc_opt_class()] && self->_confidence == *(equalCopy + 2) && ((text = self->_text, !(text | *(equalCopy + 2))) || -[NSString isEqual:](text, "isEqual:")) && self->_unsafeContent == equalCopy[24];

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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_confidence = *(fromCopy + 2);
  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(VCPProtoImageCaptionResult *)self setText:?];
    fromCopy = v5;
  }

  self->_unsafeContent = *(fromCopy + 24);
}

@end