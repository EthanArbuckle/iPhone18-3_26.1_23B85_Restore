@interface FCCAchievementNotificationContentProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation FCCAchievementNotificationContentProtobuf

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = FCCAchievementNotificationContentProtobuf;
  v4 = [(FCCAchievementNotificationContentProtobuf *)&v8 description];
  dictionaryRepresentation = [(FCCAchievementNotificationContentProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  achievementData = self->_achievementData;
  if (achievementData)
  {
    [dictionary setObject:achievementData forKey:@"achievementData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_achievementData)
  {
    MEMORY[0x2821A42B0](to);
  }
}

- (void)copyTo:(id)to
{
  achievementData = self->_achievementData;
  if (achievementData)
  {
    [to setAchievementData:achievementData];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_achievementData copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    achievementData = self->_achievementData;
    if (achievementData | equalCopy[1])
    {
      v6 = [(NSData *)achievementData isEqual:?];
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
    [(FCCAchievementNotificationContentProtobuf *)self setAchievementData:?];
  }
}

@end