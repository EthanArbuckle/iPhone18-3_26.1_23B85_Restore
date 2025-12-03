@interface CRKClassKitClassPropertyApplicator
- (BOOL)additionsAndRemovalsIntersect:(id)intersect;
- (CRKClassKitClassPropertyApplicator)initWithRequirements:(id)requirements;
- (id)applyProperties:(id)properties toClass:(id)class error:(id *)error;
- (void)addTrustedUser:(id)user toClass:(id)class;
- (void)addUser:(id)user toClass:(id)class;
- (void)removeTrustedUser:(id)user fromClass:(id)class;
- (void)removeUser:(id)user fromClass:(id)class;
@end

@implementation CRKClassKitClassPropertyApplicator

- (CRKClassKitClassPropertyApplicator)initWithRequirements:(id)requirements
{
  requirementsCopy = requirements;
  v9.receiver = self;
  v9.super_class = CRKClassKitClassPropertyApplicator;
  v6 = [(CRKClassKitClassPropertyApplicator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requirements, requirements);
  }

  return v7;
}

- (id)applyProperties:(id)properties toClass:(id)class error:(id *)error
{
  v88 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  classCopy = class;
  selfCopy = self;
  if ([(CRKClassKitClassPropertyApplicator *)self additionsAndRemovalsIntersect:propertiesCopy])
  {
    if (error)
    {
      CRKErrorWithCodeAndUserInfo(153, 0);
      *error = v11 = 0;
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  name = [propertiesCopy name];

  if (!name)
  {
    goto LABEL_9;
  }

  displayName = [classCopy displayName];
  if (!displayName)
  {
    name2 = [propertiesCopy name];
    if (!name2)
    {
      goto LABEL_9;
    }
  }

  displayName2 = [classCopy displayName];
  name3 = [propertiesCopy name];
  v16 = [displayName2 isEqual:name3];

  if (!displayName)
  {

    if (v16)
    {
      goto LABEL_9;
    }

LABEL_11:
    name4 = [propertiesCopy name];
    [classCopy setDisplayName:name4];

    v17 = 1;
    goto LABEL_12;
  }

  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v17 = 0;
LABEL_12:
  mascot = [propertiesCopy mascot];

  if (mascot)
  {
    v20 = [CRKClassKitColorAndMascotUtility mascotForClass:classCopy];
    mascot2 = [propertiesCopy mascot];
    unsignedIntegerValue = [mascot2 unsignedIntegerValue];

    if (v20 != unsignedIntegerValue)
    {
      if (![CRKClassKitColorAndMascotUtility setMascot:unsignedIntegerValue forClass:classCopy error:error])
      {
        goto LABEL_57;
      }

      v17 = 1;
    }
  }

  color = [propertiesCopy color];

  if (!color)
  {
    goto LABEL_20;
  }

  v24 = [CRKClassKitColorAndMascotUtility colorForClass:classCopy];
  color2 = [propertiesCopy color];
  unsignedIntegerValue2 = [color2 unsignedIntegerValue];

  if (v24 == unsignedIntegerValue2)
  {
    goto LABEL_20;
  }

  if (![CRKClassKitColorAndMascotUtility setColor:unsignedIntegerValue2 forClass:classCopy error:error])
  {
LABEL_57:
    v11 = 0;
    goto LABEL_58;
  }

  v17 = 1;
LABEL_20:
  v27 = v17;
  requirements = [(CRKClassKitClassPropertyApplicator *)selfCopy requirements];
  v66 = [requirements objectIDsOfPersonsInClass:classCopy];

  requirements2 = [(CRKClassKitClassPropertyApplicator *)selfCopy requirements];
  v30 = classCopy;
  v31 = [requirements2 objectIDsOfTrustedPersonsInClass:classCopy];

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v65 = propertiesCopy;
  usersToAdd = [propertiesCopy usersToAdd];
  v33 = [usersToAdd countByEnumeratingWithState:&v80 objects:v87 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v81;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v81 != v35)
        {
          objc_enumerationMutation(usersToAdd);
        }

        v37 = *(*(&v80 + 1) + 8 * i);
        identifier = [v37 identifier];
        v39 = [v66 containsObject:identifier];

        if ((v39 & 1) == 0)
        {
          [(CRKClassKitClassPropertyApplicator *)selfCopy addUser:v37 toClass:v30];
          v27 = 1;
        }
      }

      v34 = [usersToAdd countByEnumeratingWithState:&v80 objects:v87 count:16];
    }

    while (v34);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  usersToRemove = [v65 usersToRemove];
  v41 = [usersToRemove countByEnumeratingWithState:&v76 objects:v86 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v77;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v77 != v43)
        {
          objc_enumerationMutation(usersToRemove);
        }

        v45 = *(*(&v76 + 1) + 8 * j);
        identifier2 = [v45 identifier];
        v47 = [v66 containsObject:identifier2];

        if (v47)
        {
          [(CRKClassKitClassPropertyApplicator *)selfCopy removeUser:v45 fromClass:v30];
          v27 = 1;
        }
      }

      v42 = [usersToRemove countByEnumeratingWithState:&v76 objects:v86 count:16];
    }

    while (v42);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  trustedUsersToAdd = [v65 trustedUsersToAdd];
  v49 = [trustedUsersToAdd countByEnumeratingWithState:&v72 objects:v85 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v73;
    do
    {
      for (k = 0; k != v50; ++k)
      {
        if (*v73 != v51)
        {
          objc_enumerationMutation(trustedUsersToAdd);
        }

        v53 = *(*(&v72 + 1) + 8 * k);
        identifier3 = [v53 identifier];
        v55 = [v31 containsObject:identifier3];

        if ((v55 & 1) == 0)
        {
          [(CRKClassKitClassPropertyApplicator *)selfCopy addTrustedUser:v53 toClass:v30];
          v27 = 1;
        }
      }

      v50 = [trustedUsersToAdd countByEnumeratingWithState:&v72 objects:v85 count:16];
    }

    while (v50);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  trustedUsersToRemove = [v65 trustedUsersToRemove];
  v57 = [trustedUsersToRemove countByEnumeratingWithState:&v68 objects:v84 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v69;
    do
    {
      for (m = 0; m != v58; ++m)
      {
        if (*v69 != v59)
        {
          objc_enumerationMutation(trustedUsersToRemove);
        }

        v61 = *(*(&v68 + 1) + 8 * m);
        identifier4 = [v61 identifier];
        v63 = [v31 containsObject:identifier4];

        if (v63)
        {
          [(CRKClassKitClassPropertyApplicator *)selfCopy removeTrustedUser:v61 fromClass:v30];
          v27 = 1;
        }
      }

      v58 = [trustedUsersToRemove countByEnumeratingWithState:&v68 objects:v84 count:16];
    }

    while (v58);
  }

  v11 = [[CRKClassKitClassPropertyApplicatorResult alloc] initWithClassWasModified:v27 & 1];
  propertiesCopy = v65;
  classCopy = v30;
LABEL_58:

  return v11;
}

- (void)addUser:(id)user toClass:(id)class
{
  userCopy = user;
  classCopy = class;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CRKClassKitClassPropertyApplicator addUser:toClass:];
  }

  backingPerson = [userCopy backingPerson];
  requirements = [(CRKClassKitClassPropertyApplicator *)self requirements];
  [requirements addPerson:backingPerson toClass:classCopy];
}

- (void)removeUser:(id)user fromClass:(id)class
{
  userCopy = user;
  classCopy = class;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CRKClassKitClassPropertyApplicator removeUser:fromClass:];
  }

  backingPerson = [userCopy backingPerson];
  requirements = [(CRKClassKitClassPropertyApplicator *)self requirements];
  [requirements removePerson:backingPerson fromClass:classCopy];
}

- (void)addTrustedUser:(id)user toClass:(id)class
{
  userCopy = user;
  classCopy = class;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CRKClassKitClassPropertyApplicator addTrustedUser:toClass:];
  }

  backingPerson = [userCopy backingPerson];
  requirements = [(CRKClassKitClassPropertyApplicator *)self requirements];
  [requirements addTrustedPerson:backingPerson toClass:classCopy];
}

- (void)removeTrustedUser:(id)user fromClass:(id)class
{
  userCopy = user;
  classCopy = class;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CRKClassKitClassPropertyApplicator removeTrustedUser:fromClass:];
  }

  backingPerson = [userCopy backingPerson];
  requirements = [(CRKClassKitClassPropertyApplicator *)self requirements];
  [requirements removeTrustedPerson:backingPerson fromClass:classCopy];
}

- (BOOL)additionsAndRemovalsIntersect:(id)intersect
{
  intersectCopy = intersect;
  usersToAdd = [intersectCopy usersToAdd];
  v6 = [(CRKClassKitClassPropertyApplicator *)self identifiersOfUsers:usersToAdd];

  usersToRemove = [intersectCopy usersToRemove];
  v8 = [(CRKClassKitClassPropertyApplicator *)self identifiersOfUsers:usersToRemove];

  trustedUsersToAdd = [intersectCopy trustedUsersToAdd];
  v10 = [(CRKClassKitClassPropertyApplicator *)self identifiersOfUsers:trustedUsersToAdd];

  trustedUsersToRemove = [intersectCopy trustedUsersToRemove];

  v12 = [(CRKClassKitClassPropertyApplicator *)self identifiersOfUsers:trustedUsersToRemove];

  if ([v6 intersectsSet:v8])
  {
    v13 = 1;
  }

  else
  {
    v13 = [v10 intersectsSet:v12];
  }

  return v13;
}

- (void)addUser:toClass:.cold.1()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CRKClassKitClassPropertyApplicator addUser:toClass:]"];
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_1_1();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_2(v4 v5];
}

- (void)removeUser:fromClass:.cold.1()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CRKClassKitClassPropertyApplicator removeUser:fromClass:]"];
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_1_1();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_2(v4 v5];
}

- (void)addTrustedUser:toClass:.cold.1()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CRKClassKitClassPropertyApplicator addTrustedUser:toClass:]"];
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_1_1();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_2(v4 v5];
}

- (void)removeTrustedUser:fromClass:.cold.1()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CRKClassKitClassPropertyApplicator removeTrustedUser:fromClass:]"];
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_1_1();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_2(v4 v5];
}

@end