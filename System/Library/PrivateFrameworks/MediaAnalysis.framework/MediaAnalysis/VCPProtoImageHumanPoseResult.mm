@interface VCPProtoImageHumanPoseResult
+ (id)resultFromLegacyDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (unint64_t)hash;
- (void)addKeypoints:(id)keypoints;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VCPProtoImageHumanPoseResult

- (void)addKeypoints:(id)keypoints
{
  keypointsCopy = keypoints;
  keypoints = self->_keypoints;
  v8 = keypointsCopy;
  if (!keypoints)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_keypoints;
    self->_keypoints = v6;

    keypointsCopy = v8;
    keypoints = self->_keypoints;
  }

  [(NSMutableArray *)keypoints addObject:keypointsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoImageHumanPoseResult;
  v4 = [(VCPProtoImageHumanPoseResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoImageHumanPoseResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
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

  v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_flags];
  [dictionary setObject:v8 forKey:@"flags"];

  if ([(NSMutableArray *)self->_keypoints count])
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_keypoints, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = self->_keypoints;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation2 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:dictionaryRepresentation2];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    [dictionary setObject:v9 forKey:@"keypoints"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  PBDataWriterWriteFloatField();
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteInt32Field();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_keypoints;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[4] = LODWORD(self->_confidence);
  [toCopy setBounds:self->_bounds];
  toCopy[5] = self->_flags;
  if ([(VCPProtoImageHumanPoseResult *)self keypointsCount])
  {
    [toCopy clearKeypoints];
    keypointsCount = [(VCPProtoImageHumanPoseResult *)self keypointsCount];
    if (keypointsCount)
    {
      v5 = keypointsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(VCPProtoImageHumanPoseResult *)self keypointsAtIndex:i];
        [toCopy addKeypoints:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 16) = self->_confidence;
  v6 = [(VCPProtoBounds *)self->_bounds copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 20) = self->_flags;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_keypoints;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) copyWithZone:{zone, v15}];
        [v5 addKeypoints:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_confidence == *(equalCopy + 4) && ((bounds = self->_bounds, !(bounds | equalCopy[1])) || -[VCPProtoBounds isEqual:](bounds, "isEqual:")) && self->_flags == *(equalCopy + 5))
  {
    keypoints = self->_keypoints;
    if (keypoints | equalCopy[3])
    {
      v7 = [(NSMutableArray *)keypoints isEqual:?];
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
  v6 = (confidence - *v2.i32) * 1.8447e19;
  *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v7.i64[0] = 0x8000000080000000;
  v7.i64[1] = 0x8000000080000000;
  v2.i32[0] = vbslq_s8(v7, v3, v2).i32[0];
  v8 = 2654435761u * *v2.i32;
  v9 = v8 + v6;
  if (v6 <= 0.0)
  {
    v9 = 2654435761u * *v2.i32;
  }

  v10 = v8 - fabsf(v6);
  if (v6 < 0.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = [(VCPProtoBounds *)self->_bounds hash]^ (2654435761 * self->_flags);
  return v12 ^ [(NSMutableArray *)self->_keypoints hash]^ v11;
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  self->_confidence = *(fromCopy + 4);
  bounds = self->_bounds;
  v6 = *(fromCopy + 1);
  if (bounds)
  {
    if (v6)
    {
      [(VCPProtoBounds *)bounds mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(VCPProtoImageHumanPoseResult *)self setBounds:?];
  }

  self->_flags = *(fromCopy + 5);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = *(fromCopy + 3);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(VCPProtoImageHumanPoseResult *)self addKeypoints:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"flags"];
  v5 = [dictionaryCopy objectForKeyedSubscript:@"attributes"];
  v6 = [v5 objectForKeyedSubscript:@"humanConfidence"];
  v7 = [v5 objectForKeyedSubscript:@"humanBounds"];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v4 == 0)
  {
    v12 = 0;
  }

  else
  {
    unsignedIntegerValue = [v4 unsignedIntegerValue];
    v12 = objc_alloc_init(VCPProtoImageHumanPoseResult);
    [v6 floatValue];
    [(VCPProtoImageHumanPoseResult *)v12 setConfidence:?];
    v16 = NSRectFromString(v8);
    v13 = [VCPProtoBounds boundsWithCGRect:v16.origin.x, v16.origin.y, v16.size.width, v16.size.height];
    [(VCPProtoImageHumanPoseResult *)v12 setBounds:v13];

    [(VCPProtoImageHumanPoseResult *)v12 setFlags:unsignedIntegerValue];
  }

  return v12;
}

- (id)exportToLegacyDictionary
{
  v14[2] = *MEMORY[0x1E69E9840];
  v13[0] = @"attributes";
  v11[0] = @"humanConfidence";
  v3 = MEMORY[0x1E696AD98];
  [(VCPProtoImageHumanPoseResult *)self confidence];
  v4 = [v3 numberWithFloat:?];
  v12[0] = v4;
  v11[1] = @"humanBounds";
  bounds = [(VCPProtoImageHumanPoseResult *)self bounds];
  [bounds rectValue];
  v6 = NSStringFromRect(v16);
  v12[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[0] = v7;
  v13[1] = @"flags";
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[VCPProtoImageHumanPoseResult flags](self, "flags")}];
  v14[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v9;
}

@end