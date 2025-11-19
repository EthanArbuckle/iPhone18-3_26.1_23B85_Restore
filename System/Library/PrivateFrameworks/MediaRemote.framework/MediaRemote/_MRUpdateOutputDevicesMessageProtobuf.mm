@interface _MRUpdateOutputDevicesMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addClusterAwareOutputDevices:(id)a3;
- (void)addOutputDevices:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRUpdateOutputDevicesMessageProtobuf

- (void)addOutputDevices:(id)a3
{
  v4 = a3;
  outputDevices = self->_outputDevices;
  v8 = v4;
  if (!outputDevices)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_outputDevices;
    self->_outputDevices = v6;

    v4 = v8;
    outputDevices = self->_outputDevices;
  }

  [(NSMutableArray *)outputDevices addObject:v4];
}

- (void)addClusterAwareOutputDevices:(id)a3
{
  v4 = a3;
  clusterAwareOutputDevices = self->_clusterAwareOutputDevices;
  v8 = v4;
  if (!clusterAwareOutputDevices)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_clusterAwareOutputDevices;
    self->_clusterAwareOutputDevices = v6;

    v4 = v8;
    clusterAwareOutputDevices = self->_clusterAwareOutputDevices;
  }

  [(NSMutableArray *)clusterAwareOutputDevices addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRUpdateOutputDevicesMessageProtobuf;
  v4 = [(_MRUpdateOutputDevicesMessageProtobuf *)&v8 description];
  v5 = [(_MRUpdateOutputDevicesMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_outputDevices count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_outputDevices, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = self->_outputDevices;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"outputDevices"];
  }

  endpointUID = self->_endpointUID;
  if (endpointUID)
  {
    [v3 setObject:endpointUID forKey:@"endpointUID"];
  }

  if ([(NSMutableArray *)self->_clusterAwareOutputDevices count])
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_clusterAwareOutputDevices, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = self->_clusterAwareOutputDevices;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v21 + 1) + 8 * j) dictionaryRepresentation];
          [v12 addObject:v18];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKey:@"clusterAwareOutputDevices"];
  }

  v19 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)writeTo:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_outputDevices;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  if (self->_endpointUID)
  {
    PBDataWriterWriteStringField();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_clusterAwareOutputDevices;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v12 = a3;
  if ([(_MRUpdateOutputDevicesMessageProtobuf *)self outputDevicesCount])
  {
    [v12 clearOutputDevices];
    v4 = [(_MRUpdateOutputDevicesMessageProtobuf *)self outputDevicesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(_MRUpdateOutputDevicesMessageProtobuf *)self outputDevicesAtIndex:i];
        [v12 addOutputDevices:v7];
      }
    }
  }

  if (self->_endpointUID)
  {
    [v12 setEndpointUID:?];
  }

  if ([(_MRUpdateOutputDevicesMessageProtobuf *)self clusterAwareOutputDevicesCount])
  {
    [v12 clearClusterAwareOutputDevices];
    v8 = [(_MRUpdateOutputDevicesMessageProtobuf *)self clusterAwareOutputDevicesCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(_MRUpdateOutputDevicesMessageProtobuf *)self clusterAwareOutputDevicesAtIndex:j];
        [v12 addClusterAwareOutputDevices:v11];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = self->_outputDevices;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v26 + 1) + 8 * v10) copyWithZone:a3];
        [v5 addOutputDevices:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  v12 = [(NSString *)self->_endpointUID copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = self->_clusterAwareOutputDevices;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v22 + 1) + 8 * v18) copyWithZone:{a3, v22}];
        [v5 addClusterAwareOutputDevices:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((outputDevices = self->_outputDevices, !(outputDevices | v4[3])) || -[NSMutableArray isEqual:](outputDevices, "isEqual:")) && ((endpointUID = self->_endpointUID, !(endpointUID | v4[2])) || -[NSString isEqual:](endpointUID, "isEqual:")))
  {
    clusterAwareOutputDevices = self->_clusterAwareOutputDevices;
    if (clusterAwareOutputDevices | v4[1])
    {
      v8 = [(NSMutableArray *)clusterAwareOutputDevices isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_outputDevices hash];
  v4 = [(NSString *)self->_endpointUID hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_clusterAwareOutputDevices hash];
}

- (void)mergeFrom:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v4[3];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(_MRUpdateOutputDevicesMessageProtobuf *)self addOutputDevices:*(*(&v20 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  if (v4[2])
  {
    [(_MRUpdateOutputDevicesMessageProtobuf *)self setEndpointUID:?];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v4[1];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(_MRUpdateOutputDevicesMessageProtobuf *)self addClusterAwareOutputDevices:*(*(&v16 + 1) + 8 * j), v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end