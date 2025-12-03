@interface IMDInconsistency
- (BOOL)shouldJettison:(id *)jettison;
- (IMDInconsistency)init;
- (void)setContext:(id)context;
@end

@implementation IMDInconsistency

- (IMDInconsistency)init
{
  v4.receiver = self;
  v4.super_class = IMDInconsistency;
  v2 = [(IMDInconsistency *)&v4 init];
  if (v2)
  {
    v2->_firstOccurrence = [MEMORY[0x277CBEAA8] date];
  }

  return v2;
}

- (void)setContext:(id)context
{
  self->_contextWeakReference = 0;
  if (context)
  {
    self->_contextWeakReference = [MEMORY[0x277CFB990] weakRefWithObject:context];
  }
}

- (BOOL)shouldJettison:(id *)jettison
{
  context = [(IMDInconsistency *)self context];
  if (context)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v7 = date;
    if (qword_281421420 && ([date timeIntervalSinceReferenceDate], v9 = v8, objc_msgSend(qword_281421420, "timeIntervalSinceReferenceDate"), v9 - v10 < 600.0))
    {
      LOBYTE(context) = 0;
      if (jettison)
      {
        v11 = @"Not enough time passed since last jettison";
LABEL_14:
        *jettison = v11;
      }
    }

    else if ([(IMDInconsistency *)self count]< 6)
    {
      [v7 timeIntervalSinceReferenceDate];
      v13 = v12;
      [(NSDate *)[(IMDInconsistency *)self firstOccurrence] timeIntervalSinceReferenceDate];
      v15 = v13 - v14;
      LOBYTE(context) = v15 > 60.0;
      v11 = @"Max time or occurrences not yet met";
      if (v15 > 60.0)
      {
        v11 = @"Max time since failure occurrence exceeded";
      }

      if (jettison)
      {
        goto LABEL_14;
      }
    }

    else
    {
      LOBYTE(context) = 1;
      if (jettison)
      {
        v11 = @"Max number of failure occurrences exceeded";
        goto LABEL_14;
      }
    }
  }

  else if (jettison)
  {
    v11 = @"Context has expired";
    goto LABEL_14;
  }

  return context;
}

@end