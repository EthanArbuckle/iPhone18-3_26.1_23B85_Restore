@interface IDSPeerIDQueryContext
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContext:(id)context;
- (IDSPeerIDQueryContext)initWithSending:(BOOL)sending forceToServer:(BOOL)server messaging:(BOOL)messaging resultExpected:(BOOL)expected preventNewQuery:(BOOL)query clientRequestedForceQuery:(BOOL)forceQuery requiredValidThroughDate:(id)date;
@end

@implementation IDSPeerIDQueryContext

- (IDSPeerIDQueryContext)initWithSending:(BOOL)sending forceToServer:(BOOL)server messaging:(BOOL)messaging resultExpected:(BOOL)expected preventNewQuery:(BOOL)query clientRequestedForceQuery:(BOOL)forceQuery requiredValidThroughDate:(id)date
{
  v16.receiver = self;
  v16.super_class = IDSPeerIDQueryContext;
  result = [(IDSPeerIDQueryContext *)&v16 init];
  if (result)
  {
    result->_forSending = sending;
    result->_forceToServer = server;
    result->_forMessaging = messaging;
    result->_resultExpected = expected;
    result->_preventNewQuery = query;
    result->_clientRequestedForceQuery = forceQuery;
    result->_requiredValidThroughDate = date;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(IDSPeerIDQueryContext *)self isEqualToContext:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToContext:(id)context
{
  contextCopy = context;
  v5 = contextCopy;
  if (self == contextCopy)
  {
    goto LABEL_11;
  }

  if (contextCopy->_forSending != self->_forSending || contextCopy->_forceToServer != self->_forceToServer || contextCopy->_forMessaging != self->_forMessaging || contextCopy->_resultExpected != self->_resultExpected || contextCopy->_preventNewQuery != self->_preventNewQuery || contextCopy->_clientRequestedForceQuery != self->_clientRequestedForceQuery)
  {
    v7 = 0;
    goto LABEL_12;
  }

  requiredValidThroughDate = contextCopy->_requiredValidThroughDate;
  if (requiredValidThroughDate == self->_requiredValidThroughDate)
  {
LABEL_11:
    v7 = 1;
    goto LABEL_12;
  }

  v7 = [(NSDate *)requiredValidThroughDate isEqualToDate:?];
LABEL_12:

  return v7;
}

@end