@interface DMFControlSessionIdentifier
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToControlSessionIdentifier:(id)a3;
- (DMFControlGroupIdentifier)groupIdentifier;
- (DMFControlSessionIdentifier)initWithCoder:(id)a3;
- (DMFControlSessionIdentifier)initWithString:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)stringValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFControlSessionIdentifier

- (id)stringValue
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(DMFControlGroupIdentifier *)self organizationUUID];
  v5 = [v4 UUIDString];
  v6 = [(DMFControlGroupIdentifier *)self groupID];
  v7.s_addr = self->_leaderIP;
  v8 = [v3 stringWithFormat:@"%@:%d:%s:%d", v5, v6, inet_ntoa(v7), -[DMFControlSessionIdentifier port](self, "port")];

  return v8;
}

- (DMFControlGroupIdentifier)groupIdentifier
{
  v3 = [DMFControlGroupIdentifier alloc];
  v4 = [(DMFControlGroupIdentifier *)self organizationUUID];
  v5 = [(DMFControlGroupIdentifier *)v3 initWithOrganizationUUID:v4 groupID:[(DMFControlGroupIdentifier *)self groupID]];

  return v5;
}

- (DMFControlSessionIdentifier)initWithString:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(DMFControlSessionIdentifier *)a2 initWithString:?];
  }

  v6 = [v5 componentsSeparatedByString:@":"];
  v7 = objc_alloc(MEMORY[0x1E696AFB0]);
  v8 = [v6 firstObject];
  v9 = [v7 initWithUUIDString:v8];

  if (v9)
  {
    if ([v6 count] < 2)
    {
      v11 = 0;
    }

    else
    {
      v10 = [v6 objectAtIndexedSubscript:1];
      v11 = [v10 intValue];
    }

    if ([v6 count] < 3)
    {
      v15 = 0;
    }

    else
    {
      v13 = [v6 objectAtIndexedSubscript:2];
      v14 = inet_addr([v13 UTF8String]);

      if (v14 == -1)
      {
        v15 = 0;
      }

      else
      {
        v15 = v14;
      }
    }

    if ([v6 count] < 4)
    {
      v16 = 0;
    }

    else
    {
      v16 = [v6 objectAtIndexedSubscript:3];
    }

    if ([v16 length])
    {
      v17 = [v16 intValue];
    }

    else
    {
      v17 = 3283;
    }

    self = [(DMFControlSessionIdentifier *)self initWithOrganizationUUID:v9 groupID:v11 leaderIP:v15 port:v17];

    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(DMFControlGroupIdentifier *)self organizationUUID];
  v4 = [v3 hash];
  v5 = v4 ^ [(DMFControlGroupIdentifier *)self groupID];
  v6 = [(DMFControlSessionIdentifier *)self leaderIP];
  v7 = v6 ^ [(DMFControlSessionIdentifier *)self port];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = DMFControlSessionIdentifier;
  if ([(DMFControlGroupIdentifier *)&v7 isEqual:v4])
  {
    v5 = [(DMFControlSessionIdentifier *)self isEqualToControlSessionIdentifier:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToControlSessionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DMFControlSessionIdentifier *)self leaderIP];
  if (v5 == [v4 leaderIP])
  {
    v6 = [(DMFControlSessionIdentifier *)self port];
    v7 = v6 == [v4 port];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(DMFControlGroupIdentifier *)self organizationUUID];
  v6 = [v4 initWithOrganizationUUID:v5 groupID:-[DMFControlGroupIdentifier groupID](self leaderIP:"groupID") port:{-[DMFControlSessionIdentifier leaderIP](self, "leaderIP"), -[DMFControlSessionIdentifier port](self, "port")}];

  return v6;
}

- (DMFControlSessionIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DMFControlSessionIdentifier;
  v5 = [(DMFControlGroupIdentifier *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"leaderIP"];
    v5->_leaderIP = [v6 unsignedIntegerValue];

    if ([v4 containsValueForKey:@"port"])
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"port"];
      v5->_port = [v7 unsignedIntegerValue];
    }

    else
    {
      v5->_port = 3283;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = DMFControlSessionIdentifier;
  v4 = a3;
  [(DMFControlGroupIdentifier *)&v7 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DMFControlSessionIdentifier leaderIP](self, "leaderIP", v7.receiver, v7.super_class)}];
  [v4 encodeObject:v5 forKey:@"leaderIP"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[DMFControlSessionIdentifier port](self, "port")}];
  [v4 encodeObject:v6 forKey:@"port"];
}

- (void)initWithString:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMFControlSessionIdentifier.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"string"}];
}

@end