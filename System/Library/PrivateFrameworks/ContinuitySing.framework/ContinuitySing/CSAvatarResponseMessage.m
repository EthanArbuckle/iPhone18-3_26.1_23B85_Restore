@interface CSAvatarResponseMessage
+ (id)requiredParameters;
- (CSAvatarResponseMessage)initWithAvatar:(id)a3;
- (CSAvatarResponseMessage)initWithMessage:(id)a3;
- (id)dictionaryRepresentation;
@end

@implementation CSAvatarResponseMessage

+ (id)requiredParameters
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CSAvatarResponseMessage;
  v2 = objc_msgSendSuper2(&v5, sel_requiredParameters);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"Avatar"];

  return v3;
}

- (CSAvatarResponseMessage)initWithAvatar:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CSAvatarResponseMessage;
  v6 = [(CSAvatarResponseMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_avatar, a3);
  }

  return v7;
}

- (CSAvatarResponseMessage)initWithMessage:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CSAvatarResponseMessage;
  v5 = [(CSMessage *)&v10 initWithMessage:v4];
  if (v5)
  {
    CFDataGetTypeID();
    v6 = CFDictionaryGetTypedValue();
    if (v6)
    {
      v7 = [MEMORY[0x277D755B0] imageWithData:v6];
      avatar = v5->_avatar;
      v5->_avatar = v7;
    }
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v8.receiver = self;
  v8.super_class = CSAvatarResponseMessage;
  v3 = [(CSMessage *)&v8 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  avatar = self->_avatar;
  if (avatar)
  {
    v6 = UIImagePNGRepresentation(avatar);
    [v4 setObject:v6 forKeyedSubscript:@"Avatar"];
  }

  return v4;
}

@end