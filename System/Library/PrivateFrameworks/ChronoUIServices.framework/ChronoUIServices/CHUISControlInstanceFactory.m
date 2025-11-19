@interface CHUISControlInstanceFactory
+ (id)instanceOfType:(unint64_t)a3 instanceIdentity:(id)a4;
+ (id)instanceWithControl:(id)a3 type:(unint64_t)a4 content:(unint64_t)a5;
+ (id)instanceWithIdentity:(id)a3 type:(unint64_t)a4;
- (CHUISControlInstanceFactory)init;
@end

@implementation CHUISControlInstanceFactory

+ (id)instanceOfType:(unint64_t)a3 instanceIdentity:(id)a4
{
  if (a3 - 1 > 2)
  {
    result = sub_1D9328534();
    __break(1u);
  }

  else
  {
    v4 = [objc_allocWithZone(*off_1E8575F68[a3 - 1]) initWithInstanceIdentity_];

    return v4;
  }

  return result;
}

+ (id)instanceWithControl:(id)a3 type:(unint64_t)a4 content:(unint64_t)a5
{
  v9 = objc_allocWithZone(MEMORY[0x1E6994270]);
  v10 = a3;
  v11 = [v9 initWithControl:v10 contentType:a5 hostIdentifier:0 configurationIdentifier:0];
  v12 = [a1 instanceOfType:a4 instanceIdentity:v11];

  return v12;
}

+ (id)instanceWithIdentity:(id)a3 type:(unint64_t)a4
{
  swift_getObjCClassMetadata();
  v6 = a3;
  v7 = sub_1D92FDBD4(v6, a4);

  return v7;
}

- (CHUISControlInstanceFactory)init
{
  v3.receiver = self;
  v3.super_class = CHUISControlInstanceFactory;
  return [(CHUISControlInstanceFactory *)&v3 init];
}

@end