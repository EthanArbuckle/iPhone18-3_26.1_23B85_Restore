@interface CRKClassKitClassPropertyApplicator
- (BOOL)additionsAndRemovalsIntersect:(id)a3;
- (CRKClassKitClassPropertyApplicator)initWithRequirements:(id)a3;
- (id)applyProperties:(id)a3 toClass:(id)a4 error:(id *)a5;
- (void)addTrustedUser:(id)a3 toClass:(id)a4;
- (void)addUser:(id)a3 toClass:(id)a4;
- (void)removeTrustedUser:(id)a3 fromClass:(id)a4;
- (void)removeUser:(id)a3 fromClass:(id)a4;
@end

@implementation CRKClassKitClassPropertyApplicator

- (CRKClassKitClassPropertyApplicator)initWithRequirements:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRKClassKitClassPropertyApplicator;
  v6 = [(CRKClassKitClassPropertyApplicator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requirements, a3);
  }

  return v7;
}

- (id)applyProperties:(id)a3 toClass:(id)a4 error:(id *)a5
{
  v88 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v67 = self;
  if ([(CRKClassKitClassPropertyApplicator *)self additionsAndRemovalsIntersect:v9])
  {
    if (a5)
    {
      CRKErrorWithCodeAndUserInfo(153, 0);
      *a5 = v11 = 0;
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  v12 = [v9 name];

  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = [v10 displayName];
  if (!v13)
  {
    v5 = [v9 name];
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  v14 = [v10 displayName];
  v15 = [v9 name];
  v16 = [v14 isEqual:v15];

  if (!v13)
  {

    if (v16)
    {
      goto LABEL_9;
    }

LABEL_11:
    v18 = [v9 name];
    [v10 setDisplayName:v18];

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
  v19 = [v9 mascot];

  if (v19)
  {
    v20 = [CRKClassKitColorAndMascotUtility mascotForClass:v10];
    v21 = [v9 mascot];
    v22 = [v21 unsignedIntegerValue];

    if (v20 != v22)
    {
      if (![CRKClassKitColorAndMascotUtility setMascot:v22 forClass:v10 error:a5])
      {
        goto LABEL_57;
      }

      v17 = 1;
    }
  }

  v23 = [v9 color];

  if (!v23)
  {
    goto LABEL_20;
  }

  v24 = [CRKClassKitColorAndMascotUtility colorForClass:v10];
  v25 = [v9 color];
  v26 = [v25 unsignedIntegerValue];

  if (v24 == v26)
  {
    goto LABEL_20;
  }

  if (![CRKClassKitColorAndMascotUtility setColor:v26 forClass:v10 error:a5])
  {
LABEL_57:
    v11 = 0;
    goto LABEL_58;
  }

  v17 = 1;
LABEL_20:
  v27 = v17;
  v28 = [(CRKClassKitClassPropertyApplicator *)v67 requirements];
  v66 = [v28 objectIDsOfPersonsInClass:v10];

  v29 = [(CRKClassKitClassPropertyApplicator *)v67 requirements];
  v30 = v10;
  v31 = [v29 objectIDsOfTrustedPersonsInClass:v10];

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v65 = v9;
  v32 = [v9 usersToAdd];
  v33 = [v32 countByEnumeratingWithState:&v80 objects:v87 count:16];
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
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v80 + 1) + 8 * i);
        v38 = [v37 identifier];
        v39 = [v66 containsObject:v38];

        if ((v39 & 1) == 0)
        {
          [(CRKClassKitClassPropertyApplicator *)v67 addUser:v37 toClass:v30];
          v27 = 1;
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v80 objects:v87 count:16];
    }

    while (v34);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v40 = [v65 usersToRemove];
  v41 = [v40 countByEnumeratingWithState:&v76 objects:v86 count:16];
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
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v76 + 1) + 8 * j);
        v46 = [v45 identifier];
        v47 = [v66 containsObject:v46];

        if (v47)
        {
          [(CRKClassKitClassPropertyApplicator *)v67 removeUser:v45 fromClass:v30];
          v27 = 1;
        }
      }

      v42 = [v40 countByEnumeratingWithState:&v76 objects:v86 count:16];
    }

    while (v42);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v48 = [v65 trustedUsersToAdd];
  v49 = [v48 countByEnumeratingWithState:&v72 objects:v85 count:16];
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
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v72 + 1) + 8 * k);
        v54 = [v53 identifier];
        v55 = [v31 containsObject:v54];

        if ((v55 & 1) == 0)
        {
          [(CRKClassKitClassPropertyApplicator *)v67 addTrustedUser:v53 toClass:v30];
          v27 = 1;
        }
      }

      v50 = [v48 countByEnumeratingWithState:&v72 objects:v85 count:16];
    }

    while (v50);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v56 = [v65 trustedUsersToRemove];
  v57 = [v56 countByEnumeratingWithState:&v68 objects:v84 count:16];
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
          objc_enumerationMutation(v56);
        }

        v61 = *(*(&v68 + 1) + 8 * m);
        v62 = [v61 identifier];
        v63 = [v31 containsObject:v62];

        if (v63)
        {
          [(CRKClassKitClassPropertyApplicator *)v67 removeTrustedUser:v61 fromClass:v30];
          v27 = 1;
        }
      }

      v58 = [v56 countByEnumeratingWithState:&v68 objects:v84 count:16];
    }

    while (v58);
  }

  v11 = [[CRKClassKitClassPropertyApplicatorResult alloc] initWithClassWasModified:v27 & 1];
  v9 = v65;
  v10 = v30;
LABEL_58:

  return v11;
}

- (void)addUser:(id)a3 toClass:(id)a4
{
  v9 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CRKClassKitClassPropertyApplicator addUser:toClass:];
  }

  v7 = [v9 backingPerson];
  v8 = [(CRKClassKitClassPropertyApplicator *)self requirements];
  [v8 addPerson:v7 toClass:v6];
}

- (void)removeUser:(id)a3 fromClass:(id)a4
{
  v9 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CRKClassKitClassPropertyApplicator removeUser:fromClass:];
  }

  v7 = [v9 backingPerson];
  v8 = [(CRKClassKitClassPropertyApplicator *)self requirements];
  [v8 removePerson:v7 fromClass:v6];
}

- (void)addTrustedUser:(id)a3 toClass:(id)a4
{
  v9 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CRKClassKitClassPropertyApplicator addTrustedUser:toClass:];
  }

  v7 = [v9 backingPerson];
  v8 = [(CRKClassKitClassPropertyApplicator *)self requirements];
  [v8 addTrustedPerson:v7 toClass:v6];
}

- (void)removeTrustedUser:(id)a3 fromClass:(id)a4
{
  v9 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CRKClassKitClassPropertyApplicator removeTrustedUser:fromClass:];
  }

  v7 = [v9 backingPerson];
  v8 = [(CRKClassKitClassPropertyApplicator *)self requirements];
  [v8 removeTrustedPerson:v7 fromClass:v6];
}

- (BOOL)additionsAndRemovalsIntersect:(id)a3
{
  v4 = a3;
  v5 = [v4 usersToAdd];
  v6 = [(CRKClassKitClassPropertyApplicator *)self identifiersOfUsers:v5];

  v7 = [v4 usersToRemove];
  v8 = [(CRKClassKitClassPropertyApplicator *)self identifiersOfUsers:v7];

  v9 = [v4 trustedUsersToAdd];
  v10 = [(CRKClassKitClassPropertyApplicator *)self identifiersOfUsers:v9];

  v11 = [v4 trustedUsersToRemove];

  v12 = [(CRKClassKitClassPropertyApplicator *)self identifiersOfUsers:v11];

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