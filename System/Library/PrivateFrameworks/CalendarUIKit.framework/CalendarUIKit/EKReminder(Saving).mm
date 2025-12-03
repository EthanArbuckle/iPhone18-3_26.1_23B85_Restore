@interface EKReminder(Saving)
- (uint64_t)CUIKEditingContext_removeWithSpan:()Saving error:;
- (uint64_t)CUIKEditingContext_saveWithSpan:()Saving error:;
@end

@implementation EKReminder(Saving)

- (uint64_t)CUIKEditingContext_saveWithSpan:()Saving error:
{
  eventStore = [self eventStore];
  v7 = [eventStore saveReminder:self commit:0 error:a4];

  if ((v7 & 1) == 0)
  {
    v8 = +[CUIKLogSubsystem editingContext];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [EKReminder(Saving) CUIKEditingContext_saveWithSpan:error:];
    }
  }

  return v7;
}

- (uint64_t)CUIKEditingContext_removeWithSpan:()Saving error:
{
  eventStore = [self eventStore];
  v7 = [eventStore removeReminder:self commit:0 error:a4];

  if ((v7 & 1) == 0)
  {
    v8 = +[CUIKLogSubsystem editingContext];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [EKReminder(Saving) CUIKEditingContext_removeWithSpan:error:];
    }
  }

  return v7;
}

@end