@interface PKFamilyMemberCollection
- (BOOL)isEqual:(id)a3;
- (PKFamilyMemberCollection)initWithFamilyMembers:(id)a3;
- (id)familyMemberForAltDSID:(id)a3;
- (id)familyMemberForTransactionSource:(id)a3;
@end

@implementation PKFamilyMemberCollection

- (PKFamilyMemberCollection)initWithFamilyMembers:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = PKFamilyMemberCollection;
  v5 = [(PKFamilyMemberCollection *)&v25 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [v12 altDSID];
          [v6 setObject:v12 forKey:v13];

          if ([v12 isMe])
          {
            objc_storeStrong(&v5->_currentUser, v12);
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v9);
    }

    v14 = [v6 copy];
    familyMembersByAltDSID = v5->_familyMembersByAltDSID;
    v5->_familyMembersByAltDSID = v14;

    v16 = [v7 copy];
    familyMembers = v5->_familyMembers;
    v5->_familyMembers = v16;

    v18 = PKCurrentUserAltDSID();
    currentUserAltDSID = v5->_currentUserAltDSID;
    v5->_currentUserAltDSID = v18;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    familyMembers = self->_familyMembers;
    v7 = v5->_familyMembers;
    if (familyMembers && v7)
    {
      v8 = [(NSArray *)familyMembers isEqual:?];
    }

    else
    {
      v8 = familyMembers == v7;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)familyMemberForTransactionSource:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v6 = 0;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v7 = [v4 accountUser];
      goto LABEL_10;
    }

    if (v5 != 3)
    {
      goto LABEL_12;
    }
  }

  else if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_12;
    }

    v7 = [v4 peerPaymentAccount];
LABEL_10:
    v9 = v7;
    v8 = [v7 altDSID];

    if (!v8)
    {
      goto LABEL_11;
    }

LABEL_8:
    v6 = [(NSDictionary *)self->_familyMembersByAltDSID objectForKey:v8];

    goto LABEL_12;
  }

  v8 = self->_currentUserAltDSID;
  if (v8)
  {
    goto LABEL_8;
  }

LABEL_11:
  v6 = 0;
LABEL_12:

  return v6;
}

- (id)familyMemberForAltDSID:(id)a3
{
  if (a3)
  {
    v4 = [(NSDictionary *)self->_familyMembersByAltDSID objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end