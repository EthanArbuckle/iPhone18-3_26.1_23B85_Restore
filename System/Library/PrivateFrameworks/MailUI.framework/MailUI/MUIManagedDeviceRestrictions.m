@interface MUIManagedDeviceRestrictions
+ (BOOL)isManualSummaryRestricted;
+ (BOOL)isSmartReplyRestricted;
@end

@implementation MUIManagedDeviceRestrictions

+ (BOOL)isManualSummaryRestricted
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isMailSummaryAllowed];

  return v3 ^ 1;
}

+ (BOOL)isSmartReplyRestricted
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isMailSmartRepliesAllowed];

  return v3 ^ 1;
}

@end