@interface IMRKMessageResponseManager
+ (Class)__class;
+ (id)alloc;
+ (id)sharedManager;
@end

@implementation IMRKMessageResponseManager

+ (Class)__class
{
  if (qword_1EAED8AE8 != -1)
  {
    sub_1959D62D0();
  }

  v3 = qword_1EAED8AF0;

  return v3;
}

+ (id)alloc
{
  v3 = objc_msgSend___class(self, a2, v2);

  return [v3 alloc];
}

+ (id)sharedManager
{
  v3 = objc_msgSend___class(self, a2, v2);

  return objc_msgSend_sharedManager(v3, v4, v5);
}

@end