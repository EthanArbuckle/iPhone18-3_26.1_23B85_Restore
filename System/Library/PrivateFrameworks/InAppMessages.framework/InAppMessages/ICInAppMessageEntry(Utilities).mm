@interface ICInAppMessageEntry(Utilities)
- (uint64_t)comparePriorityWithMessageEntry:()Utilities;
@end

@implementation ICInAppMessageEntry(Utilities)

- (uint64_t)comparePriorityWithMessageEntry:()Utilities
{
  v4 = a3;
  v5 = [a1 applicationMessage];
  v6 = [v5 priority];

  v7 = [v4 applicationMessage];

  v8 = [v7 priority];
  if (v6 > v8)
  {
    return -1;
  }

  else
  {
    return v6 < v8;
  }
}

@end