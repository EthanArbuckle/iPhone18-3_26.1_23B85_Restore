@interface CHUISControlInstanceFactory
+ (id)instanceOfType:(unint64_t)type instanceIdentity:(id)identity;
+ (id)instanceWithControl:(id)control type:(unint64_t)type content:(unint64_t)content;
+ (id)instanceWithIdentity:(id)identity type:(unint64_t)type;
- (CHUISControlInstanceFactory)init;
@end

@implementation CHUISControlInstanceFactory

+ (id)instanceOfType:(unint64_t)type instanceIdentity:(id)identity
{
  if (type - 1 > 2)
  {
    result = sub_1D9328534();
    __break(1u);
  }

  else
  {
    initWithInstanceIdentity_ = [objc_allocWithZone(*off_1E8575F68[type - 1]) initWithInstanceIdentity_];

    return initWithInstanceIdentity_;
  }

  return result;
}

+ (id)instanceWithControl:(id)control type:(unint64_t)type content:(unint64_t)content
{
  v9 = objc_allocWithZone(MEMORY[0x1E6994270]);
  controlCopy = control;
  v11 = [v9 initWithControl:controlCopy contentType:content hostIdentifier:0 configurationIdentifier:0];
  v12 = [self instanceOfType:type instanceIdentity:v11];

  return v12;
}

+ (id)instanceWithIdentity:(id)identity type:(unint64_t)type
{
  swift_getObjCClassMetadata();
  identityCopy = identity;
  v7 = sub_1D92FDBD4(identityCopy, type);

  return v7;
}

- (CHUISControlInstanceFactory)init
{
  v3.receiver = self;
  v3.super_class = CHUISControlInstanceFactory;
  return [(CHUISControlInstanceFactory *)&v3 init];
}

@end