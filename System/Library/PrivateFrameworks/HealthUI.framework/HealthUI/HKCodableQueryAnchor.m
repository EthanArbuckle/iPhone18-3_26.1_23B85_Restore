@interface HKCodableQueryAnchor
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableQueryAnchor

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableQueryAnchor;
  v4 = [(HKCodableQueryAnchor *)&v8 description];
  v5 = [(HKCodableQueryAnchor *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  encodedQueryAnchorData = self->_encodedQueryAnchorData;
  if (encodedQueryAnchorData)
  {
    [v3 setObject:encodedQueryAnchorData forKey:@"encodedQueryAnchorData"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_encodedQueryAnchorData)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  encodedQueryAnchorData = self->_encodedQueryAnchorData;
  if (encodedQueryAnchorData)
  {
    [a3 setEncodedQueryAnchorData:encodedQueryAnchorData];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_encodedQueryAnchorData copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    encodedQueryAnchorData = self->_encodedQueryAnchorData;
    if (encodedQueryAnchorData | v4[1])
    {
      v6 = [(NSData *)encodedQueryAnchorData isEqual:?];
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
    [(HKCodableQueryAnchor *)self setEncodedQueryAnchorData:?];
  }
}

@end