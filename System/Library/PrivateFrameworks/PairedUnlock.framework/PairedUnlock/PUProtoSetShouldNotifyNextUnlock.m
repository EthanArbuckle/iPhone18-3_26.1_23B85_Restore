@interface PUProtoSetShouldNotifyNextUnlock
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation PUProtoSetShouldNotifyNextUnlock

- (id)description
{
  v7.receiver = self;
  v7.super_class = PUProtoSetShouldNotifyNextUnlock;
  v3 = [(PUProtoSetShouldNotifyNextUnlock *)&v7 description];
  v4 = [(PUProtoSetShouldNotifyNextUnlock *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithBool:self->_shouldNotify];
  [v3 setObject:v4 forKey:@"shouldNotify"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 8) = self->_shouldNotify;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = self->_shouldNotify == v4[8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end