@interface DMFControlSessionIdentifier
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToControlSessionIdentifier:(id)identifier;
- (DMFControlGroupIdentifier)groupIdentifier;
- (DMFControlSessionIdentifier)initWithCoder:(id)coder;
- (DMFControlSessionIdentifier)initWithString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)stringValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFControlSessionIdentifier

- (id)stringValue
{
  v3 = MEMORY[0x1E696AEC0];
  organizationUUID = [(DMFControlGroupIdentifier *)self organizationUUID];
  uUIDString = [organizationUUID UUIDString];
  groupID = [(DMFControlGroupIdentifier *)self groupID];
  v7.s_addr = self->_leaderIP;
  v8 = [v3 stringWithFormat:@"%@:%d:%s:%d", uUIDString, groupID, inet_ntoa(v7), -[DMFControlSessionIdentifier port](self, "port")];

  return v8;
}

- (DMFControlGroupIdentifier)groupIdentifier
{
  v3 = [DMFControlGroupIdentifier alloc];
  organizationUUID = [(DMFControlGroupIdentifier *)self organizationUUID];
  v5 = [(DMFControlGroupIdentifier *)v3 initWithOrganizationUUID:organizationUUID groupID:[(DMFControlGroupIdentifier *)self groupID]];

  return v5;
}

- (DMFControlSessionIdentifier)initWithString:(id)string
{
  stringCopy = string;
  if (!stringCopy)
  {
    [(DMFControlSessionIdentifier *)a2 initWithString:?];
  }

  v6 = [stringCopy componentsSeparatedByString:@":"];
  v7 = objc_alloc(MEMORY[0x1E696AFB0]);
  firstObject = [v6 firstObject];
  v9 = [v7 initWithUUIDString:firstObject];

  if (v9)
  {
    if ([v6 count] < 2)
    {
      intValue = 0;
    }

    else
    {
      v10 = [v6 objectAtIndexedSubscript:1];
      intValue = [v10 intValue];
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
      intValue2 = [v16 intValue];
    }

    else
    {
      intValue2 = 3283;
    }

    self = [(DMFControlSessionIdentifier *)self initWithOrganizationUUID:v9 groupID:intValue leaderIP:v15 port:intValue2];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (unint64_t)hash
{
  organizationUUID = [(DMFControlGroupIdentifier *)self organizationUUID];
  v4 = [organizationUUID hash];
  v5 = v4 ^ [(DMFControlGroupIdentifier *)self groupID];
  leaderIP = [(DMFControlSessionIdentifier *)self leaderIP];
  v7 = leaderIP ^ [(DMFControlSessionIdentifier *)self port];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = DMFControlSessionIdentifier;
  if ([(DMFControlGroupIdentifier *)&v7 isEqual:equalCopy])
  {
    v5 = [(DMFControlSessionIdentifier *)self isEqualToControlSessionIdentifier:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToControlSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  leaderIP = [(DMFControlSessionIdentifier *)self leaderIP];
  if (leaderIP == [identifierCopy leaderIP])
  {
    port = [(DMFControlSessionIdentifier *)self port];
    v7 = port == [identifierCopy port];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  organizationUUID = [(DMFControlGroupIdentifier *)self organizationUUID];
  v6 = [v4 initWithOrganizationUUID:organizationUUID groupID:-[DMFControlGroupIdentifier groupID](self leaderIP:"groupID") port:{-[DMFControlSessionIdentifier leaderIP](self, "leaderIP"), -[DMFControlSessionIdentifier port](self, "port")}];

  return v6;
}

- (DMFControlSessionIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = DMFControlSessionIdentifier;
  v5 = [(DMFControlGroupIdentifier *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"leaderIP"];
    v5->_leaderIP = [v6 unsignedIntegerValue];

    if ([coderCopy containsValueForKey:@"port"])
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"port"];
      v5->_port = [v7 unsignedIntegerValue];
    }

    else
    {
      v5->_port = 3283;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = DMFControlSessionIdentifier;
  coderCopy = coder;
  [(DMFControlGroupIdentifier *)&v7 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DMFControlSessionIdentifier leaderIP](self, "leaderIP", v7.receiver, v7.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"leaderIP"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[DMFControlSessionIdentifier port](self, "port")}];
  [coderCopy encodeObject:v6 forKey:@"port"];
}

- (void)initWithString:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMFControlSessionIdentifier.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"string"}];
}

@end