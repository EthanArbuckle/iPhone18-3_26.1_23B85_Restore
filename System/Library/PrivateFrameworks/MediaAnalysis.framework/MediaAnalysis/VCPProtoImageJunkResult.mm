@interface VCPProtoImageJunkResult
+ (id)resultFromLegacyDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (unint64_t)hash;
@end

@implementation VCPProtoImageJunkResult

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"attributes"];
  v4 = [v3 objectForKeyedSubscript:@"junk"];
  if (v4)
  {
    v5 = objc_alloc_init(VCPProtoImageJunkResult);
    [v4 floatValue];
    [(VCPProtoImageJunkResult *)v5 setConfidence:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)exportToLegacyDictionary
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"attributes";
  v7 = @"junk";
  v2 = MEMORY[0x1E696AD98];
  [(VCPProtoImageJunkResult *)self confidence];
  v3 = [v2 numberWithFloat:?];
  v8 = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoImageJunkResult;
  v4 = [(VCPProtoImageJunkResult *)&v8 description];
  v5 = [(VCPProtoImageJunkResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  *&v4 = self->_confidence;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v3 setObject:v5 forKey:@"confidence"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 2) = LODWORD(self->_confidence);
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = self->_confidence == v4[2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
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
    return v9;
  }

  else
  {
    return v8;
  }
}

@end