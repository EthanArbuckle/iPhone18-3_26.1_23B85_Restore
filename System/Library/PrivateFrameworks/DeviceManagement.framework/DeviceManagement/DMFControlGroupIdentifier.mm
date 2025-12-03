@interface DMFControlGroupIdentifier
+ (id)new;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToGroupIdentifier:(id)identifier;
- (DMFControlGroupIdentifier)init;
- (DMFControlGroupIdentifier)initWithCoder:(id)coder;
- (DMFControlGroupIdentifier)initWithOrganizationUUID:(id)d groupID:(unsigned __int16)iD;
- (DMFControlGroupIdentifier)initWithString:(id)string;
- (NSString)stringValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFControlGroupIdentifier

+ (id)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"DMFControlGroupIdentifier.m" lineNumber:16 description:{@"%@ cannot call %@", self, v5}];

  return 0;
}

- (DMFControlGroupIdentifier)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"DMFControlGroupIdentifier.m" lineNumber:21 description:{@"%@ cannot call %@", v5, v6}];

  return 0;
}

- (DMFControlGroupIdentifier)initWithString:(id)string
{
  stringCopy = string;
  if (!stringCopy)
  {
    [(DMFControlGroupIdentifier *)a2 initWithString:?];
  }

  v6 = [stringCopy componentsSeparatedByString:@":"];
  v7 = objc_alloc(MEMORY[0x1E696AFB0]);
  firstObject = [v6 firstObject];
  v9 = [v7 initWithUUIDString:firstObject];

  if ([v6 count] < 2)
  {
    intValue = 0;
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_7:
    selfCopy = 0;
    goto LABEL_8;
  }

  v10 = [v6 objectAtIndexedSubscript:1];
  intValue = [v10 intValue];

  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_5:
  self = [(DMFControlGroupIdentifier *)self initWithOrganizationUUID:v9 groupID:intValue];
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (DMFControlGroupIdentifier)initWithOrganizationUUID:(id)d groupID:(unsigned __int16)iD
{
  dCopy = d;
  if (!dCopy)
  {
    [DMFControlGroupIdentifier initWithOrganizationUUID:a2 groupID:self];
  }

  v12.receiver = self;
  v12.super_class = DMFControlGroupIdentifier;
  v9 = [(DMFControlGroupIdentifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_organizationUUID, d);
    v10->_groupID = iD;
  }

  return v10;
}

- (NSString)stringValue
{
  v3 = MEMORY[0x1E696AEC0];
  organizationUUID = [(DMFControlGroupIdentifier *)self organizationUUID];
  uUIDString = [organizationUUID UUIDString];
  v6 = [v3 stringWithFormat:@"%@:%d", uUIDString, -[DMFControlGroupIdentifier groupID](self, "groupID")];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  stringValue = [(DMFControlGroupIdentifier *)self stringValue];
  v6 = [v3 stringWithFormat:@"<%@: %p { identifier =  %@ }>", v4, self, stringValue];

  return v6;
}

- (unint64_t)hash
{
  organizationUUID = [(DMFControlGroupIdentifier *)self organizationUUID];
  v4 = [organizationUUID hash];
  groupID = [(DMFControlGroupIdentifier *)self groupID];

  return v4 ^ groupID;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(DMFControlGroupIdentifier *)self isEqualToGroupIdentifier:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToGroupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  organizationUUID = [(DMFControlGroupIdentifier *)self organizationUUID];
  organizationUUID2 = [identifierCopy organizationUUID];
  v7 = organizationUUID;
  v8 = organizationUUID2;
  if (v7 | v8 && (v9 = [v7 isEqual:v8], v8, v7, !v9))
  {
    v11 = 0;
  }

  else
  {
    groupID = [(DMFControlGroupIdentifier *)self groupID];
    v11 = groupID == [identifierCopy groupID];
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  organizationUUID = [(DMFControlGroupIdentifier *)self organizationUUID];
  v6 = [v4 initWithOrganizationUUID:organizationUUID groupID:{-[DMFControlGroupIdentifier groupID](self, "groupID")}];

  return v6;
}

- (DMFControlGroupIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = DMFControlGroupIdentifier;
  v5 = [(DMFControlGroupIdentifier *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"organizationUUID"];
    organizationUUID = v5->_organizationUUID;
    v5->_organizationUUID = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupID"];
    v5->_groupID = [v9 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  organizationUUID = [(DMFControlGroupIdentifier *)self organizationUUID];
  [coderCopy encodeObject:organizationUUID forKey:@"organizationUUID"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[DMFControlGroupIdentifier groupID](self, "groupID")}];
  [coderCopy encodeObject:v6 forKey:@"groupID"];
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