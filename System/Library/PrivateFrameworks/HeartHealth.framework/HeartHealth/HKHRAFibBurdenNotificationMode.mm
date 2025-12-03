@interface HKHRAFibBurdenNotificationMode
- (BOOL)isEqual:(id)equal;
- (HKHRAFibBurdenNotificationMode)initWithCoder:(id)coder;
- (HKHRAFibBurdenNotificationMode)initWithType:(int64_t)type shouldForwardToWatch:(BOOL)watch currentPercentage:(id)percentage currentValueClamped:(id)clamped currentValueDateInterval:(id)interval currentValueUUID:(id)d previousPercentage:(id)previousPercentage previousValueClamped:(id)self0 previousTimeZoneDiffersFromCurrent:(id)self1;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKHRAFibBurdenNotificationMode

- (HKHRAFibBurdenNotificationMode)initWithType:(int64_t)type shouldForwardToWatch:(BOOL)watch currentPercentage:(id)percentage currentValueClamped:(id)clamped currentValueDateInterval:(id)interval currentValueUUID:(id)d previousPercentage:(id)previousPercentage previousValueClamped:(id)self0 previousTimeZoneDiffersFromCurrent:(id)self1
{
  percentageCopy = percentage;
  clampedCopy = clamped;
  intervalCopy = interval;
  dCopy = d;
  previousPercentageCopy = previousPercentage;
  valueClampedCopy = valueClamped;
  currentCopy = current;
  v28.receiver = self;
  v28.super_class = HKHRAFibBurdenNotificationMode;
  v18 = [(HKHRAFibBurdenNotificationMode *)&v28 init];
  v19 = v18;
  if (v18)
  {
    v18->_type = type;
    v18->_shouldForwardToWatch = watch;
    objc_storeStrong(&v18->_currentPercentage, percentage);
    objc_storeStrong(&v19->_currentValueClamped, clamped);
    objc_storeStrong(&v19->_currentValueDateInterval, interval);
    objc_storeStrong(&v19->_currentValueUUID, d);
    objc_storeStrong(&v19->_previousPercentage, previousPercentage);
    objc_storeStrong(&v19->_previousValueClamped, valueClamped);
    objc_storeStrong(&v19->_previousTimeZoneDiffersFromCurrent, current);
  }

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    type = self->_type;
    if (type == [v5 type] && (shouldForwardToWatch = self->_shouldForwardToWatch, shouldForwardToWatch == objc_msgSend(v5, "shouldForwardToWatch")))
    {
      currentPercentage = self->_currentPercentage;
      currentPercentage = [v5 currentPercentage];
      if ([(NSNumber *)currentPercentage isEqualToNumber:currentPercentage])
      {
        currentValueClamped = self->_currentValueClamped;
        currentValueClamped = [v5 currentValueClamped];
        if ([(NSNumber *)currentValueClamped isEqualToNumber:currentValueClamped])
        {
          currentValueDateInterval = self->_currentValueDateInterval;
          currentValueDateInterval = [v5 currentValueDateInterval];
          if ([(NSDateInterval *)currentValueDateInterval isEqualToDateInterval:currentValueDateInterval])
          {
            currentValueUUID = self->_currentValueUUID;
            currentValueUUID = [v5 currentValueUUID];
            if ([(NSUUID *)currentValueUUID isEqual:currentValueUUID])
            {
              previousPercentage = self->_previousPercentage;
              previousPercentage = [v5 previousPercentage];
              if ([(NSNumber *)previousPercentage isEqualToNumber:previousPercentage])
              {
                previousValueClamped = self->_previousValueClamped;
                previousValueClamped = [v5 previousValueClamped];
                if ([(NSNumber *)previousValueClamped isEqualToNumber:previousValueClamped])
                {
                  previousTimeZoneDiffersFromCurrent = self->_previousTimeZoneDiffersFromCurrent;
                  previousTimeZoneDiffersFromCurrent = [v5 previousTimeZoneDiffersFromCurrent];
                  v22 = [(NSNumber *)previousTimeZoneDiffersFromCurrent isEqualToNumber:previousTimeZoneDiffersFromCurrent];
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

  return v22;
}

- (unint64_t)hash
{
  v3 = self->_type ^ self->_shouldForwardToWatch;
  v4 = v3 ^ [(NSNumber *)self->_currentPercentage hash];
  v5 = [(NSNumber *)self->_currentValueClamped hash];
  v6 = v4 ^ v5 ^ [(NSDateInterval *)self->_currentValueDateInterval hash];
  v7 = [(NSUUID *)self->_currentValueUUID hash];
  v8 = v7 ^ [(NSNumber *)self->_previousPercentage hash];
  v9 = v6 ^ v8 ^ [(NSNumber *)self->_previousValueClamped hash];
  return v9 ^ [(NSNumber *)self->_previousTimeZoneDiffersFromCurrent hash];
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeBool:self->_shouldForwardToWatch forKey:@"shouldForwardToWatch"];
  [coderCopy encodeObject:self->_currentPercentage forKey:@"currentPercentage"];
  [coderCopy encodeObject:self->_currentValueClamped forKey:@"currentValueClamped"];
  [coderCopy encodeObject:self->_currentValueDateInterval forKey:@"currentValueDateInterval"];
  [coderCopy encodeObject:self->_currentValueUUID forKey:@"currentValueUUID"];
  [coderCopy encodeObject:self->_previousPercentage forKey:@"previousPercentage"];
  [coderCopy encodeObject:self->_previousValueClamped forKey:@"previousValueClamped"];
  [coderCopy encodeObject:self->_previousTimeZoneDiffersFromCurrent forKey:@"previousTimeZoneDiffersFromCurrent"];
}

- (HKHRAFibBurdenNotificationMode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = HKHRAFibBurdenNotificationMode;
  v5 = [(HKHRAFibBurdenNotificationMode *)&v21 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v5->_shouldForwardToWatch = [coderCopy decodeBoolForKey:@"shouldForwardToWatch"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentPercentage"];
    currentPercentage = v5->_currentPercentage;
    v5->_currentPercentage = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentValueClamped"];
    currentValueClamped = v5->_currentValueClamped;
    v5->_currentValueClamped = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentValueDateInterval"];
    currentValueDateInterval = v5->_currentValueDateInterval;
    v5->_currentValueDateInterval = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentValueUUID"];
    currentValueUUID = v5->_currentValueUUID;
    v5->_currentValueUUID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"previousPercentage"];
    previousPercentage = v5->_previousPercentage;
    v5->_previousPercentage = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"previousValueClamped"];
    previousValueClamped = v5->_previousValueClamped;
    v5->_previousValueClamped = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"previousTimeZoneDiffersFromCurrent"];
    previousTimeZoneDiffersFromCurrent = v5->_previousTimeZoneDiffersFromCurrent;
    v5->_previousTimeZoneDiffersFromCurrent = v18;
  }

  return v5;
}

@end