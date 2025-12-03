@interface VCPProtoVideoCaptionPreferenceResult
+ (id)resultFromLegacyDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation VCPProtoVideoCaptionPreferenceResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoVideoCaptionPreferenceResult;
  v4 = [(VCPProtoVideoCaptionPreferenceResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoVideoCaptionPreferenceResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_preference];
  [dictionary setObject:v4 forKey:@"preference"];

  *&v5 = self->_score;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [dictionary setObject:v6 forKey:@"score"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteBOOLField();
  PBDataWriterWriteFloatField();
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 12) = self->_preference;
  *(result + 2) = LODWORD(self->_score);
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_4;
  }

  if (!self->_preference)
  {
    if (*(equalCopy + 12))
    {
      goto LABEL_4;
    }

LABEL_6:
    v5 = self->_score == *(equalCopy + 2);
    goto LABEL_7;
  }

  if (*(equalCopy + 12))
  {
    goto LABEL_6;
  }

LABEL_4:
  v5 = 0;
LABEL_7:

  return v5;
}

- (unint64_t)hash
{
  score = self->_score;
  if (score < 0.0)
  {
    score = -score;
  }

  *v2.i32 = floorf(score + 0.5);
  v5 = (score - *v2.i32) * 1.8447e19;
  *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v6.i64[0] = 0x8000000080000000;
  v6.i64[1] = 0x8000000080000000;
  v7 = 2654435761u * *vbslq_s8(v6, v3, v2).i32;
  v8 = v7 + v5;
  v9 = fabsf(v5);
  if (v5 <= 0.0)
  {
    v8 = v7;
  }

  v10 = v7 - v9;
  if (v5 >= 0.0)
  {
    v10 = v8;
  }

  return v10 ^ (2654435761 * self->_preference);
}

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"attributes"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"videoCaptionPreference"];
    v6 = [v4 objectForKeyedSubscript:@"videoCaptionPreferenceScore"];
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
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPProtoVideoCaptionPreferenceResult] preference or score is missing", v11, 2u);
      }

      v9 = 0;
    }

    else
    {
      v9 = objc_alloc_init(VCPProtoVideoCaptionPreferenceResult);
      -[VCPProtoVideoCaptionPreferenceResult setPreference:](v9, "setPreference:", [v5 BOOLValue]);
      [v7 floatValue];
      [(VCPProtoVideoCaptionPreferenceResult *)v9 setScore:?];
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPProtoVideoCaptionPreferenceResult] attribute is missing", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)exportToLegacyDictionary
{
  v10[1] = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[VCPProtoVideoCaptionPreferenceResult preference](self, "preference")}];
  [dictionary setObject:v4 forKeyedSubscript:@"videoCaptionPreference"];

  v5 = MEMORY[0x1E696AD98];
  [(VCPProtoVideoCaptionPreferenceResult *)self score];
  v6 = [v5 numberWithFloat:?];
  [dictionary setObject:v6 forKeyedSubscript:@"videoCaptionPreferenceScore"];

  v9 = @"attributes";
  v10[0] = dictionary;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  return v7;
}

@end