@interface MADProtoFaceprint
+ (id)protoFromPhotosFaceprint:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)vcpFaceprintWithDetectionType:(signed __int16)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MADProtoFaceprint

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MADProtoFaceprint;
  v4 = [(MADProtoFaceprint *)&v8 description];
  v5 = [(MADProtoFaceprint *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_faceprintVersion];
    [v3 setObject:v4 forKey:@"faceprintVersion"];
  }

  faceprintData = self->_faceprintData;
  if (faceprintData)
  {
    [v3 setObject:faceprintData forKey:@"faceprintData"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    v4 = v5;
  }

  if (self->_faceprintData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_faceprintVersion;
    *(v4 + 24) |= 1u;
  }

  if (self->_faceprintData)
  {
    v5 = v4;
    [v4 setFaceprintData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_faceprintVersion;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSData *)self->_faceprintData copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_faceprintVersion != *(v4 + 1))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  faceprintData = self->_faceprintData;
  if (faceprintData | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[3])
  {
    self->_faceprintVersion = v4[1];
    *&self->_has |= 1u;
  }

  if (v4[2])
  {
    v5 = v4;
    [(MADProtoFaceprint *)self setFaceprintData:?];
    v4 = v5;
  }
}

+ (id)protoFromPhotosFaceprint:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MADProtoFaceprint);
  -[MADProtoFaceprint setFaceprintVersion:](v4, "setFaceprintVersion:", [v3 faceprintVersion]);
  v5 = [v3 faceprintData];

  [(MADProtoFaceprint *)v4 setFaceprintData:v5];

  return v4;
}

- (id)vcpFaceprintWithDetectionType:(signed __int16)a3
{
  v4 = a3 != 1;
  v5 = [(MADProtoFaceprint *)self faceprintVersion];
  v6 = [(MADProtoFaceprint *)self faceprintData];
  v7 = [VCPVNImageprintWrapper wrapperWithImageprintType:v4 version:v5 andData:v6];

  return v7;
}

@end