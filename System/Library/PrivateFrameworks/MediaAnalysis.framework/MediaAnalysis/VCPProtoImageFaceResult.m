@interface VCPProtoImageFaceResult
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

@implementation VCPProtoImageFaceResult

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"attributes"];
  v5 = [v3 objectForKeyedSubscript:@"flags"];
  v6 = [v4 objectForKeyedSubscript:@"facePoseYaw"];
  v7 = [v4 objectForKeyedSubscript:@"facePosition"];
  v8 = [v4 objectForKeyedSubscript:@"faceBounds"];
  v9 = v8;
  if (v5)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || v7 == 0 || v8 == 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = objc_alloc_init(VCPProtoImageFaceResult);
    v14 = [v5 unsignedIntegerValue];
    v15 = v14;
    if ((v14 & 4) != 0)
    {
      v16 = 2;
    }

    else
    {
      v16 = (v14 >> 3) & 1;
    }

    [(VCPProtoImageFaceResult *)v13 setEyeExpression:v16];
    [(VCPProtoImageFaceResult *)v13 setMouthExpression:(v15 >> 1) & 1];
    -[VCPProtoImageFaceResult setYaw:](v13, "setYaw:", [v6 intValue]);
    -[VCPProtoImageFaceResult setPosition:](v13, "setPosition:", [v7 intValue]);
    v22 = NSRectFromString(v9);
    v17 = [VCPProtoBounds boundsWithCGRect:v22.origin.x, v22.origin.y, v22.size.width, v22.size.height];
    [(VCPProtoImageFaceResult *)v13 setBounds:v17];

    [(VCPProtoImageFaceResult *)v13 setIsCloseup:(v15 >> 4) & 1];
    v18 = [v4 objectForKeyedSubscript:@"faceQuality"];

    if (v18)
    {
      v19 = [v4 objectForKeyedSubscript:@"faceQuality"];
      [v19 floatValue];
      [(VCPProtoImageFaceResult *)v13 setFaceQuality:?];
    }
  }

  return v13;
}

- (id)exportToLegacyDictionary
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = [(VCPProtoImageFaceResult *)self eyeExpression];
  if (v3 == 1)
  {
    v4 = 8;
  }

  else
  {
    v4 = 4 * (v3 == 2);
  }

  if ([(VCPProtoImageFaceResult *)self mouthExpression]== 1)
  {
    v4 |= 2uLL;
  }

  if ([(VCPProtoImageFaceResult *)self isCloseup])
  {
    v5 = v4 | 0x10;
  }

  else
  {
    v5 = v4;
  }

  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[VCPProtoImageFaceResult yaw](self, "yaw")}];
  [v6 setObject:v7 forKeyedSubscript:@"facePoseYaw"];

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[VCPProtoImageFaceResult position](self, "position")}];
  [v6 setObject:v8 forKeyedSubscript:@"facePosition"];

  v9 = [(VCPProtoImageFaceResult *)self bounds];
  [v9 rectValue];
  v10 = NSStringFromRect(v19);
  [v6 setObject:v10 forKeyedSubscript:@"faceBounds"];

  if ([(VCPProtoImageFaceResult *)self hasFaceQuality])
  {
    v11 = MEMORY[0x1E696AD98];
    [(VCPProtoImageFaceResult *)self faceQuality];
    v12 = [v11 numberWithFloat:?];
    [v6 setObject:v12 forKeyedSubscript:@"faceQuality"];
  }

  v16[0] = @"flags";
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
  v16[1] = @"attributes";
  v17[0] = v13;
  v17[1] = v6;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoImageFaceResult;
  v4 = [(VCPProtoImageFaceResult *)&v8 description];
  v5 = [(VCPProtoImageFaceResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_eyeExpression];
  [v3 setObject:v4 forKey:@"eyeExpression"];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_mouthExpression];
  [v3 setObject:v5 forKey:@"mouthExpression"];

  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_yaw];
  [v3 setObject:v6 forKey:@"yaw"];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_position];
  [v3 setObject:v7 forKey:@"position"];

  bounds = self->_bounds;
  if (bounds)
  {
    v9 = [(VCPProtoBounds *)bounds dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"bounds"];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isCloseup];
  [v3 setObject:v10 forKey:@"isCloseup"];

  if (*&self->_has)
  {
    *&v11 = self->_faceQuality;
    v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
    [v3 setObject:v12 forKey:@"faceQuality"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteBOOLField();
  if (*&self->_has)
  {
    PBDataWriterWriteFloatField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[4] = self->_eyeExpression;
  v4[6] = self->_mouthExpression;
  v4[8] = self->_yaw;
  v4[7] = self->_position;
  [v4 setBounds:self->_bounds];
  *(v4 + 36) = self->_isCloseup;
  if (*&self->_has)
  {
    v4[5] = LODWORD(self->_faceQuality);
    *(v4 + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 16) = self->_eyeExpression;
  *(v5 + 24) = self->_mouthExpression;
  *(v5 + 32) = self->_yaw;
  *(v5 + 28) = self->_position;
  v6 = [(VCPProtoBounds *)self->_bounds copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 36) = self->_isCloseup;
  if (*&self->_has)
  {
    *(v5 + 20) = self->_faceQuality;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if (self->_eyeExpression != *(v4 + 4))
  {
    goto LABEL_16;
  }

  if (self->_mouthExpression != *(v4 + 6))
  {
    goto LABEL_16;
  }

  if (self->_yaw != *(v4 + 8))
  {
    goto LABEL_16;
  }

  if (self->_position != *(v4 + 7))
  {
    goto LABEL_16;
  }

  bounds = self->_bounds;
  if (bounds | *(v4 + 1))
  {
    if (![(VCPProtoBounds *)bounds isEqual:?])
    {
      goto LABEL_16;
    }
  }

  if (self->_isCloseup)
  {
    if ((*(v4 + 36) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 36))
  {
LABEL_16:
    v6 = 0;
    goto LABEL_17;
  }

  v6 = (*(v4 + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_faceQuality != *(v4 + 5))
    {
      goto LABEL_16;
    }

    v6 = 1;
  }

LABEL_17:

  return v6;
}

- (unint64_t)hash
{
  eyeExpression = self->_eyeExpression;
  mouthExpression = self->_mouthExpression;
  yaw = self->_yaw;
  position = self->_position;
  v7 = [(VCPProtoBounds *)self->_bounds hash];
  if (*&self->_has)
  {
    faceQuality = self->_faceQuality;
    if (faceQuality < 0.0)
    {
      faceQuality = -faceQuality;
    }

    *v8.i32 = floorf(faceQuality + 0.5);
    v12 = (faceQuality - *v8.i32) * 1.8447e19;
    *v9.i32 = *v8.i32 - (truncf(*v8.i32 * 5.421e-20) * 1.8447e19);
    v13.i64[0] = 0x8000000080000000;
    v13.i64[1] = 0x8000000080000000;
    v10 = 2654435761u * *vbslq_s8(v13, v9, v8).i32;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabsf(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  return (2654435761 * mouthExpression) ^ (2654435761 * eyeExpression) ^ (2654435761 * yaw) ^ (2654435761 * position) ^ v7 ^ (2654435761 * self->_isCloseup) ^ v10;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_eyeExpression = *(v4 + 4);
  self->_mouthExpression = *(v4 + 6);
  self->_yaw = *(v4 + 8);
  self->_position = *(v4 + 7);
  bounds = self->_bounds;
  v6 = *(v4 + 1);
  if (bounds)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(VCPProtoBounds *)bounds mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(VCPProtoImageFaceResult *)self setBounds:?];
  }

  v4 = v7;
LABEL_7:
  self->_isCloseup = *(v4 + 36);
  if (*(v4 + 40))
  {
    self->_faceQuality = *(v4 + 5);
    *&self->_has |= 1u;
  }
}

@end