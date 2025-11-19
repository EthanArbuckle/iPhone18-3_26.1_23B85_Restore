@interface HKCodableLevelViewDataConfigurationBucket
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableLevelViewDataConfigurationBucket

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableLevelViewDataConfigurationBucket;
  v4 = [(HKCodableLevelViewDataConfigurationBucket *)&v8 description];
  v5 = [(HKCodableLevelViewDataConfigurationBucket *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  range = self->_range;
  if (range)
  {
    v5 = [(HKCodableClosedRange *)range dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"range"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_highlighted];
  [v3 setObject:v6 forKey:@"highlighted"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_range)
  {
    [HKCodableLevelViewDataConfigurationBucket writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)a3
{
  range = self->_range;
  v5 = a3;
  [v5 setRange:range];
  v5[16] = self->_highlighted;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HKCodableClosedRange *)self->_range copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 16) = self->_highlighted;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = [v4 isMemberOfClass:objc_opt_class()] && ((range = self->_range, !(range | *(v4 + 1))) || -[HKCodableClosedRange isEqual:](range, "isEqual:")) && self->_highlighted == v4[16];

  return v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  range = self->_range;
  v6 = *(v4 + 1);
  if (range)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    range = [(HKCodableClosedRange *)range mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    range = [(HKCodableLevelViewDataConfigurationBucket *)self setRange:?];
  }

  v4 = v7;
LABEL_7:
  self->_highlighted = *(v4 + 16);

  MEMORY[0x1EEE66BB8](range, v4);
}

@end