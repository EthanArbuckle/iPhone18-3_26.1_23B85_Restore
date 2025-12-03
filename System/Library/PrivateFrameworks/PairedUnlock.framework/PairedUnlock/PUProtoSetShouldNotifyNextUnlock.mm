@interface PUProtoSetShouldNotifyNextUnlock
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation PUProtoSetShouldNotifyNextUnlock

- (id)description
{
  v7.receiver = self;
  v7.super_class = PUProtoSetShouldNotifyNextUnlock;
  v3 = [(PUProtoSetShouldNotifyNextUnlock *)&v7 description];
  dictionaryRepresentation = [(PUProtoSetShouldNotifyNextUnlock *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithBool:self->_shouldNotify];
  [v3 setObject:v4 forKey:@"shouldNotify"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 8) = self->_shouldNotify;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = self->_shouldNotify == equalCopy[8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end