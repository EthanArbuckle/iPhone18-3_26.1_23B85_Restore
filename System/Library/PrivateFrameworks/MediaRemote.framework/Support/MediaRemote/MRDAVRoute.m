@interface MRDAVRoute
+ (MRDAVRoute)allocWithZone:(_NSZone *)a3;
- (BOOL)matchesUniqueIdentifier:(id)a3;
- (MRDAVRoute)initWithDictionary:(id)a3;
@end

@implementation MRDAVRoute

+ (MRDAVRoute)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [(MRDAVRoute *)MRDMediaServerAVRoute allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MRDAVRoute;
    return objc_msgSendSuper2(&v6, "allocWithZone:", a3);
  }
}

- (MRDAVRoute)initWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [NSString stringWithFormat:@"%s is abstract", "[MRDAVRoute initWithDictionary:]"];
  v5 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (BOOL)matchesUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MRDAVRoute *)self uniqueIdentifier];
  v6 = [v5 isEqualToString:v4];

  return v6;
}

@end