@interface VCPProtoLivePhotoKeyFrameStillResult
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

@implementation VCPProtoLivePhotoKeyFrameStillResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoLivePhotoKeyFrameStillResult;
  v4 = [(VCPProtoLivePhotoKeyFrameStillResult *)&v8 description];
  v5 = [(VCPProtoLivePhotoKeyFrameStillResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  *&v4 = self->_sharpness;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v3 setObject:v5 forKey:@"sharpness"];

  *&v6 = self->_textureness;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  [v3 setObject:v7 forKey:@"textureness"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasFlash];
  [v3 setObject:v8 forKey:@"hasFlash"];

  *&v9 = self->_stillTime;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  [v3 setObject:v10 forKey:@"stillTime"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteBOOLField();
  PBDataWriterWriteFloatField();
}

- (void)copyTo:(id)a3
{
  *(a3 + 2) = LODWORD(self->_sharpness);
  *(a3 + 4) = LODWORD(self->_textureness);
  *(a3 + 20) = self->_hasFlash;
  *(a3 + 3) = LODWORD(self->_stillTime);
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 2) = LODWORD(self->_sharpness);
  *(result + 4) = LODWORD(self->_textureness);
  *(result + 20) = self->_hasFlash;
  *(result + 3) = LODWORD(self->_stillTime);
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || self->_sharpness != *(v4 + 2) || self->_textureness != *(v4 + 4))
  {
    goto LABEL_6;
  }

  if (!self->_hasFlash)
  {
    if (*(v4 + 20))
    {
      goto LABEL_6;
    }

LABEL_9:
    v5 = self->_stillTime == *(v4 + 3);
    goto LABEL_7;
  }

  if (*(v4 + 20))
  {
    goto LABEL_9;
  }

LABEL_6:
  v5 = 0;
LABEL_7:

  return v5;
}

- (unint64_t)hash
{
  sharpness = self->_sharpness;
  v7 = -sharpness;
  if (sharpness >= 0.0)
  {
    v7 = self->_sharpness;
  }

  *v3.i32 = floorf(v7 + 0.5);
  v8 = (v7 - *v3.i32) * 1.8447e19;
  *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
  v9.i64[0] = 0x8000000080000000;
  v9.i64[1] = 0x8000000080000000;
  v10 = 2654435761u * *vbslq_s8(v9, v4, v3).i32;
  v11 = v10 + v8;
  v12 = fabsf(v8);
  if (v8 <= 0.0)
  {
    v11 = v10;
  }

  v13 = v10 - v12;
  if (v8 >= 0.0)
  {
    v13 = v11;
  }

  textureness = self->_textureness;
  if (textureness < 0.0)
  {
    textureness = -textureness;
  }

  *v4.i32 = floorf(textureness + 0.5);
  v15 = textureness - *v4.i32;
  *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
  v16 = vbslq_s8(v9, v5, v4);
  v17 = v15 * 1.8447e19;
  v18 = 2654435761u * *v16.i32;
  v19 = v18 + v17;
  if (v17 <= 0.0)
  {
    v19 = 2654435761u * *v16.i32;
  }

  v20 = v18 - fabsf(v17);
  if (v17 >= 0.0)
  {
    v20 = v19;
  }

  stillTime = self->_stillTime;
  if (stillTime < 0.0)
  {
    stillTime = -stillTime;
  }

  *v2.i32 = floorf(stillTime + 0.5);
  v22 = (stillTime - *v2.i32) * 1.8447e19;
  *v16.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v2.i32[0] = vbslq_s8(v9, v16, v2).i32[0];
  v23 = 2654435761u * *v2.i32;
  v24 = v23 + v22;
  if (v22 <= 0.0)
  {
    v24 = 2654435761u * *v2.i32;
  }

  v25 = v23 - fabsf(v22);
  if (v22 >= 0.0)
  {
    v25 = v24;
  }

  return v20 ^ v13 ^ (2654435761 * self->_hasFlash) ^ v25;
}

- (void)mergeFrom:(id)a3
{
  self->_sharpness = *(a3 + 2);
  self->_textureness = *(a3 + 4);
  self->_hasFlash = *(a3 + 20);
  self->_stillTime = *(a3 + 3);
}

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"attributes"];
    if (v5)
    {
      v6 = objc_alloc_init(VCPProtoLivePhotoKeyFrameStillResult);
      v7 = [v5 objectForKeyedSubscript:@"sharpness"];
      v8 = v7;
      if (v7)
      {
        [(VCPProtoLivePhotoKeyFrameStillResult *)v7 floatValue];
        [(VCPProtoLivePhotoKeyFrameStillResult *)v6 setSharpness:?];
        v9 = [v5 objectForKeyedSubscript:@"texture"];

        if (v9 && ([v9 floatValue], -[VCPProtoLivePhotoKeyFrameStillResult setTextureness:](v6, "setTextureness:"), objc_msgSend(v5, "objectForKeyedSubscript:", @"flashFired"), v10 = objc_claimAutoreleasedReturnValue(), v9, v10) && (-[VCPProtoLivePhotoKeyFrameStillResult setHasFlash:](v6, "setHasFlash:", objc_msgSend(v10, "BOOLValue")), objc_msgSend(v5, "objectForKeyedSubscript:", @"stillTime"), v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
        {
          [v11 floatValue];
          [(VCPProtoLivePhotoKeyFrameStillResult *)v6 setStillTime:?];
          v8 = v6;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)exportToLegacyDictionary
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15 = @"attributes";
  v13[0] = @"sharpness";
  v3 = MEMORY[0x1E696AD98];
  [(VCPProtoLivePhotoKeyFrameStillResult *)self sharpness];
  v4 = [v3 numberWithFloat:?];
  v14[0] = v4;
  v13[1] = @"texture";
  v5 = MEMORY[0x1E696AD98];
  [(VCPProtoLivePhotoKeyFrameStillResult *)self textureness];
  v6 = [v5 numberWithFloat:?];
  v14[1] = v6;
  v13[2] = @"flashFired";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[VCPProtoLivePhotoKeyFrameStillResult hasFlash](self, "hasFlash")}];
  v14[2] = v7;
  v13[3] = @"stillTime";
  v8 = MEMORY[0x1E696AD98];
  [(VCPProtoLivePhotoKeyFrameStillResult *)self stillTime];
  v9 = [v8 numberWithFloat:?];
  v14[3] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  v16[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  return v11;
}

@end