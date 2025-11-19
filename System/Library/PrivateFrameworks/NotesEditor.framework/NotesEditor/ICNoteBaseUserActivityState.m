@interface ICNoteBaseUserActivityState
- (ICNoteBaseUserActivityState)initWithNote:(id)a3;
- (void)updateUserActivity:(id)a3;
@end

@implementation ICNoteBaseUserActivityState

- (ICNoteBaseUserActivityState)initWithNote:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ICNoteBaseUserActivityState;
  v5 = [(ICNoteBaseUserActivityState *)&v11 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [v4 userActivityContentAttributeSet];
      [(ICNoteBaseUserActivityState *)v5 setAttributeSet:v6];

      v7 = [v4 searchIndexingIdentifier];
      v8 = [(ICNoteBaseUserActivityState *)v5 attributeSet];
      [v8 setRelatedUniqueIdentifier:v7];

      v9 = [MEMORY[0x277D36268] userActivityPersistentIdentifierForNote:v4];
      [(ICNoteBaseUserActivityState *)v5 setPersistentIdentifier:v9];
    }

    else
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"note" functionName:"-[ICNoteBaseUserActivityState initWithNote:]" simulateCrash:1 showAlert:0 format:@"note is nil"];
    }
  }

  return v5;
}

- (void)updateUserActivity:(id)a3
{
  v6 = a3;
  v4 = [(ICNoteBaseUserActivityState *)self attributeSet];
  [v6 setContentAttributeSet:v4];

  v5 = [(ICNoteBaseUserActivityState *)self persistentIdentifier];
  [v6 setPersistentIdentifier:v5];

  [v6 setEligibleForHandoff:1];
  [v6 setEligibleForSearch:1];
  [v6 setEligibleForPublicIndexing:0];
}

@end