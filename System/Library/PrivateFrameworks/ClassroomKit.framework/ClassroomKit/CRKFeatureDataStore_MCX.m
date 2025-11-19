@interface CRKFeatureDataStore_MCX
- (BOOL)isClassroomAutomaticClassJoiningForced;
- (BOOL)isClassroomRequestPermissionToLeaveClassesForced;
- (BOOL)isClassroomUnpromptedScreenObservationForced;
- (BOOL)isFeatureForced:(id)a3;
- (BOOL)isRoleEnabled:(id)a3;
- (CRKFeatureDataStore_MCX)initWithMCXPrimitives:(id)a3;
- (NSSet)activeClassroomRoles;
- (id)keyForFeature:(id)a3 configurationUUID:(id)a4 ask:(BOOL)a5;
- (unint64_t)BOOLRestrictionForFeature:(id)a3;
- (unint64_t)effectiveValueForSetting:(id)a3 configurationUUID:(id)a4 outAsk:(BOOL *)a5;
- (void)addActiveClassroomRole:(id)a3;
- (void)removeActiveClassroomRole:(id)a3;
- (void)removeDuplicateEntriesFromStoredClassroomRoles;
- (void)setActiveClassroomRoles:(id)a3;
- (void)setBoolValue:(BOOL)a3 ask:(BOOL)a4 forSetting:(id)a5 configurationUUID:(id)a6;
- (void)setRole:(id)a3 enabled:(BOOL)a4;
@end

@implementation CRKFeatureDataStore_MCX

- (CRKFeatureDataStore_MCX)initWithMCXPrimitives:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CRKFeatureDataStore_MCX;
  v6 = [(CRKFeatureDataStore_MCX *)&v10 init];
  if (v6)
  {
    v7 = [[CRKFeatureDataStoreHeuristics_MCX alloc] initWithDataStore:v6];
    heuristicsManager = v6->_heuristicsManager;
    v6->_heuristicsManager = v7;

    objc_storeStrong(&v6->_MCXPrimitives, a3);
    [(CRKFeatureDataStore_MCX *)v6 removeDuplicateEntriesFromStoredClassroomRoles];
  }

  return v6;
}

- (unint64_t)BOOLRestrictionForFeature:(id)a3
{
  v4 = a3;
  v5 = [(CRKFeatureDataStore_MCX *)self isFeatureForced:v4];
  v6 = [(CRKFeatureDataStore_MCX *)self heuristicsManager];
  LODWORD(v5) = [v6 applyIsForcedHeuristicsToFeature:v4 isForced:v5];

  if (v5)
  {
    v7 = [(CRKFeatureDataStore_MCX *)self effectiveValueForSetting:v4 configurationUUID:0 outAsk:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)effectiveValueForSetting:(id)a3 configurationUUID:(id)a4 outAsk:(BOOL *)a5
{
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    v10 = [(CRKFeatureDataStore_MCX *)self keyForFeature:v8 configurationUUID:v9 ask:1];
    v11 = [(CRKFeatureDataStore_MCX *)self MCXPrimitives];
    v12 = [v11 numberForKey:v10];

    v13 = [MEMORY[0x277CCABB0] crk_featureBoolTypeFromNumber:v12];
    if (v13)
    {
      v14 = v13 == 1;
    }

    else
    {
      v14 = [CRKFeatureDataStoreDefaults_MCX defaultAskValueForFeature:v8];
    }

    *a5 = v14;
  }

  v15 = [(CRKFeatureDataStore_MCX *)self keyForFeature:v8 configurationUUID:v9 ask:0];
  v16 = [(CRKFeatureDataStore_MCX *)self MCXPrimitives];
  v17 = [v16 numberForKey:v15];

  v18 = [MEMORY[0x277CCABB0] crk_featureBoolTypeFromNumber:v17];
  if (!v18)
  {
    v18 = [CRKFeatureDataStoreDefaults_MCX defaultValueForFeature:v8];
  }

  v19 = [(CRKFeatureDataStore_MCX *)self heuristicsManager];
  v20 = [v19 applyHeuristicsToFeature:v8 BOOLType:v18];

  return v20;
}

- (void)setBoolValue:(BOOL)a3 ask:(BOOL)a4 forSetting:(id)a5 configurationUUID:(id)a6
{
  v7 = a4;
  v8 = a3;
  v10 = a6;
  v11 = a5;
  v17 = [(CRKFeatureDataStore_MCX *)self keyForFeature:v11 configurationUUID:v10 ask:0];
  v12 = [(CRKFeatureDataStore_MCX *)self MCXPrimitives];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  [v12 setNumber:v13 forKey:v17];

  v14 = [(CRKFeatureDataStore_MCX *)self keyForFeature:v11 configurationUUID:v10 ask:1];

  v15 = [(CRKFeatureDataStore_MCX *)self MCXPrimitives];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  [v15 setNumber:v16 forKey:v14];
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
  v2 = [(CRKFeatureDataStore_MCX *)self MCXPrimitives];
  v3 = +[CRKRestrictions classroomRoles];
  v4 = [v2 arrayForKey:v3];
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

- (BOOL)isFeatureForced:(id)a3
{
  v4 = a3;
  v5 = [(CRKFeatureDataStore_MCX *)self MCXPrimitives];
  v6 = [v5 isKeyUserModifiable:v4];

  return v6 ^ 1;
}

- (void)setActiveClassroomRoles:(id)a3
{
  v7 = a3;
  if ([v7 count])
  {
    v4 = [v7 allObjects];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(CRKFeatureDataStore_MCX *)self MCXPrimitives];
  v6 = +[CRKRestrictions classroomRoles];
  [v5 setArray:v4 forKey:v6];
}

- (void)addActiveClassroomRole:(id)a3
{
  v4 = a3;
  v5 = [(CRKFeatureDataStore_MCX *)self activeClassroomRoles];
  v6 = [v5 mutableCopy];

  [v6 addObject:v4];
  [(CRKFeatureDataStore_MCX *)self setActiveClassroomRoles:v6];
}

- (void)removeActiveClassroomRole:(id)a3
{
  v4 = a3;
  v5 = [(CRKFeatureDataStore_MCX *)self activeClassroomRoles];
  v6 = [v5 mutableCopy];

  [v6 removeObject:v4];
  [(CRKFeatureDataStore_MCX *)self setActiveClassroomRoles:v6];
}

- (BOOL)isRoleEnabled:(id)a3
{
  v4 = a3;
  v5 = [(CRKFeatureDataStore_MCX *)self activeClassroomRoles];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)setRole:(id)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v6 = [(CRKFeatureDataStore_MCX *)self activeClassroomRoles];
  v7 = [v6 containsObject:v8];
  if (v4)
  {
    if (v7)
    {
      goto LABEL_7;
    }

    [(CRKFeatureDataStore_MCX *)self addActiveClassroomRole:v8];
  }

  else
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }

    [(CRKFeatureDataStore_MCX *)self removeActiveClassroomRole:v8];
  }

  notify_post([@"CRKStudentEnrollmentStatusDidChangeNotification" UTF8String]);
LABEL_7:
}

- (id)keyForFeature:(id)a3 configurationUUID:(id)a4 ask:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  v9 = objc_opt_new();
  [v9 appendString:v8];

  if ([v7 length])
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"-", v7];
    [v9 appendString:v10];
  }

  if (v5)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ask", @"-"];
    [v9 appendString:v11];
  }

  return v9;
}

- (void)removeDuplicateEntriesFromStoredClassroomRoles
{
  v3 = [(CRKFeatureDataStore_MCX *)self activeClassroomRoles];
  [(CRKFeatureDataStore_MCX *)self setActiveClassroomRoles:v3];
}

@end