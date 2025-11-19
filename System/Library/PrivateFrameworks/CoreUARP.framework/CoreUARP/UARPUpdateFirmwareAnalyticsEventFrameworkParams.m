@interface UARPUpdateFirmwareAnalyticsEventFrameworkParams
- (BOOL)isEqual:(id)a3;
- (UARPUpdateFirmwareAnalyticsEventFrameworkParams)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UARPUpdateFirmwareAnalyticsEventFrameworkParams

- (UARPUpdateFirmwareAnalyticsEventFrameworkParams)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = UARPUpdateFirmwareAnalyticsEventFrameworkParams;
  v5 = [(UARPUpdateFirmwareAnalyticsEventFrameworkParams *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagingUserInitiated"];
    stagingUserInitiated = v5->_stagingUserInitiated;
    v5->_stagingUserInitiated = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagingDuration"];
    stagingDuration = v5->_stagingDuration;
    v5->_stagingDuration = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagingIterations"];
    stagingIterations = v5->_stagingIterations;
    v5->_stagingIterations = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagingStatus"];
    stagingStatus = v5->_stagingStatus;
    v5->_stagingStatus = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagingVendorError"];
    stagingVendorError = v5->_stagingVendorError;
    v5->_stagingVendorError = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applyUserInitiated"];
    applyUserInitiated = v5->_applyUserInitiated;
    v5->_applyUserInitiated = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applyDuration"];
    applyDuration = v5->_applyDuration;
    v5->_applyDuration = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applyStatus"];
    applyStatus = v5->_applyStatus;
    v5->_applyStatus = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applyVendorError"];
    applyVendorError = v5->_applyVendorError;
    v5->_applyVendorError = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  stagingUserInitiated = self->_stagingUserInitiated;
  v5 = a3;
  [v5 encodeObject:stagingUserInitiated forKey:@"stagingUserInitiated"];
  [v5 encodeObject:self->_stagingDuration forKey:@"stagingDuration"];
  [v5 encodeObject:self->_stagingIterations forKey:@"stagingIterations"];
  [v5 encodeObject:self->_stagingStatus forKey:@"stagingStatus"];
  [v5 encodeObject:self->_stagingVendorError forKey:@"stagingVendorError"];
  [v5 encodeObject:self->_applyUserInitiated forKey:@"applyUserInitiated"];
  [v5 encodeObject:self->_applyDuration forKey:@"applyDuration"];
  [v5 encodeObject:self->_applyStatus forKey:@"applyStatus"];
  [v5 encodeObject:self->_applyVendorError forKey:@"applyVendorError"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == v4)
    {
      v22 = 1;
    }

    else
    {
      v5 = v4;
      stagingUserInitiated = self->_stagingUserInitiated;
      v7 = [(UARPUpdateFirmwareAnalyticsEventFrameworkParams *)v5 stagingUserInitiated];
      if (nullableObjectsEqual(stagingUserInitiated, v7))
      {
        stagingDuration = self->_stagingDuration;
        v9 = [(UARPUpdateFirmwareAnalyticsEventFrameworkParams *)v5 stagingDuration];
        if (nullableObjectsEqual(stagingDuration, v9))
        {
          stagingIterations = self->_stagingIterations;
          v11 = [(UARPUpdateFirmwareAnalyticsEventFrameworkParams *)v5 stagingIterations];
          if (nullableObjectsEqual(stagingIterations, v11))
          {
            stagingStatus = self->_stagingStatus;
            v13 = [(UARPUpdateFirmwareAnalyticsEventFrameworkParams *)v5 stagingStatus];
            if (nullableObjectsEqual(stagingStatus, v13))
            {
              stagingVendorError = self->_stagingVendorError;
              v15 = [(UARPUpdateFirmwareAnalyticsEventFrameworkParams *)v5 stagingVendorError];
              if (nullableObjectsEqual(stagingVendorError, v15))
              {
                applyUserInitiated = self->_applyUserInitiated;
                v17 = [(UARPUpdateFirmwareAnalyticsEventFrameworkParams *)v5 applyUserInitiated];
                if (nullableObjectsEqual(applyUserInitiated, v17))
                {
                  applyDuration = self->_applyDuration;
                  v25 = [(UARPUpdateFirmwareAnalyticsEventFrameworkParams *)v5 applyDuration];
                  if (nullableObjectsEqual(applyDuration, v25))
                  {
                    applyStatus = self->_applyStatus;
                    v24 = [(UARPUpdateFirmwareAnalyticsEventFrameworkParams *)v5 applyStatus];
                    if (nullableObjectsEqual(applyStatus, v24))
                    {
                      applyVendorError = self->_applyVendorError;
                      v21 = [(UARPUpdateFirmwareAnalyticsEventFrameworkParams *)v5 applyVendorError:v24];
                      v22 = nullableObjectsEqual(applyVendorError, v21);
                    }

                    else
                    {
                      v22 = 0;
                    }
                  }

                  else
                  {
                    v22 = 0;
                  }
                }

                else
                {
                  v22 = 0;
                }
              }

              else
              {
                v22 = 0;
              }
            }

            else
            {
              v22 = 0;
            }
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@\n{\n", v5];

  stagingUserInitiated = self->_stagingUserInitiated;
  if (stagingUserInitiated)
  {
    if ([(NSNumber *)stagingUserInitiated BOOLValue])
    {
      v8 = "YES";
    }

    else
    {
      v8 = "NO";
    }

    [v6 appendFormat:@"\tStaging user initiated: %s\n", v8];
  }

  stagingDuration = self->_stagingDuration;
  if (stagingDuration)
  {
    [v6 appendFormat:@"\tStaging duration: %lus\n", -[NSNumber unsignedIntegerValue](stagingDuration, "unsignedIntegerValue")];
  }

  stagingIterations = self->_stagingIterations;
  if (stagingIterations)
  {
    [v6 appendFormat:@"\tStaging iterations: %lu\n", -[NSNumber unsignedIntegerValue](stagingIterations, "unsignedIntegerValue")];
  }

  stagingStatus = self->_stagingStatus;
  if (stagingStatus)
  {
    [v6 appendFormat:@"\tStaging status: %s\n", UARPAnalyticsStagingStatusToString(-[NSNumber integerValue](stagingStatus, "integerValue"))];
  }

  stagingVendorError = self->_stagingVendorError;
  if (stagingVendorError)
  {
    [v6 appendFormat:@"\tStaging vendor error: %u\n", -[NSNumber unsignedIntValue](stagingVendorError, "unsignedIntValue")];
  }

  applyUserInitiated = self->_applyUserInitiated;
  if (applyUserInitiated)
  {
    if ([(NSNumber *)applyUserInitiated BOOLValue])
    {
      v14 = "YES";
    }

    else
    {
      v14 = "NO";
    }

    [v6 appendFormat:@"\tApply user initiated: %s\n", v14];
  }

  applyDuration = self->_applyDuration;
  if (applyDuration)
  {
    [v6 appendFormat:@"\tApply duration: %lus\n", -[NSNumber unsignedIntegerValue](applyDuration, "unsignedIntegerValue")];
  }

  applyStatus = self->_applyStatus;
  if (applyStatus)
  {
    [v6 appendFormat:@"\tApply status: %s\n", UARPAnalyticsApplyStatusToString(-[NSNumber integerValue](applyStatus, "integerValue"))];
  }

  applyVendorError = self->_applyVendorError;
  if (applyVendorError)
  {
    [v6 appendFormat:@"\tApply vendor error: %u\n", -[NSNumber unsignedIntValue](applyVendorError, "unsignedIntValue")];
  }

  [v6 appendString:@"}"];
  v18 = [MEMORY[0x277CCACA8] stringWithString:v6];

  return v18;
}

@end