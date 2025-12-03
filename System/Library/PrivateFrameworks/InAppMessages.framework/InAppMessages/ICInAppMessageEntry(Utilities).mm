@interface ICInAppMessageEntry(Utilities)
- (uint64_t)comparePriorityWithMessageEntry:()Utilities;
@end

@implementation ICInAppMessageEntry(Utilities)

- (uint64_t)comparePriorityWithMessageEntry:()Utilities
{
  v4 = a3;
  applicationMessage = [self applicationMessage];
  priority = [applicationMessage priority];

  applicationMessage2 = [v4 applicationMessage];

  priority2 = [applicationMessage2 priority];
  if (priority > priority2)
  {
    return -1;
  }

  else
  {
    return priority < priority2;
  }
}

@end