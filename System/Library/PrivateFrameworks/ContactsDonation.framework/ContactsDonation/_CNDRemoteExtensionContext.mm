@interface _CNDRemoteExtensionContext
- (id)hostContext;
- (void)redonateAllValuesWithReason:(unint64_t)reason;
- (void)renewExpirationDateForDonatedValue:(id)value acknowledgementHandler:(id)handler;
@end

@implementation _CNDRemoteExtensionContext

- (id)hostContext
{
  _auxiliaryConnection = [(_CNDRemoteExtensionContext *)self _auxiliaryConnection];
  v3 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_4];

  return v3;
}

- (void)renewExpirationDateForDonatedValue:(id)value acknowledgementHandler:(id)handler
{
  handlerCopy = handler;
  valueCopy = value;
  requestHandler = [(_CNDRemoteExtensionContext *)self requestHandler];
  [requestHandler renewExpirationDateForDonatedValue:valueCopy acknowledgementHandler:handlerCopy];
}

- (void)redonateAllValuesWithReason:(unint64_t)reason
{
  requestHandler = [(_CNDRemoteExtensionContext *)self requestHandler];
  [requestHandler redonateAllValuesWithReason:reason];
}

@end