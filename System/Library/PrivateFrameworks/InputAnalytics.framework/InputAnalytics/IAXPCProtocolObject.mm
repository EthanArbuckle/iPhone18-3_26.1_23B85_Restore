@interface IAXPCProtocolObject
- (void)didAction:(id)action;
- (void)didSessionBeginWithSessionMetadata:(id)metadata;
- (void)didSessionEndWithSessionMetadata:(id)metadata;
- (void)getDateWithReply:(id)reply;
- (void)logMessage:(id)message;
- (void)reportStatus;
@end

@implementation IAXPCProtocolObject

- (void)didAction:(id)action
{
  v3 = sub_1D4610F0C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_1D462DCD8();
  }
}

- (void)didSessionBeginWithSessionMetadata:(id)metadata
{
  v3 = sub_1D4610F0C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_1D462DD0C();
  }
}

- (void)didSessionEndWithSessionMetadata:(id)metadata
{
  v3 = sub_1D4610F0C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_1D462DD40();
  }
}

- (void)getDateWithReply:(id)reply
{
  if (os_variant_has_internal_diagnostics())
  {
    v3 = sub_1D4610F0C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1D462DD74();
    }
  }
}

- (void)logMessage:(id)message
{
  if (os_variant_has_internal_diagnostics())
  {
    v3 = sub_1D4610F0C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1D462DDA8();
    }
  }
}

- (void)reportStatus
{
  if (os_variant_has_internal_diagnostics())
  {
    v2 = sub_1D4610F0C();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1D462DDDC();
    }
  }
}

@end