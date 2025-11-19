@interface VCPProtoMovieMovingObjectResult
+ (id)resultFromLegacyDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (void)addBounds:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCPProtoMovieMovingObjectResult

+ (id)resultFromLegacyDictionary:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  memset(&v20, 0, sizeof(v20));
  CMTimeRangeMakeFromDictionary(&v20, v3);
  v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:@"attributes"];
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

  v7 = [(VCPProtoMovieMovingObjectResult *)self timeRange];
  v8 = v7;
  if (v7)
  {
    [v7 timeRangeValue];
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

- (void)addBounds:(id)a3
{
  v4 = a3;
  bounds = self->_bounds;
  v8 = v4;
  if (!bounds)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_bounds;
    self->_bounds = v6;

    v4 = v8;
    bounds = self->_bounds;
  }

  [(NSMutableArray *)bounds addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieMovingObjectResult;
  v4 = [(VCPProtoMovieMovingObjectResult *)&v8 description];
  v5 = [(VCPProtoMovieMovingObjectResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  timeRange = self->_timeRange;
  if (timeRange)
  {
    v5 = [(VCPProtoTimeRange *)timeRange dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"timeRange"];
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

          v12 = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"bounds"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v8 = a3;
  [v8 setTimeRange:self->_timeRange];
  if ([(VCPProtoMovieMovingObjectResult *)self boundsCount])
  {
    [v8 clearBounds];
    v4 = [(VCPProtoMovieMovingObjectResult *)self boundsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(VCPProtoMovieMovingObjectResult *)self boundsAtIndex:i];
        [v8 addBounds:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:a3];
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

        v13 = [*(*(&v15 + 1) + 8 * v12) copyWithZone:{a3, v15}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((timeRange = self->_timeRange, !(timeRange | v4[2])) || -[VCPProtoTimeRange isEqual:](timeRange, "isEqual:")))
  {
    bounds = self->_bounds;
    if (bounds | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  timeRange = self->_timeRange;
  v6 = *(v4 + 2);
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
  v7 = *(v4 + 1);
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