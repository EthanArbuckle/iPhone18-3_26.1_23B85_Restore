@interface ODCurareReportFillerMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ODCurareReportFillerMetadata

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ODCurareReportFillerMetadata;
  v4 = [(ODCurareReportFillerMetadata *)&v8 description];
  dictionaryRepresentation = [(ODCurareReportFillerMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  date = self->_date;
  if (date)
  {
    [dictionary setObject:date forKey:@"date"];
  }

  selectedModelName = self->_selectedModelName;
  if (selectedModelName)
  {
    [v4 setObject:selectedModelName forKey:@"selectedModelName"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_date)
  {
    [ODCurareReportFillerMetadata writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  if (!self->_selectedModelName)
  {
    [ODCurareReportFillerMetadata writeTo:];
  }

  PBDataWriterWriteStringField();
}

- (void)copyTo:(id)to
{
  date = self->_date;
  toCopy = to;
  [toCopy setDate:date];
  [toCopy setSelectedModelName:self->_selectedModelName];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_date copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_selectedModelName copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((date = self->_date, !(date | equalCopy[1])) || -[NSString isEqual:](date, "isEqual:")))
  {
    selectedModelName = self->_selectedModelName;
    if (selectedModelName | equalCopy[2])
    {
      v7 = [(NSString *)selectedModelName isEqual:?];
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(ODCurareReportFillerMetadata *)self setDate:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(ODCurareReportFillerMetadata *)self setSelectedModelName:?];
    fromCopy = v5;
  }
}

@end