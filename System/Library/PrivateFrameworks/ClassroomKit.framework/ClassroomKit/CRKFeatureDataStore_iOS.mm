@interface CRKFeatureDataStore_iOS
+ (unint64_t)crkBoolTypeFromMCBoolType:(int)a3;
- (BOOL)isClassroomAutomaticClassJoiningForced;
- (BOOL)isClassroomInstructorRoleEnabled;
- (BOOL)isClassroomRequestPermissionToLeaveClassesForced;
- (BOOL)isClassroomStudentRoleEnabled;
- (BOOL)isClassroomUnpromptedScreenObservationForced;
- (NSSet)activeClassroomRoles;
- (unint64_t)BOOLRestrictionForFeature:(id)a3;
- (unint64_t)effectiveBoolValueForSetting:(id)a3 outAsk:(BOOL *)a4;
- (unint64_t)effectiveValueForSetting:(id)a3 configurationUUID:(id)a4 outAsk:(BOOL *)a5;
- (void)setBoolValue:(BOOL)a3 ask:(BOOL)a4 forSetting:(id)a5;
- (void)setBoolValue:(BOOL)a3 ask:(BOOL)a4 forSetting:(id)a5 configurationUUID:(id)a6;
- (void)setClassroomInstructorRoleEnabled:(BOOL)a3;
- (void)setClassroomStudentRoleEnabled:(BOOL)a3;
@end

@implementation CRKFeatureDataStore_iOS

- (unint64_t)effectiveBoolValueForSetting:(id)a3 outAsk:(BOOL *)a4
{
  v5 = MEMORY[0x277D262A0];
  v6 = a3;
  v7 = [v5 sharedConnection];
  v8 = [v7 effectiveBoolValueForSetting:v6 outAsk:a4];

  v9 = objc_opt_class();

  return [v9 crkBoolTypeFromMCBoolType:v8];
}

- (void)setBoolValue:(BOOL)a3 ask:(BOOL)a4 forSetting:(id)a5
{
  v5 = a4;
  v6 = a3;
  v7 = MEMORY[0x277D262A0];
  v8 = a5;
  v9 = [v7 sharedConnection];
  [v9 setBoolValue:v6 ask:v5 forSetting:v8 passcode:0];
}

- (unint64_t)BOOLRestrictionForFeature:(id)a3
{
  v3 = MEMORY[0x277D262A0];
  v4 = a3;
  v5 = [v3 sharedConnection];
  v6 = [v5 BOOLRestrictionForFeature:v4];

  v7 = objc_opt_class();

  return [v7 crkBoolTypeFromMCBoolType:v6];
}

- (unint64_t)effectiveValueForSetting:(id)a3 configurationUUID:(id)a4 outAsk:(BOOL *)a5
{
  v7 = MEMORY[0x277D262A0];
  v8 = a4;
  v9 = a3;
  v10 = [v7 sharedConnection];
  v11 = [v10 effectiveBoolValueForSetting:v9 configurationUUID:v8 outAsk:a5];

  v12 = objc_opt_class();

  return [v12 crkBoolTypeFromMCBoolType:v11];
}

- (void)setBoolValue:(BOOL)a3 ask:(BOOL)a4 forSetting:(id)a5 configurationUUID:(id)a6
{
  v7 = a4;
  v8 = a3;
  v9 = MEMORY[0x277D262A0];
  v10 = a6;
  v11 = a5;
  v12 = [v9 sharedConnection];
  [v12 setBoolValue:v8 ask:v7 forSetting:v11 configurationUUID:v10 toSystem:0 user:1 passcode:0];
}

- (BOOL)isClassroomUnpromptedScreenObservationForced
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isClassroomUnpromptedScreenObservationForced];

  return v3;
}

- (BOOL)isClassroomAutomaticClassJoiningForced
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isClassroomAutomaticClassJoiningForced];

  return v3;
}

- (BOOL)isClassroomRequestPermissionToLeaveClassesForced
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isClassroomRequestPermissionToLeaveClassesForced];

  return v3;
}

- (BOOL)isClassroomStudentRoleEnabled
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isClassroomStudentRoleEnabled];

  return v3;
}

- (void)setClassroomStudentRoleEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D262A0] sharedConnection];
  [v4 setClassroomStudentRoleEnabled:v3];
}

- (BOOL)isClassroomInstructorRoleEnabled
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isClassroomInstructorRoleEnabled];

  return v3;
}

- (void)setClassroomInstructorRoleEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D262A0] sharedConnection];
  [v4 setClassroomInstructorRoleEnabled:v3];
}

- (NSSet)activeClassroomRoles
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 activeClassroomRoles];

  return v3;
}

+ (unint64_t)crkBoolTypeFromMCBoolType:(int)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

@end