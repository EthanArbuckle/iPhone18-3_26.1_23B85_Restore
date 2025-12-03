@interface NPSFileBackupMsg
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPSFileBackupMsg

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPSFileBackupMsg;
  v3 = [(NPSFileBackupMsg *)&v7 description];
  dictionaryRepresentation = [(NPSFileBackupMsg *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  fileURL = self->_fileURL;
  if (fileURL)
  {
    [v3 setObject:fileURL forKey:@"fileURL"];
  }

  fileData = self->_fileData;
  if (fileData)
  {
    [v4 setObject:fileData forKey:@"fileData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_fileURL)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_fileData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_fileURL)
  {
    [toCopy setFileURL:?];
    toCopy = v5;
  }

  if (self->_fileData)
  {
    [v5 setFileData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_fileURL copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_fileData copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((fileURL = self->_fileURL, !(fileURL | equalCopy[2])) || -[NSData isEqual:](fileURL, "isEqual:")))
  {
    fileData = self->_fileData;
    if (fileData | equalCopy[1])
    {
      v7 = [(NSData *)fileData isEqual:?];
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
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(NPSFileBackupMsg *)self setFileURL:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(NPSFileBackupMsg *)self setFileData:?];
    fromCopy = v5;
  }
}

@end