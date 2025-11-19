@interface VCPProtoImagePetsResult
+ (id)resultFromLegacyDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (unint64_t)hash;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCPProtoImagePetsResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoImagePetsResult;
  v4 = [(VCPProtoImagePetsResult *)&v8 description];
  v5 = [(VCPProtoImagePetsResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  *&v4 = self->_confidence;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v3 setObject:v5 forKey:@"confidence"];

  bounds = self->_bounds;
  if (bounds)
  {
    v7 = [(VCPProtoBounds *)bounds dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"bounds"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteFloatField();
  PBDataWriterWriteSubmessage();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 16) = self->_confidence;
  v6 = [(VCPProtoBounds *)self->_bounds copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_confidence == *(v4 + 4))
  {
    bounds = self->_bounds;
    if (bounds | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_confidence = v4[4];
  bounds = self->_bounds;
  v6 = *(v4 + 1);
  if (bounds)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(VCPProtoBounds *)bounds mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(VCPProtoImagePetsResult *)self setBounds:?];
  }

  v4 = v7;
LABEL_7:
}

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"attributes"];
  v4 = [v3 objectForKeyedSubscript:@"petsConfidence"];
  v5 = [v3 objectForKeyedSubscript:@"petsBounds"];
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
    v8 = objc_alloc_init(VCPProtoImagePetsResult);
    [v4 floatValue];
    [(VCPProtoImagePetsResult *)v8 setConfidence:?];
    v12 = NSRectFromString(v6);
    v9 = [VCPProtoBounds boundsWithCGRect:v12.origin.x, v12.origin.y, v12.size.width, v12.size.height];
    [(VCPProtoImagePetsResult *)v8 setBounds:v9];
  }

  return v8;
}

- (id)exportToLegacyDictionary
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = @"attributes";
  v10[0] = @"petsConfidence";
  v3 = MEMORY[0x1E696AD98];
  [(VCPProtoImagePetsResult *)self confidence];
  v4 = [v3 numberWithFloat:?];
  v11[0] = v4;
  v10[1] = @"petsBounds";
  v5 = [(VCPProtoImagePetsResult *)self bounds];
  [v5 rectValue];
  v6 = NSStringFromRect(v15);
  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v13[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  return v8;
}

@end