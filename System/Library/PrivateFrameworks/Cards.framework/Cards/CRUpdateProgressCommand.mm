@interface CRUpdateProgressCommand
- (CRUpdateProgressCommand)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CRUpdateProgressCommand

- (CRUpdateProgressCommand)init
{
  v3.receiver = self;
  v3.super_class = CRUpdateProgressCommand;
  result = [(CRUpdateProgressCommand *)&v3 init];
  if (result)
  {
    result->_animatesProgress = 1;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(CRUpdateProgressCommand);
  userInfo = [(CRUpdateProgressCommand *)self userInfo];
  v7 = [userInfo copyWithZone:zone];
  [(CRUpdateProgressCommand *)v5 setUserInfo:v7];

  [(CRUpdateProgressCommand *)v5 setCommandDirection:[(CRUpdateProgressCommand *)self commandDirection]];
  return v5;
}

@end