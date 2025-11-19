@interface HDCodableBinarySample
- (BOOL)applyToObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableBinarySample

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableBinarySample;
  v4 = [(HDCodableBinarySample *)&v8 description];
  v5 = [(HDCodableBinarySample *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  sample = self->_sample;
  if (sample)
  {
    v5 = [(HDCodableSample *)sample dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"sample"];
  }

  payload = self->_payload;
  if (payload)
  {
    [v3 setObject:payload forKey:@"payload"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_payload)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_sample)
  {
    [v4 setSample:?];
    v4 = v5;
  }

  if (self->_payload)
  {
    [v5 setPayload:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HDCodableSample *)self->_sample copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_payload copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((sample = self->_sample, !(sample | v4[2])) || -[HDCodableSample isEqual:](sample, "isEqual:")))
  {
    payload = self->_payload;
    if (payload | v4[1])
    {
      v7 = [(NSData *)payload isEqual:?];
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
  sample = self->_sample;
  v6 = v4[2];
  v7 = v4;
  if (sample)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HDCodableSample *)sample mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HDCodableBinarySample *)self setSample:?];
  }

  v4 = v7;
LABEL_7:
  if (v4[1])
  {
    [(HDCodableBinarySample *)self setPayload:?];
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)applyToObject:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_283D3FFC8])
  {
    v5 = [(HDCodableBinarySample *)self sample];
    v6 = [v5 applyToObject:v4];
    if (v6)
    {
      v7 = [(HDCodableBinarySample *)self payload];
      [v4 _setPayload:v7];
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end