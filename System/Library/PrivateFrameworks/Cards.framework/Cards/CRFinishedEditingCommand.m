@interface CRFinishedEditingCommand
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)commandDirection;
@end

@implementation CRFinishedEditingCommand

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(CRFinishedEditingCommand);
  v6 = [(CRFinishedEditingCommand *)self userInfo];
  v7 = [v6 copyWithZone:a3];
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