@interface MADProtoSceneClassification
+ (id)protoFromPhotosSceneClassification:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)photosSceneClassification;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MADProtoSceneClassification

+ (id)protoFromPhotosSceneClassification:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MADProtoSceneClassification);
  -[MADProtoSceneClassification setExtendedSceneIdentifier:](v4, "setExtendedSceneIdentifier:", [v3 extendedSceneIdentifier]);
  [v3 confidence];
  [(MADProtoSceneClassification *)v4 setConfidence:?];
  [v3 boundingBox];
  if (!CGRectIsEmpty(v8))
  {
    [v3 boundingBox];
    v5 = [VCPProtoBounds boundsWithCGRect:?];
    [(MADProtoSceneClassification *)v4 setBoundingBox:v5];
  }

  return v4;
}

- (id)photosSceneClassification
{
  v3 = [(MADProtoSceneClassification *)self hasBoundingBox];
  v4 = objc_alloc(MEMORY[0x1E6978A30]);
  v5 = [(MADProtoSceneClassification *)self extendedSceneIdentifier];
  [(MADProtoSceneClassification *)self confidence];
  v7 = v6;
  if (v3)
  {
    v8 = [(MADProtoSceneClassification *)self boundingBox];
    [v8 rectValue];
    v13 = [v4 initWithExtendedSceneIdentifier:v5 confidence:0 boundingBox:v7 startTime:v9 duration:v10 classificationType:{v11, v12, 0.0, 0.0}];
  }

  else
  {
    v13 = [v4 initWithExtendedSceneIdentifier:v5 confidence:0 boundingBox:v6 startTime:*MEMORY[0x1E695F050] duration:*(MEMORY[0x1E695F050] + 8) classificationType:{*(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), 0.0, 0.0}];
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MADProtoSceneClassification;
  v4 = [(MADProtoSceneClassification *)&v8 description];
  v5 = [(MADProtoSceneClassification *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_extendedSceneIdentifier];
  [v3 setObject:v4 forKey:@"extendedSceneIdentifier"];

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_confidence];
  [v3 setObject:v5 forKey:@"confidence"];

  boundingBox = self->_boundingBox;
  if (boundingBox)
  {
    v7 = [(VCPProtoBounds *)boundingBox dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"boundingBox"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  PBDataWriterWriteUint64Field();
  PBDataWriterWriteDoubleField();
  if (self->_boundingBox)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  *(a3 + 2) = self->_extendedSceneIdentifier;
  *(a3 + 1) = *&self->_confidence;
  boundingBox = self->_boundingBox;
  if (boundingBox)
  {
    [a3 setBoundingBox:boundingBox];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 16) = self->_extendedSceneIdentifier;
  *(v5 + 8) = self->_confidence;
  v6 = [(VCPProtoBounds *)self->_boundingBox copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_extendedSceneIdentifier == v4[2] && self->_confidence == *(v4 + 1))
  {
    boundingBox = self->_boundingBox;
    if (boundingBox | v4[3])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_extendedSceneIdentifier = *(v4 + 2);
  self->_confidence = *(v4 + 1);
  boundingBox = self->_boundingBox;
  v6 = *(v4 + 3);
  if (boundingBox)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(VCPProtoBounds *)boundingBox mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(MADProtoSceneClassification *)self setBoundingBox:?];
  }

  v4 = v7;
LABEL_7:
}

@end