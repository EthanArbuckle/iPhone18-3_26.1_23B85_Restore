@interface MRDAVRoute
+ (MRDAVRoute)allocWithZone:(_NSZone *)zone;
- (BOOL)matchesUniqueIdentifier:(id)identifier;
- (MRDAVRoute)initWithDictionary:(id)dictionary;
@end

@implementation MRDAVRoute

+ (MRDAVRoute)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [(MRDAVRoute *)MRDMediaServerAVRoute allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MRDAVRoute;
    return objc_msgSendSuper2(&v6, "allocWithZone:", zone);
  }
}

- (MRDAVRoute)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [NSString stringWithFormat:@"%s is abstract", "[MRDAVRoute initWithDictionary:]"];
  v5 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (BOOL)matchesUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  uniqueIdentifier = [(MRDAVRoute *)self uniqueIdentifier];
  v6 = [uniqueIdentifier isEqualToString:identifierCopy];

  return v6;
}

@end