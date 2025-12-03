@interface NFMProtoDidPlaySoundResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation NFMProtoDidPlaySoundResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NFMProtoDidPlaySoundResponse;
  v4 = [(NFMProtoDidPlaySoundResponse *)&v8 description];
  dictionaryRepresentation = [(NFMProtoDidPlaySoundResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_didPlay];
  [dictionary setObject:v4 forKey:@"didPlay"];

  return dictionary;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 8) = self->_didPlay;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = self->_didPlay == equalCopy[8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end