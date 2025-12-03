@interface ODCurareReportFillerDataSetSize
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation ODCurareReportFillerDataSetSize

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ODCurareReportFillerDataSetSize;
  v4 = [(ODCurareReportFillerDataSetSize *)&v8 description];
  dictionaryRepresentation = [(ODCurareReportFillerDataSetSize *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numberOfUserSessions];
  [dictionary setObject:v4 forKey:@"numberOfUserSessions"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numberOfUserSamples];
  [dictionary setObject:v5 forKey:@"numberOfUserSamples"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  numberOfUserSessions = self->_numberOfUserSessions;
  toCopy = to;
  PBDataWriterWriteUint32Field();
  numberOfUserSamples = self->_numberOfUserSamples;
  PBDataWriterWriteUint32Field();
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 3) = self->_numberOfUserSessions;
  *(result + 2) = self->_numberOfUserSamples;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()] && self->_numberOfUserSessions == equalCopy[3] && self->_numberOfUserSamples == equalCopy[2];

  return v5;
}

@end