@interface NBPBDeleteBackupRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NBPBDeleteBackupRequest

- (id)description
{
  v7.receiver = self;
  v7.super_class = NBPBDeleteBackupRequest;
  v3 = [(NBPBDeleteBackupRequest *)&v7 description];
  v4 = [(NBPBDeleteBackupRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  backupID = self->_backupID;
  if (backupID)
  {
    [v3 setObject:backupID forKey:@"backupID"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_backupID)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  backupID = self->_backupID;
  if (backupID)
  {
    [a3 setBackupID:backupID];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_backupID copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    backupID = self->_backupID;
    if (backupID | v4[1])
    {
      v6 = [(NSData *)backupID isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(NBPBDeleteBackupRequest *)self setBackupID:?];
  }
}

@end