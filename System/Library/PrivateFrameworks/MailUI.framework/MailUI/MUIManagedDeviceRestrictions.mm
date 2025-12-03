@interface MUIManagedDeviceRestrictions
+ (BOOL)isManualSummaryRestricted;
+ (BOOL)isSmartReplyRestricted;
@end

@implementation MUIManagedDeviceRestrictions

+ (BOOL)isManualSummaryRestricted
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isMailSummaryAllowed = [mEMORY[0x277D262A0] isMailSummaryAllowed];

  return isMailSummaryAllowed ^ 1;
}

+ (BOOL)isSmartReplyRestricted
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isMailSmartRepliesAllowed = [mEMORY[0x277D262A0] isMailSmartRepliesAllowed];

  return isMailSmartRepliesAllowed ^ 1;
}

@end