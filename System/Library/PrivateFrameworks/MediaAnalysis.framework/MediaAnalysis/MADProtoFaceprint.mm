@interface MADProtoFaceprint
+ (id)protoFromPhotosFaceprint:(id)faceprint;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)vcpFaceprintWithDetectionType:(signed __int16)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MADProtoFaceprint

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MADProtoFaceprint;
  v4 = [(MADProtoFaceprint *)&v8 description];
  dictionaryRepresentation = [(MADProtoFaceprint *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_faceprintVersion];
    [dictionary setObject:v4 forKey:@"faceprintVersion"];
  }

  faceprintData = self->_faceprintData;
  if (faceprintData)
  {
    [dictionary setObject:faceprintData forKey:@"faceprintData"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v5;
  }

  if (self->_faceprintData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_faceprintVersion;
    *(toCopy + 24) |= 1u;
  }

  if (self->_faceprintData)
  {
    v5 = toCopy;
    [toCopy setFaceprintData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_faceprintVersion;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSData *)self->_faceprintData copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_faceprintVersion != *(equalCopy + 1))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  faceprintData = self->_faceprintData;
  if (faceprintData | *(equalCopy + 2))
  {
    v6 = [(NSData *)faceprintData isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_10:

  return v6;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_faceprintVersion;
  }

  else
  {
    v2 = 0;
  }

  return [(NSData *)self->_faceprintData hash]^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[3])
  {
    self->_faceprintVersion = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (fromCopy[2])
  {
    v5 = fromCopy;
    [(MADProtoFaceprint *)self setFaceprintData:?];
    fromCopy = v5;
  }
}

+ (id)protoFromPhotosFaceprint:(id)faceprint
{
  faceprintCopy = faceprint;
  v4 = objc_alloc_init(MADProtoFaceprint);
  -[MADProtoFaceprint setFaceprintVersion:](v4, "setFaceprintVersion:", [faceprintCopy faceprintVersion]);
  faceprintData = [faceprintCopy faceprintData];

  [(MADProtoFaceprint *)v4 setFaceprintData:faceprintData];

  return v4;
}

- (id)vcpFaceprintWithDetectionType:(signed __int16)type
{
  v4 = type != 1;
  faceprintVersion = [(MADProtoFaceprint *)self faceprintVersion];
  faceprintData = [(MADProtoFaceprint *)self faceprintData];
  v7 = [VCPVNImageprintWrapper wrapperWithImageprintType:v4 version:faceprintVersion andData:faceprintData];

  return v7;
}

@end