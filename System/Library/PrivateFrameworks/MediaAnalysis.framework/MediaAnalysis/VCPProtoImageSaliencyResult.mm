@interface VCPProtoImageSaliencyResult
+ (id)resultFromLegacyDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (unint64_t)hash;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VCPProtoImageSaliencyResult

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"attributes"];
  v4 = [v3 objectForKeyedSubscript:@"saliencyConfidence"];
  v5 = [v3 objectForKeyedSubscript:@"saliencyBounds"];
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
    v8 = objc_alloc_init(VCPProtoImageSaliencyResult);
    [v4 floatValue];
    [(VCPProtoImageSaliencyResult *)v8 setConfidence:?];
    v12 = NSRectFromString(v6);
    v9 = [VCPProtoBounds boundsWithCGRect:v12.origin.x, v12.origin.y, v12.size.width, v12.size.height];
    [(VCPProtoImageSaliencyResult *)v8 setBounds:v9];
  }

  return v8;
}

- (id)exportToLegacyDictionary
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = @"attributes";
  v10[0] = @"saliencyConfidence";
  v3 = MEMORY[0x1E696AD98];
  [(VCPProtoImageSaliencyResult *)self confidence];
  v4 = [v3 numberWithFloat:?];
  v11[0] = v4;
  v10[1] = @"saliencyBounds";
  bounds = [(VCPProtoImageSaliencyResult *)self bounds];
  [bounds rectValue];
  v6 = NSStringFromRect(v15);
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
  v8.super_class = VCPProtoImageSaliencyResult;
  v4 = [(VCPProtoImageSaliencyResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoImageSaliencyResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  *&v4 = self->_confidence;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [dictionary setObject:v5 forKey:@"confidence"];

  bounds = self->_bounds;
  if (bounds)
  {
    dictionaryRepresentation = [(VCPProtoBounds *)bounds dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"bounds"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteFloatField();
  PBDataWriterWriteSubmessage();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 16) = self->_confidence;
  v6 = [(VCPProtoBounds *)self->_bounds copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_confidence == *(equalCopy + 4))
  {
    bounds = self->_bounds;
    if (bounds | equalCopy[1])
    {
      v6 = [(VCPProtoBounds *)bounds isEqual:?];
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

  *v2.i32 = floorf(confidence + 0.5);
  *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v5.i64[0] = 0x8000000080000000;
  v5.i64[1] = 0x8000000080000000;
  v3.i32[0] = vbslq_s8(v5, v3, v2).i32[0];
  v6 = (confidence - *v2.i32) * 1.8447e19;
  v7 = 2654435761u * *v3.i32;
  v8 = v7 + v6;
  if (v6 <= 0.0)
  {
    v8 = 2654435761u * *v3.i32;
  }

  v9 = v7 - fabsf(v6);
  if (v6 < 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  return [(VCPProtoBounds *)self->_bounds hash]^ v10;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_confidence = fromCopy[4];
  bounds = self->_bounds;
  v6 = *(fromCopy + 1);
  if (bounds)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(VCPProtoBounds *)bounds mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(VCPProtoImageSaliencyResult *)self setBounds:?];
  }

  fromCopy = v7;
LABEL_7:
}

@end