@interface PKDisplayProfile
+ (Class)classForDisplayProfileType:(int64_t)a3;
+ (id)displayProfileOfType:(int64_t)a3 withDictionary:(id)a4 bundle:(id)a5;
- (PKDisplayProfile)initWithCoder:(id)a3;
- (PKDisplayProfile)initWithDictionary:(id)a3 bundle:(id)a4;
@end

@implementation PKDisplayProfile

+ (id)displayProfileOfType:(int64_t)a3 withDictionary:(id)a4 bundle:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a1 classForDisplayProfileType:a3];
  if (v10)
  {
    v11 = [[v10 alloc] initWithDictionary:v8 bundle:v9];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (Class)classForDisplayProfileType:(int64_t)a3
{
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_class();
  }

  return v4;
}

- (PKDisplayProfile)initWithDictionary:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = PKDisplayProfile;
  return [(PKDisplayProfile *)&v5 init:a3];
}

- (PKDisplayProfile)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKDisplayProfile;
  return [(PKDisplayProfile *)&v4 init];
}

@end