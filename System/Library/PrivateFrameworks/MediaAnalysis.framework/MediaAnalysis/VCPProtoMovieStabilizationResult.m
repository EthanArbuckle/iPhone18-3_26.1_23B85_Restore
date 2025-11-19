@interface VCPProtoMovieStabilizationResult
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

@implementation VCPProtoMovieStabilizationResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieStabilizationResult;
  v4 = [(VCPProtoMovieStabilizationResult *)&v8 description];
  v5 = [(VCPProtoMovieStabilizationResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  *&v4 = self->_analysisConfidence;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v3 setObject:v5 forKey:@"analysisConfidence"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_gyroStabilization];
  [v3 setObject:v6 forKey:@"gyroStabilization"];

  recipeBlob = self->_recipeBlob;
  if (recipeBlob)
  {
    [v3 setObject:recipeBlob forKey:@"recipeBlob"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  PBDataWriterWriteFloatField();
  PBDataWriterWriteBOOLField();
  if (self->_recipeBlob)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  *(a3 + 2) = LODWORD(self->_analysisConfidence);
  *(a3 + 24) = self->_gyroStabilization;
  recipeBlob = self->_recipeBlob;
  if (recipeBlob)
  {
    [a3 setRecipeBlob:recipeBlob];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = self->_analysisConfidence;
  *(v5 + 24) = self->_gyroStabilization;
  v6 = [(NSData *)self->_recipeBlob copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || self->_analysisConfidence != *(v4 + 2))
  {
    goto LABEL_5;
  }

  if (self->_gyroStabilization)
  {
    if ((*(v4 + 24) & 1) == 0)
    {
LABEL_5:
      v5 = 0;
      goto LABEL_6;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_5;
  }

  recipeBlob = self->_recipeBlob;
  if (recipeBlob | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  self->_analysisConfidence = *(a3 + 2);
  self->_gyroStabilization = *(a3 + 24);
  if (*(a3 + 2))
  {
    [(VCPProtoMovieStabilizationResult *)self setRecipeBlob:?];
  }
}

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"attributes"];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = MEMORY[0x1E696AD98];
  [(VCPProtoMovieStabilizationResult *)self analysisConfidence];
  v6 = [v5 numberWithFloat:?];
  [v4 setObject:v6 forKeyedSubscript:@"analysisConfidence"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[VCPProtoMovieStabilizationResult gyroStabilization](self, "gyroStabilization")}];
  [v4 setObject:v7 forKeyedSubscript:@"gyroStabilization"];

  if ([(VCPProtoMovieStabilizationResult *)self hasRecipeBlob])
  {
    v8 = [(VCPProtoMovieStabilizationResult *)self recipeBlob];
    [v4 setObject:v8 forKeyedSubscript:@"stabilizationRecipe"];
  }

  [v3 setObject:v4 forKeyedSubscript:@"attributes"];

  return v3;
}

@end