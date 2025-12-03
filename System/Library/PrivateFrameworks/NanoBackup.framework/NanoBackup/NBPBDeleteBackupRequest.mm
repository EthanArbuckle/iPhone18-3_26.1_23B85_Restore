@interface NBPBDeleteBackupRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NBPBDeleteBackupRequest

- (id)description
{
  v7.receiver = self;
  v7.super_class = NBPBDeleteBackupRequest;
  v3 = [(NBPBDeleteBackupRequest *)&v7 description];
  dictionaryRepresentation = [(NBPBDeleteBackupRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  if (self->_backupID)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  backupID = self->_backupID;
  if (backupID)
  {
    [to setBackupID:backupID];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_backupID copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    backupID = self->_backupID;
    if (backupID | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(NBPBDeleteBackupRequest *)self setBackupID:?];
  }
}

@end