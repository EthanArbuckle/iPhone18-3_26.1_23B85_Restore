@interface CRKFeatures
+ (id)allClassroomCRKFeatures;
+ (id)allClassroomTopLevelRestrictions;
@end

@implementation CRKFeatures

+ (id)allClassroomCRKFeatures
{
  if (allClassroomCRKFeatures_onceToken != -1)
  {
    +[CRKFeatures allClassroomCRKFeatures];
  }

  v3 = allClassroomCRKFeatures_allClassroomCRKFeatures;

  return v3;
}

void __38__CRKFeatures_allClassroomCRKFeatures__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v5 = +[CRKRestrictions classroomLockDeviceAllowed];
  v1 = +[CRKRestrictions classroomOpenAppAllowed];
  v2 = +[CRKRestrictions classroomScreenObservationAllowed];
  v3 = [v0 setWithObjects:{v5, v1, v2, 0}];
  v4 = allClassroomCRKFeatures_allClassroomCRKFeatures;
  allClassroomCRKFeatures_allClassroomCRKFeatures = v3;
}

+ (id)allClassroomTopLevelRestrictions
{
  if (allClassroomTopLevelRestrictions_onceToken != -1)
  {
    +[CRKFeatures allClassroomTopLevelRestrictions];
  }

  v3 = allClassroomTopLevelRestrictions_allClassroomTopLevelRestrictions;

  return v3;
}

void __47__CRKFeatures_allClassroomTopLevelRestrictions__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v8 = +[CRKRestrictions remoteScreenObservationAllowed];
  v1 = +[CRKRestrictions screenShotAllowed];
  v2 = +[CRKRestrictions classroomAutomaticallyJoinClassesForced];
  v3 = +[CRKRestrictions classroomRequestPermissionToLeaveClassesForced];
  v4 = +[CRKRestrictions classroomUnpromptedAppAndDeviceLockForced];
  v5 = +[CRKRestrictions classroomUnpromptedScreenObservationForced];
  v6 = [v0 setWithObjects:{v8, v1, v2, v3, v4, v5, 0}];
  v7 = allClassroomTopLevelRestrictions_allClassroomTopLevelRestrictions;
  allClassroomTopLevelRestrictions_allClassroomTopLevelRestrictions = v6;
}

@end