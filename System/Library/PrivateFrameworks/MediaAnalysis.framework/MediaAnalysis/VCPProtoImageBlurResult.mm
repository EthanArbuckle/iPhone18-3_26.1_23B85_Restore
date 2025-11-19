@interface VCPProtoImageBlurResult
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

@implementation VCPProtoImageBlurResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoImageBlurResult;
  v4 = [(VCPProtoImageBlurResult *)&v8 description];
  v5 = [(VCPProtoImageBlurResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  *&v4 = self->_sharpness;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v3 setObject:v5 forKey:@"sharpness"];

  if (*&self->_has)
  {
    *&v6 = self->_faceSharpness;
    v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
    [v3 setObject:v7 forKey:@"faceSharpness"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  PBDataWriterWriteFloatField();
  if (*&self->_has)
  {
    PBDataWriterWriteFloatField();
  }
}

- (void)copyTo:(id)a3
{
  *(a3 + 3) = LODWORD(self->_sharpness);
  if (*&self->_has)
  {
    *(a3 + 2) = LODWORD(self->_faceSharpness);
    *(a3 + 16) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 3) = LODWORD(self->_sharpness);
  if (*&self->_has)
  {
    *(result + 2) = LODWORD(self->_faceSharpness);
    *(result + 16) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || self->_sharpness != *(v4 + 3))
  {
    goto LABEL_7;
  }

  v5 = (*(v4 + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 16) & 1) != 0 && self->_faceSharpness == *(v4 + 2))
    {
      v5 = 1;
      goto LABEL_8;
    }

LABEL_7:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (unint64_t)hash
{
  sharpness = self->_sharpness;
  v6 = -sharpness;
  if (sharpness >= 0.0)
  {
    v6 = self->_sharpness;
  }

  *v3.i32 = floorf(v6 + 0.5);
  v7 = (v6 - *v3.i32) * 1.8447e19;
  *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
  v8.i64[0] = 0x8000000080000000;
  v8.i64[1] = 0x8000000080000000;
  v3.i32[0] = vbslq_s8(v8, v4, v3).i32[0];
  v9 = 2654435761u * *v3.i32;
  v10 = v9 + v7;
  if (v7 <= 0.0)
  {
    v10 = 2654435761u * *v3.i32;
  }

  v11 = v9 - fabsf(v7);
  if (v7 >= 0.0)
  {
    v11 = v10;
  }

  if (*&self->_has)
  {
    faceSharpness = self->_faceSharpness;
    if (faceSharpness < 0.0)
    {
      faceSharpness = -faceSharpness;
    }

    *v2.i32 = floorf(faceSharpness + 0.5);
    v14 = (faceSharpness - *v2.i32) * 1.8447e19;
    *v4.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v2.i32[0] = vbslq_s8(v8, v4, v2).i32[0];
    v15 = 2654435761u * *v2.i32;
    v16 = v15 + v14;
    if (v14 <= 0.0)
    {
      v16 = 2654435761u * *v2.i32;
    }

    v12 = v15 - fabsf(v14);
    if (v14 >= 0.0)
    {
      v12 = v16;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  self->_sharpness = *(a3 + 3);
  if (*(a3 + 16))
  {
    self->_faceSharpness = *(a3 + 2);
    *&self->_has |= 1u;
  }
}

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"attributes"];
  v4 = [v3 objectForKeyedSubscript:@"sharpness"];
  v5 = [v3 objectForKeyedSubscript:@"sharpnessFaces"];
  if (v4)
  {
    v6 = objc_alloc_init(VCPProtoImageBlurResult);
    [v4 floatValue];
    [(VCPProtoImageBlurResult *)v6 setSharpness:?];
    if (v5)
    {
      [(VCPProtoImageBlurResult *)v6 setHasFaceSharpness:1];
      [v5 floatValue];
      [(VCPProtoImageBlurResult *)v6 setFaceSharpness:?];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)exportToLegacyDictionary
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = MEMORY[0x1E696AD98];
  [(VCPProtoImageBlurResult *)self sharpness];
  v5 = [v4 numberWithFloat:?];
  [v3 setObject:v5 forKeyedSubscript:@"sharpness"];

  if ([(VCPProtoImageBlurResult *)self hasFaceSharpness])
  {
    v6 = MEMORY[0x1E696AD98];
    [(VCPProtoImageBlurResult *)self faceSharpness];
    v7 = [v6 numberWithFloat:?];
    [v3 setObject:v7 forKeyedSubscript:@"sharpnessFaces"];
  }

  v10 = @"attributes";
  v11[0] = v3;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  return v8;
}

@end