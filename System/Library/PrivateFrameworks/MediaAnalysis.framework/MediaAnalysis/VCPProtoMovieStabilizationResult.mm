@interface VCPProtoMovieStabilizationResult
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

@implementation VCPProtoMovieStabilizationResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieStabilizationResult;
  v4 = [(VCPProtoMovieStabilizationResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoMovieStabilizationResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  *&v4 = self->_analysisConfidence;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [dictionary setObject:v5 forKey:@"analysisConfidence"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_gyroStabilization];
  [dictionary setObject:v6 forKey:@"gyroStabilization"];

  recipeBlob = self->_recipeBlob;
  if (recipeBlob)
  {
    [dictionary setObject:recipeBlob forKey:@"recipeBlob"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteFloatField();
  PBDataWriterWriteBOOLField();
  if (self->_recipeBlob)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  *(to + 2) = LODWORD(self->_analysisConfidence);
  *(to + 24) = self->_gyroStabilization;
  recipeBlob = self->_recipeBlob;
  if (recipeBlob)
  {
    [to setRecipeBlob:recipeBlob];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = self->_analysisConfidence;
  *(v5 + 24) = self->_gyroStabilization;
  v6 = [(NSData *)self->_recipeBlob copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || self->_analysisConfidence != *(equalCopy + 2))
  {
    goto LABEL_5;
  }

  if (self->_gyroStabilization)
  {
    if ((*(equalCopy + 24) & 1) == 0)
    {
LABEL_5:
      v5 = 0;
      goto LABEL_6;
    }
  }

  else if (*(equalCopy + 24))
  {
    goto LABEL_5;
  }

  recipeBlob = self->_recipeBlob;
  if (recipeBlob | *(equalCopy + 2))
  {
    v5 = [(NSData *)recipeBlob isEqual:?];
  }

  else
  {
    v5 = 1;
  }

LABEL_6:

  return v5;
}

- (unint64_t)hash
{
  analysisConfidence = self->_analysisConfidence;
  if (analysisConfidence < 0.0)
  {
    analysisConfidence = -analysisConfidence;
  }

  *v2.i32 = floorf(analysisConfidence + 0.5);
  v5 = (analysisConfidence - *v2.i32) * 1.8447e19;
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
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  gyroStabilization = self->_gyroStabilization;
  return (2654435761 * gyroStabilization) ^ [(NSData *)self->_recipeBlob hash]^ v11;
}

- (void)mergeFrom:(id)from
{
  self->_analysisConfidence = *(from + 2);
  self->_gyroStabilization = *(from + 24);
  if (*(from + 2))
  {
    [(VCPProtoMovieStabilizationResult *)self setRecipeBlob:?];
  }
}

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"attributes"];
  v4 = [v3 objectForKeyedSubscript:@"analysisConfidence"];
  v5 = [v3 objectForKeyedSubscript:@"gyroStabilization"];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_alloc_init(VCPProtoMovieStabilizationResult);
    [v4 floatValue];
    [(VCPProtoMovieStabilizationResult *)v8 setAnalysisConfidence:?];
    -[VCPProtoMovieStabilizationResult setGyroStabilization:](v8, "setGyroStabilization:", [v6 BOOLValue]);
    v9 = [v3 objectForKeyedSubscript:@"stabilizationRecipe"];
    v10 = v9;
    if (v9)
    {
      [(VCPProtoMovieStabilizationResult *)v8 setRecipeBlob:v9];
    }
  }

  return v8;
}

- (id)exportToLegacyDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v5 = MEMORY[0x1E696AD98];
  [(VCPProtoMovieStabilizationResult *)self analysisConfidence];
  v6 = [v5 numberWithFloat:?];
  [dictionary2 setObject:v6 forKeyedSubscript:@"analysisConfidence"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[VCPProtoMovieStabilizationResult gyroStabilization](self, "gyroStabilization")}];
  [dictionary2 setObject:v7 forKeyedSubscript:@"gyroStabilization"];

  if ([(VCPProtoMovieStabilizationResult *)self hasRecipeBlob])
  {
    recipeBlob = [(VCPProtoMovieStabilizationResult *)self recipeBlob];
    [dictionary2 setObject:recipeBlob forKeyedSubscript:@"stabilizationRecipe"];
  }

  [dictionary setObject:dictionary2 forKeyedSubscript:@"attributes"];

  return dictionary;
}

@end