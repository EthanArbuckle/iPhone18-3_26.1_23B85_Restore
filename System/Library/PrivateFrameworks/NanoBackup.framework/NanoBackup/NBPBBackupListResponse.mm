@interface NBPBBackupListResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addBackups:(id)backups;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NBPBBackupListResponse

- (void)addBackups:(id)backups
{
  backupsCopy = backups;
  backups = self->_backups;
  v8 = backupsCopy;
  if (!backups)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_backups;
    self->_backups = v6;

    backupsCopy = v8;
    backups = self->_backups;
  }

  [(NSMutableArray *)backups addObject:backupsCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NBPBBackupListResponse;
  v3 = [(NBPBBackupListResponse *)&v7 description];
  dictionaryRepresentation = [(NBPBBackupListResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ([(NSMutableArray *)self->_backups count])
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_backups, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_backups;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"backups"];
  }

  error = self->_error;
  if (error)
  {
    [v3 setObject:error forKey:@"error"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_backups;
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

  if (self->_error)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(NBPBBackupListResponse *)self backupsCount])
  {
    [toCopy clearBackups];
    backupsCount = [(NBPBBackupListResponse *)self backupsCount];
    if (backupsCount)
    {
      v5 = backupsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NBPBBackupListResponse *)self backupsAtIndex:i];
        [toCopy addBackups:v7];
      }
    }
  }

  if (self->_error)
  {
    [toCopy setError:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_backups;
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
        [v5 addBackups:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [(NSData *)self->_error copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((backups = self->_backups, !(backups | equalCopy[1])) || -[NSMutableArray isEqual:](backups, "isEqual:")))
  {
    error = self->_error;
    if (error | equalCopy[2])
    {
      v7 = [(NSData *)error isEqual:?];
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
  fromCopy = from;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = fromCopy[1];
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

        [(NBPBBackupListResponse *)self addBackups:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (fromCopy[2])
  {
    [(NBPBBackupListResponse *)self setError:?];
  }
}

@end