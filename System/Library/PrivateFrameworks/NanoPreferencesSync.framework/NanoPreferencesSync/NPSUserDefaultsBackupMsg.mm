@interface NPSUserDefaultsBackupMsg
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addKey:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPSUserDefaultsBackupMsg

- (void)addKey:(id)a3
{
  v4 = a3;
  keys = self->_keys;
  v8 = v4;
  if (!keys)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_keys;
    self->_keys = v6;

    v4 = v8;
    keys = self->_keys;
  }

  [(NSMutableArray *)keys addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPSUserDefaultsBackupMsg;
  v3 = [(NPSUserDefaultsBackupMsg *)&v7 description];
  v4 = [(NPSUserDefaultsBackupMsg *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  container = self->_container;
  if (container)
  {
    [v3 setObject:container forKey:@"container"];
  }

  domain = self->_domain;
  if (domain)
  {
    [v4 setObject:domain forKey:@"domain"];
  }

  if ([(NSMutableArray *)self->_keys count])
  {
    v7 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_keys, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = self->_keys;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:v13];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    [v4 setObject:v7 forKey:@"key"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_container)
  {
    PBDataWriterWriteStringField();
  }

  if (!self->_domain)
  {
    sub_100026630();
  }

  PBDataWriterWriteStringField();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_keys;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        v10 = *(*(&v11 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_container)
  {
    [v4 setContainer:?];
    v4 = v9;
  }

  [v4 setDomain:self->_domain];
  if ([(NPSUserDefaultsBackupMsg *)self keysCount])
  {
    [v9 clearKeys];
    v5 = [(NPSUserDefaultsBackupMsg *)self keysCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NPSUserDefaultsBackupMsg *)self keyAtIndex:i];
        [v9 addKey:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_container copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_domain copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_keys;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * v14) copyWithZone:{a3, v17}];
        [v5 addKey:v15];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((container = self->_container, !(container | v4[1])) || -[NSString isEqual:](container, "isEqual:")) && ((domain = self->_domain, !(domain | v4[2])) || -[NSString isEqual:](domain, "isEqual:")))
  {
    keys = self->_keys;
    if (keys | v4[3])
    {
      v8 = [(NSMutableArray *)keys isEqual:?];
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
  v3 = [(NSString *)self->_container hash];
  v4 = [(NSString *)self->_domain hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_keys hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    [(NPSUserDefaultsBackupMsg *)self setContainer:?];
  }

  if (*(v4 + 2))
  {
    [(NPSUserDefaultsBackupMsg *)self setDomain:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(v4 + 3);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NPSUserDefaultsBackupMsg *)self addKey:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end