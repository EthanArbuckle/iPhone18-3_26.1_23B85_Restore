@interface VCPProtoLivePhotoKeyFrameFaceResult
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

@implementation VCPProtoLivePhotoKeyFrameFaceResult

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"attributes"];
  v4 = [v3 objectForKeyedSubscript:@"faceBounds"];
  v5 = [v3 objectForKeyedSubscript:@"faceQuality"];
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
    v8 = objc_alloc_init(VCPProtoLivePhotoKeyFrameFaceResult);
    v12 = NSRectFromString(v4);
    v9 = [VCPProtoBounds boundsWithCGRect:v12.origin.x, v12.origin.y, v12.size.width, v12.size.height];
    [(VCPProtoLivePhotoKeyFrameFaceResult *)v8 setFaceBounds:v9];

    [v6 floatValue];
    [(VCPProtoLivePhotoKeyFrameFaceResult *)v8 setFaceQuality:?];
  }

  return v8;
}

- (id)exportToLegacyDictionary
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = @"attributes";
  v10[0] = @"faceBounds";
  v3 = [(VCPProtoLivePhotoKeyFrameFaceResult *)self faceBounds];
  [v3 rectValue];
  v4 = NSStringFromRect(v15);
  v11[0] = v4;
  v10[1] = @"faceQuality";
  v5 = MEMORY[0x1E696AD98];
  [(VCPProtoLivePhotoKeyFrameFaceResult *)self faceQuality];
  v6 = [v5 numberWithFloat:?];
  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v13[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoLivePhotoKeyFrameFaceResult;
  v4 = [(VCPProtoLivePhotoKeyFrameFaceResult *)&v8 description];
  v5 = [(VCPProtoLivePhotoKeyFrameFaceResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  faceBounds = self->_faceBounds;
  if (faceBounds)
  {
    v6 = [(VCPProtoBounds *)faceBounds dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"faceBounds"];
  }

  *&v4 = self->_faceQuality;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v3 setObject:v7 forKey:@"faceQuality"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteFloatField();
}

- (void)copyTo:(id)a3
{
  faceBounds = self->_faceBounds;
  v5 = a3;
  [v5 setFaceBounds:faceBounds];
  v5[4] = self->_faceQuality;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(VCPProtoBounds *)self->_faceBounds copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 16) = self->_faceQuality;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = [v4 isMemberOfClass:objc_opt_class()] && ((faceBounds = self->_faceBounds, !(faceBounds | *(v4 + 1))) || -[VCPProtoBounds isEqual:](faceBounds, "isEqual:")) && self->_faceQuality == *(v4 + 4);

  return v6;
}

- (unint64_t)hash
{
  v3 = [(VCPProtoBounds *)self->_faceBounds hash];
  faceQuality = self->_faceQuality;
  if (faceQuality < 0.0)
  {
    faceQuality = -faceQuality;
  }

  *v4.i32 = floorf(faceQuality + 0.5);
  v7 = (faceQuality - *v4.i32) * 1.8447e19;
  *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
  v8.i64[0] = 0x8000000080000000;
  v8.i64[1] = 0x8000000080000000;
  v4.i32[0] = vbslq_s8(v8, v5, v4).i32[0];
  v9 = 2654435761u * *v4.i32;
  v10 = v9 + v7;
  if (v7 <= 0.0)
  {
    v10 = 2654435761u * *v4.i32;
  }

  v11 = v9 - fabsf(v7);
  if (v7 >= 0.0)
  {
    v11 = v10;
  }

  return v11 ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  faceBounds = self->_faceBounds;
  v6 = *(v4 + 1);
  if (faceBounds)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(VCPProtoBounds *)faceBounds mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(VCPProtoLivePhotoKeyFrameFaceResult *)self setFaceBounds:?];
  }

  v4 = v7;
LABEL_7:
  self->_faceQuality = *(v4 + 4);
}

@end