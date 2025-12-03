@interface MADProtoSceneClassification
+ (id)protoFromPhotosSceneClassification:(id)classification;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)photosSceneClassification;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MADProtoSceneClassification

+ (id)protoFromPhotosSceneClassification:(id)classification
{
  classificationCopy = classification;
  v4 = objc_alloc_init(MADProtoSceneClassification);
  -[MADProtoSceneClassification setExtendedSceneIdentifier:](v4, "setExtendedSceneIdentifier:", [classificationCopy extendedSceneIdentifier]);
  [classificationCopy confidence];
  [(MADProtoSceneClassification *)v4 setConfidence:?];
  [classificationCopy boundingBox];
  if (!CGRectIsEmpty(v8))
  {
    [classificationCopy boundingBox];
    v5 = [VCPProtoBounds boundsWithCGRect:?];
    [(MADProtoSceneClassification *)v4 setBoundingBox:v5];
  }

  return v4;
}

- (id)photosSceneClassification
{
  hasBoundingBox = [(MADProtoSceneClassification *)self hasBoundingBox];
  v4 = objc_alloc(MEMORY[0x1E6978A30]);
  extendedSceneIdentifier = [(MADProtoSceneClassification *)self extendedSceneIdentifier];
  [(MADProtoSceneClassification *)self confidence];
  v7 = v6;
  if (hasBoundingBox)
  {
    boundingBox = [(MADProtoSceneClassification *)self boundingBox];
    [boundingBox rectValue];
    v13 = [v4 initWithExtendedSceneIdentifier:extendedSceneIdentifier confidence:0 boundingBox:v7 startTime:v9 duration:v10 classificationType:{v11, v12, 0.0, 0.0}];
  }

  else
  {
    v13 = [v4 initWithExtendedSceneIdentifier:extendedSceneIdentifier confidence:0 boundingBox:v6 startTime:*MEMORY[0x1E695F050] duration:*(MEMORY[0x1E695F050] + 8) classificationType:{*(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), 0.0, 0.0}];
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MADProtoSceneClassification;
  v4 = [(MADProtoSceneClassification *)&v8 description];
  dictionaryRepresentation = [(MADProtoSceneClassification *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_extendedSceneIdentifier];
  [dictionary setObject:v4 forKey:@"extendedSceneIdentifier"];

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_confidence];
  [dictionary setObject:v5 forKey:@"confidence"];

  boundingBox = self->_boundingBox;
  if (boundingBox)
  {
    dictionaryRepresentation = [(VCPProtoBounds *)boundingBox dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"boundingBox"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteUint64Field();
  PBDataWriterWriteDoubleField();
  if (self->_boundingBox)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  *(to + 2) = self->_extendedSceneIdentifier;
  *(to + 1) = *&self->_confidence;
  boundingBox = self->_boundingBox;
  if (boundingBox)
  {
    [to setBoundingBox:boundingBox];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 16) = self->_extendedSceneIdentifier;
  *(v5 + 8) = self->_confidence;
  v6 = [(VCPProtoBounds *)self->_boundingBox copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_extendedSceneIdentifier == equalCopy[2] && self->_confidence == *(equalCopy + 1))
  {
    boundingBox = self->_boundingBox;
    if (boundingBox | equalCopy[3])
    {
      v6 = [(VCPProtoBounds *)boundingBox isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  confidence = self->_confidence;
  if (confidence < 0.0)
  {
    confidence = -confidence;
  }

  *v2.i64 = floor(confidence + 0.5);
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  v3.i64[0] = vbslq_s8(vnegq_f64(v5), v3, v2).i64[0];
  v6 = (confidence - *v2.i64) * 1.84467441e19;
  v7 = 2654435761u * *v3.i64;
  v8 = v7 + v6;
  if (v6 <= 0.0)
  {
    v8 = 2654435761u * *v3.i64;
  }

  v9 = v7 - fabs(v6);
  if (v6 < 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = 2654435761u * self->_extendedSceneIdentifier;
  return v10 ^ v11 ^ [(VCPProtoBounds *)self->_boundingBox hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_extendedSceneIdentifier = *(fromCopy + 2);
  self->_confidence = *(fromCopy + 1);
  boundingBox = self->_boundingBox;
  v6 = *(fromCopy + 3);
  if (boundingBox)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(VCPProtoBounds *)boundingBox mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(MADProtoSceneClassification *)self setBoundingBox:?];
  }

  fromCopy = v7;
LABEL_7:
}

@end