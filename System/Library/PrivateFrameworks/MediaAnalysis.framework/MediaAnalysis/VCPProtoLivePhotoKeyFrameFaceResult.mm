@interface VCPProtoLivePhotoKeyFrameFaceResult
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

@implementation VCPProtoLivePhotoKeyFrameFaceResult

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"attributes"];
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
  faceBounds = [(VCPProtoLivePhotoKeyFrameFaceResult *)self faceBounds];
  [faceBounds rectValue];
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
  dictionaryRepresentation = [(VCPProtoLivePhotoKeyFrameFaceResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  faceBounds = self->_faceBounds;
  if (faceBounds)
  {
    dictionaryRepresentation = [(VCPProtoBounds *)faceBounds dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"faceBounds"];
  }

  *&v4 = self->_faceQuality;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [dictionary setObject:v7 forKey:@"faceQuality"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteFloatField();
}

- (void)copyTo:(id)to
{
  faceBounds = self->_faceBounds;
  toCopy = to;
  [toCopy setFaceBounds:faceBounds];
  toCopy[4] = self->_faceQuality;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(VCPProtoBounds *)self->_faceBounds copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 16) = self->_faceQuality;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = [equalCopy isMemberOfClass:objc_opt_class()] && ((faceBounds = self->_faceBounds, !(faceBounds | *(equalCopy + 1))) || -[VCPProtoBounds isEqual:](faceBounds, "isEqual:")) && self->_faceQuality == *(equalCopy + 4);

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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  faceBounds = self->_faceBounds;
  v6 = *(fromCopy + 1);
  if (faceBounds)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(VCPProtoBounds *)faceBounds mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(VCPProtoLivePhotoKeyFrameFaceResult *)self setFaceBounds:?];
  }

  fromCopy = v7;
LABEL_7:
  self->_faceQuality = *(fromCopy + 4);
}

@end