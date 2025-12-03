@interface CMSContentFailureRecoveryEvent
- (CMSContentFailureRecoveryEvent)initWithSessionID:(id)d sessionIdentifier:(id)identifier recoveryDuration:(unint64_t)duration;
- (id)encoded;
@end

@implementation CMSContentFailureRecoveryEvent

- (CMSContentFailureRecoveryEvent)initWithSessionID:(id)d sessionIdentifier:(id)identifier recoveryDuration:(unint64_t)duration
{
  v8.receiver = self;
  v8.super_class = CMSContentFailureRecoveryEvent;
  duration = [(CMSBaseContentFailureEvent *)&v8 initWithServiceID:d sessionIdentifier:identifier, duration];
  v6 = duration;
  if (duration)
  {
    [(CMSBaseContentFailureEvent *)duration setEventName:@"com.apple.cloudmediaservices.contentFailureRecovery"];
    v6->_recoveryDuration = 0;
  }

  return v6;
}

- (id)encoded
{
  v7.receiver = self;
  v7.super_class = CMSContentFailureRecoveryEvent;
  encoded = [(CMSBaseContentFailureEvent *)&v7 encoded];
  v4 = [encoded mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_recoveryDuration];
  [v4 setObject:v5 forKeyedSubscript:@"recoveryDuration"];

  return v4;
}

@end