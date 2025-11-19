@interface MNTraceNavigationEventRow
- (id)description;
@end

@implementation MNTraceNavigationEventRow

- (id)description
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
  v4 = MEMORY[0x1E696AEC0];
  [(MNTraceNavigationEventRow *)self relativeTimestamp];
  v6 = [v4 stringWithFormat:@"%0.2fs", v5];
  [v3 addObject:v6];

  v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v7 setDateFormat:@"YYYY-MM-dd h:mm:ss a"];
  v8 = [(MNTraceNavigationEventRow *)self date];
  v9 = [v7 stringFromDate:v8];

  [v3 addObject:v9];
  v10 = [(MNTraceNavigationEventRow *)self eventName];

  if (v10)
  {
    v11 = [(MNTraceNavigationEventRow *)self eventName];
    [v3 addObject:v11];
  }

  v12 = [(MNTraceNavigationEventRow *)self eventDescription];

  if (v12)
  {
    v13 = [(MNTraceNavigationEventRow *)self eventDescription];
    [v3 addObject:v13];
  }

  v14 = [v3 componentsJoinedByString:@" | "];

  return v14;
}

@end