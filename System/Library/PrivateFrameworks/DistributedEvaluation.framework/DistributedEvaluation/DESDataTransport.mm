@interface DESDataTransport
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation DESDataTransport

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DESDataTransport;
  v4 = [(DESDataTransport *)&v8 description];
  v5 = [(DESDataTransport *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  binary64 = self->_binary64;
  if (binary64)
  {
    v5 = [(DESBinary64Transport *)binary64 dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"binary64"];
  }

  binary32 = self->_binary32;
  if (binary32)
  {
    v7 = [(DESBinary32Transport *)binary32 dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"binary32"];
  }

  bfloat16 = self->_bfloat16;
  if (bfloat16)
  {
    v9 = [(DESBfloat16Transport *)bfloat16 dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"bfloat16"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_binary64)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_binary32)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_bfloat16)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_binary64)
  {
    [v4 setBinary64:?];
    v4 = v5;
  }

  if (self->_binary32)
  {
    [v5 setBinary32:?];
    v4 = v5;
  }

  if (self->_bfloat16)
  {
    [v5 setBfloat16:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(DESBinary64Transport *)self->_binary64 copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(DESBinary32Transport *)self->_binary32 copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(DESBfloat16Transport *)self->_bfloat16 copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((binary64 = self->_binary64, !(binary64 | v4[3])) || -[DESBinary64Transport isEqual:](binary64, "isEqual:")) && ((binary32 = self->_binary32, !(binary32 | v4[2])) || -[DESBinary32Transport isEqual:](binary32, "isEqual:")))
  {
    bfloat16 = self->_bfloat16;
    if (bfloat16 | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  binary64 = self->_binary64;
  v6 = v4[3];
  v11 = v4;
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

  v4 = v11;
LABEL_7:
  binary32 = self->_binary32;
  v8 = v4[2];
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

  v4 = v11;
LABEL_13:
  bfloat16 = self->_bfloat16;
  v10 = v4[1];
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