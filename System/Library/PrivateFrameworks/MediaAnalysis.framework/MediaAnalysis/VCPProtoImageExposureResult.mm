@interface VCPProtoImageExposureResult
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

@implementation VCPProtoImageExposureResult

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"quality"];
  if (v4)
  {
    v5 = objc_alloc_init(VCPProtoImageExposureResult);
    [v4 floatValue];
    [(VCPProtoImageExposureResult *)v5 setExposure:?];
    v6 = [v3 objectForKeyedSubscript:@"attributes"];

    if (v6)
    {
      v7 = [v3 objectForKeyedSubscript:@"attributes"];
      v8 = [v7 objectForKeyedSubscript:@"underExpose"];

      if (v8)
      {
        [v8 floatValue];
        [(VCPProtoImageExposureResult *)v5 setUnderExpose:?];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)exportToLegacyDictionary
{
  v16[2] = *MEMORY[0x1E69E9840];
  if ([(VCPProtoImageExposureResult *)self hasUnderExpose])
  {
    v15[0] = @"quality";
    v3 = MEMORY[0x1E696AD98];
    [(VCPProtoImageExposureResult *)self exposure];
    v4 = [v3 numberWithFloat:?];
    v16[0] = v4;
    v15[1] = @"attributes";
    v13 = @"underExpose";
    v5 = MEMORY[0x1E696AD98];
    [(VCPProtoImageExposureResult *)self underExpose];
    v6 = [v5 numberWithFloat:?];
    v14 = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v16[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  }

  else
  {
    v11 = @"quality";
    v9 = MEMORY[0x1E696AD98];
    [(VCPProtoImageExposureResult *)self exposure];
    v4 = [v9 numberWithFloat:?];
    v12 = v4;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoImageExposureResult;
  v4 = [(VCPProtoImageExposureResult *)&v8 description];
  v5 = [(VCPProtoImageExposureResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  *&v4 = self->_exposure;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v3 setObject:v5 forKey:@"exposure"];

  if (*&self->_has)
  {
    *&v6 = self->_underExpose;
    v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
    [v3 setObject:v7 forKey:@"underExpose"];
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
  *(a3 + 2) = LODWORD(self->_exposure);
  if (*&self->_has)
  {
    *(a3 + 3) = LODWORD(self->_underExpose);
    *(a3 + 16) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 2) = LODWORD(self->_exposure);
  if (*&self->_has)
  {
    *(result + 3) = LODWORD(self->_underExpose);
    *(result + 16) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || self->_exposure != *(v4 + 2))
  {
    goto LABEL_7;
  }

  v5 = (*(v4 + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 16) & 1) != 0 && self->_underExpose == *(v4 + 3))
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
  exposure = self->_exposure;
  v6 = -exposure;
  if (exposure >= 0.0)
  {
    v6 = self->_exposure;
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
    underExpose = self->_underExpose;
    if (underExpose < 0.0)
    {
      underExpose = -underExpose;
    }

    *v2.i32 = floorf(underExpose + 0.5);
    v14 = (underExpose - *v2.i32) * 1.8447e19;
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
  self->_exposure = *(a3 + 2);
  if (*(a3 + 16))
  {
    self->_underExpose = *(a3 + 3);
    *&self->_has |= 1u;
  }
}

@end