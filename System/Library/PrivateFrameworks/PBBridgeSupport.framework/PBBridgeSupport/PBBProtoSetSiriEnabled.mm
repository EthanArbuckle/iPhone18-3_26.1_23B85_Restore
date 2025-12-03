@interface PBBProtoSetSiriEnabled
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation PBBProtoSetSiriEnabled

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PBBProtoSetSiriEnabled;
  v4 = [(PBBProtoSetSiriEnabled *)&v8 description];
  dictionaryRepresentation = [(PBBProtoSetSiriEnabled *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_enabled];
  [dictionary setObject:v4 forKey:@"enabled"];

  return dictionary;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 8) = self->_enabled;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = self->_enabled == equalCopy[8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end