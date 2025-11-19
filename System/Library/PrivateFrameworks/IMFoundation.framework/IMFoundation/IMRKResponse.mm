@interface IMRKResponse
+ (Class)__class;
+ (id)alloc;
@end

@implementation IMRKResponse

+ (Class)__class
{
  if (qword_1EAED9380 != -1)
  {
    sub_1959D62E4();
  }

  v3 = qword_1EAED9378;

  return v3;
}

+ (id)alloc
{
  v3 = objc_msgSend___class(a1, a2, v2);

  return [v3 alloc];
}

@end