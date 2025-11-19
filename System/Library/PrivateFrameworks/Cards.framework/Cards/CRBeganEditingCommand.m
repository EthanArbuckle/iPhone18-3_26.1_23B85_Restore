@interface CRBeganEditingCommand
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)commandDirection;
@end

@implementation CRBeganEditingCommand

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(CRBeganEditingCommand);
  v6 = [(CRBeganEditingCommand *)self userInfo];
  v7 = [v6 copyWithZone:a3];
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