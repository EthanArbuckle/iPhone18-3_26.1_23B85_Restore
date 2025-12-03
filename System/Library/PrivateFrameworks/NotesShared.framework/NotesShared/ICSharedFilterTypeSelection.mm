@interface ICSharedFilterTypeSelection
- (id)copyWithZone:(_NSZone *)zone;
- (id)emptySummary;
- (id)emptySummaryTitle;
- (id)shortEmptySummary;
@end

@implementation ICSharedFilterTypeSelection

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [ICSharedFilterTypeSelection allocWithZone:?];
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
    v2 = __ICLocalizedFrameworkString_impl(@"Shared Filter Incomplete", @"Shared Filter Incomplete", 0, 1);
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
    v2 = __ICLocalizedFrameworkString_impl(@"You must select at least one person that you share a note with for the Shared filter.", @"You must select at least one person that you share a note with for the Shared filter.", 0, 1);
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
    v2 = __ICLocalizedFrameworkString_impl(@"Person for the Shared filter", @"Person for the Shared filter", 0, 1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end