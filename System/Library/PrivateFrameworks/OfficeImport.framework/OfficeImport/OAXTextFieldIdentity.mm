@interface OAXTextFieldIdentity
+ (id)identityWithGuid:(id)guid type:(id)type;
@end

@implementation OAXTextFieldIdentity

+ (id)identityWithGuid:(id)guid type:(id)type
{
  guidCopy = guid;
  typeCopy = type;
  v7 = [(OITSUPair *)[OAXTextFieldIdentity alloc] initWithFirst:guidCopy second:typeCopy];

  return v7;
}

@end