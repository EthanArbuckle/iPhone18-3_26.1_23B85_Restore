@interface IDSNGMKeyRollingTicket
- (id)identityData;
- (id)prekeyData;
@end

@implementation IDSNGMKeyRollingTicket

- (id)identityData
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19E74();
  }

  return 0;
}

- (id)prekeyData
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19F00();
  }

  return 0;
}

@end