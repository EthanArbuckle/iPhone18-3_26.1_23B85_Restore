@interface DESDataTransport
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation DESDataTransport

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DESDataTransport;
  v4 = [(DESDataTransport *)&v8 description];
  dictionaryRepresentation = [(DESDataTransport *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  binary64 = self->_binary64;
  if (binary64)
  {
    dictionaryRepresentation = [(DESBinary64Transport *)binary64 dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"binary64"];
  }

  binary32 = self->_binary32;
  if (binary32)
  {
    dictionaryRepresentation2 = [(DESBinary32Transport *)binary32 dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"binary32"];
  }

  bfloat16 = self->_bfloat16;
  if (bfloat16)
  {
    dictionaryRepresentation3 = [(DESBfloat16Transport *)bfloat16 dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"bfloat16"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_binary64)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_binary32)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_bfloat16)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_binary64)
  {
    [toCopy setBinary64:?];
    toCopy = v5;
  }

  if (self->_binary32)
  {
    [v5 setBinary32:?];
    toCopy = v5;
  }

  if (self->_bfloat16)
  {
    [v5 setBfloat16:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(DESBinary64Transport *)self->_binary64 copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(DESBinary32Transport *)self->_binary32 copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(DESBfloat16Transport *)self->_bfloat16 copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((binary64 = self->_binary64, !(binary64 | equalCopy[3])) || -[DESBinary64Transport isEqual:](binary64, "isEqual:")) && ((binary32 = self->_binary32, !(binary32 | equalCopy[2])) || -[DESBinary32Transport isEqual:](binary32, "isEqual:")))
  {
    bfloat16 = self->_bfloat16;
    if (bfloat16 | equalCopy[1])
    {
      v8 = [(DESBfloat16Transport *)bfloat16 isEqual:?];
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
  v3 = [(DESBinary64Transport *)self->_binary64 hash];
  v4 = [(DESBinary32Transport *)self->_binary32 hash]^ v3;
  return v4 ^ [(DESBfloat16Transport *)self->_bfloat16 hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  binary64 = self->_binary64;
  v6 = fromCopy[3];
  v11 = fromCopy;
  if (binary64)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(DESBinary64Transport *)binary64 mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(DESDataTransport *)self setBinary64:?];
  }

  fromCopy = v11;
LABEL_7:
  binary32 = self->_binary32;
  v8 = fromCopy[2];
  if (binary32)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(DESBinary32Transport *)binary32 mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(DESDataTransport *)self setBinary32:?];
  }

  fromCopy = v11;
LABEL_13:
  bfloat16 = self->_bfloat16;
  v10 = fromCopy[1];
  if (bfloat16)
  {
    if (v10)
    {
      [(DESBfloat16Transport *)bfloat16 mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(DESDataTransport *)self setBfloat16:?];
  }

  MEMORY[0x2821F96F8]();
}

@end