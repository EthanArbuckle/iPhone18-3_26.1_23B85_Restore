@interface PKProtobufShippingMethods
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addMethods:(id)methods;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufShippingMethods

- (void)addMethods:(id)methods
{
  methodsCopy = methods;
  methods = self->_methods;
  v8 = methodsCopy;
  if (!methods)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_methods;
    self->_methods = v6;

    methodsCopy = v8;
    methods = self->_methods;
  }

  [(NSMutableArray *)methods addObject:methodsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufShippingMethods;
  v4 = [(PKProtobufShippingMethods *)&v8 description];
  dictionaryRepresentation = [(PKProtobufShippingMethods *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_methods count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_methods, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = self->_methods;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"methods"];
  }

  defaultMethod = self->_defaultMethod;
  if (defaultMethod)
  {
    dictionaryRepresentation2 = [(PKProtobufShippingMethod *)defaultMethod dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"defaultMethod"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_methods;
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

  if (self->_defaultMethod)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(PKProtobufShippingMethods *)self methodsCount])
  {
    [toCopy clearMethods];
    methodsCount = [(PKProtobufShippingMethods *)self methodsCount];
    if (methodsCount)
    {
      v5 = methodsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PKProtobufShippingMethods *)self methodsAtIndex:i];
        [toCopy addMethods:v7];
      }
    }
  }

  if (self->_defaultMethod)
  {
    [toCopy setDefaultMethod:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_methods;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) copyWithZone:{zone, v15}];
        [v5 addMethods:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [(PKProtobufShippingMethod *)self->_defaultMethod copyWithZone:zone];
  v13 = v5[1];
  v5[1] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((methods = self->_methods, !(methods | equalCopy[2])) || -[NSMutableArray isEqual:](methods, "isEqual:")))
  {
    defaultMethod = self->_defaultMethod;
    if (defaultMethod | equalCopy[1])
    {
      v7 = [(PKProtobufShippingMethod *)defaultMethod isEqual:?];
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
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = fromCopy[2];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PKProtobufShippingMethods *)self addMethods:*(*(&v12 + 1) + 8 * i), v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  defaultMethod = self->_defaultMethod;
  v11 = fromCopy[1];
  if (defaultMethod)
  {
    if (v11)
    {
      [(PKProtobufShippingMethod *)defaultMethod mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(PKProtobufShippingMethods *)self setDefaultMethod:?];
  }
}

@end