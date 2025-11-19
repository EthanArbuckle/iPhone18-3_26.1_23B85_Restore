@interface ICSharedFilterTypeSelection
- (id)copyWithZone:(_NSZone *)a3;
- (id)emptySummary;
- (id)emptySummaryTitle;
- (id)shortEmptySummary;
@end

@implementation ICSharedFilterTypeSelection

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [ICSharedFilterTypeSelection allocWithZone:?];
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