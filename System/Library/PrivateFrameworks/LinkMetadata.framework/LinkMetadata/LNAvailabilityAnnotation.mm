@interface LNAvailabilityAnnotation
+ (id)available;
+ (id)deprecated;
+ (id)unavailable;
- (BOOL)isEqual:(id)equal;
- (LNAvailabilityAnnotation)initWithCoder:(id)coder;
- (LNAvailabilityAnnotation)initWithIntroducedVersion:(id)version deprecatedVersion:(id)deprecatedVersion obsoletedVersion:(id)obsoletedVersion;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAvailabilityAnnotation

+ (id)available
{
  v2 = [[self alloc] initWithIntroducedVersion:@"*" deprecatedVersion:0 obsoletedVersion:0];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_27:

      goto LABEL_28;
    }

    introducedVersion = [(LNAvailabilityAnnotation *)self introducedVersion];
    introducedVersion2 = [(LNAvailabilityAnnotation *)v6 introducedVersion];
    v9 = introducedVersion;
    v10 = introducedVersion2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_25;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    deprecatedVersion = [(LNAvailabilityAnnotation *)self deprecatedVersion];
    deprecatedVersion2 = [(LNAvailabilityAnnotation *)v6 deprecatedVersion];
    v14 = deprecatedVersion;
    v18 = deprecatedVersion2;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      v12 = [v14 isEqualToString:v18];

      if (!v12)
      {
        goto LABEL_25;
      }
    }

    obsoletedVersion = [(LNAvailabilityAnnotation *)self obsoletedVersion];
    obsoletedVersion2 = [(LNAvailabilityAnnotation *)v6 obsoletedVersion];
    v20 = obsoletedVersion;
    v23 = obsoletedVersion2;
    v19 = v23;
    if (v20 == v23)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v20 && v23)
      {
        LOBYTE(v12) = [v20 isEqualToString:v23];
      }
    }

    goto LABEL_24;
  }

  LOBYTE(v12) = 1;
LABEL_28:

  return v12;
}

- (unint64_t)hash
{
  introducedVersion = [(LNAvailabilityAnnotation *)self introducedVersion];
  v4 = [introducedVersion hash];
  deprecatedVersion = [(LNAvailabilityAnnotation *)self deprecatedVersion];
  v6 = [deprecatedVersion hash] ^ v4;
  obsoletedVersion = [(LNAvailabilityAnnotation *)self obsoletedVersion];
  v8 = [obsoletedVersion hash];

  return v6 ^ v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  introducedVersion = [(LNAvailabilityAnnotation *)self introducedVersion];
  deprecatedVersion = [(LNAvailabilityAnnotation *)self deprecatedVersion];
  obsoletedVersion = [(LNAvailabilityAnnotation *)self obsoletedVersion];
  v9 = [v3 stringWithFormat:@"<%@: %p, introduced: %@, deprecated: %@, obsoleted: %@>", v5, self, introducedVersion, deprecatedVersion, obsoletedVersion];

  return v9;
}

- (LNAvailabilityAnnotation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"introducedVersion"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deprecatedVersion"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"obsoletedVersion"];

  v8 = [(LNAvailabilityAnnotation *)self initWithIntroducedVersion:v5 deprecatedVersion:v6 obsoletedVersion:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  introducedVersion = [(LNAvailabilityAnnotation *)self introducedVersion];
  [coderCopy encodeObject:introducedVersion forKey:@"introducedVersion"];

  deprecatedVersion = [(LNAvailabilityAnnotation *)self deprecatedVersion];
  [coderCopy encodeObject:deprecatedVersion forKey:@"deprecatedVersion"];

  obsoletedVersion = [(LNAvailabilityAnnotation *)self obsoletedVersion];
  [coderCopy encodeObject:obsoletedVersion forKey:@"obsoletedVersion"];
}

- (LNAvailabilityAnnotation)initWithIntroducedVersion:(id)version deprecatedVersion:(id)deprecatedVersion obsoletedVersion:(id)obsoletedVersion
{
  versionCopy = version;
  deprecatedVersionCopy = deprecatedVersion;
  obsoletedVersionCopy = obsoletedVersion;
  v20.receiver = self;
  v20.super_class = LNAvailabilityAnnotation;
  v11 = [(LNAvailabilityAnnotation *)&v20 init];
  if (v11)
  {
    v12 = [versionCopy copy];
    introducedVersion = v11->_introducedVersion;
    v11->_introducedVersion = v12;

    v14 = [deprecatedVersionCopy copy];
    deprecatedVersion = v11->_deprecatedVersion;
    v11->_deprecatedVersion = v14;

    v16 = [obsoletedVersionCopy copy];
    obsoletedVersion = v11->_obsoletedVersion;
    v11->_obsoletedVersion = v16;

    v18 = v11;
  }

  return v11;
}

+ (id)unavailable
{
  v2 = [[self alloc] initWithIntroducedVersion:0 deprecatedVersion:0 obsoletedVersion:@"*"];

  return v2;
}

+ (id)deprecated
{
  v2 = [[self alloc] initWithIntroducedVersion:0 deprecatedVersion:@"*" obsoletedVersion:0];

  return v2;
}

@end