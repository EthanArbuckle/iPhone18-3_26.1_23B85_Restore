@interface DRSProtoFileDescription
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation DRSProtoFileDescription

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DRSProtoFileDescription;
  v4 = [(DRSProtoFileDescription *)&v8 description];
  v5 = [(DRSProtoFileDescription *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  logType = self->_logType;
  if (logType)
  {
    [v3 setObject:logType forKey:@"log_type"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_logType)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    logSize = self->_logSize;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }

  if (self->_fileName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_logType)
  {
    [v4 setLogType:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_logSize;
    *(v4 + 32) |= 1u;
  }

  if (self->_fileName)
  {
    [v5 setFileName:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_logType copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_logSize;
    *(v5 + 32) |= 1u;
  }

  v8 = [(NSString *)self->_fileName copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  logType = self->_logType;
  if (logType | *(v4 + 3))
  {
    if (![(NSString *)logType isEqual:?])
    {
      goto LABEL_11;
    }
  }

  v6 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_logSize != *(v4 + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  fileName = self->_fileName;
  if (fileName | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[3])
  {
    [(DRSProtoFileDescription *)self setLogType:?];
    v4 = v5;
  }

  if (v4[4])
  {
    self->_logSize = v4[1];
    *&self->_has |= 1u;
  }

  if (v4[2])
  {
    [(DRSProtoFileDescription *)self setFileName:?];
    v4 = v5;
  }
}

@end