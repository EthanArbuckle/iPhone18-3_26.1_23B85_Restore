@interface NTKFaceSupportPartialUnlockAttemptEvent
- (NTKFaceSupportPartialUnlockAttemptEvent)initWithIdentifier:(id)a3 method:(unint64_t)a4;
- (id)unlockAttemptWithStatus:(unint64_t)a3 errorCode:(int64_t)a4;
@end

@implementation NTKFaceSupportPartialUnlockAttemptEvent

- (NTKFaceSupportPartialUnlockAttemptEvent)initWithIdentifier:(id)a3 method:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 length];
  v8 = 0;
  if (a4 != 999999 && v7)
  {
    v15.receiver = self;
    v15.super_class = NTKFaceSupportPartialUnlockAttemptEvent;
    v9 = [(NTKFaceSupportPartialUnlockAttemptEvent *)&v15 init];
    if (v9)
    {
      v10 = [v6 copy];
      identifier = v9->_identifier;
      v9->_identifier = v10;

      v9->_method = a4;
      v12 = [MEMORY[0x277CBEAA8] date];
      creationDate = v9->_creationDate;
      v9->_creationDate = v12;
    }

    self = v9;
    v8 = self;
  }

  return v8;
}

- (id)unlockAttemptWithStatus:(unint64_t)a3 errorCode:(int64_t)a4
{
  if (a3 == 888888)
  {
    v4 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CBEAA8] date];
    v9 = [(NTKFaceSupportPartialUnlockAttemptEvent *)self creationDate];
    [v8 timeIntervalSinceDate:v9];
    v11 = v10;

    v12 = [(NTKFaceSupportPartialUnlockAttemptEvent *)self method];
    v13 = [(NTKFaceSupportPartialUnlockAttemptEvent *)self identifier];
    v4 = [[NTKFaceSupportUnlockAttemptEvent alloc] initWithLength:a3 status:v12 method:v13 bundleIdentifier:a4 unlockErrorCode:v11];
  }

  return v4;
}

@end