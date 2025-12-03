@interface HKCodableLevelViewDataConfigurationBucket
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableLevelViewDataConfigurationBucket

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableLevelViewDataConfigurationBucket;
  v4 = [(HKCodableLevelViewDataConfigurationBucket *)&v8 description];
  dictionaryRepresentation = [(HKCodableLevelViewDataConfigurationBucket *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  range = self->_range;
  if (range)
  {
    dictionaryRepresentation = [(HKCodableClosedRange *)range dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"range"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_highlighted];
  [dictionary setObject:v6 forKey:@"highlighted"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_range)
  {
    [HKCodableLevelViewDataConfigurationBucket writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)to
{
  range = self->_range;
  toCopy = to;
  [toCopy setRange:range];
  toCopy[16] = self->_highlighted;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HKCodableClosedRange *)self->_range copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 16) = self->_highlighted;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = [equalCopy isMemberOfClass:objc_opt_class()] && ((range = self->_range, !(range | *(equalCopy + 1))) || -[HKCodableClosedRange isEqual:](range, "isEqual:")) && self->_highlighted == equalCopy[16];

  return v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  range = self->_range;
  v6 = *(fromCopy + 1);
  if (range)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    range = [(HKCodableClosedRange *)range mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    range = [(HKCodableLevelViewDataConfigurationBucket *)self setRange:?];
  }

  fromCopy = v7;
LABEL_7:
  self->_highlighted = *(fromCopy + 16);

  MEMORY[0x1EEE66BB8](range, fromCopy);
}

@end