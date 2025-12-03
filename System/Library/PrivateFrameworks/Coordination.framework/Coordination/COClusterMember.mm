@interface COClusterMember
+ (id)memberForCurrentDevice;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMember:(id)member;
- (BOOL)isSameDeviceAsMember:(id)member;
- (COClusterMember)initWithCoder:(id)coder;
- (COClusterMember)initWithHomeKitIdentifier:(id)identifier;
- (COClusterMember)initWithType:(unint64_t)type deviceMetadata:(id)metadata;
- (id)IDSIdentifier;
- (id)description;
- (id)homeKitIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COClusterMember

+ (id)memberForCurrentDevice
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"legacyIdentifier";
  v7[0] = &stru_2857AE980;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v3 = [[COClusterMember alloc] initWithType:1 deviceMetadata:v2];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (COClusterMember)initWithHomeKitIdentifier:(id)identifier
{
  v14[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = COClusterMember;
  v5 = [(COClusterMember *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_memberType = 3;
    v13 = @"accessory";
    uUIDString = [identifierCopy UUIDString];
    v14[0] = uUIDString;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    deviceMetadata = v6->_deviceMetadata;
    v6->_deviceMetadata = v8;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (COClusterMember)initWithType:(unint64_t)type deviceMetadata:(id)metadata
{
  metadataCopy = metadata;
  v12.receiver = self;
  v12.super_class = COClusterMember;
  v7 = [(COClusterMember *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_memberType = type;
    v9 = [metadataCopy copy];
    deviceMetadata = v8->_deviceMetadata;
    v8->_deviceMetadata = v9;
  }

  return v8;
}

- (id)description
{
  deviceMetadata = [(COClusterMember *)self deviceMetadata];
  v4 = [deviceMetadata description];

  newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
  v6 = [v4 componentsSeparatedByCharactersInSet:newlineCharacterSet];

  v7 = [v6 componentsJoinedByString:&stru_2857AE980];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"<%@: %p, type = %lu, metadata=%@>", v10, self, -[COClusterMember memberType](self, "memberType"), v7];

  return v11;
}

- (id)IDSIdentifier
{
  deviceMetadata = [(COClusterMember *)self deviceMetadata];
  v3 = [deviceMetadata objectForKey:@"IDS"];

  return v3;
}

- (id)homeKitIdentifier
{
  deviceMetadata = [(COClusterMember *)self deviceMetadata];
  v3 = [deviceMetadata objectForKey:@"accessory"];

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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(COClusterMember *)self isEqualToMember:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToMember:(id)member
{
  memberCopy = member;
  memberType = [(COClusterMember *)self memberType];
  if (memberType == [memberCopy memberType])
  {
    deviceMetadata = [(COClusterMember *)self deviceMetadata];
    deviceMetadata2 = [memberCopy deviceMetadata];
    if ([deviceMetadata isEqual:deviceMetadata2])
    {
      isStale = [(COClusterMember *)self isStale];
      v9 = isStale ^ [memberCopy isStale] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)isSameDeviceAsMember:(id)member
{
  memberCopy = member;
  deviceMetadata = [(COClusterMember *)self deviceMetadata];
  deviceMetadata2 = [memberCopy deviceMetadata];

  LOBYTE(memberCopy) = [deviceMetadata isEqual:deviceMetadata2];
  return memberCopy;
}

- (unint64_t)hash
{
  deviceMetadata = [(COClusterMember *)self deviceMetadata];
  v3 = [deviceMetadata hash];

  return v3;
}

- (COClusterMember)initWithCoder:(id)coder
{
  v31 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  if ([coderCopy containsValueForKey:@"deviceMetadata"])
  {
    [coderCopy decodeObjectOfClasses:v8 forKey:@"deviceMetadata"];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = v27 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v22 = v8;
      v23 = v5;
      v12 = *v25;
      v13 = 1;
      do
      {
        v14 = 0;
        do
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = [v9 objectForKey:*(*(&v24 + 1) + 8 * v14)];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v13 = 0;
          }

          ++v14;
        }

        while (v11 != v14);
        v11 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v11);
      v16 = v9;
      v8 = v22;
      v5 = v23;
    }

    else
    {
      v13 = 1;
      v16 = v9;
    }
  }

  else
  {
    if (![coderCopy containsValueForKey:@"identifier"])
    {
      v16 = 0;
      selfCopy = 0;
      goto LABEL_22;
    }

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v9 = v17;
    v13 = v17 != 0;
    if (v17)
    {
      v28 = @"legacyIdentifier";
      v29 = v17;
      v13 = 1;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    }

    else
    {
      v16 = 0;
    }
  }

  selfCopy = 0;
  if (v13 && v16)
  {
    self = -[COClusterMember initWithType:deviceMetadata:](self, "initWithType:deviceMetadata:", [v5 unsignedIntegerValue], v16);
    selfCopy = self;
  }

LABEL_22:
  v19 = selfCopy;

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[COClusterMember memberType](self, "memberType")}];
  [coderCopy encodeObject:v4 forKey:@"type"];
  deviceMetadata = [(COClusterMember *)self deviceMetadata];
  [coderCopy encodeObject:deviceMetadata forKey:@"deviceMetadata"];

  deviceMetadata2 = [(COClusterMember *)self deviceMetadata];
  v7 = [deviceMetadata2 objectForKey:@"legacyIdentifier"];

  if (v7)
  {
    [coderCopy encodeObject:v7 forKey:@"identifier"];
  }
}

@end