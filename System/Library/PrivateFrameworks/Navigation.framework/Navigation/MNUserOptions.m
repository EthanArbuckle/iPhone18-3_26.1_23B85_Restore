@interface MNUserOptions
- (MNUserOptions)init;
- (MNUserOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MNUserOptions

- (MNUserOptions)init
{
  v6.receiver = self;
  v6.super_class = MNUserOptions;
  v2 = [(MNUserOptions *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (MNUserOptions)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = MNUserOptions;
  v3 = [(MNUserOptions *)&v7 init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [MNUserOptions allocWithZone:a3];

  return [(MNUserOptions *)v3 init];
}

@end