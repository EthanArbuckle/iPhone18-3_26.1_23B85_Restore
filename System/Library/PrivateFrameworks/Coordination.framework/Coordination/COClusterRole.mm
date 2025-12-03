@interface COClusterRole
+ (id)roleForCoordinator;
+ (id)roleForParticipant;
+ (id)roleForUnknown;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRole:(id)role;
- (BOOL)isPrimary;
- (BOOL)satisfiesRole:(id)role;
- (COClusterRole)initWithCoder:(id)coder;
- (COClusterRole)initWithRoleFlags:(unint64_t)flags;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (COClusterRole)initWithRoleFlags:(unint64_t)flags
{
  v5.receiver = self;
  v5.super_class = COClusterRole;
  result = [(COClusterRole *)&v5 init];
  if (result)
  {
    result->_flags = flags;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(COClusterRole *)self isEqualToRole:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToRole:(id)role
{
  roleCopy = role;
  flags = [(COClusterRole *)self flags];
  flags2 = [roleCopy flags];

  return flags == flags2;
}

- (BOOL)satisfiesRole:(id)role
{
  roleCopy = role;
  flags = [(COClusterRole *)self flags];
  v6 = [roleCopy flags] & flags;
  flags2 = [roleCopy flags];

  return v6 == flags2;
}

- (COClusterRole)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = COClusterRole;
  v5 = [(COClusterRole *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"flags"];
    v5->_flags = [v6 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:{-[COClusterRole flags](self, "flags")}];
  [coderCopy encodeObject:v6 forKey:@"flags"];
}

@end