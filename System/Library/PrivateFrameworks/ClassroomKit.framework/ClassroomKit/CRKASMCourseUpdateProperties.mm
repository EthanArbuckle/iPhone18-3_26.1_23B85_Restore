@interface CRKASMCourseUpdateProperties
- (BOOL)areFulfilledByCourse:(id)course;
- (NSSet)trustedUsersToAdd;
- (NSSet)trustedUsersToRemove;
- (NSSet)usersToAdd;
- (NSSet)usersToRemove;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  name = [(CRKASMCourseUpdateProperties *)self name];
  [v4 setName:name];

  color = [(CRKASMCourseUpdateProperties *)self color];
  [v4 setColor:color];

  mascot = [(CRKASMCourseUpdateProperties *)self mascot];
  [v4 setMascot:mascot];

  usersToAdd = [(CRKASMCourseUpdateProperties *)self usersToAdd];
  [v4 setUsersToAdd:usersToAdd];

  usersToRemove = [(CRKASMCourseUpdateProperties *)self usersToRemove];
  [v4 setUsersToRemove:usersToRemove];

  trustedUsersToAdd = [(CRKASMCourseUpdateProperties *)self trustedUsersToAdd];
  [v4 setTrustedUsersToAdd:trustedUsersToAdd];

  trustedUsersToRemove = [(CRKASMCourseUpdateProperties *)self trustedUsersToRemove];
  [v4 setTrustedUsersToRemove:trustedUsersToRemove];

  return v4;
}

- (BOOL)areFulfilledByCourse:(id)course
{
  courseCopy = course;
  name = [(CRKASMCourseUpdateProperties *)self name];
  if (name)
  {
    name2 = [(CRKASMCourseUpdateProperties *)self name];
    name3 = [courseCopy name];
    if (![name2 isEqualToString:name3])
    {
      LOBYTE(v8) = 0;
LABEL_36:

      goto LABEL_37;
    }
  }

  color = [(CRKASMCourseUpdateProperties *)self color];
  if (!color || (-[CRKASMCourseUpdateProperties color](self, "color"), v55 = objc_claimAutoreleasedReturnValue(), v10 = [v55 unsignedIntegerValue], v10 == objc_msgSend(courseCopy, "color")))
  {
    mascot = [(CRKASMCourseUpdateProperties *)self mascot];
    if (mascot)
    {
      mascot2 = [(CRKASMCourseUpdateProperties *)self mascot];
      unsignedIntegerValue = [mascot2 unsignedIntegerValue];
      if (unsignedIntegerValue != [courseCopy mascot])
      {
        LOBYTE(v8) = 0;
LABEL_32:

LABEL_33:
        if (!color)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }
    }

    usersToAdd = [(CRKASMCourseUpdateProperties *)self usersToAdd];
    v13 = [usersToAdd count];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
      usersToAdd2 = [(CRKASMCourseUpdateProperties *)self usersToAdd];
      allObjects = [usersToAdd2 allObjects];
      v16 = __53__CRKASMCourseUpdateProperties_areFulfilledByCourse___block_invoke(allObjects, allObjects);
      users = [courseCopy users];
      __53__CRKASMCourseUpdateProperties_areFulfilledByCourse___block_invoke(users, users);
      v47 = v49 = v16;
      if (![v16 isSubsetOfSet:?])
      {
        LOBYTE(v8) = 0;
LABEL_30:

LABEL_31:
        if (!mascot)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      v14 = v15;
    }

    usersToRemove = [(CRKASMCourseUpdateProperties *)self usersToRemove];
    v17 = [usersToRemove count];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
      usersToRemove2 = [(CRKASMCourseUpdateProperties *)self usersToRemove];
      allObjects2 = [usersToRemove2 allObjects];
      v20 = __53__CRKASMCourseUpdateProperties_areFulfilledByCourse___block_invoke(allObjects2, allObjects2);
      users2 = [courseCopy users];
      __53__CRKASMCourseUpdateProperties_areFulfilledByCourse___block_invoke(users2, users2);
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

    trustedUsersToAdd = [(CRKASMCourseUpdateProperties *)self trustedUsersToAdd];
    v40 = [trustedUsersToAdd count];
    if (!v40 || (-[CRKASMCourseUpdateProperties trustedUsersToAdd](self, "trustedUsersToAdd"), v39 = objc_claimAutoreleasedReturnValue(), [v39 allObjects], v38 = objc_claimAutoreleasedReturnValue(), __53__CRKASMCourseUpdateProperties_areFulfilledByCourse___block_invoke(v38, v38), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(courseCopy, "trustedUsers"), v36 = objc_claimAutoreleasedReturnValue(), __53__CRKASMCourseUpdateProperties_areFulfilledByCourse___block_invoke(v36, v36), v37 = v21, v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "isSubsetOfSet:")))
    {
      trustedUsersToRemove = [(CRKASMCourseUpdateProperties *)self trustedUsersToRemove];
      if ([trustedUsersToRemove count])
      {
        trustedUsersToRemove2 = [(CRKASMCourseUpdateProperties *)self trustedUsersToRemove];
        allObjects3 = [trustedUsersToRemove2 allObjects];
        __53__CRKASMCourseUpdateProperties_areFulfilledByCourse___block_invoke(allObjects3, allObjects3);
        v23 = v31 = trustedUsersToRemove;
        [courseCopy trustedUsers];
        v24 = v34 = name2;
        __53__CRKASMCourseUpdateProperties_areFulfilledByCourse___block_invoke(v24, v24);
        v33 = v18;
        v25 = v14;
        v26 = mascot;
        v28 = v27 = name3;
        v8 = [v23 intersectsSet:v28] ^ 1;

        name3 = v27;
        mascot = v26;
        v14 = v25;
        v18 = v33;

        name2 = v34;
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
  if (name)
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