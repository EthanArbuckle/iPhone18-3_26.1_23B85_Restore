@interface CRFinishedEditingCommand
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)commandDirection;
@end

@implementation CRFinishedEditingCommand

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(CRFinishedEditingCommand);
  userInfo = [(CRFinishedEditingCommand *)self userInfo];
  v7 = [userInfo copyWithZone:zone];
  [(CRFinishedEditingCommand *)v5 setUserInfo:v7];

  [(CRFinishedEditingCommand *)v5 setCommandDirection:[(CRFinishedEditingCommand *)self commandDirection]];
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