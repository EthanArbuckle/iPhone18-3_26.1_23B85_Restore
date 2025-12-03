@interface CRKFeatureDataStore_MCX
- (BOOL)isClassroomAutomaticClassJoiningForced;
- (BOOL)isClassroomRequestPermissionToLeaveClassesForced;
- (BOOL)isClassroomUnpromptedScreenObservationForced;
- (BOOL)isFeatureForced:(id)forced;
- (BOOL)isRoleEnabled:(id)enabled;
- (CRKFeatureDataStore_MCX)initWithMCXPrimitives:(id)primitives;
- (NSSet)activeClassroomRoles;
- (id)keyForFeature:(id)feature configurationUUID:(id)d ask:(BOOL)ask;
- (unint64_t)BOOLRestrictionForFeature:(id)feature;
- (unint64_t)effectiveValueForSetting:(id)setting configurationUUID:(id)d outAsk:(BOOL *)ask;
- (void)addActiveClassroomRole:(id)role;
- (void)removeActiveClassroomRole:(id)role;
- (void)removeDuplicateEntriesFromStoredClassroomRoles;
- (void)setActiveClassroomRoles:(id)roles;
- (void)setBoolValue:(BOOL)value ask:(BOOL)ask forSetting:(id)setting configurationUUID:(id)d;
- (void)setRole:(id)role enabled:(BOOL)enabled;
@end

@implementation CRKFeatureDataStore_MCX

- (CRKFeatureDataStore_MCX)initWithMCXPrimitives:(id)primitives
{
  primitivesCopy = primitives;
  v10.receiver = self;
  v10.super_class = CRKFeatureDataStore_MCX;
  v6 = [(CRKFeatureDataStore_MCX *)&v10 init];
  if (v6)
  {
    v7 = [[CRKFeatureDataStoreHeuristics_MCX alloc] initWithDataStore:v6];
    heuristicsManager = v6->_heuristicsManager;
    v6->_heuristicsManager = v7;

    objc_storeStrong(&v6->_MCXPrimitives, primitives);
    [(CRKFeatureDataStore_MCX *)v6 removeDuplicateEntriesFromStoredClassroomRoles];
  }

  return v6;
}

- (unint64_t)BOOLRestrictionForFeature:(id)feature
{
  featureCopy = feature;
  v5 = [(CRKFeatureDataStore_MCX *)self isFeatureForced:featureCopy];
  heuristicsManager = [(CRKFeatureDataStore_MCX *)self heuristicsManager];
  LODWORD(v5) = [heuristicsManager applyIsForcedHeuristicsToFeature:featureCopy isForced:v5];

  if (v5)
  {
    v7 = [(CRKFeatureDataStore_MCX *)self effectiveValueForSetting:featureCopy configurationUUID:0 outAsk:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)effectiveValueForSetting:(id)setting configurationUUID:(id)d outAsk:(BOOL *)ask
{
  settingCopy = setting;
  dCopy = d;
  if (ask)
  {
    v10 = [(CRKFeatureDataStore_MCX *)self keyForFeature:settingCopy configurationUUID:dCopy ask:1];
    mCXPrimitives = [(CRKFeatureDataStore_MCX *)self MCXPrimitives];
    v12 = [mCXPrimitives numberForKey:v10];

    v13 = [MEMORY[0x277CCABB0] crk_featureBoolTypeFromNumber:v12];
    if (v13)
    {
      v14 = v13 == 1;
    }

    else
    {
      v14 = [CRKFeatureDataStoreDefaults_MCX defaultAskValueForFeature:settingCopy];
    }

    *ask = v14;
  }

  v15 = [(CRKFeatureDataStore_MCX *)self keyForFeature:settingCopy configurationUUID:dCopy ask:0];
  mCXPrimitives2 = [(CRKFeatureDataStore_MCX *)self MCXPrimitives];
  v17 = [mCXPrimitives2 numberForKey:v15];

  v18 = [MEMORY[0x277CCABB0] crk_featureBoolTypeFromNumber:v17];
  if (!v18)
  {
    v18 = [CRKFeatureDataStoreDefaults_MCX defaultValueForFeature:settingCopy];
  }

  heuristicsManager = [(CRKFeatureDataStore_MCX *)self heuristicsManager];
  v20 = [heuristicsManager applyHeuristicsToFeature:settingCopy BOOLType:v18];

  return v20;
}

- (void)setBoolValue:(BOOL)value ask:(BOOL)ask forSetting:(id)setting configurationUUID:(id)d
{
  askCopy = ask;
  valueCopy = value;
  dCopy = d;
  settingCopy = setting;
  v17 = [(CRKFeatureDataStore_MCX *)self keyForFeature:settingCopy configurationUUID:dCopy ask:0];
  mCXPrimitives = [(CRKFeatureDataStore_MCX *)self MCXPrimitives];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:valueCopy];
  [mCXPrimitives setNumber:v13 forKey:v17];

  v14 = [(CRKFeatureDataStore_MCX *)self keyForFeature:settingCopy configurationUUID:dCopy ask:1];

  mCXPrimitives2 = [(CRKFeatureDataStore_MCX *)self MCXPrimitives];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:askCopy];
  [mCXPrimitives2 setNumber:v16 forKey:v14];
}

- (BOOL)isClassroomUnpromptedScreenObservationForced
{
  v3 = +[CRKRestrictions classroomUnpromptedScreenObservationForced];
  LOBYTE(self) = [(CRKFeatureDataStore_MCX *)self BOOLRestrictionForFeature:v3]== 1;

  return self;
}

- (BOOL)isClassroomAutomaticClassJoiningForced
{
  v3 = +[CRKRestrictions classroomAutomaticallyJoinClassesForced];
  LOBYTE(self) = [(CRKFeatureDataStore_MCX *)self BOOLRestrictionForFeature:v3]== 1;

  return self;
}

- (BOOL)isClassroomRequestPermissionToLeaveClassesForced
{
  v3 = +[CRKRestrictions classroomRequestPermissionToLeaveClassesForced];
  LOBYTE(self) = [(CRKFeatureDataStore_MCX *)self BOOLRestrictionForFeature:v3]== 1;

  return self;
}

- (NSSet)activeClassroomRoles
{
  mCXPrimitives = [(CRKFeatureDataStore_MCX *)self MCXPrimitives];
  v3 = +[CRKRestrictions classroomRoles];
  v4 = [mCXPrimitives arrayForKey:v3];
  v5 = v4;
  v6 = MEMORY[0x277CBEBF8];
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [MEMORY[0x277CBEB98] setWithArray:v7];

  return v8;
}

- (BOOL)isFeatureForced:(id)forced
{
  forcedCopy = forced;
  mCXPrimitives = [(CRKFeatureDataStore_MCX *)self MCXPrimitives];
  v6 = [mCXPrimitives isKeyUserModifiable:forcedCopy];

  return v6 ^ 1;
}

- (void)setActiveClassroomRoles:(id)roles
{
  rolesCopy = roles;
  if ([rolesCopy count])
  {
    allObjects = [rolesCopy allObjects];
  }

  else
  {
    allObjects = 0;
  }

  mCXPrimitives = [(CRKFeatureDataStore_MCX *)self MCXPrimitives];
  v6 = +[CRKRestrictions classroomRoles];
  [mCXPrimitives setArray:allObjects forKey:v6];
}

- (void)addActiveClassroomRole:(id)role
{
  roleCopy = role;
  activeClassroomRoles = [(CRKFeatureDataStore_MCX *)self activeClassroomRoles];
  v6 = [activeClassroomRoles mutableCopy];

  [v6 addObject:roleCopy];
  [(CRKFeatureDataStore_MCX *)self setActiveClassroomRoles:v6];
}

- (void)removeActiveClassroomRole:(id)role
{
  roleCopy = role;
  activeClassroomRoles = [(CRKFeatureDataStore_MCX *)self activeClassroomRoles];
  v6 = [activeClassroomRoles mutableCopy];

  [v6 removeObject:roleCopy];
  [(CRKFeatureDataStore_MCX *)self setActiveClassroomRoles:v6];
}

- (BOOL)isRoleEnabled:(id)enabled
{
  enabledCopy = enabled;
  activeClassroomRoles = [(CRKFeatureDataStore_MCX *)self activeClassroomRoles];
  v6 = [activeClassroomRoles containsObject:enabledCopy];

  return v6;
}

- (void)setRole:(id)role enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  roleCopy = role;
  activeClassroomRoles = [(CRKFeatureDataStore_MCX *)self activeClassroomRoles];
  v7 = [activeClassroomRoles containsObject:roleCopy];
  if (enabledCopy)
  {
    if (v7)
    {
      goto LABEL_7;
    }

    [(CRKFeatureDataStore_MCX *)self addActiveClassroomRole:roleCopy];
  }

  else
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }

    [(CRKFeatureDataStore_MCX *)self removeActiveClassroomRole:roleCopy];
  }

  notify_post([@"CRKStudentEnrollmentStatusDidChangeNotification" UTF8String]);
LABEL_7:
}

- (id)keyForFeature:(id)feature configurationUUID:(id)d ask:(BOOL)ask
{
  askCopy = ask;
  dCopy = d;
  featureCopy = feature;
  v9 = objc_opt_new();
  [v9 appendString:featureCopy];

  if ([dCopy length])
  {
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"-", dCopy];
    [v9 appendString:dCopy];
  }

  if (askCopy)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ask", @"-"];
    [v9 appendString:v11];
  }

  return v9;
}

- (void)removeDuplicateEntriesFromStoredClassroomRoles
{
  activeClassroomRoles = [(CRKFeatureDataStore_MCX *)self activeClassroomRoles];
  [(CRKFeatureDataStore_MCX *)self setActiveClassroomRoles:activeClassroomRoles];
}

@end