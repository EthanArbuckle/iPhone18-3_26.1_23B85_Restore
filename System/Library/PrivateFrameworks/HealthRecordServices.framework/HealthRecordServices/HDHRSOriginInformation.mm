@interface HDHRSOriginInformation
- (BOOL)isEqual:(id)equal;
- (HDHRSOriginInformation)initWithCoder:(id)coder;
- (HDHRSOriginInformation)initWithOperatingSystemVersion:(id *)version build:(id)build;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDHRSOriginInformation

- (HDHRSOriginInformation)initWithOperatingSystemVersion:(id *)version build:(id)build
{
  buildCopy = build;
  v13.receiver = self;
  v13.super_class = HDHRSOriginInformation;
  v7 = [(HDHRSOriginInformation *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v9 = *&version->var0;
    v7->_operatingSystemVersion.patchVersion = version->var2;
    *&v7->_operatingSystemVersion.majorVersion = v9;
    v10 = [buildCopy copy];
    operatingSystemBuild = v8->_operatingSystemBuild;
    v8->_operatingSystemBuild = v10;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = v5;
      if (v5)
      {
        [(HDHRSOriginInformation *)v5 operatingSystemVersion];
        if (v15 != self->_operatingSystemVersion.majorVersion)
        {
          goto LABEL_15;
        }

        [(HDHRSOriginInformation *)v6 operatingSystemVersion];
        if (v14 != self->_operatingSystemVersion.minorVersion)
        {
          goto LABEL_15;
        }

        [(HDHRSOriginInformation *)v6 operatingSystemVersion];
        minorVersion = v13;
      }

      else
      {
        if (self->_operatingSystemVersion.majorVersion)
        {
          goto LABEL_15;
        }

        minorVersion = self->_operatingSystemVersion.minorVersion;
        if (minorVersion)
        {
          goto LABEL_15;
        }
      }

      if (minorVersion == self->_operatingSystemVersion.patchVersion)
      {
        operatingSystemBuild = [(HDHRSOriginInformation *)v6 operatingSystemBuild];
        operatingSystemBuild = self->_operatingSystemBuild;
        if (operatingSystemBuild == operatingSystemBuild)
        {
          v8 = 1;
        }

        else if (operatingSystemBuild)
        {
          operatingSystemBuild2 = [(HDHRSOriginInformation *)v6 operatingSystemBuild];
          v8 = [operatingSystemBuild2 isEqualToString:self->_operatingSystemBuild];
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_16;
      }

LABEL_15:
      v8 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v8 = 0;
  }

LABEL_17:

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  majorVersion = self->_operatingSystemVersion.majorVersion;
  coderCopy = coder;
  [coderCopy encodeInt64:majorVersion forKey:@"OperatingSystemVersionMajor"];
  [coderCopy encodeInt64:self->_operatingSystemVersion.minorVersion forKey:@"OperatingSystemVersionMinor"];
  [coderCopy encodeInt64:self->_operatingSystemVersion.patchVersion forKey:@"OperatingSystemVersionPatch"];
  [coderCopy encodeObject:self->_operatingSystemBuild forKey:@"OperatingSystemBuild"];
}

- (HDHRSOriginInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OperatingSystemBuild"];
  if (v5 && [coderCopy containsValueForKey:@"OperatingSystemVersionMajor"] && objc_msgSend(coderCopy, "containsValueForKey:", @"OperatingSystemVersionMinor") && (objc_msgSend(coderCopy, "containsValueForKey:", @"OperatingSystemVersionPatch") & 1) != 0)
  {
    v8[0] = [coderCopy decodeInt64ForKey:@"OperatingSystemVersionMajor"];
    v8[1] = [coderCopy decodeInt64ForKey:@"OperatingSystemVersionMinor"];
    v8[2] = [coderCopy decodeInt64ForKey:@"OperatingSystemVersionPatch"];
    self = [(HDHRSOriginInformation *)self initWithOperatingSystemVersion:v8 build:v5];
    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

@end