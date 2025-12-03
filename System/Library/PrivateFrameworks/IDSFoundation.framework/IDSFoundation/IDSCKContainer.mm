@interface IDSCKContainer
+ (Class)__class;
+ (IDSCKContainer)containerWithIdentifier:(id)identifier;
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

+ (IDSCKContainer)containerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [CUTWeakLinkClass() containerWithIdentifier:identifierCopy];

  return v4;
}

@end