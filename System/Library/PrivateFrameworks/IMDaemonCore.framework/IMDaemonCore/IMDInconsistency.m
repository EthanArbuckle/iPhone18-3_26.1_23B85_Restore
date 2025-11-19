@interface IMDInconsistency
- (BOOL)shouldJettison:(id *)a3;
- (IMDInconsistency)init;
- (void)setContext:(id)a3;
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

- (void)setContext:(id)a3
{
  self->_contextWeakReference = 0;
  if (a3)
  {
    self->_contextWeakReference = [MEMORY[0x277CFB990] weakRefWithObject:a3];
  }
}

- (BOOL)shouldJettison:(id *)a3
{
  v5 = [(IMDInconsistency *)self context];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEAA8] date];
    v7 = v6;
    if (qword_281421420 && ([v6 timeIntervalSinceReferenceDate], v9 = v8, objc_msgSend(qword_281421420, "timeIntervalSinceReferenceDate"), v9 - v10 < 600.0))
    {
      LOBYTE(v5) = 0;
      if (a3)
      {
        v11 = @"Not enough time passed since last jettison";
LABEL_14:
        *a3 = v11;
      }
    }

    else if ([(IMDInconsistency *)self count]< 6)
    {
      [v7 timeIntervalSinceReferenceDate];
      v13 = v12;
      [(NSDate *)[(IMDInconsistency *)self firstOccurrence] timeIntervalSinceReferenceDate];
      v15 = v13 - v14;
      LOBYTE(v5) = v15 > 60.0;
      v11 = @"Max time or occurrences not yet met";
      if (v15 > 60.0)
      {
        v11 = @"Max time since failure occurrence exceeded";
      }

      if (a3)
      {
        goto LABEL_14;
      }
    }

    else
    {
      LOBYTE(v5) = 1;
      if (a3)
      {
        v11 = @"Max number of failure occurrences exceeded";
        goto LABEL_14;
      }
    }
  }

  else if (a3)
  {
    v11 = @"Context has expired";
    goto LABEL_14;
  }

  return v5;
}

@end