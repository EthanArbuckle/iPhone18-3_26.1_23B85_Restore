@interface CRKApplicationDescriptor
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToApplicationDescriptor:(id)descriptor;
- (CRKApplicationDescriptor)initWithBundleIdentifier:(id)identifier includeIcon:(BOOL)icon includeBadgeIcon:(BOOL)badgeIcon;
- (CRKApplicationDescriptor)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKApplicationDescriptor

- (CRKApplicationDescriptor)initWithBundleIdentifier:(id)identifier includeIcon:(BOOL)icon includeBadgeIcon:(BOOL)badgeIcon
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = CRKApplicationDescriptor;
  v10 = [(CRKApplicationDescriptor *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_bundleIdentifier, identifier);
    v11->_includeIcon = icon;
    v11->_includeBadgeIcon = badgeIcon;
  }

  return v11;
}

- (unint64_t)hash
{
  bundleIdentifier = [(CRKApplicationDescriptor *)self bundleIdentifier];
  v4 = [bundleIdentifier hash];
  v5 = v4 ^ [(CRKApplicationDescriptor *)self includeIcon];
  includeBadgeIcon = [(CRKApplicationDescriptor *)self includeBadgeIcon];

  return v5 ^ includeBadgeIcon;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = [(CRKApplicationDescriptor *)self isEqualToApplicationDescriptor:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToApplicationDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (descriptorCopy)
  {
    bundleIdentifier = [(CRKApplicationDescriptor *)self bundleIdentifier];
    bundleIdentifier2 = [descriptorCopy bundleIdentifier];
    if ((!(bundleIdentifier | bundleIdentifier2) || [bundleIdentifier isEqual:bundleIdentifier2]) && (v7 = -[CRKApplicationDescriptor includeIcon](self, "includeIcon"), v7 == objc_msgSend(descriptorCopy, "includeIcon")))
    {
      includeBadgeIcon = [(CRKApplicationDescriptor *)self includeBadgeIcon];
      v8 = includeBadgeIcon ^ [descriptorCopy includeBadgeIcon] ^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  bundleIdentifier = [(CRKApplicationDescriptor *)self bundleIdentifier];
  if ([(CRKApplicationDescriptor *)self includeIcon])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = v6;
  if ([(CRKApplicationDescriptor *)self includeBadgeIcon])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [v3 stringWithFormat:@"<%@: %p { bundleIdentifier = %@, includeIcon = %@, includeBadgeIcon = %@ }>", v4, self, bundleIdentifier, v7, v8];

  return v9;
}

- (CRKApplicationDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CRKApplicationDescriptor;
  v5 = [(CRKApplicationDescriptor *)&v12 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"includeIcon"];
    v5->_includeIcon = [v9 BOOLValue];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"includeBadgeIcon"];
    v5->_includeBadgeIcon = [v10 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleIdentifier = [(CRKApplicationDescriptor *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKApplicationDescriptor includeIcon](self, "includeIcon")}];
  [coderCopy encodeObject:v6 forKey:@"includeIcon"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKApplicationDescriptor includeBadgeIcon](self, "includeBadgeIcon")}];
  [coderCopy encodeObject:v7 forKey:@"includeBadgeIcon"];
}

@end