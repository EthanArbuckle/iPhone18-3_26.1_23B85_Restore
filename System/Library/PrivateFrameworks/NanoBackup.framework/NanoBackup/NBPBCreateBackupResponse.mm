@interface NBPBCreateBackupResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NBPBCreateBackupResponse

- (id)description
{
  v7.receiver = self;
  v7.super_class = NBPBCreateBackupResponse;
  v3 = [(NBPBCreateBackupResponse *)&v7 description];
  dictionaryRepresentation = [(NBPBCreateBackupResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  backup = self->_backup;
  if (backup)
  {
    dictionaryRepresentation = [(NBPBBackupMetadata *)backup dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"backup"];
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
  v5 = toCopy;
  if (self->_backup)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_error)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_backup)
  {
    [toCopy setBackup:?];
    toCopy = v5;
  }

  if (self->_error)
  {
    [v5 setError:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NBPBBackupMetadata *)self->_backup copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_error copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((backup = self->_backup, !(backup | equalCopy[1])) || -[NBPBBackupMetadata isEqual:](backup, "isEqual:")))
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
  backup = self->_backup;
  v6 = fromCopy[1];
  v7 = fromCopy;
  if (backup)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NBPBBackupMetadata *)backup mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NBPBCreateBackupResponse *)self setBackup:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[2])
  {
    [(NBPBCreateBackupResponse *)self setError:?];
  }

  _objc_release_x1();
}

@end