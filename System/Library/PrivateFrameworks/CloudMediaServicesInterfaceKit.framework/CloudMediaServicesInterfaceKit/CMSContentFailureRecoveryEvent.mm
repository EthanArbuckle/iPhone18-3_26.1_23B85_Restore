@interface CMSContentFailureRecoveryEvent
- (CMSContentFailureRecoveryEvent)initWithSessionID:(id)a3 sessionIdentifier:(id)a4 recoveryDuration:(unint64_t)a5;
- (id)encoded;
@end

@implementation CMSContentFailureRecoveryEvent

- (CMSContentFailureRecoveryEvent)initWithSessionID:(id)a3 sessionIdentifier:(id)a4 recoveryDuration:(unint64_t)a5
{
  v8.receiver = self;
  v8.super_class = CMSContentFailureRecoveryEvent;
  v5 = [(CMSBaseContentFailureEvent *)&v8 initWithServiceID:a3 sessionIdentifier:a4, a5];
  v6 = v5;
  if (v5)
  {
    [(CMSBaseContentFailureEvent *)v5 setEventName:@"com.apple.cloudmediaservices.contentFailureRecovery"];
    v6->_recoveryDuration = 0;
  }

  return v6;
}

- (id)encoded
{
  v7.receiver = self;
  v7.super_class = CMSContentFailureRecoveryEvent;
  v3 = [(CMSBaseContentFailureEvent *)&v7 encoded];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_recoveryDuration];
  [v4 setObject:v5 forKeyedSubscript:@"recoveryDuration"];

  return v4;
}

@end