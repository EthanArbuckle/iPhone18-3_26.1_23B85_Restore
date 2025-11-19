@interface DMFControlGroupIdentifier
+ (id)new;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToGroupIdentifier:(id)a3;
- (DMFControlGroupIdentifier)init;
- (DMFControlGroupIdentifier)initWithCoder:(id)a3;
- (DMFControlGroupIdentifier)initWithOrganizationUUID:(id)a3 groupID:(unsigned __int16)a4;
- (DMFControlGroupIdentifier)initWithString:(id)a3;
- (NSString)stringValue;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFControlGroupIdentifier

+ (id)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:a1 file:@"DMFControlGroupIdentifier.m" lineNumber:16 description:{@"%@ cannot call %@", a1, v5}];

  return 0;
}

- (DMFControlGroupIdentifier)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"DMFControlGroupIdentifier.m" lineNumber:21 description:{@"%@ cannot call %@", v5, v6}];

  return 0;
}

- (DMFControlGroupIdentifier)initWithString:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(DMFControlGroupIdentifier *)a2 initWithString:?];
  }

  v6 = [v5 componentsSeparatedByString:@":"];
  v7 = objc_alloc(MEMORY[0x1E696AFB0]);
  v8 = [v6 firstObject];
  v9 = [v7 initWithUUIDString:v8];

  if ([v6 count] < 2)
  {
    v11 = 0;
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v10 = [v6 objectAtIndexedSubscript:1];
  v11 = [v10 intValue];

  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_5:
  self = [(DMFControlGroupIdentifier *)self initWithOrganizationUUID:v9 groupID:v11];
  v12 = self;
LABEL_8:

  return v12;
}

- (DMFControlGroupIdentifier)initWithOrganizationUUID:(id)a3 groupID:(unsigned __int16)a4
{
  v8 = a3;
  if (!v8)
  {
    [DMFControlGroupIdentifier initWithOrganizationUUID:a2 groupID:self];
  }

  v12.receiver = self;
  v12.super_class = DMFControlGroupIdentifier;
  v9 = [(DMFControlGroupIdentifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_organizationUUID, a3);
    v10->_groupID = a4;
  }

  return v10;
}

- (NSString)stringValue
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(DMFControlGroupIdentifier *)self organizationUUID];
  v5 = [v4 UUIDString];
  v6 = [v3 stringWithFormat:@"%@:%d", v5, -[DMFControlGroupIdentifier groupID](self, "groupID")];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(DMFControlGroupIdentifier *)self stringValue];
  v6 = [v3 stringWithFormat:@"<%@: %p { identifier =  %@ }>", v4, self, v5];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(DMFControlGroupIdentifier *)self organizationUUID];
  v4 = [v3 hash];
  v5 = [(DMFControlGroupIdentifier *)self groupID];

  return v4 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(DMFControlGroupIdentifier *)self isEqualToGroupIdentifier:v4];
  }

  return v5;
}

- (BOOL)isEqualToGroupIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DMFControlGroupIdentifier *)self organizationUUID];
  v6 = [v4 organizationUUID];
  v7 = v5;
  v8 = v6;
  if (v7 | v8 && (v9 = [v7 isEqual:v8], v8, v7, !v9))
  {
    v11 = 0;
  }

  else
  {
    v10 = [(DMFControlGroupIdentifier *)self groupID];
    v11 = v10 == [v4 groupID];
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(DMFControlGroupIdentifier *)self organizationUUID];
  v6 = [v4 initWithOrganizationUUID:v5 groupID:{-[DMFControlGroupIdentifier groupID](self, "groupID")}];

  return v6;
}

- (DMFControlGroupIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DMFControlGroupIdentifier;
  v5 = [(DMFControlGroupIdentifier *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"organizationUUID"];
    organizationUUID = v5->_organizationUUID;
    v5->_organizationUUID = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupID"];
    v5->_groupID = [v9 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DMFControlGroupIdentifier *)self organizationUUID];
  [v4 encodeObject:v5 forKey:@"organizationUUID"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[DMFControlGroupIdentifier groupID](self, "groupID")}];
  [v4 encodeObject:v6 forKey:@"groupID"];
}

- (void)initWithString:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMFControlGroupIdentifier.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"string"}];
}

- (void)initWithOrganizationUUID:(uint64_t)a1 groupID:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMFControlGroupIdentifier.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"uuid"}];
}

@end