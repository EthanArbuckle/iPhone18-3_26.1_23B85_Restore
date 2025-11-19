@interface IDSCKContainer
+ (Class)__class;
+ (IDSCKContainer)containerWithIdentifier:(id)a3;
@end

@implementation IDSCKContainer

+ (Class)__class
{
  if (qword_1EB2BBD68 != -1)
  {
    sub_1A7E184AC();
  }

  v3 = qword_1EB2BBD60;

  return v3;
}

+ (IDSCKContainer)containerWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [CUTWeakLinkClass() containerWithIdentifier:v3];

  return v4;
}

@end