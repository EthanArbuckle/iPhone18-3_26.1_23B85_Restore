@interface CRKFeatureDataStore_iOS
+ (unint64_t)crkBoolTypeFromMCBoolType:(int)type;
- (BOOL)isClassroomAutomaticClassJoiningForced;
- (BOOL)isClassroomInstructorRoleEnabled;
- (BOOL)isClassroomRequestPermissionToLeaveClassesForced;
- (BOOL)isClassroomStudentRoleEnabled;
- (BOOL)isClassroomUnpromptedScreenObservationForced;
- (NSSet)activeClassroomRoles;
- (unint64_t)BOOLRestrictionForFeature:(id)feature;
- (unint64_t)effectiveBoolValueForSetting:(id)setting outAsk:(BOOL *)ask;
- (unint64_t)effectiveValueForSetting:(id)setting configurationUUID:(id)d outAsk:(BOOL *)ask;
- (void)setBoolValue:(BOOL)value ask:(BOOL)ask forSetting:(id)setting;
- (void)setBoolValue:(BOOL)value ask:(BOOL)ask forSetting:(id)setting configurationUUID:(id)d;
- (void)setClassroomInstructorRoleEnabled:(BOOL)enabled;
- (void)setClassroomStudentRoleEnabled:(BOOL)enabled;
@end

@implementation CRKFeatureDataStore_iOS

- (unint64_t)effectiveBoolValueForSetting:(id)setting outAsk:(BOOL *)ask
{
  v5 = MEMORY[0x277D262A0];
  settingCopy = setting;
  sharedConnection = [v5 sharedConnection];
  v8 = [sharedConnection effectiveBoolValueForSetting:settingCopy outAsk:ask];

  v9 = objc_opt_class();

  return [v9 crkBoolTypeFromMCBoolType:v8];
}

- (void)setBoolValue:(BOOL)value ask:(BOOL)ask forSetting:(id)setting
{
  askCopy = ask;
  valueCopy = value;
  v7 = MEMORY[0x277D262A0];
  settingCopy = setting;
  sharedConnection = [v7 sharedConnection];
  [sharedConnection setBoolValue:valueCopy ask:askCopy forSetting:settingCopy passcode:0];
}

- (unint64_t)BOOLRestrictionForFeature:(id)feature
{
  v3 = MEMORY[0x277D262A0];
  featureCopy = feature;
  sharedConnection = [v3 sharedConnection];
  v6 = [sharedConnection BOOLRestrictionForFeature:featureCopy];

  v7 = objc_opt_class();

  return [v7 crkBoolTypeFromMCBoolType:v6];
}

- (unint64_t)effectiveValueForSetting:(id)setting configurationUUID:(id)d outAsk:(BOOL *)ask
{
  v7 = MEMORY[0x277D262A0];
  dCopy = d;
  settingCopy = setting;
  sharedConnection = [v7 sharedConnection];
  v11 = [sharedConnection effectiveBoolValueForSetting:settingCopy configurationUUID:dCopy outAsk:ask];

  v12 = objc_opt_class();

  return [v12 crkBoolTypeFromMCBoolType:v11];
}

- (void)setBoolValue:(BOOL)value ask:(BOOL)ask forSetting:(id)setting configurationUUID:(id)d
{
  askCopy = ask;
  valueCopy = value;
  v9 = MEMORY[0x277D262A0];
  dCopy = d;
  settingCopy = setting;
  sharedConnection = [v9 sharedConnection];
  [sharedConnection setBoolValue:valueCopy ask:askCopy forSetting:settingCopy configurationUUID:dCopy toSystem:0 user:1 passcode:0];
}

- (BOOL)isClassroomUnpromptedScreenObservationForced
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isClassroomUnpromptedScreenObservationForced = [mEMORY[0x277D262A0] isClassroomUnpromptedScreenObservationForced];

  return isClassroomUnpromptedScreenObservationForced;
}

- (BOOL)isClassroomAutomaticClassJoiningForced
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isClassroomAutomaticClassJoiningForced = [mEMORY[0x277D262A0] isClassroomAutomaticClassJoiningForced];

  return isClassroomAutomaticClassJoiningForced;
}

- (BOOL)isClassroomRequestPermissionToLeaveClassesForced
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isClassroomRequestPermissionToLeaveClassesForced = [mEMORY[0x277D262A0] isClassroomRequestPermissionToLeaveClassesForced];

  return isClassroomRequestPermissionToLeaveClassesForced;
}

- (BOOL)isClassroomStudentRoleEnabled
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isClassroomStudentRoleEnabled = [mEMORY[0x277D262A0] isClassroomStudentRoleEnabled];

  return isClassroomStudentRoleEnabled;
}

- (void)setClassroomStudentRoleEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] setClassroomStudentRoleEnabled:enabledCopy];
}

- (BOOL)isClassroomInstructorRoleEnabled
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isClassroomInstructorRoleEnabled = [mEMORY[0x277D262A0] isClassroomInstructorRoleEnabled];

  return isClassroomInstructorRoleEnabled;
}

- (void)setClassroomInstructorRoleEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] setClassroomInstructorRoleEnabled:enabledCopy];
}

- (NSSet)activeClassroomRoles
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  activeClassroomRoles = [mEMORY[0x277D262A0] activeClassroomRoles];

  return activeClassroomRoles;
}

+ (unint64_t)crkBoolTypeFromMCBoolType:(int)type
{
  if (type == 2)
  {
    return 2;
  }

  else
  {
    return type == 1;
  }
}

@end