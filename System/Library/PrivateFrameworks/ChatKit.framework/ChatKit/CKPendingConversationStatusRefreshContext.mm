@interface CKPendingConversationStatusRefreshContext
- (CKPendingConversationStatusRefreshContext)initWithAvailabilities:(id)availabilities;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CKPendingConversationStatusRefreshContext

- (CKPendingConversationStatusRefreshContext)initWithAvailabilities:(id)availabilities
{
  availabilitiesCopy = availabilities;
  v9.receiver = self;
  v9.super_class = CKPendingConversationStatusRefreshContext;
  v6 = [(CKPendingConversationStatusRefreshContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_availabilities, availabilities);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CKPendingConversationStatusRefreshContext);
  [(CKPendingConversationStatusRefreshContext *)v4 setAvailabilities:self->_availabilities];
  [(CKPendingConversationStatusRefreshContext *)v4 setIsForPendingConversation:self->_isForPendingConversation];
  v5 = [(IMServiceReachabilityContext *)self->_customContext copy];
  [(CKPendingConversationStatusRefreshContext *)v4 setCustomContext:v5];

  v6 = [(NSSet *)self->_preconditionsIgnoredForServices copy];
  [(CKPendingConversationStatusRefreshContext *)v4 setPreconditionsIgnoredForServices:v6];

  return v4;
}

@end