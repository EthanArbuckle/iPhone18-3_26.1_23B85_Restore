@interface ICParticipantsFilterTypeSelection
+ (id)keyPathsForValuesAffectingIsEmpty;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToICParticipantsFilterTypeSelection:(id)a3;
- (ICParticipantsFilterTypeSelection)initWithManagedObjectContext:(id)a3 accountObjectID:(id)a4;
- (ICParticipantsFilterTypeSelection)initWithManagedObjectContext:(id)a3 accountObjectID:(id)a4 selectionType:(unint64_t)a5;
- (ICParticipantsFilterTypeSelection)initWithManagedObjectContext:(id)a3 accountObjectID:(id)a4 selectionType:(unint64_t)a5 joinOperator:(unint64_t)a6;
- (NSArray)participants;
- (NSArray)unresolvedParticipants;
- (NSString)summary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)rawFilterValue;
- (unint64_t)hash;
- (void)addParticipantUserID:(id)a3;
- (void)removeParticipantUserID:(id)a3;
- (void)setSelectionType:(unint64_t)a3;
@end

@implementation ICParticipantsFilterTypeSelection

- (ICParticipantsFilterTypeSelection)initWithManagedObjectContext:(id)a3 accountObjectID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ICParticipantsFilterTypeSelection;
  v9 = [(ICParticipantsFilterTypeSelection *)&v14 init];
  v10 = v9;
  if (v9)
  {
    [(ICFilterTypeSelection *)v9 setAccountObjectID:v8];
    objc_storeStrong(&v10->_managedObjectContext, a3);
    v10->_selectionType = 0;
    v11 = [MEMORY[0x277CBEB98] set];
    participantUserIDs = v10->_participantUserIDs;
    v10->_participantUserIDs = v11;
  }

  return v10;
}

- (ICParticipantsFilterTypeSelection)initWithManagedObjectContext:(id)a3 accountObjectID:(id)a4 selectionType:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = ICParticipantsFilterTypeSelection;
  v11 = [(ICParticipantsFilterTypeSelection *)&v16 init];
  v12 = v11;
  if (v11)
  {
    [(ICFilterTypeSelection *)v11 setAccountObjectID:v10];
    objc_storeStrong(&v12->_managedObjectContext, a3);
    v12->_selectionType = a5;
    if (a5 == 2)
    {
      v12->_joinOperator = 1;
    }

    v13 = [MEMORY[0x277CBEB98] set];
    participantUserIDs = v12->_participantUserIDs;
    v12->_participantUserIDs = v13;
  }

  return v12;
}

- (ICParticipantsFilterTypeSelection)initWithManagedObjectContext:(id)a3 accountObjectID:(id)a4 selectionType:(unint64_t)a5 joinOperator:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v18.receiver = self;
  v18.super_class = ICParticipantsFilterTypeSelection;
  v13 = [(ICParticipantsFilterTypeSelection *)&v18 init];
  v14 = v13;
  if (v13)
  {
    [(ICFilterTypeSelection *)v13 setAccountObjectID:v12];
    objc_storeStrong(&v14->_managedObjectContext, a3);
    v14->_selectionType = a5;
    v14->_joinOperator = a6;
    v15 = [MEMORY[0x277CBEB98] set];
    participantUserIDs = v14->_participantUserIDs;
    v14->_participantUserIDs = v15;
  }

  return v14;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ICParticipantsFilterTypeSelection *)self selectionType]- 1;
  if (v4 > 2)
  {
    v5 = @"me";
  }

  else
  {
    v5 = off_2781997F8[v4];
  }

  v6 = [(ICParticipantsFilterTypeSelection *)self joinOperator];
  v7 = @"unknown";
  if (v6 == 1)
  {
    v7 = @"all";
  }

  if (v6 == 2)
  {
    v7 = @"any";
  }

  v8 = v7;
  v9 = [(ICParticipantsFilterTypeSelection *)self participants];
  v10 = [v9 componentsJoinedByString:{@", "}];
  v11 = [v3 stringWithFormat:@"selectionType: %@\noperator: %@\nparticipants: %@", v5, v8, v10];

  return v11;
}

- (void)setSelectionType:(unint64_t)a3
{
  self->_selectionType = a3;
  if (a3 == 2 && ![(ICParticipantsFilterTypeSelection *)self joinOperator])
  {

    [(ICParticipantsFilterTypeSelection *)self setJoinOperator:1];
  }
}

- (NSString)summary
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = [(ICParticipantsFilterTypeSelection *)self selectionType];
  if (v4 < 2 || v4 == 3)
  {
    v2 = ICLocalizedStringFromICParticipantsFilterSelectionType([(ICParticipantsFilterTypeSelection *)self selectionType]);
    goto LABEL_29;
  }

  if (v4 != 2)
  {
    goto LABEL_29;
  }

  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEB18] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = [(ICParticipantsFilterTypeSelection *)self participants];
  v8 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v38;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        v13 = [v12 ic_participantName];
        [v5 ic_addNonNilObject:v13];

        v14 = [v12 ic_shortParticipantName];
        [v6 ic_addNonNilObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v9);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v15 = [(ICParticipantsFilterTypeSelection *)self unresolvedParticipants];
  v16 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v34;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v33 + 1) + 8 * j);
        v21 = [v20 displayName];
        [v5 ic_addNonNilObject:v21];

        v22 = [v20 displayName];
        [v6 ic_addNonNilObject:v22];
      }

      v17 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v17);
  }

  v23 = [(ICParticipantsFilterTypeSelection *)self participants];
  v24 = [v23 count];
  v25 = [(ICParticipantsFilterTypeSelection *)self unresolvedParticipants];
  v26 = [v25 count] + v24;

  if (v26 == 2)
  {
    v29 = objc_alloc_init(MEMORY[0x277CCAAF0]);
    v2 = [v29 stringFromItems:v6];
LABEL_27:

    goto LABEL_28;
  }

  v27 = v26 - 1;
  if (v26 == 1)
  {
    v28 = [v5 firstObject];
    goto LABEL_24;
  }

  if (v26)
  {
    v29 = [v6 firstObject];
    v30 = MEMORY[0x277CCACA8];
    v31 = __ICLocalizedFrameworkString_impl(@"PARTICIPANTS_%@_AND_%lu_OTHERS", @"PARTICIPANTS_%@_AND_%lu_OTHERS", 0, 1);
    v2 = [v30 localizedStringWithFormat:v31, v29, v27];

    goto LABEL_27;
  }

  v28 = __ICLocalizedFrameworkString_impl(@"0 selected", @"0 selected", 0, 1);
LABEL_24:
  v2 = v28;
LABEL_28:

LABEL_29:

  return v2;
}

- (void)addParticipantUserID:(id)a3
{
  v4 = a3;
  v6 = [(ICParticipantsFilterTypeSelection *)self participantUserIDs];
  v5 = [v6 setByAddingObject:v4];

  [(ICParticipantsFilterTypeSelection *)self setParticipantUserIDs:v5];
}

- (void)removeParticipantUserID:(id)a3
{
  v4 = a3;
  v5 = [(ICParticipantsFilterTypeSelection *)self participantUserIDs];
  v7 = [v5 mutableCopy];

  [v7 removeObject:v4];
  v6 = [v7 copy];
  [(ICParticipantsFilterTypeSelection *)self setParticipantUserIDs:v6];
}

- (NSArray)unresolvedParticipants
{
  v3 = MEMORY[0x277CBEB58];
  v4 = [(ICParticipantsFilterTypeSelection *)self participantUserIDs];
  v5 = [v3 setWithSet:v4];

  v6 = [(ICParticipantsFilterTypeSelection *)self participants];
  v7 = [v6 ic_map:&__block_literal_global_60];

  v8 = [MEMORY[0x277CBEB98] setWithArray:v7];
  [v5 minusSet:v8];

  v9 = [v5 ic_map:&__block_literal_global_50_0];
  v10 = [v9 allObjects];

  return v10;
}

id __59__ICParticipantsFilterTypeSelection_unresolvedParticipants__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 userIdentity];
  v3 = [v2 userRecordID];
  v4 = [v3 recordName];

  return v4;
}

ICCKShareUnknownParticipant *__59__ICParticipantsFilterTypeSelection_unresolvedParticipants__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ICCKShareUnknownParticipant alloc] initWithParticipantUserID:v2];

  return v3;
}

- (NSArray)participants
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__50;
  v11 = __Block_byref_object_dispose__50;
  v12 = 0;
  v3 = [(ICParticipantsFilterTypeSelection *)self managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__ICParticipantsFilterTypeSelection_participants__block_invoke;
  v6[3] = &unk_278194D68;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlockAndWait:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __49__ICParticipantsFilterTypeSelection_participants__block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 32) accountObjectID];
  v4 = [v2 ic_existingObjectWithID:v3];
  v5 = ICDynamicCast();

  v6 = [v5 uniqueUserParticipants];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__ICParticipantsFilterTypeSelection_participants__block_invoke_2;
  v10[3] = &unk_278197F58;
  v10[4] = *(a1 + 32);
  v7 = [v6 ic_objectsPassingTest:v10];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

uint64_t __49__ICParticipantsFilterTypeSelection_participants__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 participantUserIDs];
  v5 = [v3 userIdentity];

  v6 = [v5 userRecordID];
  v7 = [v6 recordName];
  v8 = [v4 containsObject:v7];

  return v8;
}

- (BOOL)isEmpty
{
  if ([(ICParticipantsFilterTypeSelection *)self selectionType]!= 2)
  {
    return 0;
  }

  v3 = [(ICParticipantsFilterTypeSelection *)self participantUserIDs];
  v4 = [v3 count] == 0;

  return v4;
}

+ (id)keyPathsForValuesAffectingIsEmpty
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___ICParticipantsFilterTypeSelection;
  v2 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingIsValid);
  v3 = [v2 mutableCopy];

  [v3 addObjectsFromArray:&unk_2827480D8];
  v4 = [v3 copy];

  return v4;
}

- (id)rawFilterValue
{
  v2 = [(ICParticipantsFilterTypeSelection *)self selectionType];
  if (v2 - 1 > 2)
  {
    return @"me";
  }

  else
  {
    return off_2781997F8[v2 - 1];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [ICParticipantsFilterTypeSelection allocWithZone:?];
  v6 = [(ICParticipantsFilterTypeSelection *)self managedObjectContext];
  v7 = [(ICFilterTypeSelection *)self accountObjectID];
  v8 = [(ICParticipantsFilterTypeSelection *)v5 initWithManagedObjectContext:v6 accountObjectID:v7];

  [(ICParticipantsFilterTypeSelection *)v8 setSelectionType:[(ICParticipantsFilterTypeSelection *)self selectionType]];
  [(ICParticipantsFilterTypeSelection *)v8 setJoinOperator:[(ICParticipantsFilterTypeSelection *)self joinOperator]];
  v9 = [(ICParticipantsFilterTypeSelection *)self participantUserIDs];
  v10 = [v9 copyWithZone:a3];
  [(ICParticipantsFilterTypeSelection *)v8 setParticipantUserIDs:v10];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ICParticipantsFilterTypeSelection *)self isEqualToICParticipantsFilterTypeSelection:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICParticipantsFilterTypeSelection selectionType](self, "selectionType")}];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICParticipantsFilterTypeSelection joinOperator](self, "joinOperator")}];
  v6 = [v5 hash];
  v7 = [(ICParticipantsFilterTypeSelection *)self managedObjectContext];
  [v7 hash];
  v15 = ICHashWithHashKeys(v4, v8, v9, v10, v11, v12, v13, v14, v6);

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = [(ICParticipantsFilterTypeSelection *)self participantUserIDs];
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v30 + 1) + 8 * i) hash];
        v15 += ICHashWithHashKeys(v21, v22, v23, v24, v25, v26, v27, v28, 0);
      }

      v18 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v18);
  }

  return v15;
}

- (BOOL)isEqualToICParticipantsFilterTypeSelection:(id)a3
{
  v4 = a3;
  v5 = [(ICParticipantsFilterTypeSelection *)self selectionType];
  if (v5 == [v4 selectionType] && (v6 = -[ICParticipantsFilterTypeSelection joinOperator](self, "joinOperator"), v6 == objc_msgSend(v4, "joinOperator")))
  {
    v7 = [(ICParticipantsFilterTypeSelection *)self managedObjectContext];
    v8 = [v4 managedObjectContext];
    if ([v7 isEqual:v8])
    {
      v9 = [(ICParticipantsFilterTypeSelection *)self participantUserIDs];
      v10 = [v4 participantUserIDs];
      v11 = [v9 isEqualToSet:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end