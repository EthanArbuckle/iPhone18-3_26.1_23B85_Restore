@interface CRKASMCourseUpdateProperties
- (BOOL)areFulfilledByCourse:(id)a3;
- (NSSet)trustedUsersToAdd;
- (NSSet)trustedUsersToRemove;
- (NSSet)usersToAdd;
- (NSSet)usersToRemove;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CRKASMCourseUpdateProperties

- (NSSet)usersToAdd
{
  usersToAdd = self->_usersToAdd;
  if (!usersToAdd)
  {
    v4 = objc_opt_new();
    v5 = self->_usersToAdd;
    self->_usersToAdd = v4;

    usersToAdd = self->_usersToAdd;
  }

  return usersToAdd;
}

- (NSSet)usersToRemove
{
  usersToRemove = self->_usersToRemove;
  if (!usersToRemove)
  {
    v4 = objc_opt_new();
    v5 = self->_usersToRemove;
    self->_usersToRemove = v4;

    usersToRemove = self->_usersToRemove;
  }

  return usersToRemove;
}

- (NSSet)trustedUsersToAdd
{
  trustedUsersToAdd = self->_trustedUsersToAdd;
  if (!trustedUsersToAdd)
  {
    v4 = objc_opt_new();
    v5 = self->_trustedUsersToAdd;
    self->_trustedUsersToAdd = v4;

    trustedUsersToAdd = self->_trustedUsersToAdd;
  }

  return trustedUsersToAdd;
}

- (NSSet)trustedUsersToRemove
{
  trustedUsersToRemove = self->_trustedUsersToRemove;
  if (!trustedUsersToRemove)
  {
    v4 = objc_opt_new();
    v5 = self->_trustedUsersToRemove;
    self->_trustedUsersToRemove = v4;

    trustedUsersToRemove = self->_trustedUsersToRemove;
  }

  return trustedUsersToRemove;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(CRKASMCourseUpdateProperties *)self name];
  [v4 setName:v5];

  v6 = [(CRKASMCourseUpdateProperties *)self color];
  [v4 setColor:v6];

  v7 = [(CRKASMCourseUpdateProperties *)self mascot];
  [v4 setMascot:v7];

  v8 = [(CRKASMCourseUpdateProperties *)self usersToAdd];
  [v4 setUsersToAdd:v8];

  v9 = [(CRKASMCourseUpdateProperties *)self usersToRemove];
  [v4 setUsersToRemove:v9];

  v10 = [(CRKASMCourseUpdateProperties *)self trustedUsersToAdd];
  [v4 setTrustedUsersToAdd:v10];

  v11 = [(CRKASMCourseUpdateProperties *)self trustedUsersToRemove];
  [v4 setTrustedUsersToRemove:v11];

  return v4;
}

- (BOOL)areFulfilledByCourse:(id)a3
{
  v6 = a3;
  v7 = [(CRKASMCourseUpdateProperties *)self name];
  if (v7)
  {
    v3 = [(CRKASMCourseUpdateProperties *)self name];
    v4 = [v6 name];
    if (![v3 isEqualToString:v4])
    {
      LOBYTE(v8) = 0;
LABEL_36:

      goto LABEL_37;
    }
  }

  v9 = [(CRKASMCourseUpdateProperties *)self color];
  if (!v9 || (-[CRKASMCourseUpdateProperties color](self, "color"), v55 = objc_claimAutoreleasedReturnValue(), v10 = [v55 unsignedIntegerValue], v10 == objc_msgSend(v6, "color")))
  {
    v11 = [(CRKASMCourseUpdateProperties *)self mascot];
    if (v11)
    {
      v53 = [(CRKASMCourseUpdateProperties *)self mascot];
      v12 = [v53 unsignedIntegerValue];
      if (v12 != [v6 mascot])
      {
        LOBYTE(v8) = 0;
LABEL_32:

LABEL_33:
        if (!v9)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }
    }

    v54 = [(CRKASMCourseUpdateProperties *)self usersToAdd];
    v13 = [v54 count];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
      v51 = [(CRKASMCourseUpdateProperties *)self usersToAdd];
      v50 = [v51 allObjects];
      v16 = __53__CRKASMCourseUpdateProperties_areFulfilledByCourse___block_invoke(v50, v50);
      v48 = [v6 users];
      __53__CRKASMCourseUpdateProperties_areFulfilledByCourse___block_invoke(v48, v48);
      v47 = v49 = v16;
      if (![v16 isSubsetOfSet:?])
      {
        LOBYTE(v8) = 0;
LABEL_30:

LABEL_31:
        if (!v11)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      v14 = v15;
    }

    v52 = [(CRKASMCourseUpdateProperties *)self usersToRemove];
    v17 = [v52 count];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
      v45 = [(CRKASMCourseUpdateProperties *)self usersToRemove];
      v44 = [v45 allObjects];
      v20 = __53__CRKASMCourseUpdateProperties_areFulfilledByCourse___block_invoke(v44, v44);
      v42 = [v6 users];
      __53__CRKASMCourseUpdateProperties_areFulfilledByCourse___block_invoke(v42, v42);
      v41 = v43 = v20;
      if ([v20 intersectsSet:?])
      {
        LOBYTE(v8) = 0;
LABEL_28:

LABEL_29:
        if (!v14)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      v18 = v19;
    }

    v46 = [(CRKASMCourseUpdateProperties *)self trustedUsersToAdd];
    v40 = [v46 count];
    if (!v40 || (-[CRKASMCourseUpdateProperties trustedUsersToAdd](self, "trustedUsersToAdd"), v39 = objc_claimAutoreleasedReturnValue(), [v39 allObjects], v38 = objc_claimAutoreleasedReturnValue(), __53__CRKASMCourseUpdateProperties_areFulfilledByCourse___block_invoke(v38, v38), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "trustedUsers"), v36 = objc_claimAutoreleasedReturnValue(), __53__CRKASMCourseUpdateProperties_areFulfilledByCourse___block_invoke(v36, v36), v37 = v21, v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "isSubsetOfSet:")))
    {
      v22 = [(CRKASMCourseUpdateProperties *)self trustedUsersToRemove];
      if ([v22 count])
      {
        v32 = [(CRKASMCourseUpdateProperties *)self trustedUsersToRemove];
        v30 = [v32 allObjects];
        __53__CRKASMCourseUpdateProperties_areFulfilledByCourse___block_invoke(v30, v30);
        v23 = v31 = v22;
        [v6 trustedUsers];
        v24 = v34 = v3;
        __53__CRKASMCourseUpdateProperties_areFulfilledByCourse___block_invoke(v24, v24);
        v33 = v18;
        v25 = v14;
        v26 = v11;
        v28 = v27 = v4;
        v8 = [v23 intersectsSet:v28] ^ 1;

        v4 = v27;
        v11 = v26;
        v14 = v25;
        v18 = v33;

        v3 = v34;
      }

      else
      {

        LOBYTE(v8) = 1;
      }

      if (!v40)
      {
LABEL_27:

        if (!v18)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }

    goto LABEL_27;
  }

  LOBYTE(v8) = 0;
LABEL_34:

LABEL_35:
  if (v7)
  {
    goto LABEL_36;
  }

LABEL_37:

  return v8;
}

id __53__CRKASMCourseUpdateProperties_areFulfilledByCourse___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a2 crk_mapUsingBlock:&__block_literal_global_3];
  v4 = [v2 setWithArray:v3];

  return v4;
}

@end