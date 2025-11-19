@interface NPSFileBackupMsg
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPSFileBackupMsg

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPSFileBackupMsg;
  v3 = [(NPSFileBackupMsg *)&v7 description];
  v4 = [(NPSFileBackupMsg *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_fileURL)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_fileData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_fileURL)
  {
    [v4 setFileURL:?];
    v4 = v5;
  }

  if (self->_fileData)
  {
    [v5 setFileData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_fileURL copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_fileData copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((fileURL = self->_fileURL, !(fileURL | v4[2])) || -[NSData isEqual:](fileURL, "isEqual:")))
  {
    fileData = self->_fileData;
    if (fileData | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(NPSFileBackupMsg *)self setFileURL:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(NPSFileBackupMsg *)self setFileData:?];
    v4 = v5;
  }
}

@end