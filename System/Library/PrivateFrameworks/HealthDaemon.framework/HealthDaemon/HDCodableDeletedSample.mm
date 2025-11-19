@interface HDCodableDeletedSample
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableDeletedSample

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableDeletedSample;
  v4 = [(HDCodableDeletedSample *)&v8 description];
  v5 = [(HDCodableDeletedSample *)self dictionaryRepresentation];
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

  return v3;
}

- (void)writeTo:(id)a3
{
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  sample = self->_sample;
  if (sample)
  {
    [a3 setSample:sample];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HDCodableSample *)self->_sample copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    sample = self->_sample;
    if (sample | v4[1])
    {
      v6 = [(HDCodableSample *)sample isEqual:?];
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
  v4 = a3;
  sample = self->_sample;
  v6 = v4[1];
  if (sample)
  {
    if (v6)
    {
      [(HDCodableSample *)sample mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HDCodableDeletedSample *)self setSample:?];
  }

  MEMORY[0x2821F96F8]();
}

@end