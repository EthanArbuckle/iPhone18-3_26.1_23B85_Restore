@interface NTKFaceSupportUnlockAttemptEvent
- (NSDictionary)ntkfs_analyticsJSONRepresentation;
- (NTKFaceSupportUnlockAttemptEvent)initWithLength:(double)length status:(unint64_t)status method:(unint64_t)method bundleIdentifier:(id)identifier unlockErrorCode:(int64_t)code;
@end

@implementation NTKFaceSupportUnlockAttemptEvent

- (NTKFaceSupportUnlockAttemptEvent)initWithLength:(double)length status:(unint64_t)status method:(unint64_t)method bundleIdentifier:(id)identifier unlockErrorCode:(int64_t)code
{
  identifierCopy = identifier;
  v13 = identifierCopy;
  if (length > 0.0)
  {
    v15 = [identifierCopy length];
    selfCopy = 0;
    if (method - 5 >= 0xFFFFFFFFFFFFFFFCLL && status - 5 >= 0xFFFFFFFFFFFFFFFCLL && v15)
    {
      v21.receiver = self;
      v21.super_class = NTKFaceSupportUnlockAttemptEvent;
      v16 = [(NTKFaceSupportUnlockAttemptEvent *)&v21 init];
      v17 = v16;
      if (v16)
      {
        v16->_length = length;
        v16->_status = status;
        v16->_method = method;
        v18 = [v13 copy];
        bundleIdentifier = v17->_bundleIdentifier;
        v17->_bundleIdentifier = v18;

        v17->_unlockErrorCode = code;
      }

      self = v17;
      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSDictionary)ntkfs_analyticsJSONRepresentation
{
  v16[5] = *MEMORY[0x277D85DE8];
  [(NTKFaceSupportUnlockAttemptEvent *)self length];
  v4 = v3;
  status = [(NTKFaceSupportUnlockAttemptEvent *)self status];
  unlockErrorCode = [(NTKFaceSupportUnlockAttemptEvent *)self unlockErrorCode];
  method = [(NTKFaceSupportUnlockAttemptEvent *)self method];
  bundleIdentifier = [(NTKFaceSupportUnlockAttemptEvent *)self bundleIdentifier];
  v15[0] = @"length";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v16[0] = v9;
  v15[1] = @"status";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:status];
  v16[1] = v10;
  v15[2] = @"unlock_error_code";
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:unlockErrorCode];
  v16[2] = v11;
  v15[3] = @"method";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:method];
  v15[4] = @"bundle_identifier";
  v16[3] = v12;
  v16[4] = bundleIdentifier;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];

  return v13;
}

@end