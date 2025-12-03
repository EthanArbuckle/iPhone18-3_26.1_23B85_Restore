@interface VCPProtoMovieMovingObjectResult
+ (id)resultFromLegacyDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (void)addBounds:(id)bounds;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VCPProtoMovieMovingObjectResult

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  v22 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  memset(&v20, 0, sizeof(v20));
  CMTimeRangeMakeFromDictionary(&v20, dictionaryCopy);
  v4 = [(__CFDictionary *)dictionaryCopy objectForKeyedSubscript:@"attributes"];
  v5 = [v4 objectForKeyedSubscript:@"objectBounds"];
  v6 = v5;
  if ((v20.start.flags & 1) == 0)
  {
    goto LABEL_2;
  }

  v7 = 0;
  if ((v20.duration.flags & 1) != 0 && !v20.duration.epoch && (v20.duration.value & 0x8000000000000000) == 0)
  {
    if (![v5 count])
    {
LABEL_2:
      v7 = 0;
      goto LABEL_15;
    }

    v7 = objc_alloc_init(VCPProtoMovieMovingObjectResult);
    v19 = v20;
    v8 = [VCPProtoTimeRange timeRangeWithCMTimeRange:&v19];
    [(VCPProtoMovieMovingObjectResult *)v7 setTimeRange:v8];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v10)
    {
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v24 = NSRectFromString(*(*(&v15 + 1) + 8 * i));
          v13 = [VCPProtoBounds boundsWithCGRect:v24.origin.x, v24.origin.y, v24.size.width, v24.size.height, v15];
          [(VCPProtoMovieMovingObjectResult *)v7 addBounds:v13];
        }

        v10 = [v9 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v10);
    }
  }

LABEL_15:

  return v7;
}

- (id)exportToLegacyDictionary
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[VCPProtoMovieMovingObjectResult boundsCount](self, "boundsCount")}];
  for (i = 0; i < [(VCPProtoMovieMovingObjectResult *)self boundsCount]; ++i)
  {
    v5 = [(VCPProtoMovieMovingObjectResult *)self boundsAtIndex:i];
    [v5 rectValue];
    v6 = NSStringFromRect(v18);
    [v3 addObject:v6];
  }

  timeRange = [(VCPProtoMovieMovingObjectResult *)self timeRange];
  v8 = timeRange;
  if (timeRange)
  {
    [timeRange timeRangeValue];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  range = v13;
  v9 = CMTimeRangeCopyAsDictionary(&range, 0);
  v10 = [(__CFDictionary *)v9 mutableCopy];

  v15 = @"objectBounds";
  v16[0] = v3;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [v10 setObject:v11 forKeyedSubscript:@"attributes"];

  return v10;
}

- (void)addBounds:(id)bounds
{
  boundsCopy = bounds;
  bounds = self->_bounds;
  v8 = boundsCopy;
  if (!bounds)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_bounds;
    self->_bounds = v6;

    boundsCopy = v8;
    bounds = self->_bounds;
  }

  [(NSMutableArray *)bounds addObject:boundsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieMovingObjectResult;
  v4 = [(VCPProtoMovieMovingObjectResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoMovieMovingObjectResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  timeRange = self->_timeRange;
  if (timeRange)
  {
    dictionaryRepresentation = [(VCPProtoTimeRange *)timeRange dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"timeRange"];
  }

  if ([(NSMutableArray *)self->_bounds count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_bounds, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = self->_bounds;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation2];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"bounds"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  PBDataWriterWriteSubmessage();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_bounds;
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
  [toCopy setTimeRange:self->_timeRange];
  if ([(VCPProtoMovieMovingObjectResult *)self boundsCount])
  {
    [toCopy clearBounds];
    boundsCount = [(VCPProtoMovieMovingObjectResult *)self boundsCount];
    if (boundsCount)
    {
      v5 = boundsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(VCPProtoMovieMovingObjectResult *)self boundsAtIndex:i];
        [toCopy addBounds:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_bounds;
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
        [v5 addBounds:v13];

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
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((timeRange = self->_timeRange, !(timeRange | equalCopy[2])) || -[VCPProtoTimeRange isEqual:](timeRange, "isEqual:")))
  {
    bounds = self->_bounds;
    if (bounds | equalCopy[1])
    {
      v7 = [(NSMutableArray *)bounds isEqual:?];
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

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  timeRange = self->_timeRange;
  v6 = *(fromCopy + 2);
  if (timeRange)
  {
    if (v6)
    {
      [(VCPProtoTimeRange *)timeRange mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(VCPProtoMovieMovingObjectResult *)self setTimeRange:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(fromCopy + 1);
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

        [(VCPProtoMovieMovingObjectResult *)self addBounds:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

@end