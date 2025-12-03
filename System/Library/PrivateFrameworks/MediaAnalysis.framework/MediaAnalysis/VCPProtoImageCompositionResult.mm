@interface VCPProtoImageCompositionResult
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

@implementation VCPProtoImageCompositionResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoImageCompositionResult;
  v4 = [(VCPProtoImageCompositionResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoImageCompositionResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  *&v4 = self->_confidence;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [dictionary setObject:v5 forKey:@"confidence"];

  vanishingPoint = self->_vanishingPoint;
  if (vanishingPoint)
  {
    dictionaryRepresentation = [(VCPProtoPoint *)vanishingPoint dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"vanishingPoint"];
  }

  dominantLine = self->_dominantLine;
  if (dominantLine)
  {
    dictionaryRepresentation2 = [(VCPProtoLine *)dominantLine dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"dominantLine"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteFloatField();
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteSubmessage();
}

- (void)copyTo:(id)to
{
  *(to + 2) = LODWORD(self->_confidence);
  vanishingPoint = self->_vanishingPoint;
  toCopy = to;
  [toCopy setVanishingPoint:vanishingPoint];
  [toCopy setDominantLine:self->_dominantLine];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = self->_confidence;
  v6 = [(VCPProtoPoint *)self->_vanishingPoint copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(VCPProtoLine *)self->_dominantLine copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_confidence == *(equalCopy + 2) && ((vanishingPoint = self->_vanishingPoint, !(vanishingPoint | equalCopy[3])) || -[VCPProtoPoint isEqual:](vanishingPoint, "isEqual:")))
  {
    dominantLine = self->_dominantLine;
    if (dominantLine | equalCopy[2])
    {
      v7 = [(VCPProtoLine *)dominantLine isEqual:?];
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
  confidence = self->_confidence;
  if (confidence < 0.0)
  {
    confidence = -confidence;
  }

  *v2.i32 = floorf(confidence + 0.5);
  *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v6.i64[0] = 0x8000000080000000;
  v6.i64[1] = 0x8000000080000000;
  v3.i32[0] = vbslq_s8(v6, v3, v2).i32[0];
  v7 = (confidence - *v2.i32) * 1.8447e19;
  v8 = 2654435761u * *v3.i32;
  v9 = v8 + v7;
  if (v7 <= 0.0)
  {
    v9 = 2654435761u * *v3.i32;
  }

  v10 = v8 - fabsf(v7);
  if (v7 < 0.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = [(VCPProtoPoint *)self->_vanishingPoint hash];
  return v12 ^ [(VCPProtoLine *)self->_dominantLine hash]^ v11;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_confidence = fromCopy[2];
  vanishingPoint = self->_vanishingPoint;
  v6 = *(fromCopy + 3);
  v9 = fromCopy;
  if (vanishingPoint)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(VCPProtoPoint *)vanishingPoint mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(VCPProtoImageCompositionResult *)self setVanishingPoint:?];
  }

  fromCopy = v9;
LABEL_7:
  dominantLine = self->_dominantLine;
  v8 = *(fromCopy + 2);
  if (dominantLine)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(VCPProtoLine *)dominantLine mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(VCPProtoImageCompositionResult *)self setDominantLine:?];
  }

  fromCopy = v9;
LABEL_13:
}

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"attributes"];
  v4 = [v3 objectForKeyedSubscript:@"vanishingPointConfidence"];
  v5 = [v3 objectForKeyedSubscript:@"vanishingPoint"];
  v6 = [v3 objectForKeyedSubscript:@"dominantLine"];
  v7 = v6;
  if (v4)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || [v6 count] != 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = objc_alloc_init(VCPProtoImageCompositionResult);
    [v4 floatValue];
    [(VCPProtoImageCompositionResult *)v9 setConfidence:?];
    v10 = NSPointFromString(v5);
    v11 = [VCPProtoPoint pointWithPoint:v10.x, v10.y];
    [(VCPProtoImageCompositionResult *)v9 setVanishingPoint:v11];

    v12 = [v7 objectAtIndexedSubscript:0];
    v13 = NSPointFromString(v12);
    v14 = [v7 objectAtIndexedSubscript:1];
    v15 = NSPointFromString(v14);
    v16 = [VCPProtoLine lineFromPoint:v13.x toPoint:v13.y, v15.x, v15.y];
    [(VCPProtoImageCompositionResult *)v9 setDominantLine:v16];
  }

  return v9;
}

- (id)exportToLegacyDictionary
{
  v19[1] = *MEMORY[0x1E69E9840];
  v18 = @"attributes";
  v16[0] = @"vanishingPointConfidence";
  v3 = MEMORY[0x1E696AD98];
  [(VCPProtoImageCompositionResult *)self confidence];
  v4 = [v3 numberWithFloat:?];
  v17[0] = v4;
  v16[1] = @"vanishingPoint";
  vanishingPoint = [(VCPProtoImageCompositionResult *)self vanishingPoint];
  [vanishingPoint pointValue];
  v6 = NSStringFromPoint(v21);
  v17[1] = v6;
  v16[2] = @"dominantLine";
  dominantLine = [(VCPProtoImageCompositionResult *)self dominantLine];
  [dominantLine startPointValue];
  v8 = NSStringFromPoint(v22);
  v15[0] = v8;
  dominantLine2 = [(VCPProtoImageCompositionResult *)self dominantLine];
  [dominantLine2 endPointValue];
  v10 = NSStringFromPoint(v23);
  v15[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v17[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v19[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];

  return v13;
}

@end