@interface EscrowLogRecoveryRequest
- (id)bodyDictionary;
- (id)urlString;
@end

@implementation EscrowLogRecoveryRequest

- (id)urlString
{
  baseURL = [(EscrowGenericRequest *)self baseURL];
  v3 = [baseURL stringByAppendingString:@"/escrowproxy/api/recovery_log"];

  return v3;
}

- (id)bodyDictionary
{
  v8.receiver = self;
  v8.super_class = EscrowLogRecoveryRequest;
  bodyDictionary = [(EscrowGenericRequest *)&v8 bodyDictionary];
  recoveryUUID = [(EscrowGenericRequest *)self recoveryUUID];
  [bodyDictionary setObject:recoveryUUID forKeyedSubscript:@"recovery_uuid"];

  doubleRecoveryUUID = [(EscrowGenericRequest *)self doubleRecoveryUUID];
  [bodyDictionary setObject:doubleRecoveryUUID forKeyedSubscript:@"double_recovery_uuid"];

  if ([(EscrowGenericRequest *)self recoveryResult])
  {
    v6 = &__kCFBooleanTrue;
  }

  else
  {
    v6 = &__kCFBooleanFalse;
  }

  [bodyDictionary setObject:v6 forKeyedSubscript:@"recovery_result"];

  return bodyDictionary;
}

@end