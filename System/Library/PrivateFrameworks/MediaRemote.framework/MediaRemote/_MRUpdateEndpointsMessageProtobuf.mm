@interface _MRUpdateEndpointsMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEndpointFeatures:(id)features;
- (int)endpointFeatures;
- (unint64_t)hash;
- (void)addEndpoints:(id)endpoints;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRUpdateEndpointsMessageProtobuf

- (void)addEndpoints:(id)endpoints
{
  endpointsCopy = endpoints;
  endpoints = self->_endpoints;
  v8 = endpointsCopy;
  if (!endpoints)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_endpoints;
    self->_endpoints = v6;

    endpointsCopy = v8;
    endpoints = self->_endpoints;
  }

  [(NSMutableArray *)endpoints addObject:endpointsCopy];
}

- (int)endpointFeatures
{
  if (*&self->_has)
  {
    return self->_endpointFeatures;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsEndpointFeatures:(id)features
{
  featuresCopy = features;
  if ([featuresCopy isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([featuresCopy isEqualToString:@"Audio"])
  {
    v4 = 1;
  }

  else if ([featuresCopy isEqualToString:@"Screen"])
  {
    v4 = 2;
  }

  else if ([featuresCopy isEqualToString:@"Video"])
  {
    v4 = 4;
  }

  else if ([featuresCopy isEqualToString:@"RemoteControl"])
  {
    v4 = 8;
  }

  else if ([featuresCopy isEqualToString:@"Companion"])
  {
    v4 = 16;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRUpdateEndpointsMessageProtobuf;
  v4 = [(_MRUpdateEndpointsMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRUpdateEndpointsMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_endpoints count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_endpoints, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_endpoints;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"endpoints"];
  }

  if (*&self->_has)
  {
    endpointFeatures = self->_endpointFeatures;
    if (endpointFeatures > 3)
    {
      switch(endpointFeatures)
      {
        case 4:
          v12 = @"Video";
          goto LABEL_25;
        case 8:
          v12 = @"RemoteControl";
          goto LABEL_25;
        case 16:
          v12 = @"Companion";
          goto LABEL_25;
      }
    }

    else
    {
      switch(endpointFeatures)
      {
        case 0:
          v12 = @"None";
          goto LABEL_25;
        case 1:
          v12 = @"Audio";
          goto LABEL_25;
        case 2:
          v12 = @"Screen";
LABEL_25:
          [dictionary setObject:v12 forKey:@"endpointFeatures"];

          goto LABEL_26;
      }
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_endpointFeatures];
    goto LABEL_25;
  }

LABEL_26:
  v13 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_endpoints;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    endpointFeatures = self->_endpointFeatures;
    PBDataWriterWriteInt32Field();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(_MRUpdateEndpointsMessageProtobuf *)self endpointsCount])
  {
    [toCopy clearEndpoints];
    endpointsCount = [(_MRUpdateEndpointsMessageProtobuf *)self endpointsCount];
    if (endpointsCount)
    {
      v5 = endpointsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(_MRUpdateEndpointsMessageProtobuf *)self endpointsAtIndex:i];
        [toCopy addEndpoints:v7];
      }
    }
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_endpointFeatures;
    *(toCopy + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_endpoints;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) copyWithZone:{zone, v14}];
        [v5 addEndpoints:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if (*&self->_has)
  {
    *(v5 + 8) = self->_endpointFeatures;
    *(v5 + 24) |= 1u;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  endpoints = self->_endpoints;
  if (endpoints | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)endpoints isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) != 0 && self->_endpointFeatures == *(equalCopy + 2))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_endpoints hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_endpointFeatures;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(fromCopy + 2);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(_MRUpdateEndpointsMessageProtobuf *)self addEndpoints:*(*(&v11 + 1) + 8 * v9++), v11];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 24))
  {
    self->_endpointFeatures = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end