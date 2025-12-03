@interface EKSource(Saving)
- (uint64_t)CUIKEditingContext_removeWithSpan:()Saving error:;
- (uint64_t)CUIKEditingContext_saveWithSpan:()Saving error:;
@end

@implementation EKSource(Saving)

- (uint64_t)CUIKEditingContext_saveWithSpan:()Saving error:
{
  eventStore = [self eventStore];
  v7 = [eventStore saveSource:self commit:0 error:a4];

  if ((v7 & 1) == 0)
  {
    v8 = +[CUIKLogSubsystem editingContext];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [EKSource(Saving) CUIKEditingContext_saveWithSpan:error:];
    }
  }

  return v7;
}

- (uint64_t)CUIKEditingContext_removeWithSpan:()Saving error:
{
  eventStore = [self eventStore];
  v7 = [eventStore removeSource:self commit:0 error:a4];

  if ((v7 & 1) == 0)
  {
    v8 = +[CUIKLogSubsystem editingContext];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [EKSource(Saving) CUIKEditingContext_removeWithSpan:error:];
    }
  }

  return v7;
}

@end