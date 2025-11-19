@interface ODCurareReportFillerDataSetSize
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation ODCurareReportFillerDataSetSize

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ODCurareReportFillerDataSetSize;
  v4 = [(ODCurareReportFillerDataSetSize *)&v8 description];
  v5 = [(ODCurareReportFillerDataSetSize *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numberOfUserSessions];
  [v3 setObject:v4 forKey:@"numberOfUserSessions"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numberOfUserSamples];
  [v3 setObject:v5 forKey:@"numberOfUserSamples"];

  return v3;
}

- (void)writeTo:(id)a3
{
  numberOfUserSessions = self->_numberOfUserSessions;
  v6 = a3;
  PBDataWriterWriteUint32Field();
  numberOfUserSamples = self->_numberOfUserSamples;
  PBDataWriterWriteUint32Field();
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 3) = self->_numberOfUserSessions;
  *(result + 2) = self->_numberOfUserSamples;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()] && self->_numberOfUserSessions == v4[3] && self->_numberOfUserSamples == v4[2];

  return v5;
}

@end