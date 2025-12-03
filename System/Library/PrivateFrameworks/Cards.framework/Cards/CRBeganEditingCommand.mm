@interface CRBeganEditingCommand
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)commandDirection;
@end

@implementation CRBeganEditingCommand

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(CRBeganEditingCommand);
  userInfo = [(CRBeganEditingCommand *)self userInfo];
  v7 = [userInfo copyWithZone:zone];
  [(CRBeganEditingCommand *)v5 setUserInfo:v7];

  [(CRBeganEditingCommand *)v5 setCommandDirection:[(CRBeganEditingCommand *)self commandDirection]];
  return v5;
}

- (unint64_t)commandDirection
{
  if (self->_commandDirection)
  {
    return self->_commandDirection;
  }

  else
  {
    return 2;
  }
}

@end