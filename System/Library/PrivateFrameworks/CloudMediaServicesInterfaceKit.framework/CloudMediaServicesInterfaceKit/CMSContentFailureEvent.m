@interface CMSContentFailureEvent
- (CMSContentFailureEvent)initWithServiceID:(id)a3 sessionIdentifier:(id)a4 errorCode:(int64_t)a5 doesServiceSupportPlaybackFailureRecovery:(BOOL)a6;
- (id)encoded;
@end

@implementation CMSContentFailureEvent

- (CMSContentFailureEvent)initWithServiceID:(id)a3 sessionIdentifier:(id)a4 errorCode:(int64_t)a5 doesServiceSupportPlaybackFailureRecovery:(BOOL)a6
{
  v11.receiver = self;
  v11.super_class = CMSContentFailureEvent;
  v8 = [(CMSBaseContentFailureEvent *)&v11 initWithServiceID:a3 sessionIdentifier:a4];
  v9 = v8;
  if (v8)
  {
    [(CMSBaseContentFailureEvent *)v8 setEventName:@"com.apple.cloudmediaservices.contentFailure"];
    v9->_errorCode = a5;
    v9->_doesServiceSupportPlaybackFailureRecovery = a6;
    v9->_didReachMaxRetries = 0;
  }

  return v9;
}

- (id)encoded
{
  v9.receiver = self;
  v9.super_class = CMSContentFailureEvent;
  v3 = [(CMSBaseContentFailureEvent *)&v9 encoded];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_errorCode];
  [v4 setObject:v5 forKeyedSubscript:@"errorCode"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_didReachMaxRetries];
  [v4 setObject:v6 forKeyedSubscript:@"didReachMaxRetries"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_doesServiceSupportPlaybackFailureRecovery];
  [v4 setObject:v7 forKeyedSubscript:@"doesServiceSupportPlaybackFailureRecovery"];

  return v4;
}

@end