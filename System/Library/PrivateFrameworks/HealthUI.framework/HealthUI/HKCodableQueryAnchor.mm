@interface HKCodableQueryAnchor
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableQueryAnchor

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableQueryAnchor;
  v4 = [(HKCodableQueryAnchor *)&v8 description];
  dictionaryRepresentation = [(HKCodableQueryAnchor *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  encodedQueryAnchorData = self->_encodedQueryAnchorData;
  if (encodedQueryAnchorData)
  {
    [dictionary setObject:encodedQueryAnchorData forKey:@"encodedQueryAnchorData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_encodedQueryAnchorData)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  encodedQueryAnchorData = self->_encodedQueryAnchorData;
  if (encodedQueryAnchorData)
  {
    [to setEncodedQueryAnchorData:encodedQueryAnchorData];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_encodedQueryAnchorData copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    encodedQueryAnchorData = self->_encodedQueryAnchorData;
    if (encodedQueryAnchorData | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(HKCodableQueryAnchor *)self setEncodedQueryAnchorData:?];
  }
}

@end