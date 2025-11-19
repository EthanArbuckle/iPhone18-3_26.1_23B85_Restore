@interface CRKApplicationDescriptor
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToApplicationDescriptor:(id)a3;
- (CRKApplicationDescriptor)initWithBundleIdentifier:(id)a3 includeIcon:(BOOL)a4 includeBadgeIcon:(BOOL)a5;
- (CRKApplicationDescriptor)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKApplicationDescriptor

- (CRKApplicationDescriptor)initWithBundleIdentifier:(id)a3 includeIcon:(BOOL)a4 includeBadgeIcon:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = CRKApplicationDescriptor;
  v10 = [(CRKApplicationDescriptor *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_bundleIdentifier, a3);
    v11->_includeIcon = a4;
    v11->_includeBadgeIcon = a5;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(CRKApplicationDescriptor *)self bundleIdentifier];
  v4 = [v3 hash];
  v5 = v4 ^ [(CRKApplicationDescriptor *)self includeIcon];
  v6 = [(CRKApplicationDescriptor *)self includeBadgeIcon];

  return v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(CRKApplicationDescriptor *)self isEqualToApplicationDescriptor:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToApplicationDescriptor:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CRKApplicationDescriptor *)self bundleIdentifier];
    v6 = [v4 bundleIdentifier];
    if ((!(v5 | v6) || [v5 isEqual:v6]) && (v7 = -[CRKApplicationDescriptor includeIcon](self, "includeIcon"), v7 == objc_msgSend(v4, "includeIcon")))
    {
      v9 = [(CRKApplicationDescriptor *)self includeBadgeIcon];
      v8 = v9 ^ [v4 includeBadgeIcon] ^ 1;
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
  v5 = [(CRKApplicationDescriptor *)self bundleIdentifier];
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

  v9 = [v3 stringWithFormat:@"<%@: %p { bundleIdentifier = %@, includeIcon = %@, includeBadgeIcon = %@ }>", v4, self, v5, v7, v8];

  return v9;
}

- (CRKApplicationDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CRKApplicationDescriptor;
  v5 = [(CRKApplicationDescriptor *)&v12 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"includeIcon"];
    v5->_includeIcon = [v9 BOOLValue];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"includeBadgeIcon"];
    v5->_includeBadgeIcon = [v10 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CRKApplicationDescriptor *)self bundleIdentifier];
  [v4 encodeObject:v5 forKey:@"bundleIdentifier"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKApplicationDescriptor includeIcon](self, "includeIcon")}];
  [v4 encodeObject:v6 forKey:@"includeIcon"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKApplicationDescriptor includeBadgeIcon](self, "includeBadgeIcon")}];
  [v4 encodeObject:v7 forKey:@"includeBadgeIcon"];
}

@end