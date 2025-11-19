@interface NBPBCreateBackupResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NBPBCreateBackupResponse

- (id)description
{
  v7.receiver = self;
  v7.super_class = NBPBCreateBackupResponse;
  v3 = [(NBPBCreateBackupResponse *)&v7 description];
  v4 = [(NBPBCreateBackupResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  backup = self->_backup;
  if (backup)
  {
    v5 = [(NBPBBackupMetadata *)backup dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"backup"];
  }

  error = self->_error;
  if (error)
  {
    [v3 setObject:error forKey:@"error"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_backup)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_error)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_backup)
  {
    [v4 setBackup:?];
    v4 = v5;
  }

  if (self->_error)
  {
    [v5 setError:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NBPBBackupMetadata *)self->_backup copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_error copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((backup = self->_backup, !(backup | v4[1])) || -[NBPBBackupMetadata isEqual:](backup, "isEqual:")))
  {
    error = self->_error;
    if (error | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  backup = self->_backup;
  v6 = v4[1];
  v7 = v4;
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

  v4 = v7;
LABEL_7:
  if (v4[2])
  {
    [(NBPBCreateBackupResponse *)self setError:?];
  }

  _objc_release_x1();
}

@end