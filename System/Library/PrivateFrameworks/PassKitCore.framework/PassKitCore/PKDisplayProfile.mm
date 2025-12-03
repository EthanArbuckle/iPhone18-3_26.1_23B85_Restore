@interface PKDisplayProfile
+ (Class)classForDisplayProfileType:(int64_t)type;
+ (id)displayProfileOfType:(int64_t)type withDictionary:(id)dictionary bundle:(id)bundle;
- (PKDisplayProfile)initWithCoder:(id)coder;
- (PKDisplayProfile)initWithDictionary:(id)dictionary bundle:(id)bundle;
@end

@implementation PKDisplayProfile

+ (id)displayProfileOfType:(int64_t)type withDictionary:(id)dictionary bundle:(id)bundle
{
  dictionaryCopy = dictionary;
  bundleCopy = bundle;
  v10 = [self classForDisplayProfileType:type];
  if (v10)
  {
    v11 = [[v10 alloc] initWithDictionary:dictionaryCopy bundle:bundleCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (Class)classForDisplayProfileType:(int64_t)type
{
  if (type)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_class();
  }

  return v4;
}

- (PKDisplayProfile)initWithDictionary:(id)dictionary bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = PKDisplayProfile;
  return [(PKDisplayProfile *)&v5 init:dictionary];
}

- (PKDisplayProfile)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = PKDisplayProfile;
  return [(PKDisplayProfile *)&v4 init];
}

@end