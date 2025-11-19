@interface FCCAchievementNotificationContentProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation FCCAchievementNotificationContentProtobuf

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = FCCAchievementNotificationContentProtobuf;
  v4 = [(FCCAchievementNotificationContentProtobuf *)&v8 description];
  v5 = [(FCCAchievementNotificationContentProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  achievementData = self->_achievementData;
  if (achievementData)
  {
    [v3 setObject:achievementData forKey:@"achievementData"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_achievementData)
  {
    MEMORY[0x2821A42B0](a3);
  }
}

- (void)copyTo:(id)a3
{
  achievementData = self->_achievementData;
  if (achievementData)
  {
    [a3 setAchievementData:achievementData];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_achievementData copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    achievementData = self->_achievementData;
    if (achievementData | v4[1])
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(FCCAchievementNotificationContentProtobuf *)self setAchievementData:?];
  }
}

@end