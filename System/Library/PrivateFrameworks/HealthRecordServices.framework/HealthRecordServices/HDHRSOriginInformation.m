@interface HDHRSOriginInformation
- (BOOL)isEqual:(id)a3;
- (HDHRSOriginInformation)initWithCoder:(id)a3;
- (HDHRSOriginInformation)initWithOperatingSystemVersion:(id *)a3 build:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDHRSOriginInformation

- (HDHRSOriginInformation)initWithOperatingSystemVersion:(id *)a3 build:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = HDHRSOriginInformation;
  v7 = [(HDHRSOriginInformation *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v9 = *&a3->var0;
    v7->_operatingSystemVersion.patchVersion = a3->var2;
    *&v7->_operatingSystemVersion.majorVersion = v9;
    v10 = [v6 copy];
    operatingSystemBuild = v8->_operatingSystemBuild;
    v8->_operatingSystemBuild = v10;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
        v9 = [(HDHRSOriginInformation *)v6 operatingSystemBuild];
        operatingSystemBuild = self->_operatingSystemBuild;
        if (v9 == operatingSystemBuild)
        {
          v8 = 1;
        }

        else if (operatingSystemBuild)
        {
          v11 = [(HDHRSOriginInformation *)v6 operatingSystemBuild];
          v8 = [v11 isEqualToString:self->_operatingSystemBuild];
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

- (void)encodeWithCoder:(id)a3
{
  majorVersion = self->_operatingSystemVersion.majorVersion;
  v5 = a3;
  [v5 encodeInt64:majorVersion forKey:@"OperatingSystemVersionMajor"];
  [v5 encodeInt64:self->_operatingSystemVersion.minorVersion forKey:@"OperatingSystemVersionMinor"];
  [v5 encodeInt64:self->_operatingSystemVersion.patchVersion forKey:@"OperatingSystemVersionPatch"];
  [v5 encodeObject:self->_operatingSystemBuild forKey:@"OperatingSystemBuild"];
}

- (HDHRSOriginInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OperatingSystemBuild"];
  if (v5 && [v4 containsValueForKey:@"OperatingSystemVersionMajor"] && objc_msgSend(v4, "containsValueForKey:", @"OperatingSystemVersionMinor") && (objc_msgSend(v4, "containsValueForKey:", @"OperatingSystemVersionPatch") & 1) != 0)
  {
    v8[0] = [v4 decodeInt64ForKey:@"OperatingSystemVersionMajor"];
    v8[1] = [v4 decodeInt64ForKey:@"OperatingSystemVersionMinor"];
    v8[2] = [v4 decodeInt64ForKey:@"OperatingSystemVersionPatch"];
    self = [(HDHRSOriginInformation *)self initWithOperatingSystemVersion:v8 build:v5];
    v6 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v6 = 0;
  }

  return v6;
}

@end