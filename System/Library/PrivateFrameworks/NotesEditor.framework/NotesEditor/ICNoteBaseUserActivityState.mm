@interface ICNoteBaseUserActivityState
- (ICNoteBaseUserActivityState)initWithNote:(id)note;
- (void)updateUserActivity:(id)activity;
@end

@implementation ICNoteBaseUserActivityState

- (ICNoteBaseUserActivityState)initWithNote:(id)note
{
  noteCopy = note;
  v11.receiver = self;
  v11.super_class = ICNoteBaseUserActivityState;
  v5 = [(ICNoteBaseUserActivityState *)&v11 init];
  if (v5)
  {
    if (noteCopy)
    {
      userActivityContentAttributeSet = [noteCopy userActivityContentAttributeSet];
      [(ICNoteBaseUserActivityState *)v5 setAttributeSet:userActivityContentAttributeSet];

      searchIndexingIdentifier = [noteCopy searchIndexingIdentifier];
      attributeSet = [(ICNoteBaseUserActivityState *)v5 attributeSet];
      [attributeSet setRelatedUniqueIdentifier:searchIndexingIdentifier];

      v9 = [MEMORY[0x277D36268] userActivityPersistentIdentifierForNote:noteCopy];
      [(ICNoteBaseUserActivityState *)v5 setPersistentIdentifier:v9];
    }

    else
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"note" functionName:"-[ICNoteBaseUserActivityState initWithNote:]" simulateCrash:1 showAlert:0 format:@"note is nil"];
    }
  }

  return v5;
}

- (void)updateUserActivity:(id)activity
{
  activityCopy = activity;
  attributeSet = [(ICNoteBaseUserActivityState *)self attributeSet];
  [activityCopy setContentAttributeSet:attributeSet];

  persistentIdentifier = [(ICNoteBaseUserActivityState *)self persistentIdentifier];
  [activityCopy setPersistentIdentifier:persistentIdentifier];

  [activityCopy setEligibleForHandoff:1];
  [activityCopy setEligibleForSearch:1];
  [activityCopy setEligibleForPublicIndexing:0];
}

@end