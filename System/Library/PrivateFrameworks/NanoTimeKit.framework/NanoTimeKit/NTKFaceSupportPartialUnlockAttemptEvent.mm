@interface NTKFaceSupportPartialUnlockAttemptEvent
- (NTKFaceSupportPartialUnlockAttemptEvent)initWithIdentifier:(id)identifier method:(unint64_t)method;
- (id)unlockAttemptWithStatus:(unint64_t)status errorCode:(int64_t)code;
@end

@implementation NTKFaceSupportPartialUnlockAttemptEvent

- (NTKFaceSupportPartialUnlockAttemptEvent)initWithIdentifier:(id)identifier method:(unint64_t)method
{
  identifierCopy = identifier;
  v7 = [identifierCopy length];
  selfCopy = 0;
  if (method != 999999 && v7)
  {
    v15.receiver = self;
    v15.super_class = NTKFaceSupportPartialUnlockAttemptEvent;
    v9 = [(NTKFaceSupportPartialUnlockAttemptEvent *)&v15 init];
    if (v9)
    {
      v10 = [identifierCopy copy];
      identifier = v9->_identifier;
      v9->_identifier = v10;

      v9->_method = method;
      date = [MEMORY[0x277CBEAA8] date];
      creationDate = v9->_creationDate;
      v9->_creationDate = date;
    }

    self = v9;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)unlockAttemptWithStatus:(unint64_t)status errorCode:(int64_t)code
{
  if (status == 888888)
  {
    v4 = 0;
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    creationDate = [(NTKFaceSupportPartialUnlockAttemptEvent *)self creationDate];
    [date timeIntervalSinceDate:creationDate];
    v11 = v10;

    method = [(NTKFaceSupportPartialUnlockAttemptEvent *)self method];
    identifier = [(NTKFaceSupportPartialUnlockAttemptEvent *)self identifier];
    v4 = [[NTKFaceSupportUnlockAttemptEvent alloc] initWithLength:status status:method method:identifier bundleIdentifier:code unlockErrorCode:v11];
  }

  return v4;
}

@end