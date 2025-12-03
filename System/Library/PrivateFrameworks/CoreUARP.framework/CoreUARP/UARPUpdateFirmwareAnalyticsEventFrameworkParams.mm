@interface UARPUpdateFirmwareAnalyticsEventFrameworkParams
- (BOOL)isEqual:(id)equal;
- (UARPUpdateFirmwareAnalyticsEventFrameworkParams)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPUpdateFirmwareAnalyticsEventFrameworkParams

- (UARPUpdateFirmwareAnalyticsEventFrameworkParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = UARPUpdateFirmwareAnalyticsEventFrameworkParams;
  v5 = [(UARPUpdateFirmwareAnalyticsEventFrameworkParams *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagingUserInitiated"];
    stagingUserInitiated = v5->_stagingUserInitiated;
    v5->_stagingUserInitiated = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagingDuration"];
    stagingDuration = v5->_stagingDuration;
    v5->_stagingDuration = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagingIterations"];
    stagingIterations = v5->_stagingIterations;
    v5->_stagingIterations = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagingStatus"];
    stagingStatus = v5->_stagingStatus;
    v5->_stagingStatus = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagingVendorError"];
    stagingVendorError = v5->_stagingVendorError;
    v5->_stagingVendorError = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applyUserInitiated"];
    applyUserInitiated = v5->_applyUserInitiated;
    v5->_applyUserInitiated = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applyDuration"];
    applyDuration = v5->_applyDuration;
    v5->_applyDuration = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applyStatus"];
    applyStatus = v5->_applyStatus;
    v5->_applyStatus = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applyVendorError"];
    applyVendorError = v5->_applyVendorError;
    v5->_applyVendorError = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  stagingUserInitiated = self->_stagingUserInitiated;
  coderCopy = coder;
  [coderCopy encodeObject:stagingUserInitiated forKey:@"stagingUserInitiated"];
  [coderCopy encodeObject:self->_stagingDuration forKey:@"stagingDuration"];
  [coderCopy encodeObject:self->_stagingIterations forKey:@"stagingIterations"];
  [coderCopy encodeObject:self->_stagingStatus forKey:@"stagingStatus"];
  [coderCopy encodeObject:self->_stagingVendorError forKey:@"stagingVendorError"];
  [coderCopy encodeObject:self->_applyUserInitiated forKey:@"applyUserInitiated"];
  [coderCopy encodeObject:self->_applyDuration forKey:@"applyDuration"];
  [coderCopy encodeObject:self->_applyStatus forKey:@"applyStatus"];
  [coderCopy encodeObject:self->_applyVendorError forKey:@"applyVendorError"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equalCopy)
    {
      v22 = 1;
    }

    else
    {
      v5 = equalCopy;
      stagingUserInitiated = self->_stagingUserInitiated;
      stagingUserInitiated = [(UARPUpdateFirmwareAnalyticsEventFrameworkParams *)v5 stagingUserInitiated];
      if (nullableObjectsEqual(stagingUserInitiated, stagingUserInitiated))
      {
        stagingDuration = self->_stagingDuration;
        stagingDuration = [(UARPUpdateFirmwareAnalyticsEventFrameworkParams *)v5 stagingDuration];
        if (nullableObjectsEqual(stagingDuration, stagingDuration))
        {
          stagingIterations = self->_stagingIterations;
          stagingIterations = [(UARPUpdateFirmwareAnalyticsEventFrameworkParams *)v5 stagingIterations];
          if (nullableObjectsEqual(stagingIterations, stagingIterations))
          {
            stagingStatus = self->_stagingStatus;
            stagingStatus = [(UARPUpdateFirmwareAnalyticsEventFrameworkParams *)v5 stagingStatus];
            if (nullableObjectsEqual(stagingStatus, stagingStatus))
            {
              stagingVendorError = self->_stagingVendorError;
              stagingVendorError = [(UARPUpdateFirmwareAnalyticsEventFrameworkParams *)v5 stagingVendorError];
              if (nullableObjectsEqual(stagingVendorError, stagingVendorError))
              {
                applyUserInitiated = self->_applyUserInitiated;
                applyUserInitiated = [(UARPUpdateFirmwareAnalyticsEventFrameworkParams *)v5 applyUserInitiated];
                if (nullableObjectsEqual(applyUserInitiated, applyUserInitiated))
                {
                  applyDuration = self->_applyDuration;
                  applyDuration = [(UARPUpdateFirmwareAnalyticsEventFrameworkParams *)v5 applyDuration];
                  if (nullableObjectsEqual(applyDuration, applyDuration))
                  {
                    applyStatus = self->_applyStatus;
                    applyStatus = [(UARPUpdateFirmwareAnalyticsEventFrameworkParams *)v5 applyStatus];
                    if (nullableObjectsEqual(applyStatus, applyStatus))
                    {
                      applyVendorError = self->_applyVendorError;
                      v21 = [(UARPUpdateFirmwareAnalyticsEventFrameworkParams *)v5 applyVendorError:applyStatus];
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