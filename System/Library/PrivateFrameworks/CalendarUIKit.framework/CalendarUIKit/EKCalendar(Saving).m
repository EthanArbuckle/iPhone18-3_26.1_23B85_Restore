@interface EKCalendar(Saving)
- (uint64_t)CUIKEditingContext_removeWithSpan:()Saving error:;
- (uint64_t)CUIKEditingContext_saveWithSpan:()Saving error:;
@end

@implementation EKCalendar(Saving)

- (uint64_t)CUIKEditingContext_saveWithSpan:()Saving error:
{
  v6 = [a1 eventStore];
  v7 = [v6 saveCalendar:a1 commit:0 error:a4];

  if ((v7 & 1) == 0)
  {
    v8 = +[CUIKLogSubsystem editingContext];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [EKCalendar(Saving) CUIKEditingContext_saveWithSpan:error:];
    }
  }

  return v7;
}

- (uint64_t)CUIKEditingContext_removeWithSpan:()Saving error:
{
  v6 = [a1 eventStore];
  v7 = [v6 removeCalendar:a1 commit:0 error:a4];

  if ((v7 & 1) == 0)
  {
    v8 = +[CUIKLogSubsystem editingContext];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [EKCalendar(Saving) CUIKEditingContext_removeWithSpan:error:];
    }
  }

  return v7;
}

@end