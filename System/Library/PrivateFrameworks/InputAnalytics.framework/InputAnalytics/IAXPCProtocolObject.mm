@interface IAXPCProtocolObject
- (void)didAction:(id)a3;
- (void)didSessionBeginWithSessionMetadata:(id)a3;
- (void)didSessionEndWithSessionMetadata:(id)a3;
- (void)getDateWithReply:(id)a3;
- (void)logMessage:(id)a3;
- (void)reportStatus;
@end

@implementation IAXPCProtocolObject

- (void)didAction:(id)a3
{
  v3 = sub_1D4610F0C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_1D462DCD8();
  }
}

- (void)didSessionBeginWithSessionMetadata:(id)a3
{
  v3 = sub_1D4610F0C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_1D462DD0C();
  }
}

- (void)didSessionEndWithSessionMetadata:(id)a3
{
  v3 = sub_1D4610F0C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_1D462DD40();
  }
}

- (void)getDateWithReply:(id)a3
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

- (void)logMessage:(id)a3
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