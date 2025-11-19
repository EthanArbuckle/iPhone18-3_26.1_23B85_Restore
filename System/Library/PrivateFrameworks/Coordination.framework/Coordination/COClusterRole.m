@interface COClusterRole
+ (id)roleForCoordinator;
+ (id)roleForParticipant;
+ (id)roleForUnknown;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRole:(id)a3;
- (BOOL)isPrimary;
- (BOOL)satisfiesRole:(id)a3;
- (COClusterRole)initWithCoder:(id)a3;
- (COClusterRole)initWithRoleFlags:(unint64_t)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COClusterRole

+ (id)roleForCoordinator
{
  v2 = [[COClusterRole alloc] initWithRoleFlags:8];

  return v2;
}

+ (id)roleForUnknown
{
  v2 = [[COClusterRole alloc] initWithRoleFlags:0];

  return v2;
}

+ (id)roleForParticipant
{
  v2 = [[COClusterRole alloc] initWithRoleFlags:16];

  return v2;
}

- (COClusterRole)initWithRoleFlags:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = COClusterRole;
  result = [(COClusterRole *)&v5 init];
  if (result)
  {
    result->_flags = a3;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p, flags = %#lx>", v5, self, -[COClusterRole flags](self, "flags")];

  return v6;
}

- (BOOL)isPrimary
{
  if (([(COClusterRole *)self flags]& 1) != 0)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    return ([(COClusterRole *)self flags]>> 1) & 1;
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(COClusterRole *)self isEqualToRole:v4];
  }

  return v5;
}

- (BOOL)isEqualToRole:(id)a3
{
  v4 = a3;
  v5 = [(COClusterRole *)self flags];
  v6 = [v4 flags];

  return v5 == v6;
}

- (BOOL)satisfiesRole:(id)a3
{
  v4 = a3;
  v5 = [(COClusterRole *)self flags];
  v6 = [v4 flags] & v5;
  v7 = [v4 flags];

  return v6 == v7;
}

- (COClusterRole)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = COClusterRole;
  v5 = [(COClusterRole *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"flags"];
    v5->_flags = [v6 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{-[COClusterRole flags](self, "flags")}];
  [v5 encodeObject:v6 forKey:@"flags"];
}

@end