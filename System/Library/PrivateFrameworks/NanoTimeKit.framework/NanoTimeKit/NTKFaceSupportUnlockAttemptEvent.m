@interface NTKFaceSupportUnlockAttemptEvent
- (NSDictionary)ntkfs_analyticsJSONRepresentation;
- (NTKFaceSupportUnlockAttemptEvent)initWithLength:(double)a3 status:(unint64_t)a4 method:(unint64_t)a5 bundleIdentifier:(id)a6 unlockErrorCode:(int64_t)a7;
@end

@implementation NTKFaceSupportUnlockAttemptEvent

- (NTKFaceSupportUnlockAttemptEvent)initWithLength:(double)a3 status:(unint64_t)a4 method:(unint64_t)a5 bundleIdentifier:(id)a6 unlockErrorCode:(int64_t)a7
{
  v12 = a6;
  v13 = v12;
  if (a3 > 0.0)
  {
    v15 = [v12 length];
    v14 = 0;
    if (a5 - 5 >= 0xFFFFFFFFFFFFFFFCLL && a4 - 5 >= 0xFFFFFFFFFFFFFFFCLL && v15)
    {
      v21.receiver = self;
      v21.super_class = NTKFaceSupportUnlockAttemptEvent;
      v16 = [(NTKFaceSupportUnlockAttemptEvent *)&v21 init];
      v17 = v16;
      if (v16)
      {
        v16->_length = a3;
        v16->_status = a4;
        v16->_method = a5;
        v18 = [v13 copy];
        bundleIdentifier = v17->_bundleIdentifier;
        v17->_bundleIdentifier = v18;

        v17->_unlockErrorCode = a7;
      }

      self = v17;
      v14 = self;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (NSDictionary)ntkfs_analyticsJSONRepresentation
{
  v16[5] = *MEMORY[0x277D85DE8];
  [(NTKFaceSupportUnlockAttemptEvent *)self length];
  v4 = v3;
  v5 = [(NTKFaceSupportUnlockAttemptEvent *)self status];
  v6 = [(NTKFaceSupportUnlockAttemptEvent *)self unlockErrorCode];
  v7 = [(NTKFaceSupportUnlockAttemptEvent *)self method];
  v8 = [(NTKFaceSupportUnlockAttemptEvent *)self bundleIdentifier];
  v15[0] = @"length";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v16[0] = v9;
  v15[1] = @"status";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  v16[1] = v10;
  v15[2] = @"unlock_error_code";
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  v16[2] = v11;
  v15[3] = @"method";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  v15[4] = @"bundle_identifier";
  v16[3] = v12;
  v16[4] = v8;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];

  return v13;
}

@end