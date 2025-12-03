@interface BMPBContextualActionEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addContent:(id)content;
- (void)addParameter:(id)parameter;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BMPBContextualActionEvent

- (void)addContent:(id)content
{
  contentCopy = content;
  contents = self->_contents;
  v8 = contentCopy;
  if (!contents)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_contents;
    self->_contents = v6;

    contentCopy = v8;
    contents = self->_contents;
  }

  [(NSMutableArray *)contents addObject:contentCopy];
}

- (void)addParameter:(id)parameter
{
  parameterCopy = parameter;
  parameters = self->_parameters;
  v8 = parameterCopy;
  if (!parameters)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_parameters;
    self->_parameters = v6;

    parameterCopy = v8;
    parameters = self->_parameters;
  }

  [(NSMutableArray *)parameters addObject:parameterCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBContextualActionEvent;
  v4 = [(BMPBContextualActionEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBContextualActionEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  appName = self->_appName;
  if (appName)
  {
    [v4 setObject:appName forKey:@"appName"];
  }

  actionName = self->_actionName;
  if (actionName)
  {
    [v4 setObject:actionName forKey:@"actionName"];
  }

  contents = self->_contents;
  if (contents)
  {
    [v4 setObject:contents forKey:@"content"];
  }

  parameters = self->_parameters;
  if (parameters)
  {
    [v4 setObject:parameters forKey:@"parameter"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_appName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_actionName)
  {
    PBDataWriterWriteStringField();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_contents;
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
        PBDataWriterWriteDataField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_parameters;
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
        PBDataWriterWriteDataField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
  }

  if (self->_appName)
  {
    [toCopy setAppName:?];
  }

  if (self->_actionName)
  {
    [toCopy setActionName:?];
  }

  if ([(BMPBContextualActionEvent *)self contentsCount])
  {
    [toCopy clearContents];
    contentsCount = [(BMPBContextualActionEvent *)self contentsCount];
    if (contentsCount)
    {
      v5 = contentsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(BMPBContextualActionEvent *)self contentAtIndex:i];
        [toCopy addContent:v7];
      }
    }
  }

  if ([(BMPBContextualActionEvent *)self parametersCount])
  {
    [toCopy clearParameters];
    parametersCount = [(BMPBContextualActionEvent *)self parametersCount];
    if (parametersCount)
    {
      v9 = parametersCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(BMPBContextualActionEvent *)self parameterAtIndex:j];
        [toCopy addParameter:v11];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_appName copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_actionName copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = self->_contents;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      v16 = 0;
      do
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v30 + 1) + 8 * v16) copyWithZone:zone];
        [v5 addContent:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v14);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = self->_parameters;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      v22 = 0;
      do
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v26 + 1) + 8 * v22) copyWithZone:{zone, v26}];
        [v5 addParameter:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v20);
  }

  v24 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | equalCopy[4])) || -[NSString isEqual:](identifier, "isEqual:")) && ((appName = self->_appName, !(appName | equalCopy[2])) || -[NSString isEqual:](appName, "isEqual:")) && ((actionName = self->_actionName, !(actionName | equalCopy[1])) || -[NSString isEqual:](actionName, "isEqual:")) && ((contents = self->_contents, !(contents | equalCopy[3])) || -[NSMutableArray isEqual:](contents, "isEqual:")))
  {
    parameters = self->_parameters;
    if (parameters | equalCopy[5])
    {
      v10 = [(NSMutableArray *)parameters isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_appName hash]^ v3;
  v5 = [(NSString *)self->_actionName hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_contents hash];
  return v6 ^ [(NSMutableArray *)self->_parameters hash];
}

- (void)mergeFrom:(id)from
{
  v26 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 4))
  {
    [(BMPBContextualActionEvent *)self setIdentifier:?];
  }

  if (*(fromCopy + 2))
  {
    [(BMPBContextualActionEvent *)self setAppName:?];
  }

  if (*(fromCopy + 1))
  {
    [(BMPBContextualActionEvent *)self setActionName:?];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = *(fromCopy + 3);
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

        [(BMPBContextualActionEvent *)self addContent:*(*(&v20 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = *(fromCopy + 5);
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

        [(BMPBContextualActionEvent *)self addParameter:*(*(&v16 + 1) + 8 * j), v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end