@interface VCPProtoMovieFaceprintResult
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

@implementation VCPProtoMovieFaceprintResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieFaceprintResult;
  v4 = [(VCPProtoMovieFaceprintResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoMovieFaceprintResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_faceID];
  [dictionary setObject:v4 forKey:@"faceID"];

  faceprintBlob = self->_faceprintBlob;
  if (faceprintBlob)
  {
    [dictionary setObject:faceprintBlob forKey:@"faceprintBlob"];
  }

  thumbnailID = self->_thumbnailID;
  if (thumbnailID)
  {
    [dictionary setObject:thumbnailID forKey:@"thumbnailID"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteDataField();
  if (self->_thumbnailID)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[2] = self->_faceID;
  v5 = toCopy;
  [toCopy setFaceprintBlob:self->_faceprintBlob];
  if (self->_thumbnailID)
  {
    [v5 setThumbnailID:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = self->_faceID;
  v6 = [(NSData *)self->_faceprintBlob copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_thumbnailID copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_faceID == *(equalCopy + 2) && ((faceprintBlob = self->_faceprintBlob, !(faceprintBlob | equalCopy[2])) || -[NSData isEqual:](faceprintBlob, "isEqual:")))
  {
    thumbnailID = self->_thumbnailID;
    if (thumbnailID | equalCopy[3])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_faceID = fromCopy[2];
  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(VCPProtoMovieFaceprintResult *)self setFaceprintBlob:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(VCPProtoMovieFaceprintResult *)self setThumbnailID:?];
    fromCopy = v5;
  }
}

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"attributes"];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCPProtoMovieFaceprintResult faceID](self, "faceID")}];
  [dictionary setObject:v4 forKeyedSubscript:@"faceId"];

  faceprintBlob = [(VCPProtoMovieFaceprintResult *)self faceprintBlob];
  [dictionary setObject:faceprintBlob forKeyedSubscript:@"facePrint"];

  if ([(VCPProtoMovieFaceprintResult *)self hasThumbnailID])
  {
    thumbnailID = [(VCPProtoMovieFaceprintResult *)self thumbnailID];
    [dictionary setObject:thumbnailID forKeyedSubscript:@"thumbnailID"];
  }

  v9 = @"attributes";
  v10[0] = dictionary;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  return v7;
}

@end