@interface VCPProtoMovieFaceprintResult
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

@implementation VCPProtoMovieFaceprintResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieFaceprintResult;
  v4 = [(VCPProtoMovieFaceprintResult *)&v8 description];
  v5 = [(VCPProtoMovieFaceprintResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_faceID];
  [v3 setObject:v4 forKey:@"faceID"];

  faceprintBlob = self->_faceprintBlob;
  if (faceprintBlob)
  {
    [v3 setObject:faceprintBlob forKey:@"faceprintBlob"];
  }

  thumbnailID = self->_thumbnailID;
  if (thumbnailID)
  {
    [v3 setObject:thumbnailID forKey:@"thumbnailID"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteDataField();
  if (self->_thumbnailID)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[2] = self->_faceID;
  v5 = v4;
  [v4 setFaceprintBlob:self->_faceprintBlob];
  if (self->_thumbnailID)
  {
    [v5 setThumbnailID:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = self->_faceID;
  v6 = [(NSData *)self->_faceprintBlob copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_thumbnailID copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_faceID == *(v4 + 2) && ((faceprintBlob = self->_faceprintBlob, !(faceprintBlob | v4[2])) || -[NSData isEqual:](faceprintBlob, "isEqual:")))
  {
    thumbnailID = self->_thumbnailID;
    if (thumbnailID | v4[3])
    {
      v7 = [(NSString *)thumbnailID isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = 2654435761 * self->_faceID;
  v4 = [(NSData *)self->_faceprintBlob hash];
  return v4 ^ [(NSString *)self->_thumbnailID hash]^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_faceID = v4[2];
  v5 = v4;
  if (*(v4 + 2))
  {
    [(VCPProtoMovieFaceprintResult *)self setFaceprintBlob:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(VCPProtoMovieFaceprintResult *)self setThumbnailID:?];
    v4 = v5;
  }
}

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"attributes"];
  v4 = [v3 objectForKeyedSubscript:@"faceId"];
  v5 = [v3 objectForKeyedSubscript:@"facePrint"];
  v6 = [v3 objectForKeyedSubscript:@"thumbnailID"];
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
    v8 = objc_alloc_init(VCPProtoMovieFaceprintResult);
    -[VCPProtoMovieFaceprintResult setFaceID:](v8, "setFaceID:", [v4 unsignedIntValue]);
    [(VCPProtoMovieFaceprintResult *)v8 setFaceprintBlob:v5];
    if (v6)
    {
      [(VCPProtoMovieFaceprintResult *)v8 setThumbnailID:v6];
    }
  }

  return v8;
}

- (id)exportToLegacyDictionary
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCPProtoMovieFaceprintResult faceID](self, "faceID")}];
  [v3 setObject:v4 forKeyedSubscript:@"faceId"];

  v5 = [(VCPProtoMovieFaceprintResult *)self faceprintBlob];
  [v3 setObject:v5 forKeyedSubscript:@"facePrint"];

  if ([(VCPProtoMovieFaceprintResult *)self hasThumbnailID])
  {
    v6 = [(VCPProtoMovieFaceprintResult *)self thumbnailID];
    [v3 setObject:v6 forKeyedSubscript:@"thumbnailID"];
  }

  v9 = @"attributes";
  v10[0] = v3;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  return v7;
}

@end