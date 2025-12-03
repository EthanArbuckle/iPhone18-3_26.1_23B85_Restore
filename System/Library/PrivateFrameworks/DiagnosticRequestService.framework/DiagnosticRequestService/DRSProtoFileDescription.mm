@interface DRSProtoFileDescription
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation DRSProtoFileDescription

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DRSProtoFileDescription;
  v4 = [(DRSProtoFileDescription *)&v8 description];
  dictionaryRepresentation = [(DRSProtoFileDescription *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  logType = self->_logType;
  if (logType)
  {
    [dictionary setObject:logType forKey:@"log_type"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_logSize];
    [v4 setObject:v6 forKey:@"log_size"];
  }

  fileName = self->_fileName;
  if (fileName)
  {
    [v4 setObject:fileName forKey:@"file_name"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_logType)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    logSize = self->_logSize;
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }

  if (self->_fileName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_logType)
  {
    [toCopy setLogType:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_logSize;
    *(toCopy + 32) |= 1u;
  }

  if (self->_fileName)
  {
    [v5 setFileName:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_logType copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_logSize;
    *(v5 + 32) |= 1u;
  }

  v8 = [(NSString *)self->_fileName copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  logType = self->_logType;
  if (logType | *(equalCopy + 3))
  {
    if (![(NSString *)logType isEqual:?])
    {
      goto LABEL_11;
    }
  }

  v6 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_logSize != *(equalCopy + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  fileName = self->_fileName;
  if (fileName | *(equalCopy + 2))
  {
    v8 = [(NSString *)fileName isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_logType hash];
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_logSize;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSString *)self->_fileName hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[3])
  {
    [(DRSProtoFileDescription *)self setLogType:?];
    fromCopy = v5;
  }

  if (fromCopy[4])
  {
    self->_logSize = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (fromCopy[2])
  {
    [(DRSProtoFileDescription *)self setFileName:?];
    fromCopy = v5;
  }
}

@end