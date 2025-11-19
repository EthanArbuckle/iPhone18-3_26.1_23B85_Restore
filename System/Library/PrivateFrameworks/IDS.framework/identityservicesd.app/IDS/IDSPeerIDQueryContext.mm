@interface IDSPeerIDQueryContext
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToContext:(id)a3;
- (IDSPeerIDQueryContext)initWithSending:(BOOL)a3 forceToServer:(BOOL)a4 messaging:(BOOL)a5 resultExpected:(BOOL)a6 preventNewQuery:(BOOL)a7 clientRequestedForceQuery:(BOOL)a8 requiredValidThroughDate:(id)a9;
@end

@implementation IDSPeerIDQueryContext

- (IDSPeerIDQueryContext)initWithSending:(BOOL)a3 forceToServer:(BOOL)a4 messaging:(BOOL)a5 resultExpected:(BOOL)a6 preventNewQuery:(BOOL)a7 clientRequestedForceQuery:(BOOL)a8 requiredValidThroughDate:(id)a9
{
  v16.receiver = self;
  v16.super_class = IDSPeerIDQueryContext;
  result = [(IDSPeerIDQueryContext *)&v16 init];
  if (result)
  {
    result->_forSending = a3;
    result->_forceToServer = a4;
    result->_forMessaging = a5;
    result->_resultExpected = a6;
    result->_preventNewQuery = a7;
    result->_clientRequestedForceQuery = a8;
    result->_requiredValidThroughDate = a9;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(IDSPeerIDQueryContext *)self isEqualToContext:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToContext:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    goto LABEL_11;
  }

  if (v4->_forSending != self->_forSending || v4->_forceToServer != self->_forceToServer || v4->_forMessaging != self->_forMessaging || v4->_resultExpected != self->_resultExpected || v4->_preventNewQuery != self->_preventNewQuery || v4->_clientRequestedForceQuery != self->_clientRequestedForceQuery)
  {
    v7 = 0;
    goto LABEL_12;
  }

  requiredValidThroughDate = v4->_requiredValidThroughDate;
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