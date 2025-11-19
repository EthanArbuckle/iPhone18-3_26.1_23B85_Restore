@interface NSDictionary(HealthDaemonFoundation)
+ (id)hd_dictionaryFromXPCObject:()HealthDaemonFoundation;
@end

@implementation NSDictionary(HealthDaemonFoundation)

+ (id)hd_dictionaryFromXPCObject:()HealthDaemonFoundation
{
  v3 = a3;
  v4 = v3;
  if (!v3 || MEMORY[0x25307B1F0](v3) != MEMORY[0x277D86468])
  {
LABEL_3:
    v5 = 0;
    goto LABEL_4;
  }

  v5 = _CFXPCCreateCFObjectFromXPCObject();
  if (!v5)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      [NSDictionary(HealthDaemonFoundation) hd_dictionaryFromXPCObject:v7];
    }

    goto LABEL_3;
  }

LABEL_4:

  return v5;
}

@end