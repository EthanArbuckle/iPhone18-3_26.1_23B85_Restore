@interface ICParticipantsFilterTypeSelection
+ (id)keyPathsForValuesAffectingIsEmpty;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToICParticipantsFilterTypeSelection:(id)selection;
- (ICParticipantsFilterTypeSelection)initWithManagedObjectContext:(id)context accountObjectID:(id)d;
- (ICParticipantsFilterTypeSelection)initWithManagedObjectContext:(id)context accountObjectID:(id)d selectionType:(unint64_t)type;
- (ICParticipantsFilterTypeSelection)initWithManagedObjectContext:(id)context accountObjectID:(id)d selectionType:(unint64_t)type joinOperator:(unint64_t)operator;
- (NSArray)participants;
- (NSArray)unresolvedParticipants;
- (NSString)summary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)rawFilterValue;
- (unint64_t)hash;
- (void)addParticipantUserID:(id)d;
- (void)removeParticipantUserID:(id)d;
- (void)setSelectionType:(unint64_t)type;
@end

@implementation ICParticipantsFilterTypeSelection

- (ICParticipantsFilterTypeSelection)initWithManagedObjectContext:(id)context accountObjectID:(id)d
{
  contextCopy = context;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = ICParticipantsFilterTypeSelection;
  v9 = [(ICParticipantsFilterTypeSelection *)&v14 init];
  v10 = v9;
  if (v9)
  {
    [(ICFilterTypeSelection *)v9 setAccountObjectID:dCopy];
    objc_storeStrong(&v10->_managedObjectContext, context);
    v10->_selectionType = 0;
    v11 = [MEMORY[0x277CBEB98] set];
    participantUserIDs = v10->_participantUserIDs;
    v10->_participantUserIDs = v11;
  }

  return v10;
}

- (ICParticipantsFilterTypeSelection)initWithManagedObjectContext:(id)context accountObjectID:(id)d selectionType:(unint64_t)type
{
  contextCopy = context;
  dCopy = d;
  v16.receiver = self;
  v16.super_class = ICParticipantsFilterTypeSelection;
  v11 = [(ICParticipantsFilterTypeSelection *)&v16 init];
  v12 = v11;
  if (v11)
  {
    [(ICFilterTypeSelection *)v11 setAccountObjectID:dCopy];
    objc_storeStrong(&v12->_managedObjectContext, context);
    v12->_selectionType = type;
    if (type == 2)
    {
      v12->_joinOperator = 1;
    }

    v13 = [MEMORY[0x277CBEB98] set];
    participantUserIDs = v12->_participantUserIDs;
    v12->_participantUserIDs = v13;
  }

  return v12;
}

- (ICParticipantsFilterTypeSelection)initWithManagedObjectContext:(id)context accountObjectID:(id)d selectionType:(unint64_t)type joinOperator:(unint64_t)operator
{
  contextCopy = context;
  dCopy = d;
  v18.receiver = self;
  v18.super_class = ICParticipantsFilterTypeSelection;
  v13 = [(ICParticipantsFilterTypeSelection *)&v18 init];
  v14 = v13;
  if (v13)
  {
    [(ICFilterTypeSelection *)v13 setAccountObjectID:dCopy];
    objc_storeStrong(&v14->_managedObjectContext, context);
    v14->_selectionType = type;
    v14->_joinOperator = operator;
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

  joinOperator = [(ICParticipantsFilterTypeSelection *)self joinOperator];
  v7 = @"unknown";
  if (joinOperator == 1)
  {
    v7 = @"all";
  }

  if (joinOperator == 2)
  {
    v7 = @"any";
  }

  v8 = v7;
  participants = [(ICParticipantsFilterTypeSelection *)self participants];
  v10 = [participants componentsJoinedByString:{@", "}];
  v11 = [v3 stringWithFormat:@"selectionType: %@\noperator: %@\nparticipants: %@", v5, v8, v10];

  return v11;
}

- (void)setSelectionType:(unint64_t)type
{
  self->_selectionType = type;
  if (type == 2 && ![(ICParticipantsFilterTypeSelection *)self joinOperator])
  {

    [(ICParticipantsFilterTypeSelection *)self setJoinOperator:1];
  }
}

- (NSString)summary
{
  v43 = *MEMORY[0x277D85DE8];
  selectionType = [(ICParticipantsFilterTypeSelection *)self selectionType];
  if (selectionType < 2 || selectionType == 3)
  {
    v2 = ICLocalizedStringFromICParticipantsFilterSelectionType([(ICParticipantsFilterTypeSelection *)self selectionType]);
    goto LABEL_29;
  }

  if (selectionType != 2)
  {
    goto LABEL_29;
  }

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  participants = [(ICParticipantsFilterTypeSelection *)self participants];
  v8 = [participants countByEnumeratingWithState:&v37 objects:v42 count:16];
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
          objc_enumerationMutation(participants);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        ic_participantName = [v12 ic_participantName];
        [array ic_addNonNilObject:ic_participantName];

        ic_shortParticipantName = [v12 ic_shortParticipantName];
        [array2 ic_addNonNilObject:ic_shortParticipantName];
      }

      v9 = [participants countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v9);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  unresolvedParticipants = [(ICParticipantsFilterTypeSelection *)self unresolvedParticipants];
  v16 = [unresolvedParticipants countByEnumeratingWithState:&v33 objects:v41 count:16];
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
          objc_enumerationMutation(unresolvedParticipants);
        }

        v20 = *(*(&v33 + 1) + 8 * j);
        displayName = [v20 displayName];
        [array ic_addNonNilObject:displayName];

        displayName2 = [v20 displayName];
        [array2 ic_addNonNilObject:displayName2];
      }

      v17 = [unresolvedParticipants countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v17);
  }

  participants2 = [(ICParticipantsFilterTypeSelection *)self participants];
  v24 = [participants2 count];
  unresolvedParticipants2 = [(ICParticipantsFilterTypeSelection *)self unresolvedParticipants];
  v26 = [unresolvedParticipants2 count] + v24;

  if (v26 == 2)
  {
    firstObject2 = objc_alloc_init(MEMORY[0x277CCAAF0]);
    v2 = [firstObject2 stringFromItems:array2];
LABEL_27:

    goto LABEL_28;
  }

  v27 = v26 - 1;
  if (v26 == 1)
  {
    firstObject = [array firstObject];
    goto LABEL_24;
  }

  if (v26)
  {
    firstObject2 = [array2 firstObject];
    v30 = MEMORY[0x277CCACA8];
    v31 = __ICLocalizedFrameworkString_impl(@"PARTICIPANTS_%@_AND_%lu_OTHERS", @"PARTICIPANTS_%@_AND_%lu_OTHERS", 0, 1);
    v2 = [v30 localizedStringWithFormat:v31, firstObject2, v27];

    goto LABEL_27;
  }

  firstObject = __ICLocalizedFrameworkString_impl(@"0 selected", @"0 selected", 0, 1);
LABEL_24:
  v2 = firstObject;
LABEL_28:

LABEL_29:

  return v2;
}

- (void)addParticipantUserID:(id)d
{
  dCopy = d;
  participantUserIDs = [(ICParticipantsFilterTypeSelection *)self participantUserIDs];
  v5 = [participantUserIDs setByAddingObject:dCopy];

  [(ICParticipantsFilterTypeSelection *)self setParticipantUserIDs:v5];
}

- (void)removeParticipantUserID:(id)d
{
  dCopy = d;
  participantUserIDs = [(ICParticipantsFilterTypeSelection *)self participantUserIDs];
  v7 = [participantUserIDs mutableCopy];

  [v7 removeObject:dCopy];
  v6 = [v7 copy];
  [(ICParticipantsFilterTypeSelection *)self setParticipantUserIDs:v6];
}

- (NSArray)unresolvedParticipants
{
  v3 = MEMORY[0x277CBEB58];
  participantUserIDs = [(ICParticipantsFilterTypeSelection *)self participantUserIDs];
  v5 = [v3 setWithSet:participantUserIDs];

  participants = [(ICParticipantsFilterTypeSelection *)self participants];
  v7 = [participants ic_map:&__block_literal_global_60];

  v8 = [MEMORY[0x277CBEB98] setWithArray:v7];
  [v5 minusSet:v8];

  v9 = [v5 ic_map:&__block_literal_global_50_0];
  allObjects = [v9 allObjects];

  return allObjects;
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
  managedObjectContext = [(ICParticipantsFilterTypeSelection *)self managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__ICParticipantsFilterTypeSelection_participants__block_invoke;
  v6[3] = &unk_278194D68;
  v6[4] = self;
  v6[5] = &v7;
  [managedObjectContext performBlockAndWait:v6];

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

  participantUserIDs = [(ICParticipantsFilterTypeSelection *)self participantUserIDs];
  v4 = [participantUserIDs count] == 0;

  return v4;
}

+ (id)keyPathsForValuesAffectingIsEmpty
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___ICParticipantsFilterTypeSelection;
  v2 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingIsValid);
  v3 = [v2 mutableCopy];

  [v3 addObjectsFromArray:&unk_2827480D8];
  v4 = [v3 copy];

  return v4;
}

- (id)rawFilterValue
{
  selectionType = [(ICParticipantsFilterTypeSelection *)self selectionType];
  if (selectionType - 1 > 2)
  {
    return @"me";
  }

  else
  {
    return off_2781997F8[selectionType - 1];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [ICParticipantsFilterTypeSelection allocWithZone:?];
  managedObjectContext = [(ICParticipantsFilterTypeSelection *)self managedObjectContext];
  accountObjectID = [(ICFilterTypeSelection *)self accountObjectID];
  v8 = [(ICParticipantsFilterTypeSelection *)v5 initWithManagedObjectContext:managedObjectContext accountObjectID:accountObjectID];

  [(ICParticipantsFilterTypeSelection *)v8 setSelectionType:[(ICParticipantsFilterTypeSelection *)self selectionType]];
  [(ICParticipantsFilterTypeSelection *)v8 setJoinOperator:[(ICParticipantsFilterTypeSelection *)self joinOperator]];
  participantUserIDs = [(ICParticipantsFilterTypeSelection *)self participantUserIDs];
  v10 = [participantUserIDs copyWithZone:zone];
  [(ICParticipantsFilterTypeSelection *)v8 setParticipantUserIDs:v10];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ICParticipantsFilterTypeSelection *)self isEqualToICParticipantsFilterTypeSelection:v5];
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
  managedObjectContext = [(ICParticipantsFilterTypeSelection *)self managedObjectContext];
  [managedObjectContext hash];
  v15 = ICHashWithHashKeys(v4, v8, v9, v10, v11, v12, v13, v14, v6);

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  participantUserIDs = [(ICParticipantsFilterTypeSelection *)self participantUserIDs];
  v17 = [participantUserIDs countByEnumeratingWithState:&v30 objects:v34 count:16];
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
          objc_enumerationMutation(participantUserIDs);
        }

        v21 = [*(*(&v30 + 1) + 8 * i) hash];
        v15 += ICHashWithHashKeys(v21, v22, v23, v24, v25, v26, v27, v28, 0);
      }

      v18 = [participantUserIDs countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v18);
  }

  return v15;
}

- (BOOL)isEqualToICParticipantsFilterTypeSelection:(id)selection
{
  selectionCopy = selection;
  selectionType = [(ICParticipantsFilterTypeSelection *)self selectionType];
  if (selectionType == [selectionCopy selectionType] && (v6 = -[ICParticipantsFilterTypeSelection joinOperator](self, "joinOperator"), v6 == objc_msgSend(selectionCopy, "joinOperator")))
  {
    managedObjectContext = [(ICParticipantsFilterTypeSelection *)self managedObjectContext];
    managedObjectContext2 = [selectionCopy managedObjectContext];
    if ([managedObjectContext isEqual:managedObjectContext2])
    {
      participantUserIDs = [(ICParticipantsFilterTypeSelection *)self participantUserIDs];
      participantUserIDs2 = [selectionCopy participantUserIDs];
      v11 = [participantUserIDs isEqualToSet:participantUserIDs2];
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