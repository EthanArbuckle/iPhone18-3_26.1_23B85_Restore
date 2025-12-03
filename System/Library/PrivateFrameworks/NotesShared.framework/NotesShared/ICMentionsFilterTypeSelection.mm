@interface ICMentionsFilterTypeSelection
- (NSString)currentUserID;
- (id)copyWithZone:(_NSZone *)zone;
- (id)emptySummary;
- (id)emptySummaryTitle;
- (id)shortEmptySummary;
@end

@implementation ICMentionsFilterTypeSelection

- (NSString)currentUserID
{
  accountObjectID = [(ICFilterTypeSelection *)self accountObjectID];

  if (accountObjectID)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__62;
    v12 = __Block_byref_object_dispose__62;
    v13 = 0;
    managedObjectContext = [(ICParticipantsFilterTypeSelection *)self managedObjectContext];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__ICMentionsFilterTypeSelection_currentUserID__block_invoke;
    v7[3] = &unk_278194D68;
    v7[4] = self;
    v7[5] = &v8;
    [managedObjectContext performBlockAndWait:v7];

    v5 = v9[5];
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __46__ICMentionsFilterTypeSelection_currentUserID__block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 32) accountObjectID];
  v4 = [v2 ic_existingObjectWithID:v3];
  v8 = ICDynamicCast();

  v5 = [v8 userRecordName];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [ICMentionsFilterTypeSelection allocWithZone:?];
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

- (id)emptySummaryTitle
{
  if ([(ICParticipantsFilterTypeSelection *)self isEmpty])
  {
    v2 = __ICLocalizedFrameworkString_impl(@"Mentions Filter Incomplete", @"Mentions Filter Incomplete", 0, 1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)emptySummary
{
  if ([(ICParticipantsFilterTypeSelection *)self isEmpty])
  {
    v2 = __ICLocalizedFrameworkString_impl(@"You must select at least one person that you share a note with for the Mentions filter.", @"You must select at least one person that you share a note with for the Mentions filter.", 0, 1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)shortEmptySummary
{
  if ([(ICParticipantsFilterTypeSelection *)self isEmpty])
  {
    v2 = __ICLocalizedFrameworkString_impl(@"Person for the Mentions filter", @"Person for the Mentions filter", 0, 1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end